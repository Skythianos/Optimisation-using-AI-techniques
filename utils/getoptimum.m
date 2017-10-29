function result = getoptimum( params, method, problem )
%Help for getoptimum function
%Function: getoptimum( params, method, problem )
%( All parameters begin with 'params.'  )
%Method:                          Required Params: 
%-ACO                       ( problem, dim, n, m_i, low, up, ant_alfa, ant_beta, ant_limit, ant_pher )
%-Tournament Selection      ( problem, dim, n, m_i, low, up )
%-PSO                       ( problem, dim, n, m_i, low, up )
%-CPSO                      ( problem, dim, n, m_i, low, up )
%-GLbestIW_pso              ( problem, dim, n, m_i, low, up )
%-Bee                       ( problem, dim, n, m_i, low, up, selected, elit, nsp, ngh, nep )
%-Artificial Bee            ( problem, dim, n, m_i, low, up, selected, elit, nsp, ngh, nep, limit_bee )
%-Differential              ( problem, dim, n, m_i, low, up, f, cr )
%-Firefly                   ( problem, dim, n, m_i, low, up, al, co )
%-Immune System             ( problem, dim, n, m_i, low, up, up_p, lo_p, limit )
%-Bat                       ( problem, dim, n, m_i, low, up, ratenull, fmin, fmax, alpha, gamma )
%-Glowworm                  ( problem, dim, n, step_size, m_i, rho, beta, gamma, rmax, number_of_neigbours, lower_bound, upper_bound )
%-Stochastic Diffuse Search ( problem, dim, n, m_i, probability, lower_bound, upper_bound )
%-Basic Harmony Search      ( problem, dim, n, m_i, hmcr, par, lower_bound, upper_bound )
%-GA                        ( problem, dim )
%Problem: user defined
    file = isstruct(  params  );
    
    variables.dim = params.dim;
    variables.n   = params.n;
    variables.m_i = params.m_i;
    variables.low = params.low;
    variables.up  = params.up;

    q = strcmp( method, 'ACO' );
    if q
        
        variables.ant_alfa  = params.ant_alfa;
        variables.ant_beta  = params.ant_beta;
        variables.ant_limit = params.ant_limit;
        variables.ant_pher  = params.ant_pher;
        
        [r, t] = aco( problem, variables.dim, variables.n, variables.m_i, ...
            variables.ant_alfa, variables.ant_beta, variables.ant_pher, ...
            variables.ant_limit, variables.low, variables.up );
        result = { r, t };
        
    end

    q = strcmp( method, 'Tournament Selection' );
    if q 
        
        [r, t] = toursel( problem, variables.dim, variables.n, variables.m_i, ...
            variables.low, variables.up );
        result = { r, t };
        
    end

    q = strcmp( method, 'PSO' );
    if q
        
        [r, t] = pso( problem, variables.dim, variables.n, variables.m_i, ...
            variables.low, variables.up );
        result = { r, t };
        
    end

    q = strcmp( method, 'CPSO' );
    if q
        
        [r, t] = cpso( problem, variables.dim, variables.n, variables.m_i, ...
            variables.low, variables.up );
        result = { r, t };
        
    end

    q = strcmp( method, 'GLbestIW_pso' );
    if q
        
        [r, t] = GLbestIW_pso( problem, variables.dim, variables.n, variables.m_i, ...
            variables.low, variables.up );
        result = { r, t };
        
    end

    q = strcmp( method, 'Bee' );
    if q
        
        variables.selected = params.selected;
        variables.elit     = params.elit;
        variables.nep      = params.nep;
        variables.nsp      = params.nsp;
        variables.ngh      = params.ngh;
        
        [r, t] = bee( problem, variables.dim, variables.n, variables.m_i, ...
            variables.selected, variables.elit, variables.nep, variables.nsp, ...
            variables.ngh, variables.low, variables.up );
        result = { r, t };
        
    end

    q = strcmp( method, 'Artificial Bee' );
    if q
        
        variables.selected  = params.selected;
        variables.elit      = params.elit;
        variables.nep       = params.nep;
        variables.nsp       = params.nsp;
        variables.ngh       = params.ngh;
        variables.limit_bee = params.limit_bee;
        
        [r, t] = artificial_bee( problem, variables.dim, variables.n, variables.m_i, ...
            variables.limit_bee, variables.selected, variables.elit, variables.nep, ...
            variables.nsp, variables.ngh, variables.low, variables.up );
        result = { r, t };
        
    end

    q = strcmp( method, 'Differential' );
    if q
        
        variables.f  = params.f;
        variables.cr = params.cr;
        
        [r, t] = differential( problem, variables.dim, variables.n, variables.m_i, ...
            variables.f, variables.cr, variables.low, variables.up );
        result = { r, t };
        
    end

    q = strcmp( method, 'Firefly' );
    if q
        
        variables.al = params.al;
        variables.co = params.co;
        
        [r, t] = firefly( problem, variables.dim, variables.n, variables.m_i, ...
            variables.al, variables.co, variables.low, variables.up );
        result = { r, t };
        
    end

    q = strcmp( method, 'Immune System' );
    if q
        
        variables.up_p  = params.up_p;
        variables.lo_p  = params.lo_p;
        variables.limit = params.limit;
        
        [r, t] = immune( problem, variables.dim, variables.n, variables.m_i, ...
            variables.limit, variables.up_p, variables.lo_p, variables.low, ...
            variables.up );
        result = { r, t };
        
    end

    q = strcmp( method, 'Bat' );
    if q
        
        variables.ratenull = params.ratenull;
        variables.fmin     = params.fmin;
        variables.fmax     = params.fmax;
        variables.alpha    = params.alpha;
        variables.gamma    = params.gamma;
        
        [r, t] = bat( problem, variables.dim, variables.n, variables.m_i, ...
            variables.fmin, variables.fmax, variables.ratenull, variables.alpha, ...
            variables.gamma, variables.low, variables.up );
        result = { r, t };
        
    end
    
    q = strcmp( method, 'Glowworm' );
    if q
        
        variables.step_size = params.step_size;
        variables.rho       = params.rho;
        variables.gamma     = params.gamma;
        variables.rmax      = params.rmax;
        variables.non       = params.non;
        
        [ r, t ] = glowworm( problem, variables.dim, variables.n, variables.step_size, ...
            variables.m_i, variables.rho, variables.gamma, variables.rmax, ...
            variables.non, variables.low, variables.up );
        result = { r, t };
        
    end
    
    q = strcmp( method, 'Stochastic Diffuse Search' );
    if q
        
        variables.probability = params.probabiliy;
        
        [ r, t ] = sds( problem, variables.dim, variables.n, variables.m_i, ...
            variables.probability, variables.low, variables.up );
        result = { r, t };
        
    end
    
    q = strcmp( method, 'Basic Harmony Search' );
    if q
        
        variables.hmcr = params.hmcr;
        variables.par  = params.par;
        
        [ r, t ] = bhs( problem, variables.dim, variables.n, variables.m_i, ...
            variables.hmcr, variables.par, variables.low, variables.up );
        result = { r, t };
        
    end

    q = strcmp( method, 'GA' );
    if q 
        
        [r, t] = ga( problem, variables.dim );
        result = { r, t };
        
    end
    
    disp('Place:');
    for p=1:numel(r)-1
    disp(r(p));
    end
    disp('Value:');
    disp(r(numel(r)));
    disp('Time:');
    disp(t);
    

end
