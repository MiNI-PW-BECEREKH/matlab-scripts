function verifyEqual(actual,expected,d)
    if(abs(actual - expected) < d)
        fprintf('(PASSED)[expected:] %f got [actual:] %f \n',expected,actual);
    else
        fprintf('(FAILED)[expected:] %f got [actual:] %f \n',expected,actual);
    end
end