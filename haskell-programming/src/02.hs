-- TemplateHaskell --
-- tag::a-head-code[]
a1 = let x = 5 in x                      -- 5
a2 = let x = 5 in x * x                  -- 25
a3 = let x = 5; y = 6 in x * y           -- 30
a4 = let x = 3; y = 1000 in x + 3        -- 6

a5 = let x = 3; y = 1000 in x * 3 + y    -- 1009
a6 = let y = 10; x = 10 * 5 + y in x * 5 -- 300
a7 = let x = 7                           -- -17.0
         y = negate x
         z = y * 10
     in z / x + y
-- end::a-head-code[]

-- tag::chapter-exercise-parenthesization[]
-- 2 + 2 * 3 - 1
parenthesization1 = ((2 + (2 * 3)) - 1)
-- (^) 10 $ 1 + 1
parenthesization2 = ((^) 10 $ (1 + 1))
-- 2 ^ 2 * 4 ^ 5 + 1
parenthesization3 = (((2 ^ 2) * (4 ^ 5)) + 1)
-- end::chapter-exercise-parenthesization[]

-- tag::chapter-exercise-more-fun[]
z = 7         -- 7
y = z + 8     -- 15
x = y ^ 2     -- 225
waxOn = x * 5 -- 1125

cemf1 = 10 + waxOn   -- 1135
cemf2 = (+10) waxOn  -- 1135
cemf3 = (-) 15 waxOn -- -1110
cemf4 = (-) waxOn 15 -- 1110

triple x = x * 3

waxOff x = triple x
-- end::chapter-exercise-more-fun[]
