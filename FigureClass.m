classdef FigureClass
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        radius = 0;
        length = 0;
        width = 0;
        height = 0;
        density = 0;
        isCube = false;
    end
    
    methods
        function obj = FigureClass(inputRadius, inputHeight, inputWidth, inputLength, inputDensity, inputIsCube)
            if(nargin > 0)
             obj.radius = inputRadius;
             obj.height = inputHeight;
             obj.length = inputLength;
             obj.width = inputWidth;
             obj.density = inputDensity;
             obj.isCube = inputIsCube;
            end
        end
        
        
        function name = GetFigureName(obj)
            if obj.isCube == 1
                name = 'Cube';
            elseif obj.isCube == 0
                name = 'Cylinder';
            end
        end
        

        function volume = GetFigureVolume(obj)
            if obj.isCube == 1
                volume = obj.length * obj.width * obj.height;
            elseif obj.isCube == 0
                volume = obj.radius^2 * 3.14 * obj.height;
            end
        end
        
        function mass = GetFigureMass(obj)
            mass = obj.density * obj.GetFigureVolume();
        end
    end
    
end
