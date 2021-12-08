%Halil Suheyb Becerek 295448
function plane()
    %Initialize plane drawing
    planeDrawing = [0 1 0 3 3  3 3 0  1 0 -2 0; ...
     0 3 0 0 1 -1 0 0 -3 0  0 0]; % x,y relative coordinates of consecutive points
    thickness = 10; % thickness
    
    screenSize = get(0,'ScreenSize');
    windowPosition = [0.5*screenSize(3)-0.4*screenSize(4) 0.1*screenSize(4) 0.8*screenSize(4) 0.8*screenSize(4)];
    
    window = figure('position',windowPosition);
    window.Visible = 'off';

    set(window,'menubar','none');
    axis([-20 20 -20 20]);
    axis off;
    
    currentAxis = gca;
    currentAxis.NextPlot = 'replaceChildren';
    
    c=1;
    framespersecond = 30;
    loops = 270;
    % structured table
    angle = 0; % angle
    position = 0; % shift
    speed = 0.08; % speed
    angle_delta = pi/540; % angular speed
    
    plane = plot(planeDrawing(1,:),planeDrawing(2,:),'linewidth',thickness);
    
    %get frames on M
    for i = 1:loops
        
        angle = angle + angle_delta;
        position = position - speed * [cos(angle);sin(angle)];
        
        rotationMatrix = [cos(angle) -sin(angle); sin(angle)  cos(angle)];
        planeDrawingPrime = rotationMatrix * planeDrawing + position;
        
        plot(planeDrawingPrime(1,:),planeDrawingPrime(2,:),'linewidth',thickness);
        drawnow
        M(c) = getframe;
        c = c+1;
    end
    
    plot(planeDrawing(1,:),planeDrawing(2,:),'linewidth',thickness);
    drawnow;
    
    %open screen
    window.Visible = 'on';
    N = 5;
    th = title(num2str(N),'fontsize',20);
    %countdown
    for N = N-1:-1:0
        pause(1)
        set(th,'String',num2str(N));
        
    end
    %show ending text
    movie(M,1,60);
    set(th,'String','Bye,Bye !!');
    pause(1.5);
    close(window);
end
