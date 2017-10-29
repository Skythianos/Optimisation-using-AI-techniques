function varargout = guidetemplate0(varargin)
% GUIDETEMPLATE0 MATLAB code for guidetemplate0.fig
%      GUIDETEMPLATE0, by itself, creates a new GUIDETEMPLATE0 or raises the existing
%      singleton*.
%
%      H = GUIDETEMPLATE0 returns the handle to a new GUIDETEMPLATE0 or the handle to
%      the existing singleton*.
%
%      GUIDETEMPLATE0('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIDETEMPLATE0.M with the given input arguments.
%
%      GUIDETEMPLATE0('Property','Value',...) creates a new GUIDETEMPLATE0 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before guidetemplate0_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to guidetemplate0_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2006 The MathWorks, Inc.

% Edit the above text to modify the response to help guidetemplate0

% Last Modified by GUIDE v2.5 23-Oct-2013 15:36:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @guidetemplate0_OpeningFcn, ...
                   'gui_OutputFcn',  @guidetemplate0_OutputFcn, ...
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
end

% --- Executes just before guidetemplate0 is made visible.
function guidetemplate0_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to guidetemplate0 (see VARARGIN)

% Choose default command line output for guidetemplate0
handles.output = hObject;

addpath(genpath(pwd));

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes guidetemplate0 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end

% --- Outputs from this function are returned to the command line.
function varargout = guidetemplate0_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

end
%% Solution components --------------------------------------------------------------------------------

function text_function_1_Callback(hObject, eventdata, handles)
% hObject    handle to text_function_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of text_function_1 as text
%        str2double(get(hObject,'String')) returns contents of text_function_1 as a double
end
 
% --- Executes during object creation, after setting all properties.
function text_function_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_function_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
end

function text_function_2_Callback(hObject, eventdata, handles)
% hObject    handle to text_function_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_function_2 as text
%        str2double(get(hObject,'String')) returns contents of text_function_2 as a double
end

% --- Executes during object creation, after setting all properties.
function text_function_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_function_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end

end
 
 
function text_pos_1_Callback(hObject, eventdata, handles)
% hObject    handle to text_pos_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of text_pos_1 as text
%        str2double(get(hObject,'String')) returns contents of text_pos_1 as a double
end
 
% --- Executes during object creation, after setting all properties.
function text_pos_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_pos_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
end

function text_pos_2_Callback(hObject, eventdata, handles)
% hObject    handle to text_pos_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_pos_2 as text
%        str2double(get(hObject,'String')) returns contents of text_pos_2 as a double
end

% --- Executes during object creation, after setting all properties.
function text_pos_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_pos_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
end
 
 
function text_value_1_Callback(hObject, eventdata, handles)
% hObject    handle to text_value_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of text_value_1 as text
%        str2double(get(hObject,'String')) returns contents of text_value_1 as a double
end
 
% --- Executes during object creation, after setting all properties.
function text_value_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_value_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
end

function text_value_2_Callback(hObject, eventdata, handles)
% hObject    handle to text_value_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_value_2 as text
%        str2double(get(hObject,'String')) returns contents of text_value_2 as a double
end

% --- Executes during object creation, after setting all properties.
function text_value_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_value_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
end 
 
function text_time_1_Callback(hObject, eventdata, handles)
% hObject    handle to text_time_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of text_time_1 as text
%        str2double(get(hObject,'String')) returns contents of text_time_1 as a double
end
 
% --- Executes during object creation, after setting all properties.
function text_time_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_time_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
end

function text_time_2_Callback(hObject, eventdata, handles)
% hObject    handle to text_time_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_time_2 as text
%        str2double(get(hObject,'String')) returns contents of text_time_2 as a double
end

% --- Executes during object creation, after setting all properties.
function text_time_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_time_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
end

%% General components ---------------------------------------------------------------------------------
   
function text_dim_1_Callback(hObject, eventdata, handles)
% hObject    handle to text_dim_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of text_dim_1 as text
%        str2double(get(hObject,'String')) returns contents of text_dim_1 as a double
end
 
% --- Executes during object creation, after setting all properties.
function text_dim_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_dim_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
end

function text_dim_2_Callback(hObject, eventdata, handles)
% hObject    handle to text_dim_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_dim_2 as text
%        str2double(get(hObject,'String')) returns contents of text_dim_2 as a double
end

% --- Executes during object creation, after setting all properties.
function text_dim_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_dim_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
end
  
function text_particles_1_Callback(hObject, eventdata, handles)
% hObject    handle to text_particles_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of text_particles_1 as text
%        str2double(get(hObject,'String')) returns contents of text_particles_1 as a double
end
 
% --- Executes during object creation, after setting all properties.
function text_particles_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_particles_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
end

function text_particles_2_Callback(hObject, eventdata, handles)
% hObject    handle to text_particles_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_particles_2 as text
%        str2double(get(hObject,'String')) returns contents of text_particles_2 as a double
end

% --- Executes during object creation, after setting all properties.
function text_particles_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_particles_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
end 
 
function text_max_iter_1_Callback(hObject, eventdata, handles)
% hObject    handle to text_max_iter_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of text_max_iter_1 as text
%        str2double(get(hObject,'String')) returns contents of text_max_iter_1 as a double
end
 
% --- Executes during object creation, after setting all properties.
function text_max_iter_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_max_iter_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
end

function text_max_iter_2_Callback(hObject, eventdata, handles)
% hObject    handle to text_max_iter_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_max_iter_2 as text
%        str2double(get(hObject,'String')) returns contents of text_max_iter_2 as a double
end

% --- Executes during object creation, after setting all properties.
function text_max_iter_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_max_iter_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
end

 
function text_low_bound_1_Callback(hObject, eventdata, handles)
% hObject    handle to text_low_bound_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of text_low_bound_1 as text
%        str2double(get(hObject,'String')) returns contents of text_low_bound_1 as a double
end
 
% --- Executes during object creation, after setting all properties.
function text_low_bound_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_low_bound_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
end

function text_low_bound_2_Callback(hObject, eventdata, handles)
% hObject    handle to text_low_bound_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_low_bound_2 as text
%        str2double(get(hObject,'String')) returns contents of text_low_bound_2 as a double
end

% --- Executes during object creation, after setting all properties.
function text_low_bound_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_low_bound_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end

end
 
 
function text_up_bound_1_Callback(hObject, eventdata, handles)
% hObject    handle to text_up_bound_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of text_up_bound_1 as text
%        str2double(get(hObject,'String')) returns contents of text_up_bound_1 as a double
end
 
% --- Executes during object creation, after setting all properties.
function text_up_bound_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_up_bound_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
end

function text_up_bound_2_Callback(hObject, eventdata, handles)
% hObject    handle to text_up_bound_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_up_bound_2 as text
%        str2double(get(hObject,'String')) returns contents of text_up_bound_2 as a double
end

% --- Executes during object creation, after setting all properties.
function text_up_bound_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_up_bound_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
end
 
%% Buttons ------------------------------------------------------------------------------------------- 
  
% --- Executes on button press in button_run_1.
function button_run_1_Callback(hObject, eventdata, handles)
% hObject    handle to button_run_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA) 
    terminate( handles, 1 );
    
