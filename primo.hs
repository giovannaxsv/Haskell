-- Função para verificar se um número é divisível por outro
divisivel :: Int -> Int -> Bool
divisivel x y = x `mod` y == 0

-- Função auxiliar para verificar se há divisores de 'n' começando de 'd'
hasDivisores :: Int -> Int -> Bool
hasDivisores n d
    | d * d > n      = False  -- Se d^2 > n, não há mais divisores possíveis
    | divisivel n d  = True   -- Se n é divisível por d, retorna True
    | otherwise      = hasDivisores n (d + 1)  -- Tenta o próximo divisor

-- Função principal para verificar se um número é primo
primo :: Int -> Bool
primo n
    | n < 2     = False       -- Números menores que 2 não são primos
    | otherwise = not (hasDivisores n 2)
    
main :: IO ()
main = do
    print (primo 17)  -- True
    print (primo 0)   -- False
    print (primo 1)   -- False
    print (primo 2)   -- True
    print (primo 15)  -- False
