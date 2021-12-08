%Halil Suheyb Becerek 295448
%function iterates through rows
%takes difference between each adjacent 2-items 
% 1 2 3 function does 1 - 2 and 2 - 3 puts the 
%results of the operations to the vector and compares
%if all elements of this vector are positive or negative
function [v] = monotonerows(A)

    v = [];
    for i = 1:size(A,1)
        if(all(diff(A(i,1:end)) > 0) || all(diff(A(i,1:end)) < 0))
            v = [v,i];
        end
    end
 
end