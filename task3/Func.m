function [ F ] = Func( t,x,dx )
%FUNC Summary of this function goes here
%   Detailed explanation goes here
    F=t .* dx.^2 + x.^2 ./ t;

end

