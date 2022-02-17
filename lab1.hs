Задания на лабораторную работу
1 Приведите пример нетривиальных выражений, принадлежащих сле-
дующему типу:
1) ((Char,Integer), String, [Double])
2) [(Double,Bool,(String,Integer))]
3) ([Integer],[Double],[(Bool,Char)])
4) [[[(Integer,Bool)]]]
5) (((Char,Char),Char),[String])
6) (([Double],[Bool]),[Integer])
7) [Integer, (Integer,[Bool])]
8) (Bool,([Bool],[Integer]))
9) [([Bool],[Double])]
10) [([Integer],[Char])]
Требование нетривиальности в данном случае означает, что встре-
чающиеся в выражениях списки должны содержать больше одного
элемента.
2 Определите следующие функции:
1) Функция max3, по трем целым возвращающая наибольшее из
них.
2) Функция min3, по трем целым возвращающая наименьшее из
них.
3) Функция sort2, по двум целым возвращающая пару, в которой
наименьшее из них стоит на первом месте, а наибольшее — на
втором.
4) Функция bothTrue :: Bool -> Bool -> Bool, которая
возвращает true тогда и только тогда, когда оба ее аргумента
будут равны True. Не используйте при определении функции
стандартные логический операции (&&, || и т.п.).
5) Функция
solve2::Double->Double->(Bool,Double),
которая по двум числам, представляющим собой коэффициенты
линейного уравнения ax + b = 0, возвращает пару, первый
элемент которой равен True, если решение существует и false
в противном случае; при этом второй элемент равен либо
значению корня, либо 0.0.
6) Функция isParallel, возвращающая True, если два отрез-
ка, концы которых задаются в аргументах функции, параллель-
ны (или лежат на одной прямой). Например, значение выраже-
ния isParallel (1,1) (2,2) (2,0) (4,2) должно быть
равно True, поскольку отрезки (1, 1)− (2, 2) и (2, 0)− (4, 2) па-
раллельны.
7) Функция isIncluded, аргументами которой служат параметры
двух окружностей на плоскости (координаты центров и радиусы);
функция возвращает True, если вторая окружность целиком со-
держится внутри первой.
8) Функция isRectangular, принимающая в качестве парамет-
ров координаты трех точек на плоскости, и возвращающая True,
если образуемый ими треугольник — прямоугольный.
9) Функция isTriangle, определяющая, можно ли их отрезков с
заданными длинами x, y и z построить треугольник.
10) Функция isSorted, принимающая на вход три числа и возвра-
щающая True, если они упорядочены по возрастанию или по
убыванию.


a = (('h','q',7,5),"hello","hi",[0.6,0.5]) --1(1)

b = [(0.5,0.6,True,False,("hi","hello",20,10))] --1(2)

c = ([10,20],[0.6,0.5],[(True,False,'w','q')]) --1(3)

d = [[[(10,20,True,False)]]] --1(4)

e = ((('q','w','t','f'),'q','f'),["qwe","hello"]) --1(5)

f = (([0.5,0.6],[False,True]),[20,10]) --1(6)
 
--g = [0, (7, [True, False])] --1(7)

h = (True,False,([True,False],[False,True])) --1(8)

z = [([True,False],[0.5,0.6])] --1(9)

y = [([10,20],['q','w'])] --1(10)



max3 :: Integer -> Integer -> Integer -> String --2(1)
max3 a b c | a==b && b==c = "All numb equal"    
           | a>=b && a>=c = show a 
           | b>=a && b>=c = show b
           | c>=a && c>=b = show c


min3 :: Integer -> Integer -> Integer -> String --2(2)
min3 a b c | a==b && b==c = "All numb equal"
           | a<=b && a<=c = show a
           | b<=a && b<=c = show b
           | c<=a && c<=b = show c


sort2 :: Integer -> Integer -> String --2(3)
sort2 a b | a==b = show [a,b]
          | a>=b = show [b,a]
          | a<=b = show [a,b]  


bothTrue :: Bool -> Bool -> Bool --2(4)
bothTrue x y = if x == True then
                  if y == True then True
                               else False
                  else False


solve2 :: Double -> Double -> (Bool,Double) --2(5)
solve2 a b = if (a /= 0) then (True,(-b)/a) 
             else if (a==0) && (b==0) then (True,0.0) 
             else (False,0.0)


isParallel :: (Double,Double)->(Double,Double)->(Double,Double)->(Double,Double)->Bool --2(6)
isParallel (a,b) (c,d) (e,f) (g,h) = if (c-a)/(g-e) == (d-b)/(h-f) then True 
                                     else False


isIncluded :: Integer -> Integer -> Integer -> Integer -> String --2(7)
isIncluded a b a1 b2 | (a^2-b^2 == a1^2-b^2) = show "Included"
                     | (a^2-b^2 /= a1^2-b^2) = show "NotIncluded"


isRectangular :: (Double,Double)->(Double,Double)->(Double,Double)->Bool --2(8)
isRectangular (a,a1) (b,b1) (c,c1) = if (b-a)*(c-a)+(b1-a1)*(c1-a1)== 0 ||
                                        (a-b)*(c-b)+(a1-b1)*(c1-b1)== 0 || 
                                        (a-c)*(b-c)+(a1-c1)*(b1-c1)== 0 then True 
                                                                        else False


isTriangle :: Integer -> Integer -> Integer -> String --2(9)
isTriangle a b c | (a+b)<c || (a+c)<b || (b+c)<a = "Da"
                 | (a+b)>c || (a+c)>b || (b+c)>a = "Net"


isSorted :: Integer -> Integer -> Integer -> String --2(10)
isSorted a b c | (a<b && b<c) || (a>b && b>c) = "Da"
               | (a<b && b>c) || (a>b && b<c) = "Net" 
