function msLocations = getSSPositions(N, R)
%select N random place in an hexa of height R 

R=R/2/sin(pi/3);
h=R*sin(pi/3);
x=(1.5*R)*rand(N,1);
y=2*h*(rand(N,1)-0.5);
%project the two triangles that are not in the hexagon to the other 2 triangles
la=x<(R/2);
lb = abs(y)>(x*tan(pi/3));
l=(la.*lb)>0;   % l marks the points to be projected
x=x + 1.5*l*R- R;
y=y+2*l.*(sign(y).*h/2-y);

msLocations=x+sqrt(-1)*y;