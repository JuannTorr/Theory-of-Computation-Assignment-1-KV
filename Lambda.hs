module ChurchBool where

true :: a -> a -> a
true = \x y -> x

false :: a -> a -> a
false = \x y -> y

ifThenElse :: (a -> a -> a) -> a -> a -> a
ifThenElse = \b m n -> b m n

churchAnd = \a b -> a b false

churchOr = \a b -> a true b

churchNot = \b -> b false true

showBool :: (String -> String -> String) -> String
showBool b = b "True" "False"

test :: IO ()
test = do
    putStrLn $ "true AND false           = " ++ showBool (churchAnd true false)
    putStrLn $ "true OR false            = " ++ showBool (churchOr true false)
    putStrLn $ "NOT true                 = " ++ showBool (churchNot true)
    putStrLn $ "NOT false                = " ++ showBool (churchNot false)
    putStrLn $ "ifThenElse true \"yes\" \"no\" = " ++ ifThenElse true "yes" "no"
    putStrLn $ "ifThenElse false \"yes\" \"no\"= " ++ ifThenElse false "yes" "no"

main :: IO ()
main = test