end

% --- Executes on button press in button_run_2.
function button_run_2_Callback(hObject, eventdata, handles)
% hObject    handle to button_run_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    terminate( handles, 2 );

end

% --- Executes on button press in button_save_1.
function button_save_1_Callback(hObject, eventdata, handles)
% hObject    handle to button_save_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    selected       = get( handles.pum_algorithm_1, 'Value' );
    full_list      = get( handles.pum_algorithm_1, 'String' );
    item           = full_list( selected, : );
    selected_minor = get( handles.pum_sub_method_1, 'Value' );
    list_minor     = get( handles.pum_sub_method_1, 'String' );
    item_m         = list_minor( selected_minor, : );
    
    save_parameters( item{1}, item_m{1}, handles, 1 );
    
end

% --- Executes on button press in button_save_2.
function button_save_2_Callback(hObject, eventdata, handles)
% hObject    handle to button_save_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    selected       = get( handles.pum_algorithm_2, 'Value' );
    full_list      = get( handles.pum_algorithm_2, 'String' );
    item           = full_list( selected, : );
    selected_minor = get( handles.pum_sub_method_2, 'Value' );
    list_minor     = get( handles.pum_sub_method_2, 'String' );
    item_m         = list_minor( selected_minor, : );
    
    save_parameters( item{1}, item_m{1}, handles, 2 );

end

% --- Executes on button press in button_load_1.
function button_load_1_Callback(hObject, eventdata, handles)
% hObject    handle to button_load_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    load_parameters( handles, 1 );
    
end

% --- Executes on button press in button_load_2.
function button_load_2_Callback(hObject, eventdata, handles)
% hObject    handle to button_load_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    load_parameters( handles, 2 );

