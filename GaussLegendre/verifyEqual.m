function verifyEqual(f,actual,expected,a,b,d)
    if(abs(actual - expected) < d)
        fprintf('[expected:] %f got [actual:] %f evaluating %s on [%d,%d]\n',expected,actual,functions(f).function,a,b);
    else
        fprintf('[!!!][expected:] %f got [actual:] %f evaluating %s on [%d,%d]\n',expected,actual,functions(f).function,a,b);
    end
end