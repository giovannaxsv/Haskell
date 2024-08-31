-- Função para verificar se um elemento existe na lista
existe :: Int -> [Int] -> Bool
existe _ [] = False
existe x (y:ys)
    | x == y    = True
    | otherwise = existe x ys

-- Função principal para verificar se duas listas são disjuntas
disjuntas :: [Int] -> [Int] -> Bool
disjuntas [] _ = True  -- Se a primeira lista é vazia, são disjuntas
disjuntas (x:xs) ys
    | existe x ys = False  -- Se x existe na segunda lista, não são disjuntas
    | otherwise   = disjuntas xs ys  -- Continua verificando o restante da lista

main :: IO ()
main = do
    print (disjuntas [1,2,3] [5,4,6,0])  -- True
    print (disjuntas [1,2,3] [3,4,5,6])  -- False
    print (disjuntas [7,8,9] [1,2,3])    -- True

