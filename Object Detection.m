function varargout = FinalProd(varargin)
% FINALPROD MATLAB code for FinalProd.fig
%      FINALPROD, by itself, creates a new FINALPROD or raises the existing
%      singleton*.
%
%      H = FINALPROD returns the handle to a new FINALPROD or the handle to
%      the existing singleton*.
%
%      FINALPROD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FINALPROD.M with the given input arguments.
%
%      FINALPROD('Property','Value',...) creates a new FINALPROD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FinalProd_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FinalProd_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FinalProd

% Last Modified by GUIDE v2.5 10-May-2020 15:35:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FinalProd_OpeningFcn, ...
                   'gui_OutputFcn',  @FinalProd_OutputFcn, ...
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


% --- Executes just before FinalProd is made visible.
function FinalProd_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FinalProd (see VARARGIN)

% Choose default command line output for FinalProd
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FinalProd wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FinalProd_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[Filename,Pathname] = uigetfile('*.jpg','File Selector');
name = strcat(Pathname,Filename);
a=imread(name);
set(handles.edit1,'string',name);
axes(handles.axes1);
imshow(a);

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during finalprod creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
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

a = get(handles.popupmenu1, 'value');
name = get(handles.edit1,'string');
b = imread(name);
if a == 2
    axes(handles.axes2);
    %imshow(b(:,:,1));
    spec = imread('/Users/Bedi/Desktop/Object/specs.jpg');
    %spec = rgb2gray(spec);
    imshow(spec);
    
elseif a == 3
    axes(handles.axes2);
    Phone = imread('/Users/Bedi/Desktop/Object/iPhone.jpg');
    %Phone = rgb2gray(Phone);
    imshow(Phone);
    
elseif a == 4
    axes(handles.axes2);
    Notebook = imread('/Users/Bedi/Desktop/Object/Diary.jpg');
    %Notebook = rgb2gray(Notebook);
    imshow(Notebook);
 
else 
    axes(handles.axes2);
    Coffee = imread('/Users/Bedi/Desktop/Object/Coffee.jpg');
    %Coffee = rgb2gray(Coffee);
    imshow(Coffee);
    
end
    
% --- Executes during finalprod creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
