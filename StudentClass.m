classdef StudentClass
    
    properties
        name = '';
        group = 0;
        marks = [];
        misses = 0;
    end
    
    methods
        function obj = StudentClass(inName, inGroup, inMarks, inMisses)
            obj.name = inName;
            obj.group = inGroup;
            obj.marks = inMarks;
            obj.misses = inMisses;
        end
        
        function mark = GetStudentMarks(obj)
            mark = obj.marks();
        end
        
        function averMark = GetAverMark(obj, semestr)
            sumOfMarks = 0;
            for i=1:size(obj.marks, 1)
                sumOfMarks = sumOfMarks + obj.marks(i, semestr);
            end
            
            averMark = sumOfMarks/size(obj.marks, 1);
        end
        
        function misses = GetMisses(obj)
            misses = obj.misses;
        end
        
        function GetGraphOfAverMarks(obj)
            x = [];
            y = [];
            for i=1:size(obj.marks, 2)
                x(i) = i;
            end
            
            for i=1:size(obj.marks, 2)
                y(i) = obj.GetAverMark(i);
            end
            
            plot(x,y);
        end
    
    end
end
