function [ sortedMat ] = ben_2_2( struct_2_1 )
%ben levi 313672990
%yosef ben simchon 203757042
[~,i]=sort(struct_2_1.colSums, 'descend');
sortedMat=struct_2_1.srcMat(:,i);
end

