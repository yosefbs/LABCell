numOfByte = 5;
numOfBits =numOfByte*8;
%1.a
vec = randi(255,1,numOfByte);
%1.b
bitsMat = de2bi(vec);
bits= transpose(bitsMat);
bitsVec= reshape(bits,1,numOfBits);
%1.c

%	Fc - frequency in hertz
%   Fs - samples per second
Fc = numOfByte;
Fs=Fc*2;                             
[ x,t ] = sinGen( Fc,Fs,8 );
%1.d
bitsVec(bitsVec==0)=0.5;
bitsVec(bitsVec==1)=3;  
bitsVec=reshape(repmat(bitsVec,2,1),1,numOfBits*2);
bitsVec=transpose(bitsVec);
x=x.*bitsVec;
plot(t,x);