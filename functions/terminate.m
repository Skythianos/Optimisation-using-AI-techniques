function terminate( handles, number )

    if( number == 1 )
        % Method 1
        test_function = handles.test_functions_1;
        method_name   = handles.pum_algorithm_1;
        type          = handles.pum_sub_method_1;
        table         = handles.table_parameter_1;
        user_func     = handles.text_function_1;
        position      = handles.text_pos_1;
        value         = handles.text_value_1;
        time          = handles.text_time_1;
        save_data     = handles.button_run_1;
        output        = handles.button_show_1;
    elseif( number == 2 )
        % Method 2
        test_function = handles.test_functions_2;
        method_name   = handles.pum_algorithm_2;
        type          = handles.pum_sub_method_2;
        table         = handles.table_parameter_2;
        user_func     = handles.text_function_2;
        position      = handles.text_pos_2;
        value         = handles.text_value_2;
        time          = handles.text_time_2;
        save_data     = handles.button_run_2;
        output        = handles.button_show_2;
    end

    selected  = get( test_function, 'Value' );
    full_list = get( test_function, 'String' );
    item      = full_list( selected, : );
    
    if( strcmp( item, 'Martin and Gaddy' ) )
        mar = 1;
    else
        mar = 0;
    end
    
    if( strcmp( item, 'Rosenbrock' ) )
        ros = 1;
    else
        ros = 0;
    end
    
    if( strcmp( item, 'Branin' ) )
        bra = 1;
    else
        bra = 0;
    end
    
    if( strcmp( item, 'De Jong' ) )
        hyp = 1;
    else
        hyp = 0;
    end
    
    if( strcmp( item, 'Rastrigin' ) )
        ras = 1;
    else
        ras = 0;
    end
    
    if( strcmp( item, 'Schwefel' ) )
        sch = 1;
    else
        sch = 0;
    end
    
    if( strcmp( item, 'Func by user' ) )
        usr = 1;
    else
        usr = 0;
    end
    
    selected = get( method_name, 'Value' );
    list     = get( method_name, 'String' );
    item_1   = list( selected, : );
    
    selected = get( method_name, 'Value' );
    list     = get( method_name, 'String' );
    item     = list( selected, : );
    
    selected_minor = get( type, 'Value' );
    list_minor     = get( type, 'String' );
    item_m         = list_minor( selected_minor, : );
    
    parameters = get_parameters( handles, get( table, 'UserData' ), item_1{ 1 }, number );
    
    if mar,
        parameters = martin( parameters );
    end
    
    if ras,
        q = strcmp( item, 'Genetic Algorithm' );
        if q,
            parameters.dimension=parameters.dimension + 1;
        end
        parameters = rastrigin( parameters );
        if q,
            parameters.dimension=parameters.dimension - 1;
        end
    end
    
    if sch,
        q = strcmp( item, 'PSO' );
        if q,
            parameters.dimension=parameters.dimension + 1;
        end
        parameters = schwefel( parameters );
        if q,
            parameters.dimension=parameters.dimension - 1;
        end
    end
    
    if bra,
        parameters = branin( parameters );
    end
    
    if ros,
        parameters = rosenbrock( parameters );
    end
    
    if hyp,
        parameters = hyper( parameters );
    end
    
    if usr,
        parameters.func  = char( cellstr( get( user_func, 'String' ) ) );
        parameters.funct = str2func( parameters.func );
    end
    
    q = strcmp( item, 'ACO' );
    if q,
        [ r, t ] = ter_aco( parameters, item_m );
    end
    
    q = strcmp( item, 'PSO' );
    if q,
        [ r, t ] = ter_pso( parameters, item_m );
    end
    
    q = strcmp( item, 'Bee' );
    if q,
        [ r, t ] = ter_bee( parameters, item_m );
    end
    
    q = strcmp( item, 'Bat' );
    if q,
        [ r, t ] = ter_bat( parameters, item_m );
    end
    
    q = strcmp( item, 'Genetic Algorithm' );
    if q,
        [ r, t ] = ter_gea( parameters, item_m );
    end
    
    q = strcmp( item, 'Glowworm' );
    if q,
        [ r, t ] = ter_glo( parameters, item_m );
    end
    
    q = strcmp( item, 'Firefly' );
    if q,
        [ r, t ] = ter_fif( parameters, item_m );
    end
    
    q = strcmp( item, 'Differential' );
    if q,
        [ r, t ] = ter_dif( parameters, item_m );
    end
    
    q = strcmp( item, 'Immune System' );
    if q,
        [ r, t ] = ter_imm( parameters, item_m );
    end
    
    q = strcmp( item, 'User Method' );
    if q,
        parameters = get( handles.params_edit, 'String' );
        [ r, t ] = ter_usr();
    end
    
    q = strcmp( item, 'Stochastic Diffuse Search' );
    if q,
        [ r, t ] = ter_sds( parameters, item_m );
    end
    
    q = strcmp( item, 'Basic Harmony Search' );
    if q,
        [ r, t ] = ter_bhs( parameters, item_m );
    end 
    
    set( position, 'Max', length( r ) - 1 );
    set( position, 'String', r( 1 : ( length( r ) - 1 ) ) );
    set( value, 'String', r( length( r ) ) );
    set( time, 'String', t );

    set( save_data, 'UserData', [ usr, r ] );
    set( output, 'UserData', parameters );
    
