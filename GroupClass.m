classdef GroupClass
    
    properties
        subjects = 0;
        groupNumber = '';
        course = 0;
        semestr = 0;
        averageMark = 0;
        groupMises = 0;
        studentList = [];
    end
    
    methods
        function obj = GroupClass(inGroupNumber, inStudentList, inSemestr, inSubjects)  %Constructor
            obj.groupNumber = inGroupNumber;
            obj.studentList = inStudentList;
            obj.course = floor(obj.semestr/2);
            obj.semestr = inSemestr;
            obj.subjects = inSubjects;
        end
        
        function numberOfStudent = GetNumberOfStudent(obj)      %Get number of student
            numberOfStudent = length(obj.studentList);
        end
        
        function course = GetCourse(obj)                        %GetA
            course = obj.course;
        end
        
        function semestr = GetSemestr(obj)
            semestr = obj.semestr;
        end
        
        function listOfStudents = GetListOfStudents(obj)
            listOfStudents = obj.studentList;
        end
        
        function countOfSubjects = GetSubjects(obj)
            countOfSubjects = obj.subjects;
        end
        
        function group = GetGroupNumber(obj)
            group = obj.groupNumber;
        end
        
        function averMark = GetAverageMarkInGroup(obj, semestr)
            sumOfMarks = 0;
            for student = 1:length(obj.studentList)
                sumOfMarks = sumOfMarks + obj.studentList(student).GetAverMark(semestr);
            end
            averMark = sumOfMarks/length(obj.studentList());
        end
        
        function groupMisses = GetMissesInGroup(obj)
            sumOfMisses = 0;
            for student = 1:length(obj.studentList)
                sumOfMisses = sumOfMisses + obj.studentList(student).GetMisses();
            end
            groupMisses = sumOfMisses;
        end
        
        function sortedList = GetSortedStudentList(obj)
            unsortedList = obj.studentList;
            studentToChange = StudentClass('Fedorenko Gena Pavlovich', 'E312', [50, 50, 50, 50], 3);
            
            for cycle=1:length(unsortedList)
                for student=1:length(unsortedList)-1
                    if unsortedList(student).GetAverMark(obj.semestr) < unsortedList(student + 1).GetAverMark(obj.semestr)
                        studentToChange = unsortedList(student);
                        unsortedList(student) = unsortedList(student + 1);
                        unsortedList(student + 1) = studentToChange;
                    end
                end
            end
            sortedList = unsortedList();        
        end
        
        function top4Student = Get4BestStudent(obj)
            sortedStudentList = obj.GetSortedStudentList();
            top4Student = sortedStudentList([1:2, 4:end]);
        end
        
        function student = GetStudent(obj, studentNumberInList)
            student = obj.studentList(studentNumberInList);
        end
        
        function BuildGraphOfStudent(obj, student)
            obj.GetStudent(student).GetGraphOfAverMarks();
        end
    end
    
end

