--Kostyaev Dmitry, K7-223, 15 variant
--Вывести отсортированный по группе список всех девочек, состоящий только из имени, фамилии и номера группы;

import Lab2
import Data.List

sortGT (a) (b)
  | (Lab2.group a) > (Lab2.group b) = GT
  | (Lab2.group a) < (Lab2.group b) = LT
  | (Lab2.group a) == (Lab2.group b) = EQ

main = do
putStrLn "Список всех девочек, отсортированный по группе:"
mapM_ putStrLn $ map (\st -> name st ++ " " ++ surname st ++ " " ++ show (Lab2.group st)) $ filter (\s -> sex s == 'f') $ sortBy sortGT students