end

function [ r, t ] = ter_aco( parameters, item )

    q = strcmp( item, 'Basic' );
    if q,
        [ r, t ] = aco( parameters.funct, parameters.dimension, parameters.particles, ...
            parameters.maximum, parameters.ant_alfa_num, parameters.ant_beta_num, ...
            parameters.ant_pher_num, parameters.ant_limit_num, parameters.lower_num, parameters.upper_num );
    end
    
end

function [ r, t ] = ter_pso( parameters, item )

    q = strcmp( item, 'Basic' );
    if q,
        [ r, t ] = pso( parameters.funct, parameters.dimension, parameters.particles, ...
            parameters.maximum, parameters.lower_num, parameters.upper_num );
    end
    
    q = strcmp( item, 'Advanced' );
    if q,
        [ r, t ] = cpso( parameters.funct, parameters.dimension, parameters.particles, ...
            parameters.maximum, parameters.lower_num, parameters.upper_num );
    end
    
    q = strcmp( item, 'Global-local inertia wiegth' );
    if q,
        [ r, t ] = GLbestIW_pso( parameters.funct, parameters.dimension, ...
            parameters.particles, parameters.maximum, parameters.lower_num, ...
            parameters.upper_num );
    end
    
    q = strcmp( item, 'Tournament Selection' );
    if q,
        [ r, t ] =  toursel( parameters.funct, parameters.dimension, parameters.particles, ...
            parameters.maximum, parameters.lower_num, parameters.upper_num );
    end

end

function [ r, t ] = ter_bee( parameters, item )

    q = strcmp( item, 'Basic' );
    if q,
        [ r, t ] = bee( parameters.funct, parameters.dimension, ...
            parameters.particles, parameters.maximum, parameters.select_num, ...
            parameters.elit_num, parameters.nep_num, parameters.nsp_num, ...
            parameters.ngh_num, parameters.lower_num, parameters.upper_num );
    end
    
    q = strcmp( item, 'Artificial' );
    if q,
        [ r, t ] = artificial_bee( parameters.funct, parameters.dimension, ...
            parameters.particles, parameters.maximum, parameters.limit, ...
            parameters.select_num, parameters.elit_num, parameters.nep_num, ...
            parameters.nsp_num, parameters.ngh_num, parameters.lower_num, ...
            parameters.upper_num );
    end

end

function [ r, t ] = ter_bat( parameters, item )

    q = strcmp( item, 'Basic' );
    if q,
        [ r, t ] = bat( parameters.funct, parameters.dimension, ...
            parameters.particles, parameters.maximum, parameters.fmin_num, ...
            parameters.fmax_num, parameters.rate_null_num, parameters.alpha_num, ...
            parameters.gamma_num, parameters.lower_num, parameters.upper_num );
    end

end

function [ r, t ] = ter_gea( parameters, item )

    q = strcmp( item, 'Basic' );
    if q,
        tic;
        [ r, value ] = ga( parameters.funct, parameters.dimension );
        r( length( r ) ) = value;
        t = toc;
    end

end

