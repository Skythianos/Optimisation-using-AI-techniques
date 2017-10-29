function params = get_parameters( handles, data, meth, number )

    if( number == 1 )
        params.dimension = str2num( get( handles.text_dim_1, 'String' ) ); %#ok<*ST2NM>
        params.lower_num = str2num( get( handles.text_low_bound_1, 'String' ) );
        params.upper_num = str2num( get( handles.text_up_bound_1, 'String' ) );
        params.particles = str2num( get( handles.text_particles_1, 'String' ) );
        params.maximum   = str2num( get( handles.text_max_iter_1, 'String' ) );
    elseif( number == 2 )
        params.dimension = str2num( get( handles.text_dim_2, 'String' ) );
        params.lower_num = str2num( get( handles.text_low_bound_2, 'String' ) );
        params.upper_num = str2num( get( handles.text_up_bound_2, 'String' ) );
        params.particles = str2num( get( handles.text_particles_2, 'String' ) );
        params.maximum   = str2num( get( handles.text_max_iter_2, 'String' ) );
    end

    if( strcmp( meth, 'ACO' ) )
        
        params.ant_alfa_num  = str2num( data{ 1 } );
        params.ant_beta_num  = str2num( data{ 2 } );
        params.ant_limit_num = str2num( data{ 3 } );
        params.ant_pher_num  = str2num( data{ 4 } );
        
    elseif( strcmp( meth, 'Bat' ) )
        
        params.fmin_num      = str2num( data{ 1 } );
        params.fmax_num      = str2num( data{ 2 } );
        params.alpha_num     = str2num( data{ 3 } );
        params.gamma_num     = str2num( data{ 4 } );
        params.rate_null_num = str2num( data{ 5 } );
        
    elseif( strcmp( meth, 'Bee' ) )
        
        params.select_num = str2num( data{ 1 } );
        params.elit_num   = str2num( data{ 2 } );
        params.nep_num    = str2num( data{ 3 } );
        params.nsp_num    = str2num( data{ 4 } );
        params.ngh_num    = str2num( data{ 5 } );
        params.limit      = str2num( data{ 6 } );
        
    elseif( strcmp( meth, 'Glowworm' ) )
        
        params.step_size  = str2num( data{ 1 } );
        params.rho        = str2num( data{ 2 } );
        params.beta       = str2num( data{ 3 } );
        params.gamma      = str2num( data{ 4 } );
        params.max_radius = str2num( data{ 5 } );
        params.neighbour  = str2num( data{ 6 } );
        
    elseif( strcmp( meth, 'Differential' ) )  
        
        params.f_n  = str2num( data{ 1 } );
        params.cr_n = str2num( data{ 2 } );
       
    elseif( strcmp( meth, 'Immune System' ) )
        
        params.up_p_n = str2num( data{ 1 } );
        params.li     = str2double( data{ 2 } );
        params.lo_p_n = str2num( data{ 3 } );
        
    elseif( strcmp( meth, 'Firefly' ) )
        
        params.al_n = str2num( data{ 1 } );
        params.co_n = str2num( data{ 2 } );
        
    elseif( strcmp( meth, 'Stochastic Diffuse Search' ) )
        
        params.limit = str2num( data{ 1 } );
        
    elseif( strcmp( meth, 'Basic Harmony Search' ) )
        
        params.hmcr = str2num( data{ 1 } );
        params.par  = str2num( data{ 2 } );
        
    end

end