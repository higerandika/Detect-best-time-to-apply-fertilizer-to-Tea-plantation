function varargout = BestTime2ApplyFertilizer(varargin)
% BESTTIME2APPLYFERTILIZER MATLAB code for BestTime2ApplyFertilizer.fig
%      BESTTIME2APPLYFERTILIZER, by itself, creates a new BESTTIME2APPLYFERTILIZER or raises the existing
%      singleton*.
%
%      H = BESTTIME2APPLYFERTILIZER returns the handle to a new BESTTIME2APPLYFERTILIZER or the handle to
%      the existing singleton*.
%
%      BESTTIME2APPLYFERTILIZER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BESTTIME2APPLYFERTILIZER.M with the given input arguments.
%
%      BESTTIME2APPLYFERTILIZER('Property','Value',...) creates a new BESTTIME2APPLYFERTILIZER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before BestTime2ApplyFertilizer_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to BestTime2ApplyFertilizer_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BestTime2ApplyFertilizer

% Last Modified by GUIDE v2.5 09-Dec-2020 10:07:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @BestTime2ApplyFertilizer_OpeningFcn, ...
                   'gui_OutputFcn',  @BestTime2ApplyFertilizer_OutputFcn, ...
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


% --- Executes just before BestTime2ApplyFertilizer is made visible.
function BestTime2ApplyFertilizer_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to BestTime2ApplyFertilizer (see VARARGIN)

% Choose default command line output for BestTime2ApplyFertilizer
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes BestTime2ApplyFertilizer wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = BestTime2ApplyFertilizer_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Panel1 = handles.ImgData1;
axes(handles.uipanel2);
guidata(hObject,handles);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc
[filename, pathname] = uigetfile({'*.*';'*.bmp';'*.jpg';'*.gif'}, 'Pick a Tea Leaf Image File');
Im = imread([pathname,filename]);
Im = imresize(Im,[256,256]);
Im2 = imresize(Im,[300,400]);
axes(handles.axes1);
imshow(Im2);
ss = ones(300,400);
axes(handles.axes2);
imshow(ss);
axes(handles.axes3);
imshow(ss);
handles.ImgData1 = Im;
guidata(hObject,handles);


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I3 = handles.ImgData1;
I5 = imresize(I3,[300,400]);
gray = rgb2gray(I5);
axes(handles.axes2);
imshow(gray);
handles.ImgData2 = gray;
guidata(hObject,handles);


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I6 = handles.ImgData2;
I7 = imnoise(I6,'gaussian',0,0.025);
I8 = imresize(I7,[300,400]);
axes(handles.axes3);
imshow(I8);
handles.ImgData4 = I7   ;
guidata(hObject,handles);


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I9 = handles.ImgData4;
I10 = wiener2(I9,[5 5]);
I11 = imresize(I10,[300,400]);
axes(handles.axes4);
imshow(I11);
handles.ImgData5 = I10   ;
guidata(hObject,handles);


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Icn = handles.ImgData5;
Icn1 = imadjust(Icn,stretchlim(Icn));
Icn2 = imresize(Icn1,[300,400]);
axes(handles.axes5);
imshow(Icn2);
handles.ImgData2 = Icn1;
guidata(hObject,handles);


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%function segment_image()
threshold = 0.01;
Iseg1 = handles.ImgData2;
Iseg1=medfilt2(Iseg1,[3 3]); %Median filtering the image to remove noise%
%
%Hist = imhist(Iseg1,256);
%
BW = edge(Iseg1,'sobel'); %finding edges 
[imx,imy]=size(BW);
msk=[0 0 0 0 0;
     0 1 1 1 0;
     0 1 1 1 0;
     0 1 1 1 0;
     0 0 0 0 0;];
B=conv2(double(BW),double(msk)); %Smoothing  image to reduce the number of connected components
L = bwlabel(B,8);% Calculating connected components
mx=max(max(L))
% There will be mx connected components.Here U can give a value between 1 and mx for L or in a loop you can extract all connected components
% If you are using the attached car image, by giving 17,18,19,22,27,28 to L you can extract the number plate completely.
[r,c] = find(L==17);  
rc = [r c];
[sx sy]=size(rc);
n1=zeros(imx,imy); 
for i=1:sx
    x1=rc(i,1);
    y1=rc(i,2);
    n1(x1,y1)=255;
end % Storing the extracted image in an array

Iseg2 = imresize(B,[300,400]);
axes(handles.axes6);
imshow(Iseg2);
handles.ImgData7 = Iseg2;
guidata(hObject,handles);
%figure,imshow(n1,[]);


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Ia = handles.ImgData2;
%Ia=getappdata(0,'Ia');
acomp=Ia;
acomp=imcomplement(acomp);
axes(handles.axes7);
imshow(acomp);
handles.ImgData8 = acomp;
guidata(hObject,handles);
