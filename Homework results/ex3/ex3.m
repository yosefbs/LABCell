%1
bs.N=19;
bs.dist=1000;
[bs.x,bs.y] = getCellsCoordinates(bs.dist);
bs.power=30*ones(bs.N,1);
bs.Gain=6*ones(bs.N,1);

%2
usersInCell = 400;
ms.N=bs.N*usersInCell;
ms.sens=-95*ones(ms.N,1);
ms.Gain=3*ones(ms.N,1);

% randomize users locations
[ms.X,ms.Y] = getSSPositions(ms.N,bs.dist);
%duplicate for each cell
%update users location (add the bs(1) x,y cordinate to first ms.N/bs.num
%users.....(400 in our example)
ext.bsx=reshape(transpose(repmat(bs.x,1,usersInCell)),ms.N,1);
ext.bsy=reshape(transpose(repmat(bs.y,1,usersInCell)),ms.N,1);

%%scatter(ms.X,ms.Y);
%%hold;
ms.X=ms.X+ext.bsx;
ms.Y=ms.Y+ext.bsy;
%%scatter(ms.X,ms.Y);

%3
%ms.FPL - full table of path loss ( to each ms row of path loss from each
%bs
%ms.PL - selected bs path loss
mu=0;
sigma=2;
for i = 1:bs.N
   distan=Distan(ms.X,ms.Y,bs.x(i),bs.y(i));
   plCol = log10(distan);
   plCol = 35*plCol;
   plCol = 38.5+plCol; 
   plCol = plCol+mu+sigma.*randn(ms.N,1);
   ms.FPL(:,i)=plCol;
   rssiCol =  (bs.power(i))./distan;
   ms.Rssi(:,i)=rssiCol;
end
[~,ms.IndexOfBs]=max(ms.Rssi,[],2);
interfrance = dbm2watt(ms.FPL);
ms.SIR = (1/6).*(distan./500);
SIRDB =   10.*log10(ms.SIR);
for i = 1:ms.N 
    ms.Rate(i,1) = rateFromSirDb(SIRDB(i));          
end

f1=figure;
f2=figure;
hist(ms.Rate);
hist(ms.SIR);
figure(f1);
for i = 1:bs.N 
    DrawHexa(bs.x(i),bs.y(i),1000);
    hold on;
end
c=linspace(1,19,7600);
scatter(ms.X,ms.Y,[],c);
hold off;







