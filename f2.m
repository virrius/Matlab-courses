function [ F ] = f2(x )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    F=zeros(size(x));
    F=1./(1+12*x.^2);

end

