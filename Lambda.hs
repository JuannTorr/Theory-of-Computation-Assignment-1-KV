module Main where

-- Definimos el tipo de Booleanos de Church
type ChurchBool a = a -> a -> a

-- true y false como funciones
true :: ChurchBool a
true = \x y -> x

false :: ChurchBool a
false = \x y -> y

-- ifThenElse
ifThenElse :: ChurchBool a -> a -> a -> a
ifThenElse b m n = b m n

-- AND
churchAnd :: ChurchBool (ChurchBool a) -> ChurchBool a -> ChurchBool a
churchAnd p q = p q false

-- OR
churchOr :: ChurchBool (ChurchBool a) -> ChurchBool a -> ChurchBool a
churchOr p q = p true q

-- NOT
churchNot :: ChurchBool (ChurchBool a) -> ChurchBool a
churchNot p = p false true

-- Mostrar ChurchBool como String
showBool :: ChurchBool String -> String
showBool b = b "True" "False"

-- Pruebas
test :: IO ()
test = do
  putStrLn $ "true AND false = "               ++ showBool (churchAnd true false)
  putStrLn $ "true OR  false = "               ++ showBool (churchOr  true false)
  putStrLn $ "NOT true        = "              ++ showBool (churchNot true)
  putStrLn $ "NOT false       = "              ++ showBool (churchNot false)
  putStrLn $ "ifThenElse true  \"yes\" \"no\" = "  ++ ifThenElse true  "yes" "no"
  putStrLn $ "ifThenElse false \"yes\" \"no\" = "  ++ ifThenElse false "yes" "no"

-- Punto de entrada
main :: IO ()
main = test