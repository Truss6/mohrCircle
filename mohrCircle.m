classdef mohrCircle
    %%  Mohr Circle Class
    %{
        Author: TMR
    
        This class will make a mohr's circle instance and plot the
        circle(s)
        
        Input a stress tensor in 2D or 3D
        
        This class requires my circle class to be in the same folder
    %}
    properties
        stress;
        eigs;
        circles;
    end
    methods
        function obj=mohrCircle(stress)
            obj.stress=stress;
            obj.eigs=eig(stress);
            obj.circles{1}=getCircle(obj,1,2);
            if length(obj.eigs)==3
                obj.circles{2}=getCircle(obj,1,3);
                obj.circles{3}=getCircle(obj,2,3);
            end
            yline(0,'k-');
            xline(0,'k-');
            TRformat;grid off;
            xlabel('σ [MPa]');
            ylabel('τ [MPa]');
        end
        function circ=getCircle(obj,i,j)
            s1=obj.eigs(i);
            s2=obj.eigs(j);
            
            Cx=(s1+s2)/2;
            R=abs(s1-s2)/2;
            
            circ=circle([Cx,0],R);
            circ.plot;
        end
    end
end