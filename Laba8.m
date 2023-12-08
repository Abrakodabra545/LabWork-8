clc
semestr = 12;
subjects = 50;

studentListToAddToGroup = [
    StudentClass('Fedorenko Gena Pavlovich', 'E312', randi([60,100],subjects, semestr), randi([0,40],1, 1)),... 
    StudentClass('Kasinak Evgeniy Valerievich', 'E312', randi([60,100],subjects, semestr), randi([0,40],1, 1)), ...
    StudentClass('Finik Konstantin Svyatoslavovich', 'E312', randi([60,100],subjects, semestr), randi([0,40],1, 1)), ...
    StudentClass('Apelsinov Pavel Olegovich', 'E312', randi([60,100],subjects, semestr), randi([0,40],1, 1)), ...
    StudentClass('Malinov Petr Nikitovich', 'E312', randi([60,100],subjects, semestr), randi([0,40],1, 1))
    ];

e312 = GroupClass('E312', studentListToAddToGroup, semestr, subjects);