function [ r, t ] = ter_fif( parameters, item )

    q = strcmp( item, 'Basic' );
    if q,
        [ r, t ] = firefly( parameters.funct, parameters.dimension, parameters.particles, ...
            parameters.maximum, parameters.al_n, parameters.co_n, parameters.lower_num, ...
            parameters.upper_num );
    end

end

function [ r, t ] = ter_dif( parameters, item )

    q = strcmp( item, 'Basic' );
    if q,
        [ r, t ] = differential( parameters.funct, parameters.dimension, ...
            parameters.particles, parameters.maximum, parameters.f_n, ...
            parameters.cr_n, parameters.lower_num, parameters.upper_num );
    end

end

function [ r, t ] = ter_imm( parameters, item )

    q = strcmp( item, 'Basic' );
    if q,
        [ r, t ] = immune( parameters.funct, parameters.dimension, parameters.particles, ...
            parameters.maximum, parameters.li, parameters.up_p_n, parameters.lo_p_n, ...
            parameters.lower_num, parameters.upper_num );
    end

end

function [ r, t ] = ter_glo( parameters, item )

    q = strcmp( item, 'Basic' );
    if q,
        [ r, t ] = glowworm( parameters.funct, parameters.dimension, parameters.particles, ...
            parameters.step_size, parameters.maximum, parameters.rho, parameters.beta, ...
            parameters.gamma, parameters.max_radius, parameters.neighbour, ...
            parameters.lower_num, parameters.upper_num );
    end

end

function [ r, t ] = ter_sds( parameters, item )

    q = strcmp( item, 'Basic' );
    if q,
        [ r, t ] = sds( parameters.funct, parameters.dimension, parameters.particles, ...
            parameters.maximum, parameters.limit, parameters.lower_num, parameters.upper_num );
    end
        
end

function [ r, t ] = ter_bhs( parameters, item )

    q = strcmp( item, 'Basic' );
    if q,
        [r,t]=bhs( parameters.funct, parameters.dimension, parameters.particles, ...
                parameters.maximum, parameters.hmcr, parameters.par, ...
                parameters.lower_num, parameters.upper_num );
    end
        
end

function [ r, t ] = ter_usr()

    parts = regexp ( parameters, ',', 'split' );
    
    for i = 1 : length( parts ),
        param(  i ) = str2double( parts( i ) ); %#ok<AGROW>
    end
    
    method = char( cellstr( get( handles.filename, 'String' ) ) );
    
    um = str2func( method );
    
    switch numel( param )
        case 1
            [ r, t ] = um( funct , param( 1 ) );
        case 2
            [ r, t ] = um( funct , param( 1 ), param( 2 ) );
        case 3
            [ r, t ] = um( funct , param( 1 ), param( 2 ), param( 3 ) );
        case 4
            [ r, t ] = um( funct , param( 1 ), param( 2 ), param( 3 ), param( 4 ) );
        case 5
            [ r, t ] = um( funct , param( 1 ), param( 2 ), param( 3 ), param( 4 ), param( 5 ) );
        case 6
            [ r, t ] = um( funct , param( 1 ), param( 2 ), param( 3 ), param( 4 ), param( 5 ), param( 6 ) );
        case 7
            [ r, t ] = um( funct , param( 1 ), param( 2 ), param( 3 ), param( 4 ), param( 5 ), param( 6 ), param( 7 ) );
        case 8
            [ r, t ] = um( funct , param( 1 ), param( 2 ), param( 3 ), param( 4 ), param( 5 ), param( 6 ), param( 7 ), param( 8 ) );
        case 9
            [ r, t ] = um( funct , param( 1 ), param( 2 ), param( 3 ), param( 4 ), param( 5 ), param( 6 ), param( 7 ), param( 8 ), param( 9 ) );
        case 10
            [ r, t ] = um( funct , param( 1 ), param( 2 ), param( 3 ), param( 4 ), param( 5 ), param( 6 ), param( 7 ), param( 8 ), param( 9 ), param( 10 ) );
        case 11
            [ r, t ] = um( funct , param( 1 ), param( 2 ), param( 3 ), param( 4 ), param( 5 ), param( 6 ), param( 7 ), param( 8 ), param( 9 ), param( 10 ), param( 11 ) );
    end

end