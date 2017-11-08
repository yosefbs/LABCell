for i-1:100
A[i]=2*i;
end

if (i==100)
end

M=randi([6,10],4,5);
tmp = max(M)
MAX = max(tmp)

MAX = max(M)
MAX = max(MAX)

%MAX = max(Max(M))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

A=randi(9,3,4);
A(2,4)=15;
A(3,1)=-12;
B=A;
B(7,5)=-14;
A(:,5)=A(:,2);
D=[A;B];
E=repmat( D(:,3),1,10 );
G=E;

G(2,:)=[];
G(5,:)=[];
G(8,:)=[];

G([2,5,8],:)=[];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

X=-5:5;
Y=sin(exp(X));
plot(Y)


X=-5:0.1:5;
Y=sin(exp(X));
plot(Y)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
str = 'hello'
str2 = 'world'


str3 = str + str2 

 str3 = [str ' ' str2]
 
  a='1234'
  str2num(a)
  num2str(3)

  
%CELL ARRAY
C = cell(2)

C1 = {'cell1' , 50 ; [1,2,3], 50 }

C2(1,1)= {'aaa'}
C2(1,2)= {15}

 a= C2(1,2)
 
 a= {C2(1,2)}
whos a

 a= C2{1,2}
 whos a
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
 
 % STRUCT
 
 s=struct
 s=struct('xData', 15, 'yData', [1:10], 'name', 'yair');
 
 a =  s.xData

  a =  s.name
   whos s
  s.len = 10
  
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5