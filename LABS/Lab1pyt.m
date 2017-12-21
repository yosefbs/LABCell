function [c,d,e]= pyt(a,b)
% returns the hyotensus (yeter) in a right angle
% triangle according to Pythagoras theorem
% c is the hyotensus
% d and e are the two sharp angles
c=sqrt(a.^2+b.^2);
d=atan(b/a);
e=pi/2-d;
end
