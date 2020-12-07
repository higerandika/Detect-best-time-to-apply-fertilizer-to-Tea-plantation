function varargout = preprocess(varargin)
% PREPROCESS MATLAB code for preprocess.fig
%      PREPROCESS, by itself, creates a new PREPROCESS or raises the existing
%      singleton*.
%
%      H = PREPROCESS returns the handle to a new PREPROCESS or the handle to
%      the existing singleton*.
%
%      PREPROCESS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PREPROCESS.M with the given input arguments.
%
%      PREPROCESS('Property','Value',...) creates a new PREPROCESS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before preprocess_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to preprocess_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help preprocess

% Last Modified by GUIDE v2.5 05-Dec-2020 09:37:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @preprocess_OpeningFcn, ...
                   'gui_OutputFcn',  @preprocess_OutputFcn, ...
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


% --- Executes just before preprocess is made visible.
function preprocess_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to preprocess (see VARARGIN)

% Choose default command line output for preprocess
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes preprocess wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = preprocess_OutputFcn(hObject, eventdata, handles) 
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
clc
[filename, pathname] = uigetfile({'*.*';'*.bmp';'*.jpg';'*.gif'}, 'Pick a Tea Leaf Image File');
I = imread([pathname,filename]);
I = imresize(I,[256,256]);
I2 = imresize(I,[300,400]);
axes(handles.axes1);
imshow(I2);title('Insert Image');
ss = ones(300,400);
axes(handles.axes2);
imshow(ss);
axes(handles.axes3);
imshow(ss);
handles.ImgData1 = I;
guidata(hObject,handles);

% --- Executes on button press in pushbutton6.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

I3 = handles.ImgData1;
%I4 = imadjust(I3,stretchlim(I3));
I5 = imresize(I3,[300,400]);
gray = rgb2gray(I5);
imhist(gray);
imhist(gray);
axes(handles.axes3);
imshow(gray);title(' Gray Scale ');
handles.ImgData3 = gray;
guidata(hObject,handles);


% --- Executes on button press in pushbutton2.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Extract the target region

I6 = handles.ImgData3;
I7 = imnoise(I6,'gaussian',0,0.025);
I8 = imresize(I7,[300,400]);
axes(handles.axes4);
imshow(I8);title('Added Gaussian Noise');
handles.ImgData4 = I7   ;
guidata(hObject,handles);

% --- Executes on button press in pushbutton3.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I9 = handles.ImgData4;
I10 = wiener2(I9,[5 5]);
I11 = imresize(I10,[300,400]);
axes(handles.axes5);
imshow(I11);title('Noise Removed by Wiener Filter');
handles.ImgData5 = I10   ;
guidata(hObject,handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%clear all
%close all
Icn = handles.ImgData5;
Icn1 = imadjust(Icn,stretchlim(Icn));
Icn2 = imresize(Icn1,[300,400]);
axes(handles.axes2);
imshow(Icn2);title(' Contrast Enhanced ');
handles.ImgData2 = Icn1;
guidata(hObject,handles);



% --- Executes on button press in pushbutton4.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I12 = handles.ImgData5;
%I13 = ind2rgb(I12, colormap);
%it should be RGB color image.but not work
I13 = ind2rgb(gray, colormap);
I14 = imresize(I13,[300,400]);
axes(handles.axes6);
imshow(I14);title('Gray to RGB');
handles.ImgData6 = I13;
guidata(hObject,handles);


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Image segmentation using K-Mean Algorithm
%
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
axes(handles.axes10);
imshow(Iseg2);title(' Edge ditect ');
handles.ImgData7 = Iseg2;
guidata(hObject,handles);
figure,imshow(n1,[]);


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Iseg3 = handles.ImgData7;

Iseg4 = imresize(Iseg3,[300,400]);
axes(handles.axes11);
imshow(Iseg4);title('Edge ditect');
handles.ImgData8 = Iseg4   ;
guidata(hObject,handles);

