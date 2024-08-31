-- Função para verificar se um número é divisor de outro
divisivel :: Int -> Int -> Bool
divisivel x y = x `mod` y == 0

-- Função para encontrar a soma dos divisores de um número (exceto ele mesmo)
somaDivisores :: Int -> Int -> Int
somaDivisores n 1 = 1  -- O menor divisor de qualquer número é 1
somaDivisores n d
    | divisivel n d = d + somaDivisores n (d - 1)  -- Soma o divisor e continua a busca
    | otherwise     = somaDivisores n (d - 1)      -- Continua a busca sem somar

-- Função principal para verificar se um número é perfeito
perfeito :: Int -> Bool
perfeito n = n == somaDivisores n (n `div` 2)  -- Verifica se a soma dos divisores é igual ao número

main :: IO ()
main = do
    print (perfeito 28)  -- True (28=1+2+4+7+14)
    print (perfeito 6)   -- True (6 = 1 + 2 + 3)
    print (perfeito 12)  -- False (12 != 1 + 2 + 3 + 4 + 6)
    print (perfeito 496) -- True (496 = 1 + 2 + 4 + 8 + 16 + 31 + 62 + 124 + 248)
