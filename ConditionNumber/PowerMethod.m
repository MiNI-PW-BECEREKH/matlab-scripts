function [coeff,vector] = PowerMethod(A)
    vector = ones(size(A,1),1);
    coeff = 0;
    
    for i=1:10^6
        prevCoeff = coeff;
        prevVector = vector;
        
        vector = A*vector;
        coeff = abs(max(vector));
        vector = vector/coeff;
        
        if abs(coeff - prevCoeff) < 10^-10 & norm(vector - prevVector,2) < 10^-10
            break;
        end
    end
end