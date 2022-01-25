function[randomSig]=random(sig1)
[row] = size(sig1);
R=randperm(row);
randomSig=sig1(R,:);