function varargout = responsi2(varargin)
% RESPONSI2 MATLAB code for responsi2.fig
%      RESPONSI2, by itself, creates a new RESPONSI2 or raises the existing
%      singleton*.
%
%      H = RESPONSI2 returns the handle to a new RESPONSI2 or the handle to
%      the existing singleton*.
%
%      RESPONSI2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESPONSI2.M with the given input arguments.
%
%      RESPONSI2('Property','Value',...) creates a new RESPONSI2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before responsi2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to responsi2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help responsi2

% Last Modified by GUIDE v2.5 18-May-2022 14:52:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @responsi2_OpeningFcn, ...
                   'gui_OutputFcn',  @responsi2_OutputFcn, ...
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


% --- Executes just before responsi2 is made visible.
function responsi2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to responsi2 (see VARARGIN)

% Choose default command line output for responsi2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes responsi2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = responsi2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in read_005.
function read_005_Callback(hObject, eventdata, handles)
% hObject    handle to read_005 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

filename = 'DatasetHostelJepang.xlsx';
price = xlsread(filename, 'D2:D51');
distance = xlsread(filename, 'E2:E51');
cleanliness = xlsread(filename, 'I2:I51');
value = xlsread(filename, 'N2:N51');
dataset = [price distance cleanliness value];

set (handles.uitable1, 'Data', dataset, 'Columname', {'Price', 'Distance from city center', 'Cleanliness', 'Value for money'});


function w1_005_Callback(hObject, eventdata, handles)
% hObject    handle to w1_005 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w1_005 as text
%        str2double(get(hObject,'String')) returns contents of w1_005 as a double


% --- Executes during object creation, after setting all properties.
function w1_005_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w1_005 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w2_005_Callback(hObject, eventdata, handles)
% hObject    handle to w2_005 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w2_005 as text
%        str2double(get(hObject,'String')) returns contents of w2_005 as a double


% --- Executes during object creation, after setting all properties.
function w2_005_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w2_005 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w3_005_Callback(hObject, eventdata, handles)
% hObject    handle to w3_005 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w3_005 as text
%        str2double(get(hObject,'String')) returns contents of w3_005 as a double


% --- Executes during object creation, after setting all properties.
function w3_005_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w3_005 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function w4_005_Callback(hObject, eventdata, handles)
% hObject    handle to w4_005 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of w4_005 as text
%        str2double(get(hObject,'String')) returns contents of w4_005 as a double


% --- Executes during object creation, after setting all properties.
function w4_005_CreateFcn(hObject, eventdata, handles)
% hObject    handle to w4_005 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pb_005.
function pb_005_Callback(hObject, eventdata, handles)
% hObject    handle to pb_005 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

filename = 'DatasetHostelJepang.xlsx';
price = xlsread(filename, 'D2:D51');
distance = xlsread(filename, 'E2:E51');
cleanliness = xlsread(filename, 'I2:I51');
value = xlsread(filename, 'N2:N51');

x = [price distance cleanliness value];
k = [0 0 1 1];
w = [1 4 2 3];

[m n] = size(x);
w= w./sum(w);
for j=l:n,
    if k(j) ==0, w(j)=-1*w(j);
    end;
end;
for i = l:m;
    S(i)=prod (x(i,:).^w);
end;
V =S/sum(S);
V= V.';
