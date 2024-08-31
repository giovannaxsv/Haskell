-- Função para substituir todas as ocorrências de um elemento em uma lista por outro elemento
substituir :: Eq a => a -> a -> [a] -> [a]
substituir _ _ [] = []
substituir antigo novo (x:xs)
    | x == antigo = novo : substituir antigo novo xs
    | otherwise  = x : substituir antigo novo xs

main = do
    -- Teste 1: Substituir 1 por 0 em uma lista de inteiros
    print (substituir 1 0 [1,2,1,3,1])  -- Deve imprimir [0,2,0,3,0]
    
    -- Teste 2: Substituir 'n' por 't' em uma lista de caracteres
    print (substituir 'n' 't' "banana")  -- Deve imprimir "batata"