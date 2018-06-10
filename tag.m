function y = tag(x)
    n = size(x, 2);
    w = ["PP", "VB", "RB", "JJ", "IN", "D", "NN", "CC"];
    t = size(w, 2);
    R =0;
    %bp = zeros(n-2,t,t);
    if (n==1) 
        for i =1:t
            if (max_p(1,"*",w(i),x)*q("STOP","*",w(i)) > R)
                R = max_p(1,"*",w(i),x)*q("STOP","*",w(i));
                a = w(i);
            end
            %R = max(max_p(1,"*",w(i),x,bp)*q("STOP","*",w(i)), R);
        end
    else
        for i =1:t
            for j=1:t
                if (max_p(n,w(i),w(j),x)*q("STOP",w(i),w(j)) > R)
                    R = max_p(n,w(i),w(j),x)*q("STOP",w(i),w(j));
                    b = w(i);    % y_{n-1}
                    c = w(j);    % y_{n)
                end
                %R = max(max_p(n,w(i),w(j),x,bp)*q("STOP",w(i),w(j)), R);
            end
        end
    end
    if (n==1) 
        y = a;
    else
        y = ["o"];
        for i = 1:n-1
            y = [y, "o"];
        end
        y(n-1) = b;
        y(n) = c;
        for i = n-2:-1:1
            [~,j] = max_p(i+2,y(i+1),y(i+2),x);
            y(i) = w(j);
        end
    end
end

