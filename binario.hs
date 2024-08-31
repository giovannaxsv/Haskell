-- Função que converte um número inteiro para uma lista de bits (representação binária)
binario :: Int -> [Int]
binario 0 = [0]  -- Caso base: se o número for 0, retorna [0]
binario n = inverter (converteBinario n)  -- Chama a função para converter e depois inverte a lista

-- Função auxiliar para fazer a conversão do número para binário
converteBinario :: Int -> [Int]
converteBinario 0 = []
converteBinario n = (n `mod` 2) : converteBinario (n `div` 2)

-- Função para inverter uma lista (como não podemos usar a função `reverse`)
inverter :: [Int] -> [Int]
inverter [] = []
inverter (x:xs) = inverter xs ++ [x]

main :: IO ()
main = do
    print (binario 20)   -- [1,0,1,0,0]
    print (binario 5)    -- [1,0,1]
    print (binario 0)    -- [0]
    print (binario 255)  -- [1,1,1,1,1,1,1,1]
