function load_parameters( handles, number )

    uiopen;

    if( number == 1 )
        
        place       = handles.pum_algorithm_1;
        minor_place = handles.pum_sub_method_1;
        table       = handles.table_parameter_1;
        
    elseif( number == 2 )
        
        place       = handles.pum_algorithm_2;
        minor_place = handles.pum_sub_method_2;
        table       = handles.table_parameter_2;
        
    end

    q = strcmp( method, 'ACO' );
    
    if( q )
        set( place, 'Value', 2 );
    end
    
    q = strcmp( method, 'PSO' );
    
    if( q )
        set( place, 'Value', 3 );
    end
    
    q = strcmp( method, 'Bee' );
    
    if( q )
        set( place, 'Value', 4 );
    end
    
    q = strcmp( method, 'Bat' );
    
    if( q )
        set( place, 'Value', 5 );
    end
    
    q = strcmp( method, 'Genetic Algorithm' );
    
    if( q )
        set( place, 'Value', 6 );
    end
    
    q = strcmp( method, 'Glowworm' );
    
    if( q )
        set( place, 'Value', 7 );
    end
    
    q = strcmp( method, 'Firefly' );
    
    if( q )
        set( place, 'Value', 8 );
    end
    
    q = strcmp( method, 'Differential' );
    
    if( q )
        set( place, 'Value', 9 );
    end
    
    q = strcmp( method, 'Immune System' );
    
    if( q )
        set( place, 'Value', 10 );
    end
    
    q = strcmp( method, 'Stochastic Diffuse Search' );
    
    if( q )
        set( place, 'Value', 11 );
    end
    
    q = strcmp( method, 'Basic Harmony Search' );
    
    if( q )
        set( place, 'Value', 12 );
    end
    
    q = strcmp( method, 'User Method' );
    
    if( q )
        set( place, 'Value', 13 );
    end
    
    show_methods( place, minor_place );
    
    list         = get( handles.minor_algo, 'String' );
    [ ~, index ] = ismember( types, list );
    
    set( minor_place, 'Value', index );
    
    data = show_specific( table, method, parameters.params );
    
    set( table, 'UserData' ,data );

end