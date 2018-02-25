function [ watt ] = dbm2watt( DBm )
%DB2WATT Summary of this function goes here
%   Detailed explanation goes here
watt = (power(10,(DBm/10)))/1000;

end