end

% --- Executes on button press in button_set_parameters_1.
function button_set_parameters_1_Callback(hObject, eventdata, handles)
% hObject    handle to button_set_parameters_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    selected  = get( handles.pum_algorithm_1, 'Value' );
    full_list = get( handles.pum_algorithm_1, 'String' );
    item      = full_list( selected, : );
    data      = show_specific( handles.table_parameter_1, item, '' );
    
    null_check = size( data );
    
    if( null_check(1) ~= 0 )
    
        set( handles.table_parameter_1, 'UserData', data );
        set( handles.button_set_parameters_1, 'TooltipString', '' );
        
    else
        
        set( handles.button_set_parameters_1, 'TooltipString', 'There is no specific parameter!' );
        
    end

end

% --- Executes on button press in button_set_parameters_2.
function button_set_parameters_2_Callback(hObject, eventdata, handles)
% hObject    handle to button_set_parameters_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    selected  = get( handles.pum_algorithm_2, 'Value' );
    full_list = get( handles.pum_algorithm_2, 'String' );
    item      = full_list( selected, : );
    data      = show_specific( handles.table_parameter_2, item, '' );
    
    null_check = size( data );
    
    if( null_check(1) ~= 0 )
    
        set( handles.table_parameter_2, 'UserData', data );
        set( handles.button_set_parameters_2, 'TooltipString', '' );
        
    else
        
        set( handles.button_set_parameters_2, 'TooltipString', 'There is no specific parameter!' );
        
    end

end

% --- Executes on button press in button_help_1.
function button_help_1_Callback(hObject, eventdata, handles)
% hObject    handle to button_help_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    selected  = get( handles.pum_algorithm_1, 'Value' );
    full_list = get( handles.pum_algorithm_1, 'String' );
    item      = full_list( selected, : );
    
    display_help( item );
    
end

% --- Executes on button press in button_help_2.
function button_help_2_Callback(hObject, eventdata, handles)
% hObject    handle to button_help_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    selected  = get( handles.pum_algorithm_2, 'Value' );
    full_list = get( handles.pum_algorithm_2, 'String' );
    item      = full_list( selected, : );
    
    display_help( item );

end



%% Other components
 
% --- Executes on selection change in test_functions_1.
function test_functions_1_Callback(hObject, eventdata, handles)
% hObject    handle to test_functions_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns test_functions_1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from test_functions_1
    v = get( handles.test_functions_1, 'Value' );
    if(v == 7)
        
        set( handles.text_dim_1,       'Enable', 'on' );
        set( handles.text_low_bound_1, 'Enable', 'on' );
        set( handles.text_up_bound_1,  'Enable', 'on' );
        
    else
        
        set( handles.text_dim_1,       'Enable', 'off' );
        set( handles.text_low_bound_1, 'Enable', 'off' );
        set( handles.text_up_bound_1,  'Enable', 'off' );
        
    end
    
end

% --- Executes during object creation, after setting all properties.
function test_functions_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to test_functions_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
end

% --- Executes on selection change in test_functions_2.
function test_functions_2_Callback(hObject, eventdata, handles)
% hObject    handle to test_functions_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns test_functions_2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from test_functions_2
    v = get( handles.test_functions_2, 'Value' );
    if(v == 7)
        
        set( handles.text_dim_2,       'Enable', 'on' );
        set( handles.text_low_bound_2, 'Enable', 'on' );
        set( handles.text_up_bound_2,  'Enable', 'on' );
        
    else
        
        set( handles.text_dim_2,       'Enable', 'off' );
        set( handles.text_low_bound_2, 'Enable', 'off' );
        set( handles.text_up_bound_2,  'Enable', 'off' );
        
    end

end

% --- Executes during object creation, after setting all properties.
function test_functions_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to test_functions_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end

end

 
 
% --- Executes on selection change in pum_sub_method_1.
function pum_sub_method_1_Callback(hObject, eventdata, handles)
% hObject    handle to pum_sub_method_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: contents = cellstr(get(hObject,'String')) returns pum_sub_method_1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pum_sub_method_1
    set( handles.table_parameter_1, 'Data', [] );

end
 
% --- Executes during object creation, after setting all properties.
function pum_sub_method_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pum_sub_method_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
end

% --- Executes on selection change in pum_sub_method_2.
function pum_sub_method_2_Callback(hObject, eventdata, handles)
% hObject    handle to pum_sub_method_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pum_sub_method_2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pum_sub_method_2
    set( handles.table_parameter_2, 'Data', [] );
    
