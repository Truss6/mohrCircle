classdef circle
    %%  Circle Class
    %{
        Author: TMR
    
        This is my circle class
    
        Give coordinates for the center: C=[Cx,Cy] and radius R to create
        an instance
    
        Use plot method to plot circle in current figure
    %}
    properties
        C;R;
        x;%yp;yn
        y;
    end
    methods
        function obj=circle(C,R)
            obj.C=C;
            obj.R=R;
            
%             x=linspace(C(1)-R,C(1)+R);
%             obj.x=x;
%             obj.yp=C(2)+sqrt(R^2-(x-C(1)).^2);
%             obj.yn=C(2)-sqrt(R^2-(x-C(1)).^2);
            
            th=linspace(0,2*pi,200);
            obj.x=cos(th)*R+C(1);
            obj.y=sin(th)*R+C(2);
        end
        function plot(obj)

%             plot(obj.x,obj.yp,'k-','linewidth',2)
%             plot(obj.x,obj.yn,'k-','linewidth',2)
             plot(obj.x,obj.y,'k-','linewidth',2)
             hold on;
        end
    end
end
