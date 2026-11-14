function varargout = reflectarray_gui_v5(varargin)
% REFLECTARRAY_GUI_V5 MATLAB code for reflectarray_gui_v5.fig
%      REFLECTARRAY_GUI_V5, by itself, creates a new REFLECTARRAY_GUI_V5 or raises the existing
%      singleton*.
%
%      H = REFLECTARRAY_GUI_V5 returns the handle to a new REFLECTARRAY_GUI_V5 or the handle to
%      the existing singleton*.
%
%      REFLECTARRAY_GUI_V5('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in REFLECTARRAY_GUI_V5.M with the given input arguments.
%
%      REFLECTARRAY_GUI_V5('Property','Value',...) creates a new REFLECTARRAY_GUI_V5 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before reflectarray_gui_v5_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to reflectarray_gui_v5_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help reflectarray_gui_v5

% Last Modified by GUIDE v2.5 15-Jan-2024 08:30:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @reflectarray_gui_v5_OpeningFcn, ...
    'gui_OutputFcn',  @reflectarray_gui_v5_OutputFcn, ...
    'gui_LayoutFcn',  [] , ...
    'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before reflectarray_gui_v5 is made visible.
function reflectarray_gui_v5_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to reflectarray_gui_v5 (see VARARGIN)

% Choose default command line output for reflectarray_gui_v5
handles.output = hObject;

axes(handles.axes1)
matlabImage = imread('C:\Users\sinam\My Drive\youtube\reflectarray\coord.jpg');
image(matlabImage)
axis off
axis image

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes reflectarray_gui_v5 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = reflectarray_gui_v5_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Preview Button.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%gets input data from GUI
handles = guidata(hObject);
freq =  str2double(get(handles.edit2,'string'))*10^9;
lambda = physconst('LightSpeed')*1000/freq;
k=2*pi/lambda;

ix=1;
iy=1;
%gets element data from imported file
data=handles.data;
phas_u=data(:,1)';
dim_u=data(:,2)';

the_dir = str2double(get(handles.edit6,'string'));
phi_dir = str2double(get(handles.edit7,'string'));
pha_zer = str2double(get(handles.edit13,'string'));
x_cor = str2double(get(handles.edit3,'string'));
y_cor = str2double(get(handles.edit4,'string'));
z_cor = str2double(get(handles.edit5,'string'));
rad = str2double(get(handles.edit1,'string'));
uedimx = str2double(get(handles.edit14,'string'));
uedimy = str2double(get(handles.edit12,'string'));

%calculates phase of each point and plots it in a figure
for xi=-rad/2+mod(rad/2,uedimx):uedimx:rad/2
    for yi=-rad/2+mod(rad/2,uedimy):uedimy:rad/2
        if sqrt(xi^2+yi^2)<rad/2
            R = sqrt((x_cor-xi)^2+(y_cor-yi)^2+z_cor^2);
            %calculates the raw phase of each element
            phase(ix,iy)=k*(R-sind(the_dir)*(xi*cosd(phi_dir)+yi*sind(phi_dir)))+pha_zer;
            m_phase=mod(phase(ix,iy),2*pi); %clips phase in between 0 and 2*pi
            m_phase_deg=m_phase*180/pi-180; %converts phase from rad to angle and shifts by 180
            %             phas_lin_map=m_phase_deg*m+n;
            %maps the found phase angle into the given data range and
            %chooses best value
            if m_phase_deg > phas_u(1,1)
                phas_lin_map = phas_u(1,1);
            elseif m_phase_deg < phas_u(1,end)
                phas_lin_map = phas_u(end,1);
            else
                dy = diff([0 phas_u]);
                dyix = find(dy == 0);
                dim_u(dyix) = dim_u(dyix-1)+1E-8;
                phas_lin_map = interp1(phas_u, dim_u, m_phase_deg);
            end
        else
            phase(ix,iy)=0;
        end
        iy=iy+1;
    end
    ix=ix+1;
    iy=1;
end

m_phase=mod(phase,2*pi);
m_phase_deg=m_phase*180/pi;
m_phase_deg(:);

axes(handles.axes2)
surf(m_phase_deg)
view(2)
guidata(hObject, handles);

% --- Executes on button press in Construct in CST.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = guidata(hObject);

%this parts sets up the settings to contruct in CST, it uses separate API
addpath(genpath('C:\Users\sinam\My Drive\CST\cst-matlab\CST-MATLAB-API-master'));

cst = actxserver('CSTStudio.application');

mws = cst.invoke('NewMWS');

CstDefaultUnits(mws)

fmin=2.2;
fmax=2.6;
CstDefineFrequencyRange(mws,fmin,fmax)

CstMeshInitiator(mws)

Xmin='expanded open';
Xmax='expanded open';
Ymin='expanded open';
Ymax='expanded open';
Zmin='expanded open';
Zmax='expanded open';

minfrequency = fmin;
CstDefineOpenBoundary(mws,minfrequency,Xmin,Xmax,Ymin,Ymax,Zmin,Zmax)

XminSpace = 0;
XmaxSpace = 0;
YminSpace = 0;
YmaxSpace = 0;
ZminSpace = 0;
ZmaxSpace = 0;

CstDefineBackroundMaterial(mws,XminSpace,XmaxSpace,YminSpace,YmaxSpace,ZminSpace,ZmaxSpace)

CstCopperAnnealedLossy(mws)

freq =  str2double(get(handles.edit2,'string'))*10^9;
lambda = physconst('LightSpeed')*1000/freq;
k=2*pi/lambda;

ix=1;
iy=1;

data=handles.data;
phas_u=data(:,1)';
dim_u=data(:,2)';

count=1;
the_dir = str2double(get(handles.edit6,'string'));
phi_dir = str2double(get(handles.edit7,'string'));
pha_zer = str2double(get(handles.edit13,'string'));
x_cor = str2double(get(handles.edit3,'string'));
y_cor = str2double(get(handles.edit4,'string'));
z_cor = str2double(get(handles.edit5,'string'));
rad = str2double(get(handles.edit1,'string'));
uedimx = str2double(get(handles.edit14,'string'));
uedimy = str2double(get(handles.edit12,'string'));


contents = get(handles.popupmenu1,'String');
elemtype = contents{get(handles.popupmenu1,'Value')};

switch elemtype
    case 'Square'%this part is used to create a square element
        for xi=-rad/2+mod(rad/2,uedimx):uedimx:rad/2
            for yi=-rad/2+mod(rad/2,uedimy):uedimy:rad/2
                if sqrt(xi^2+yi^2)<rad/2
                    R = sqrt((x_cor-xi)^2+(y_cor-yi)^2+z_cor^2);
                    phase(ix,iy)=k*(R-sind(the_dir)*(xi*cosd(phi_dir)+yi*sind(phi_dir)))+pha_zer;
                    m_phase=mod(phase(ix,iy),2*pi);
                    m_phase_deg=m_phase*180/pi-180;
                    if m_phase_deg > phas_u(1,1)
                        phas_lin_map = dim_u(1,1);
                    elseif m_phase_deg < phas_u(1,end)
                        phas_lin_map = dim_u(end,1);
                    else
                        dy = diff([0 phas_u]);
                        dyix = find(dy == 0);
                        dim_u(dyix) = dim_u(dyix-1)+1E-8;
                        phas_lin_map = interp1(phas_u, dim_u, m_phase_deg);
                    end
                    
                    %above it repeates the same calculations as previously
                    %and finds the best phase angles 
                    %CST
                    Name=num2str(count);
                    component='reflectarray';
                    count=count+1;
                    material='Copper (annealed)';
                    %Below for each element it chooses the dimension that
                    %mathces the given element and creates a square element
                    Xrange = [-phas_lin_map/2+xi phas_lin_map/2+xi];
                    Yrange = [-phas_lin_map/2+yi phas_lin_map/2+yi];
                    Zrange = [0 0.1];
                    Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)
                else
                    phase(ix,iy)=0;
                end
                iy=iy+1;
            end
            ix=ix+1;
            iy=1;
        end
    case 'Cross - Dipol' %this part is used to create a Cross-Dipol element
        for xi=-rad/2+mod(rad/2,uedimx):uedimx:rad/2
            for yi=-rad/2+mod(rad/2,uedimy):uedimy:rad/2
                if sqrt(xi^2+yi^2)<rad/2
                    R = sqrt((x_cor-xi)^2+(y_cor-yi)^2+z_cor^2);
                    phase(ix,iy)=k*(R-sind(the_dir)*(xi*cosd(phi_dir)+yi*sind(phi_dir)))+pha_zer;
                    m_phase=mod(phase(ix,iy),2*pi);
                    m_phase_deg=m_phase*180/pi-180;
                    if m_phase_deg > phas_u(1,1)
                        phas_lin_map = dim_u(1,1);
                    elseif m_phase_deg < phas_u(1,end)
                        phas_lin_map = dim_u(end,1);
                    else
                        dy = diff([0 phas_u]);
                        dyix = find(dy == 0);
                        dim_u(dyix) = dim_u(dyix-1)+1E-8;
                        phas_lin_map = interp1(phas_u, dim_u, m_phase_deg);
                    end
                    
                    %CST
                    % in this part to create a cros dipole we create a
                    % separate rectangles and add them using the boolean
                    % add. 
                    Name1=num2str(count);
                    component='reflectarray';
                    count=count+1;
                    material='Copper (annealed)';
                    %here you can see that Length and Width ratio is
                    %constant and it can be changed if required
                    Xrange = [-phas_lin_map/10+xi phas_lin_map/10+xi];
                    Yrange = [-phas_lin_map/2+yi phas_lin_map/2+yi];
                    Zrange = [0 0.1];
                    %this part creates first stick
                    Cstbrick(mws, Name1, component, material, Xrange, Yrange, Zrange)
                    Name2=num2str(count);
                    count=count+1;
                    Xrange = [-phas_lin_map/2+xi phas_lin_map/2+xi];
                    Yrange = [-phas_lin_map/10+yi phas_lin_map/10+yi];
                    Zrange = [0 0.1];
                    %this part creates the second stick
                    Cstbrick(mws, Name2, component, material, Xrange, Yrange, Zrange)
                    component1 = ['reflectarray:' Name1];
                    component2 = ['reflectarray:' Name2];
                    %two stickes are added here to create a Cross-Dipole
                    CstAdd(mws,component1,component2)
                else
                    phase(ix,iy)=0;
                end
                iy=iy+1;
            end
            ix=ix+1;
            iy=1;
        end
end

guidata(hObject, handles);


% --- Executes on button press in Get Element Data.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = guidata(hObject);
[file,path] = uigetfile('*.txt');
filename = [path file];
delimiter = ' ';
formatSpec = '%f%f%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'MultipleDelimsAsOne', true, 'TextType', 'string',  'ReturnOnError', false);
fclose(fileID);
%This part loads the element data and saves it as a Data matrix. Look at
%the example element data to create a correct file type
handles.data = [dataArray{1:end-1}];
clearvars filename delimiter formatSpec fileID dataArray ans;
guidata(hObject, handles);



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
