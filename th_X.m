function n=th_X(x)
n=0;
while (x~=1)
    if (mod(x,2)==0)
        x=x/2;
    else
        x=x*3+1;
    end
    n=n+1;
end