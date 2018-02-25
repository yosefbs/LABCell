function [ rate ] = rateFromSirDb( sirInDb )
%DB2RATE Summary of this function goes here
%   Detailed explanation goes here
if (sirInDb>17.2)
    rate =714.24;
elseif sirInDb>16.15
    rate = 634.88;
elseif sirInDb>11.58
    rate = 476.16;
elseif sirInDb>9
    rate = 317.44;
elseif sirInDb>6.09
    rate = 238.11;
elseif sirInDb>3.43
    rate = 158.72;
elseif sirInDb>0.43
    rate = 79.36;
else
    rate =0;
end

