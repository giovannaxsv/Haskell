-- Função recursiva para calcular x elevado a y
potencia :: Int -> Int -> Int
potencia _ 0 = 1
potencia x y = x * potencia x (y - 1)

main = do
    print (potencia 2 3)  -- Deve imprimir 8
    print (potencia 5 0)  -- Deve imprimir 1
    print (potencia 3 2)  -- Deve imprimir 9