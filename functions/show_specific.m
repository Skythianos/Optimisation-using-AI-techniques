function values = show_specific( table, selected, parameters )

    parameters = { parameters };
    dialog     = 1;
    numlines   = 1;
    values     = '';

    if( strcmp( selected, 'ACO' ) )

        prompt   = { 'Alfa:', 'Beta:', 'Limit:', 'Pher init:' };
        name     = 'Parameters for ACO';

        if( strcmp( parameters, '' ) )
            
            values = { '4', '3', '0.7', '0.8' };
            
        else
            
            parameters = parameters{ 1 };
            values     = parameters;
            dialog     = 0;
            
        end

    elseif( strcmp( selected, 'Bat' ) )
        
        prompt   = { 'Rate null:', 'Fmin:', 'Fmax:', 'Alfa:', 'Gamma:' };
        name     = 'Parameters for Bat';

        if( strcmp( parameters, '' ) )
            
            values = { '0.6', '10', '25', '0.8', '0.6' };
            
        else
            
            parameters = parameters{ 1 };
            values     = parameters;
            dialog     = 0;
            
        end
        
    elseif( strcmp( selected, 'Bee' ) )

        prompt   = { 'Selected sites:', 'Elite bees:', 'Nep:', 'Nsp:', 'Ngh:', 'Limit:' };
        name     = 'Parameters for Bee';
        
        if( strcmp( parameters, '' ) )

            values = { '5', '3', '7', '5', '3', '0.7' };
            
        else
            
            parameters = parameters{ 1 };
            values     = parameters;
            dialog     = 0;
            
        end
        
    elseif( strcmp( selected, 'Differential' ) )

        prompt   = { 'F:', 'CR:' };
        name     = 'Parameters for Differential';

        if( strcmp( parameters, '' ) )

            values = { '1.3', '0.6' };
            
        else
            
            parameters = parameters{ 1 };
            values     = parameters;
            dialog     = 0;
            
        end
        
    elseif( strcmp( selected, 'Stochastic Diffuse Search' ) )

        prompt   = { 'Limit:' };
        name     = 'Parameters for Stochastic Diffuse Search';

        if( strcmp( parameters, '' ) )

            values = { '0.3' };
            
        else
            
            parameters = parameters{ 1 };
            values     = parameters;
            dialog     = 0;
            
        end
        
    elseif( strcmp( selected, 'Firefly' ) )
        
        prompt   = { 'Alfa:', 'Coefficent:' };
        name     = 'Parameters for Firefly';

        if( strcmp( parameters, '' ) )

            values = { '0.3', '0.4' };
            
        else
            
            parameters = parameters{ 1 };
            values     = parameters;
            dialog     = 0;
            
        end
        
    elseif( strcmp( selected, 'Immune System' ) )
        
        prompt   = { 'High prob:', 'Low prob:', 'Limit:' };
        name     = 'Parameters for Immune System';

        if( strcmp( parameters, '' ) )
            
            values = { '0.7', '0.2', '40' };
            
        else
            
            parameters = parameters{ 1 };
            values     = parameters;
            dialog     = 0;
            
        end
        
    elseif( strcmp( selected, 'Glowworm' ) )
        
        prompt   = { 'Step size:', 'Rho:', 'Beta:', 'Gamma:', 'Max radius:', 'Number of neighbours:' };
        name     = 'Parameters for Glowworm';

        if( strcmp( parameters, '' ) )
            
            values = { '0.03', '0.4', '0.08', '0.6', '10', '5' };
            
        else
            
            parameters = parameters{ 1 };
            values     = parameters;
            dialog     = 0;
            
        end
        
    elseif( strcmp( selected, 'Basic Harmony Search' ) )
        
        prompt   = { 'HMCR:', 'Par:' };
        name     = 'Parameters for Basic Harmony Search';

        if( strcmp( parameters, '' ) )
            
            values = { '0.8', '0.3' };
            
        else
            
            parameters = parameters{ 1 };
            values     = parameters;
            dialog     = 0;
            
        end
        
    elseif( strcmp( selected, 'User Method' ) )

        prompt   = { 'File name:', 'Parameters:' };
        name     = 'Parameters for User Method';
        numlines = 1;

        if(~ strcmp( parameters, '' ) )
            dialog = 0;
        end
        
        values = parameters;
        
    else
        
        dialog = -1;
        
    end
    
    if( dialog == 1 )
        values = inputdlg( prompt, name, numlines, values);
    end
    
    null_check = size( values );
    
    if( null_check(1) ~= 0 )
        
        data = '';

        if( dialog ~= -1 )     

            for i = 1 : numel( prompt )

                data = [ data; prompt( i ), values( i ) ]; %#ok<AGROW>

            end

            set( table, 'Data', data );

        end
    
    end

end