function [coeff,vector] = InversePowerMethod(A)
    [L,U] = DooLittleDecomposition(A);
    P = L*U/A;
    [m,n] = size(A);
    vector = ones(m,1);
    coeff = 0;
    for i=1:10^6
        prevCoeff = coeff;
        prevVector = vector;
        
        pivot = P*vector;
        y = L\pivot;
        vector = U\y;
        
        Max = max(vector);
        Min = min(vector);
        
        if abs(Max)>= abs(Min)
            coeff = Max;
        else
            coeff = Min;
        end
        
        vector = vector/coeff;
        
        if abs(coeff - prevCoeff) < 10^-10 & norm(vector - prevVector,2) < 10^-10
            break;
        end

    end
    coeff = 1/coeff;
end