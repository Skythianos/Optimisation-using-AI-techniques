function show_methods( method, type )

    data = get( type, 'UserData' );
    
    if( ~isempty( data ) )
        
        for i = 1 : numel( data )
            data( i ). setVisible( false );
        end
        
    end
    
    selected  = get( method, 'Value' );
    full_list = get( method, 'String' );
    item      = full_list( selected, : );
    
    q = strcmp( item, '' );   
    if( q )
        list = '';
        set( type, 'String', list );
    end
    
    q = strcmp( item, 'ACO' );
    if( q )
        list{ 1 } = '';
        list{ 2 } = 'Basic';
        set( type, 'String', list );
    end
    
    q = strcmp( item, 'PSO' );
    if( q )
        list{ 1 } = '';
        list{ 2 } = 'Basic';
        list{ 3 } = 'Advanced';
        list{ 4 } = 'Global-local inertia wiegth';
        list{ 5 } = 'Tournament Selection';
        set( type, 'String', list );
    end
    
    q = strcmp( item, 'Bee' );
    if( q )
        list{ 1 } = '';
        list{ 2 } = 'Basic';
        list{ 3 } = 'Artificial';
        set( type, 'String', list );
    end
    
    q = strcmp( item, 'Bat' );
    if( q )
        list{ 1 } = '';
        list{ 2 } = 'Basic';
        set( type, 'String', list );
    end
    
    q = strcmp( item, 'Genetic Algorithm' );
    if( q )
        list{ 1 } = '';
        list{ 2 } = 'Basic';
        set( type, 'String', list );
    end
    
    q = strcmp( item, 'Glowworm' );
    if( q )
        list{ 1 } = '';
        list{ 2 } = 'Basic';
        set( type, 'String', list );
    end
    
    q = strcmp( item, 'Firefly' );
    if( q )
        list{ 1 } = '';
        list{ 2 } = 'Basic';
        set( type, 'String', list );
    end
    
    q = strcmp( item, 'Differential' );
    if( q )
        list{ 1 } = '';
        list{ 2 } = 'Basic';
        set( type, 'String', list );
    end
    
    q = strcmp( item, 'Immune System' );
    if( q )
        list{ 1 } = '';
        list{ 2 } = 'Basic';
        set( type, 'String', list );
    end
    
    q = strcmp( item, 'User Method' );
    if( q )
        list{ 1 } = '';
        set( type, 'String', list );
    end
    
    q = strcmp( item, 'Stochastic Diffuse Search' );
    if( q )
        list{ 1 } = '';
        list{ 2 } = 'Basic';
        set( type, 'String', list );
    end
    
    q = strcmp( item, 'Basic Harmony Search' );
    if( q )
        list{ 1 } = '';
        list{ 2 } = 'Basic';
        set( type, 'String', list );
    end

end