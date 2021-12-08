function A = getData(GL)
    matrixRows = size(GL,1);
    A = [];
    i = 1;
    while i < matrixRows
        n = GL(i,1);
        Coefficients = [GL(i+1:i+n,1)];
        Nodes = [GL(i+n+1:i+2*n,1)];
        V = {n,Coefficients,Nodes};
        A = [A;V];
        i = i+ 2*n +1;
    end
end