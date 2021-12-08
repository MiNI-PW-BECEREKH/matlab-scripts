function [currentResult] = GaussLegendre(f,m,d,a,b)
    GL = importfile('GL.dat');
    data = getData(GL);

    %2-point values
    [n, coefficients, nodes] = deal(data{1,:,:});
    
    prevResult = 0;
    currentResult = d;
    while abs(currentResult - prevResult) >= d
        prevResult = currentResult;
        currentResult = mIntervalGaussLegendre(f,m,coefficients,nodes,a,b);
        m = 2*m;
        
    end    
end