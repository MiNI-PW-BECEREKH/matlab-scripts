function Test(d)
    if nargin < 1
        d = 10^-6;
    end

    A = [2 3 1 ; 5 4 2; 9 8 7];
    eigenValues = eig(A);
    expected = max(eigenValues)/min(eigenValues);
    actual = Condition(A);
    verifyEqual(actual,expected,d)
    
    A = [ 3 1 1 ; 5 4 3; 2 0 7];
    eigenValues = eig(A);
    expected = max(eigenValues)/min(eigenValues);
    actual = Condition(A);
    verifyEqual(actual,expected,d)
    
    A = [2 2 3 ; 5 2 3; 2 1 7];
    eigenValues = eig(A);
    expected = max(eigenValues)/min(eigenValues);
    actual = Condition(A);
    verifyEqual(actual,expected,d)
    
    A = [2 2 ; 5 2];
    eigenValues = eig(A);
    expected = max(eigenValues)/min(eigenValues);
    actual = Condition(A);
    verifyEqual(actual,expected,d)
end