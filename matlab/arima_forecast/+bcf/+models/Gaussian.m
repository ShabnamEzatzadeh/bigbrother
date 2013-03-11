classdef Gaussian < bcf.models.Model
    %GAUSSIANMODEL Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        mu
        sigma
        history
    end
    
    methods
        function obj = Gaussian(mu, sigma)
            obj.mu = mu;
            obj.sigma = sigma;
            obj.history = 0;
        end
        
        function val = forecast(obj, data, future)
            val = obj.mu;
        end
            
        function val = probability(obj, data)
            %Forecast for a model the probability of each observation
            %f(x) = 1/(std*sqrt(2*pi))*exp(-1*((x-mean)**2)/(2*std**2))
%             nc = 1/(obj.std * sqrt(2 * pi));
%             res = data - obj.mean;
%             res = -1*(res.^2)./(2*obj.std^2);
%             e = exp(res);
%             val = nc*e;
                val = 1;
        end
    end
end

