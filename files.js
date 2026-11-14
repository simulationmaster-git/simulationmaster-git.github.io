// Lists the files in repository folders and links to them for download.
// Usage on a page (you can have several lists on one page):
//   <div data-root="designs/sgh/">Loading files…</div>
//   <script src="files.js"></script>
(function () {
  var boxes = document.querySelectorAll('[data-root]');
  if (!boxes.length) return;

  var REPO = 'simulationmaster-git/simulationmaster-git.github.io';
  var BRANCH = 'main';

  // Short description shown under each file name, by file extension.
  var TYPES = {
    stp: 'STEP 3D model',
    step: 'STEP 3D model',
    cst: 'CST Studio Suite project',
    sldasm: 'SolidWorks assembly',
    sldprt: 'SolidWorks part',
    slddrw: 'SolidWorks drawing',
    pdf: 'PDF',
    s1p: 'Touchstone S-parameters',
    s2p: 'Touchstone S-parameters',
    csv: 'Data (CSV)',
    txt: 'Text file',
    md: 'Notes',
    m: 'MATLAB code',
    mlx: 'MATLAB live script',
    mlapp: 'MATLAB app',
    mat: 'MATLAB data',
    fig: 'MATLAB figure',
    zip: 'ZIP archive',
    jpg: 'Image',
    jpeg: 'Image',
    png: 'Image'
  };

  function describe(name) {
    var m = /\.([^.]+)$/.exec(name);
    return m ? (TYPES[m[1].toLowerCase()] || '') : '';
  }

  function formatSize(n) {
    if (n < 1024) return n + ' B';
    if (n < 1048576) return Math.round(n / 1024) + ' KB';
    return (n / 1048576).toFixed(1) + ' MB';
  }

  function rootOf(box) {
    var r = box.getAttribute('data-root');
    return /\/$/.test(r) ? r : r + '/';
  }

  // Folder names are compared ignoring capitals, spaces, hyphens and underscores,
  // so "Slotted Waveguide Antenna" and "slotted-waveguide-antenna" both match.
  function norm(s) {
    return s.toLowerCase().replace(/[\s_-]+/g, '');
  }

  function findFiles(box, tree) {
    var rootSegs = rootOf(box).split('/').filter(Boolean).map(norm);
    var out = [];
    tree.forEach(function (t) {
      if (t.type !== 'blob' || /\.gitkeep$/.test(t.path)) return;
      var segs = t.path.split('/');
      if (segs.length <= rootSegs.length) return;
      for (var i = 0; i < rootSegs.length; i++) {
        if (norm(segs[i]) !== rootSegs[i]) return;
      }
      out.push({ rel: segs.slice(rootSegs.length), path: t.path, size: t.size });
    });
    return out;
  }

  function showError(box) {
    box.textContent = '';
    var p = document.createElement('p');
    p.appendChild(document.createTextNode('The file list could not be loaded. '));
    var a = document.createElement('a');
    a.href = 'https://github.com/' + REPO + '/tree/' + BRANCH + '/' + encodeURI(rootOf(box).replace(/\/$/, ''));
    a.textContent = 'Browse the files on GitHub';
    p.appendChild(a);
    p.appendChild(document.createTextNode('.'));
    box.appendChild(p);
  }

  function render(box, tree) {
    var files = findFiles(box, tree);
    if (!files.length) {
      box.textContent = 'No files found in "' + rootOf(box) + '". Check that this folder exists in the repository.';
      return;
    }

    // Files directly in the folder have no heading. Files in subfolders are grouped by subfolder.
    var groups = {};
    files.forEach(function (f) {
      var group = f.rel.length > 1 ? f.rel[0] : '';
      var name = f.rel.length > 1 ? f.rel.slice(1).join('/') : f.rel[0];
      (groups[group] = groups[group] || []).push({ name: name, path: f.path, size: f.size });
    });

    box.textContent = '';
    Object.keys(groups).sort().forEach(function (group) {
      if (group) {
        var h = document.createElement('h3');
        h.textContent = group;
        box.appendChild(h);
      }

      var ul = document.createElement('ul');
      ul.className = 'files';
      groups[group].sort(function (a, b) { return a.name.localeCompare(b.name); }).forEach(function (f) {
        var li = document.createElement('li');

        var left = document.createElement('div');
        var a = document.createElement('a');
        a.href = f.path.split('/').map(encodeURIComponent).join('/');
        a.setAttribute('download', '');
        a.textContent = f.name;
        left.appendChild(a);

        var desc = describe(f.name);
        if (desc) {
          var small = document.createElement('small');
          small.textContent = desc;
          left.appendChild(small);
        }

        var size = document.createElement('span');
        size.textContent = formatSize(f.size);

        li.appendChild(left);
        li.appendChild(size);
        ul.appendChild(li);
      });
      box.appendChild(ul);
    });
  }

  fetch('https://api.github.com/repos/' + REPO + '/git/trees/' + BRANCH + '?recursive=1')
    .then(function (r) { if (!r.ok) throw new Error(r.status); return r.json(); })
    .then(function (data) {
      Array.prototype.forEach.call(boxes, function (box) { render(box, data.tree); });
    })
    .catch(function () {
      Array.prototype.forEach.call(boxes, showError);
    });
})();
