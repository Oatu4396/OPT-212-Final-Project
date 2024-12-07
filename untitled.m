for i = 1:7
                            n = index(i);
                            color = colorList(i);
                            % Left half
                                Llim = 0.8;
                                x1 = linspace(0, Llim, 100);
                                m1 = tan(theta);
                                b1 = 0.5;
                                y1 = -m1 .* x1 + b1;
                                y1 = flip(y1);
                                plot(app.Axes, x1, y1, "LineWidth", 1.5,'Color',color);
                            % Middle limit finding
                                % Get second angle (Snell)
                                theta2 = asin(1./n.*sin(theta));
    
                                % Get second angle (paraxial)
                                % theta2 = (1.*theta)./n;
                                
                                % Lens parameters
                                R = 2; % Radius of curvature
                                thickness = 0.2; % Thickness of the lens
                                x_center = 1; 
                                
                                % Ray equation parameters
                                m2 = tan(theta2);
                                bi = -(m2.*0.8);
    
                                % Find intercept
                                p = m2.^2+1;
                                q = 2.*m2.*bi - 2.*(-R+thickness+x_center);
                                r = bi.^2 + (-R+thickness+x_center).^2 - R.^2;
                                Rlim = (-q + sqrt(q.^2 - 4.*p.*r))./(2.*p);
                                
                            % Middle plot
                                x2 = linspace(Llim,Rlim,100);
                                m2 = tan(theta2);
                                b2 = bi + 0.5;
                                y2 = m2.*x2 + b2;
                                plot(app.Axes, x2, y2, "LineWidth", 1.5,'Color',color); 
                            % Right plot
                                x3 = linspace(Rlim,3,100);
    
                                % Find starting y value;
                                ylim = m2.*Rlim + b2;
    
                                % Find angle 3 (Snell)
                                thetan = atan((ylim - 0.5)./Rlim);
                                theta3 = asin(n.*sin(theta2 - thetan)) + thetan;
    
                                % Find angle 3 (Paraxial)
                                % power = (1 - n)./(-2);
                                % theta3 = n.*theta2 - (ylim - 0.5).*power;
    
                                % Equation for third ray
                                m3 = tan(theta3);
                                b3 = ylim - Rlim.*m3;
    
                                y3 = m3.*x3 +b3;
                                plot(app.Axes, x3, y3, "LineWidth", 1.5,'Color',color); 
end


% Left half
                            Llim = 0.8;
                            x1 = linspace(0, Llim, 100);
                            m1 = tan(theta);
                            b1 = 0.5;
                            y1 = -m1 .* x1 + b1;
                            y1 = flip(y1);
                            plot(app.Axes, x1, y1, "LineWidth", 1.5,'Color',color);
                        % Middle limit finding
                            % Get second angle (Snell)
                            theta2 = asin(1./n.*sin(theta));

                            % Get second angle (paraxial)
                            % theta2 = (1.*theta)./n;
                            
                            % Lens parameters
                            R = 2; % Radius of curvature
                            thickness = 0.2; % Thickness of the lens
                            x_center = 1; 
                            
                            % Ray equation parameters
                            m2 = tan(theta2);
                            bi = -(m2.*0.8);

                            % Find intercept
                            p = m2.^2+1;
                            q = 2.*m2.*bi - 2.*(-R+thickness+x_center);
                            r = bi.^2 + (-R+thickness+x_center).^2 - R.^2;
                            Rlim = (-q + sqrt(q.^2 - 4.*p.*r))./(2.*p);
                            
                        % Middle plot
                            x2 = linspace(Llim,Rlim,100);
                            m2 = tan(theta2);
                            b2 = bi + 0.5;
                            y2 = m2.*x2 + b2;
                            plot(app.Axes, x2, y2, "LineWidth", 1.5,'Color',color); 
                        % Right plot
                            x3 = linspace(Rlim,3,100);

                            % Find starting y value;
                            ylim = m2.*Rlim + b2;

                            % Find angle 3 (Snell)
                            thetan = atan((ylim - 0.5)./Rlim);
                            theta3 = asin(n.*sin(theta2 - thetan)) + thetan;

                            % Find angle 3 (Paraxial)
                            % power = (1 - n)./(-2);
                            % theta3 = n.*theta2 - (ylim - 0.5).*power;

                            % Equation for third ray
                            m3 = tan(theta3);
                            b3 = ylim - Rlim.*m3;

                            y3 = m3.*x3 +b3;
                            plot(app.Axes, x3, y3, "LineWidth", 1.5,'Color',color);
