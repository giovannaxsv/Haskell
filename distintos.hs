-- Função para verificar se um elemento existe na lista
existe :: Int -> [Int] -> Bool
existe _ [] = False
existe x (y:ys)
    | x == y    = True
    | otherwise = existe x ys

-- Função principal para verificar se todos os elementos da lista são distintos
distintos :: [Int] -> Bool
distintos [] = True
distintos (x:xs)
    | existe x xs = False  -- Se x já existe no resto da lista, não são distintos
    | otherwise   = distintos xs  -- Continua verificando o restante da lista
main :: IO ()
main = do
    print (distintos [1,2,4,2,5])  -- False
    print (distintos [3,2,1])      -- True
    print (distintos [1,1,1,1])    -- False
    print (distintos [7,8,9])      -- True
    