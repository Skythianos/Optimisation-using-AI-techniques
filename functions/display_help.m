function display_help( item )
    
    q = strcmp( item, 'User Method' );
    
    if( q )
        
        method = char( cellstr( get( handles.filename, 'String' ) ) );
        method = horzcat( 'T=help(''', method, ''')' );
        eval( method );
        
        h = msgbox( T );
        
    end
    
    q = strcmp( item, 'Immune System' );
    
    if( q )
        
        Text  = 'High Prob - The probability from where the particles have fine fitness value';
        Text2 = 'Low Prob - The probability from where the particles have low fitness value';
        Text3 = 'Limit - This is the maximum number of particles during the cloning';
        
        h = msgbox( { Text, Text2, Text3 } );
        
    end
    
    q = strcmp( item, 'ACO' );
    
    if( q )
        
        Text  = 'Alfa - Alpha factor. Should be greater than 0';
        Text2 = 'Beta - Betha factor. Should be greater than 0';
        Text3 = 'Limit - The probability from where the particles will move';
        Text4 = 'Init_pher - initial pheromon. Should be between 0 and 1';
        
        h = msgbox( { Text, Text2, Text3, Text4 } );
        
    end
    
    q = strcmp( item, 'Differential' );
    
    if( q )
        
        Text  = 'F - the differential weigth. Should be between 0 and 2';
        Text2 = 'CR - crossover probability. Should be between 0 and 1';
        
        h = msgbox( { Text ,Text2 } );
        
    end
    
    q = strcmp( item, 'Firefly' );
    
    if( q )
        
        Text  = 'Alfa - Alfa parameter/Randomization parameter. Should be between 0.01 and 0.5';
        Text2 = 'Coefficient - light absorption coefficient. Should be between 0.01 and 100';
        
        h = msgbox( { Text, Text2 } );
        
    end
    
    q = strcmp( item, 'Bee' );
    
    if( q )
        
        Text  = 'Selected sites - Selected sites';
        Text2 = 'Elit bees - The elit bees from the selected sites';
        Text3 = 'Nep - Number of search around the elit bees';
        Text4 = 'Nsp - Number of search around the scout bees';
        Text5 = 'Ngh - The value of range';
        Text6 = 'Limit - If the scout bee probability is higher than this value then it will take a step';
        
        h = msgbox( { Text, Text2, Text3, Text4, Text5, Text6 } );
        
    end
    
    q = strcmp( item, 'Bat' );
    
    if( q )
        
        Text  = 'Rate(0) - the initial pulse rate. Value: [0..1]';
        Text2 = 'Fmin - the minimum frequency';
        Text3 = 'Fmax - the maximum frequency. This value should be bigger than Fmin';
        Text4 = 'Alpha - constant parameter. Value: [0..1]';
        Text5 = 'Gamma - constant parameter. Value: [0..1]';
        
        h = msgbox( { Text, Text2, Text3, Text4, Text5 } );
        
    end
    
    q = strcmp( item, 'Glowworm' );
    
    if( q )
        
        Text  = 'Step size - each glowworm moves a distance of finite step size s toward a neighbor';
        Text2 = 'Rho - luciferin decay constant';
        Text3 = 'Beta - constant parameter';
        Text4 = 'Gamma - the luciferin enhancement constant';
        Text5 = 'Max radius - the maximum range where a glowworm can communicate';
        Text6 = 'Number of neighbours - a parameter used to control the number of neighbors';
        
        h = msgbox( { Text, Text2, Text3, Text4, Text5, Text6 } );
        
    end
    
    q = strcmp( item, 'Stochastic Diffuse Search' );
    
    if( q )
        
        Text = 'Limit - probability which decide the agent is active or passive';
        
        h = msgbox( Text );
        
    end
    
    q = strcmp( item, 'Basic Harmony Search' );
    
    if( q )
        
        Text  = 'HMCR - the rate of choosing a value from the harmony memory. It generally varies from 0.7 to 0.99.';
        Text2 = 'Par - the rate of choosing a neighboring value. It generally varies from 0.1 to 0.5.';
        
        h = msgbox( { Text, Text2 } );
        
    end
    
end