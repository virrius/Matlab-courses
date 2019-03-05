function [gr] = upd_gr(nodes_t, nodes_x, t,eps)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    gr = nodes_x;
    for k=1:length(nodes_x)
        new_nodes_x = nodes_x;
        new_nodes_x(k)= new_nodes_x(k) + eps;  
       
        gr(k) = (integral(nodes_t, new_nodes_x, t) - integral(nodes_t, nodes_x, t)) / eps;  
    end
end