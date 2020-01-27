
function varargout = BMS_Ploteo(varargin)
% BMS_PLOTEO MATLAB code for BMS_Ploteo.fig
%      BMS_PLOTEO, by itself, creates a new BMS_PLOTEO or raises the existing
%      singleton*.
%
%      H = BMS_PLOTEO returns the handle to a new BMS_PLOTEO or the handle to
%      the existing singleton*.
%
%      BMS_PLOTEO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BMS_PLOTEO.M with the given input arguments.
%
%      BMS_PLOTEO('Property','Value',...) creates a new BMS_PLOTEO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before BMS_Ploteo_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to BMS_Ploteo_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BMS_Ploteo

% Last Modified by GUIDE v2.5 05-Nov-2019 16:52:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @BMS_Ploteo_OpeningFcn, ...
                   'gui_OutputFcn',  @BMS_Ploteo_OutputFcn, ...
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


% --- Executes just before BMS_Ploteo is made visible.
function BMS_Ploteo_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to BMS_Ploteo (see VARARGIN)

% Choose default command line output for BMS_Ploteo
handles.output = hObject;
axes(handles.Ploteo)
xlim([0 50])
ylim([0 50])
grid
% Update handles structure
guidata(hObject, handles);


% UIWAIT makes BMS_Ploteo wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = BMS_Ploteo_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Conexion.
function Conexion_Callback(hObject, eventdata, handles)
% hObject    handle to Conexion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc, clear all;
delete(instrfind);
global con;
contador=1;
Pipo=0;
voltaje=0;%Declara variable en la cual se van a guardar los valores
con=serial('COM3','BaudRate',56000);
fopen(con);
fwrite(con,'1');
              A=fread(con,50,'uint8'); %Toma el valor recibido por el puerto y lo guarda en la variable
              assignin('base','Pipo',A);
                while contador<=length(Pipo)
                    voltaje(contador)=(Pipo(contador)-48); %Hace la conversión a voltaje
                    contador=contador+1;
                end
                drawnow;
                plot(voltaje,'r-')
                grid on;
                hold off;
                ylim([0 50])
                xlabel('Numero de Muestras'); %Leyenda o titulo del eje x
                ylabel('Voltaje (V)'); %Leyenda o titulo en el eje y

% --- Executes on button press in Desconectar.
function Desconectar_Callback(hObject, eventdata, handles)
% hObject    handle to Desconectar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global con;
fwrite(con,'0');
b=fread(con);
    if(b == 3)
        Mensaje = 'Puto el q lo lea';
        set(handles.MENSAJEEE,'String',Mensaje);
    end





function Q_Callback(hObject, eventdata, handles)
% hObject    handle to Q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Q as text
%        str2double(get(hObject,'String')) returns contents of Q as a double


% --- Executes during object creation, after setting all properties.
function Q_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Vnom_Callback(hObject, eventdata, handles)
% hObject    handle to Vnom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Vnom as text
%        str2double(get(hObject,'String')) returns contents of Vnom as a double


% --- Executes during object creation, after setting all properties.
function Vnom_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Vnom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ri_Callback(hObject, eventdata, handles)
% hObject    handle to Ri (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ri as text
%        str2double(get(hObject,'String')) returns contents of Ri as a double


% --- Executes during object creation, after setting all properties.
function Ri_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ri (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SoC0_Callback(hObject, eventdata, handles)
% hObject    handle to SoC0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SoC0 as text
%        str2double(get(hObject,'String')) returns contents of SoC0 as a double


% --- Executes during object creation, after setting all properties.
function SoC0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SoC0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object deletion, before destroying properties.
function text2_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function MENSAJEEE_Callback(hObject, eventdata, handles)
% hObject    handle to MENSAJEEE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MENSAJEEE as text
%        str2double(get(hObject,'String')) returns contents of MENSAJEEE as a double


% --- Executes during object creation, after setting all properties.
function MENSAJEEE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MENSAJEEE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
