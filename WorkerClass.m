classdef WorkerClass

    properties
        name = '';
        surname = '';
        rate = 0;
        days = 0;
    end
    
    methods
        function obj = WorkerClass(inputName, inputSurname, inputRate, inputDays)
            obj.name = inputName;
            obj.surname = inputSurname;
            obj.rate = inputRate;
            obj.days = inputDays;
        end
        
        function salary = GetSalary(obj)
            salary = obj.rate * obj.days;
        end
        
        function name = GetWorkerName(obj)
            name = obj.name;
        end
        
        function surname = GetWorkerSurname(obj)
            surname = obj.surname;
        end
    end
    
end

