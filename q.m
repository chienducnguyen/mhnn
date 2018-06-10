function I = q(s, u, v)
    Y1 = ["PP", "VB", "RB", "JJ", "IN", "D", "NN", "IN", "NN", "VB", "VB", "VB", "IN", "NN", "CC", "NN", "IN", "D", "NN", "STOP", "RB", "PP", "VB", "RB", "JJ", "IN", "D", "NN", "IN", "D", "JJ", "NN", "STOP", "IN", "D", "NN", "STOP", "NN", "VB", "RB", "JJ", "NN", "CC", "JJ", "NN", "D", "VB", "IN", "VB", "NN", "IN", "NN", "CC", "IN", "VB", "D", "JJ", "NN", "IN", "D", "NN", "IN", "D", "NN", "STOP", "D", "VB", "RB", "JJ", "IN", "VB", "JJ", "IN", "NN", "D", "VB", "JJ", "NN", "STOP", "VB", "VB", "D", "NN", "IN", "D", "NN", "IN", "PP", "NN", "NN", "D", "VB", "NN", "IN", "VB", "D", "NN", "STOP"];
    Y2=["PP","VB","D","JJ","NN","IN","D","NN","IN","D","NN","STOP","D","VB","NN","RB","IN","PP","VB","IN","STOP","PP","VB","IN","PP","STOP","PP","VB","PP","NN","STOP","PP","VB","NN","PP","VB","VB","IN","VB","STOP","PP","VB","RB","VB","PP", "STOP","IN","JJ","NN","PP","VB","NN","RB","IN","VB","IN","D","PP","JJ","NN","VB","JJ","CC","VB","VB","RB","STOP","PP","VB","VB","IN","D","NN","IN","NN"];

    Y=[Y1,Y2];   
    c1 = 0;
    c0 = 0;
    n = size(Y, 2);
    if (u == "*")
        if (v == "*") 
            if (Y(1) == s)
                c0=c0+1;
                c1 = c1+1;
            end
            for i = 2:n-1
                if (Y(i)=="STOP")
                     c0=c0+1;
                    if (Y(i+1) == s)
                        c1=c1+1;
                    end
                end
            end
        else
        if (Y(1) == v && Y(2) == s)
            c1 = c1+1;
            c0 = c0+1;
        end
        for i = 1:n-2
            if (Y(i) == "STOP") 
                if (Y(i+1) == v) c0 = c0+1;
                end
                if (Y(i+1) == v && Y(i+2) == s) c1 = c1+1;
                end
            end
        end
        end
    else
        for i = 1:n-2
            if (Y(i) == u)
                if (Y(i+1) == v) c0 = c0+1;
                end
                if (Y(i+1) == v && Y(i+2) == s) c1 = c1+1;
                end
            end
        end
    end
    I = c1/c0;
end