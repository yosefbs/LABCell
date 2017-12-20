function [X_BS Y_BS] = getCellsCoordinates(BSspacing)
% BSspacing is the distance between two close base stations
% X_BS and Y_BS are the coordinates of the 19 BS's

BScoordinates(1:3)=-2*BSspacing*cos(pi/180*30)+j*BSspacing*[1 0 -1]; % left 3
BScoordinates(4:7)=-BSspacing*cos(pi/180*30)+j*BSspacing*[1.5:-1:-1.5]; % second to left
BScoordinates(8:12)=j*BSspacing*[2:-1:-2]; % middle column
BScoordinates(13:16)=BSspacing*cos(pi/180*30)+j*BSspacing*[1.5:-1:-1.5]; % second to right
BScoordinates(17:19)=2*BSspacing*cos(pi/180*30)+j*BSspacing*[1 0 -1]; % right row

X_BS = real(BScoordinates);
Y_BS = imag(BScoordinates);