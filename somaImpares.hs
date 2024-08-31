-- Função para verificar se um número é ímpar
impar :: Int -> Bool
impar x = x `mod` 2 /= 0

-- Função para calcular a soma dos elementos de uma lista
somaLista :: [Int] -> Int
somaLista [] = 0
somaLista (x:xs) = x + somaLista xs

-- Função para filtrar elementos ímpares de uma lista
filtrarImpares :: [Int] -> [Int]
filtrarImpares [] = []
filtrarImpares (x:xs)
    | impar x   = x : filtrarImpares xs
    | otherwise = filtrarImpares xs

-- Função principal para calcular o somatório dos elementos ímpares
somaImpares :: [Int] -> Int
somaImpares lista = somaLista (filtrarImpares lista)

-- Lista de exemplo
lista :: [Int]
lista = [1, 3, 2, 7, 4, 6, 5]

-- Função principal para executar o código
main :: IO ()
main = do
    let numerosImpares = filtrarImpares lista
    let somaTotal = somaImpares lista
    -- print lista = [1,3,2,7,4,6,5]
    -- print numerosImpares  = [1,3,7,5]
    print somaTotal -- 16
