lista :: [Int]
lista = [1,3,2,7,4,6,5]

numerosImpares :: [Int]
numerosImpares = filter odd lista

somaTotal :: Int
somaTotal = sum numerosImpares

main = do
    print lista
    print numerosImpares
    print somaTotal
