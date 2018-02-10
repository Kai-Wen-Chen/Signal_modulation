function w = wGenerate(I,f,t)
    w =  sin(2*pi*f*t);
    
    for i=3:2:I
        w = w+(1/i)*sin(2*pi*(i*f)*t);
    end
    
    w = w.*(4/pi);
end