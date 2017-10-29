function save_parameters( method, type, handles, number )

    if( ~strcmp( type, '' ) )

        parameters.method = method;
        parameters.type   = type; %#ok<STRNU,*NASGU>

        if( number == 1 )
            
            parameters.params = get( handles.table_parameter_1, 'UserData' );     
            
        elseif( number == 2 )
            
            list = get( handles.table_parameter_2, 'UserData' );
            
        end

        file = horzcat( method, '-', type, '_parameters.mat' );

        prompt    = { 'Enter the output file name:' };
        dlg_title = 'Input';
        num_lines = 1;
        def       = { file };
        answer    = inputdlg( prompt, dlg_title, num_lines, def );

        %Type bug
        types = type;

        cd( 'save' );
        
        try
            
            save( answer{ 1 }, 'parameters', 'method', 'types' );
            
        catch exception
            
        end
        
        cd( '..' );

    end

end