end

% --- Executes during object creation, after setting all properties.
function pum_sub_method_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pum_sub_method_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end

end

% --- Executes on selection change in pum_algorithm_1.
function pum_algorithm_1_Callback(hObject, eventdata, handles)
% hObject    handle to pum_algorithm_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pum_algorithm_1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pum_algorithm_1
    show_methods( handles.pum_algorithm_1, handles.pum_sub_method_1 );
    set( handles.pum_sub_method_1, 'Value', 1 );
    set( handles.table_parameter_1, 'Data', '' );
    
end

% --- Executes during object creation, after setting all properties.
function pum_algorithm_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pum_algorithm_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
end

% --- Executes on selection change in pum_algorithm_2.
function pum_algorithm_2_Callback(hObject, eventdata, handles)
% hObject    handle to pum_algorithm_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pum_algorithm_2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pum_algorithm_2
    show_methods( handles.pum_algorithm_2, handles.pum_sub_method_2 );
    set( handles.pum_sub_method_2, 'Value', 1 );
    set( handles.table_parameter_2, 'Data', '' );
    
end

% --- Executes during object creation, after setting all properties.
function pum_algorithm_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pum_algorithm_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end
    
end
 
%% Section for plotting -------------------------------------------------------------------------------
    
% --- Executes on button press in button_show_1.
function button_show_1_Callback(hObject, eventdata, handles)
% hObject    handle to button_show_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    params = get( handles.button_show_1, 'UserData' );
    data   = get( handles.button_run_1, 'UserData' );
    usr    = data( 1 );
    r      = data( 2 : end );
    
    if( params.dimension > 1 && params.dimension < 4 )
        
        if( ~usr )
            
            if( params.dimension == 2 )
                
                figure;
                ezplot( params.func );
                hold on;
                plot( r(1), r(2), 'o' );
                
            end
            
            if( params.dimension == 3 )
                
                figure;
                mesh( params.X, params.Y, params.Z );
                hold on;
                plot3( r(1), r(2), r(3), 'o' );
                
            end

        else
            
            u = strfind( params.func, '(x)' );
            
            if( u > 0 )
                
                params.func = strrep( params.func, '@(x)', '' );
                params.func = strrep( params.func, 'x(1)', 'X' );
                
                if( params.dimension == 2 )
                    
                    figure;
                    ezplot( params.func, [ params.lower_num, params.upper_num ] );
                    hold on;
                    plot( r(1), r(2), 'o' );
                    
                end
                
                if( params.dimension == 3 )
                    
                    figure;
                    params.func = strrep( params.func, 'x(2)', 'Y' );
                    ezmesh( params.func, [ params.lower_num, params.upper_num ] );
                    hold on;
                    plot3( r(1), r(2), r(3), 'o' );
                    
                end
                
            end
            
        end
        
    else
        
        spy;
        
    end
    
end

% --- Executes on button press in button_show_2.
function button_show_2_Callback(hObject, eventdata, handles)
% hObject    handle to button_show_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    params = get( handles.button_show_2, 'UserData' );
    data   = get( handles.button_run_2, 'UserData' );
    usr    = data( 1 );
    r      = data( 2 : end );
    
    if( params.dimension > 1 && params.dimension < 4 )
        
        if( ~usr )
            
            if( params.dimension == 2 )
                
                figure;
                ezplot( params.func );
                hold on;
                plot( r(1), r(2), 'o' );
                
            end
            
            if( params.dimension == 3 )
                
                figure;
                mesh( params.X, params.Y, params.Z );
                hold on;
                plot3( r(1), r(2), r(3), 'o' );
                
            end

        else
            
            u = strfind( params.func, '(x)' );
            
            if( u > 0 )
                
                params.func = strrep( params.func, '@(x)', '' );
                params.func = strrep( params.func, 'x(1)', 'X' );
                
                if( params.dimension == 2 )
                    
                    figure;
                    ezplot( params.func, [ params.lower_num, params.upper_num ] );
                    hold on;
                    plot( r(1), r(2), 'o' );
                    
                end
                
                if( params.dimension == 3 )
                    
                    figure;
                    params.func = strrep( params.func, 'x(2)', 'Y' );
                    ezmesh( params.func, [ params.lower_num, params.upper_num ] );
                    hold on;
                    plot3( r(1), r(2), r(3), 'o' );
                    
                end
                
            end
            
        end
        
    else
        
        spy;
        
    end
    
end
