function [ resStruct ] = ben_2_1( matrix )
%ben levi 313672990
%yosef ben simchon 203757042
structRes = struct;
structRes.srcMat = matrix;
structRes.colSums = sum(matrix);
resStruct=structRes;
end

