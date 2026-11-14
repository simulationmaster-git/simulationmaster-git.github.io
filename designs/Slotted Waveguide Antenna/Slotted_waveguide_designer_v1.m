function varargout = Slotted_waveguide_designer_v1(varargin)
% SLOTTED_WAVEGUIDE_DESIGNER_V1 MATLAB code for Slotted_waveguide_designer_v1.fig
%      SLOTTED_WAVEGUIDE_DESIGNER_V1, by itself, creates a new SLOTTED_WAVEGUIDE_DESIGNER_V1 or raises the existing
%      singleton*.
%
%      H = SLOTTED_WAVEGUIDE_DESIGNER_V1 returns the handle to a new SLOTTED_WAVEGUIDE_DESIGNER_V1 or the handle to
%      the existing singleton*.
%
%      SLOTTED_WAVEGUIDE_DESIGNER_V1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SLOTTED_WAVEGUIDE_DESIGNER_V1.M with the given input arguments.
%
%      SLOTTED_WAVEGUIDE_DESIGNER_V1('Property','Value',...) creates a new SLOTTED_WAVEGUIDE_DESIGNER_V1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Slotted_waveguide_designer_v1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Slotted_waveguide_designer_v1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Slotted_waveguide_designer_v1

% Last Modified by GUIDE v2.5 25-Feb-2024 14:48:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Slotted_waveguide_designer_v1_OpeningFcn, ...
                   'gui_OutputFcn',  @Slotted_waveguide_designer_v1_OutputFcn, ...
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


% --- Executes just before Slotted_waveguide_designer_v1 is made visible.
function Slotted_waveguide_designer_v1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Slotted_waveguide_designer_v1 (see VARARGIN)

% Choose default command line output for Slotted_waveguide_designer_v1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Slotted_waveguide_designer_v1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Slotted_waveguide_designer_v1_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles = guidata(hObject);
[file,path] = uigetfile('*.txt');
filename = [path file];
delimiter = ' ';
formatSpec = '%f%f%f%f%[^\n\r]';
fileID = fopen(filename,'r');
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'MultipleDelimsAsOne', true, 'TextType', 'string',  'ReturnOnError', false);
fclose(fileID);
%This part loads the element data and saves it as a Data matrix. Look at
%the example element data to create a correct file type
handles.data = [dataArray{1:end-1}];
clearvars filename delimiter formatSpec fileID dataArray ans;
guidata(hObject, handles);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles = guidata(hObject);

%this parts sets up the settings to contruct in CST, it uses separate API
addpath(genpath('C:\Users\sinam\My Drive\Hobbies\CST\cst-matlab\CST-MATLAB-API-master'));

cst = actxserver('CSTStudio.application');

mws = cst.invoke('NewMWS');

CstDefaultUnits(mws)

fmin=9 ;
fmax=11;
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

broad_len =  str2double(get(handles.edit1,'string'));
narrow_len =  str2double(get(handles.edit2,'string'));
wave_thick =  str2double(get(handles.edit3,'string'));
% Dist_ter =  str2double(get(handles.edit4,'string'));
wave_len =  str2double(get(handles.edit5,'string'));


data=handles.data;
loc_u=data(:,1)';
angle_u=data(:,2)';
height_u=data(:,3)';
width_u=data(:,4)';
N=length(width_u);

%Create Waveguide
Name = 'Waveguide';
component = 'Slot_waveguide';
material='Copper (annealed)';
Xrange = [-broad_len/2-wave_thick broad_len/2+wave_thick];
Yrange = [-narrow_len/2-wave_thick narrow_len/2+wave_thick];
Zrange = [0 wave_len];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

Name = 'Waveguide_in';
Xrange = [-broad_len/2 broad_len/2];
Yrange = [-narrow_len/2 narrow_len/2];
Zrange = [0 wave_len-wave_thick];
Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)

CstSubtract(mws,'Slot_waveguide:Waveguide','Slot_waveguide:Waveguide_in')


% Create slots
for ii=1:N
    
    Name = num2str(ii);
    component = 'Slot';
    material='Copper (annealed)';
    Xrange = [broad_len/2+wave_thick-height_u(ii) broad_len/2+wave_thick];
    Yrange = [-narrow_len/2*3 narrow_len/2*3];
    Zrange = [wave_len-loc_u(ii)-width_u(ii)/2 wave_len-loc_u(ii)+width_u(ii)/2];
    Cstbrick(mws, Name, component, material, Xrange, Yrange, Zrange)
    
    Csttransform(mws, Name, component, angle_u(ii))
    
    if ii>1
        component1 = ['Slot:' num2str(1)];
        component2 = ['Slot:' num2str(ii)];
        CstAdd(mws,component1,component2)
    end
       
end

CstSubtract(mws,'Slot_waveguide:Waveguide','Slot:1')

guidata(hObject, handles);



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
