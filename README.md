hs2-lab
=======

#Лабораторная работа №2#
##Решение рекурсивных задач в функциональном стиле##

#15 вариант
Задание: Дан поток студентов. Он представлен в виде списка, состоящего из элементов типа student. Полями этого типа являются:

- name — имя студента
- surname — его фамилия
- sex — пол
- day, month, year — дата его рождения
- group — номер группы
- iq — коэффициент IQ

Вывести отсортированный по группе список всех девочек, состоящий
только из имени, фамилии и номера группы;

#Решение
``` haskell
import Lab2
import Data.List

sortGT (a) (b)
  | (Lab2.group a) > (Lab2.group b) = GT
  | (Lab2.group a) < (Lab2.group b) = LT
  | (Lab2.group a) == (Lab2.group b) = EQ

main = do
putStrLn "Список всех девочек, отсортированный по группе:"
mapM_ putStrLn $ map (\st -> name st ++ " " ++ surname st ++ " " ++ show (Lab2.group st)) $ filter (\s -> sex s == 'f') $ sortBy sortGT students
```
