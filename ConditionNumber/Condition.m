function toReturn = Condition(A)

    

    [c1,v1] = InversePowerMethod(A);
    [c,v] = PowerMethod(A);
    
    toReturn = c/c1;
end