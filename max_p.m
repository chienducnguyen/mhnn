function [I,bp] = max_p(k,u,v,x)
    w = ["PP", "VB", "RB", "JJ", "IN", "D", "NN", "CC"];
    m = size(w,2);
    if (k==0)
        I = 1;
    else
        if (k==1) 
            I = q(v,"*", "*")*e(x(k),v);
        else
            if (k==2) 
                I = max_p(k-1,"*",u,x)*q(v,"*",u)*e(x(k),v);
            else
                I = 0;
                for i = 1:m
                    if (max_p(k-1,w(i),u,x)*q(v,w(i),u)*e(x(k),v) > I)
                        I = max_p(k-1,w(i),u,x)*q(v,w(i),u)*e(x(k),v);
                        %r = w(i);
                        bp = i;
                    end 
                end
                %bp=r;
                %bp(k,i,j) = r;
                %for j = 1:m
                %    if (w(j) == r) 
                %        bp = j;
                %    end
                %end
            end
        end
    end
end