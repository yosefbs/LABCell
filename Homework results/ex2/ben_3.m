function res = ben_3( cell1 )
%ben levi 313672990
%yosef ben simchon 203757042
[~,n]=size(cell1{1,1});
[m,~]=size(cell1{2,1});
m=m-1;
res=zeros(m+2,n);

xPos=1;
yPos=1;
curMat=cell1{1,1};
[r,c]=size(curMat);
res(xPos:xPos+r-1,yPos:yPos+c-1)=curMat;


xPos=2;
yPos=1;
curMat=cell1{1,2};
[r,c]=size(curMat);
res(xPos:xPos+r-1,yPos:yPos+c-1)=curMat;


xPos=2;
yPos=yPos+c;
curMat=cell1{2,1};
[r,c]=size(curMat);
res(xPos:xPos+r-1,yPos:yPos+c-1)=curMat;


xPos=m+2;
yPos=1;
curMat=cell1{2,2};
[r,c]=size(curMat);
res(xPos:xPos+r-1,yPos:yPos+c-1)=curMat;


end

