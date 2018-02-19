function [ res ] = Distan( x1,y1,x2,y2 )
%DISTAN Summary of this function goes here
%   Detailed explanation goes here
%res= sqrt((x2-x1).^2+(y2-y1).^2);
res= sqrt(power((x2-x1),2)+power((y2-y1),2));
end

