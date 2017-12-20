function DrawHexa(XBS, YBS, BSspacing)
% XBS and YBS are the coordinates of the BS, 
% BSspacing is the distance to the nest close BS
[X_hexa, Y_hexa] = hexa(XBS, YBS, BSspacing);
plot(X_hexa, Y_hexa);

%% Hexa return the 6 corners of the hexagone
    function [X_hexa, Y_hexa] = hexa(X_center, Y_center,size)
        
        theta = 0: pi/3:2*pi;
        r= size * ones(1,7)/2/sin(pi/3);
        
        [X1,Y1] = pol2cart(theta,r);
        X_hexa = X1 + X_center;
        Y_hexa = Y1 + Y_center;
    end

end