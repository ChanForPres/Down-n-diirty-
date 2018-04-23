-- Flatten a nested list structure.
--  (my-flatten '(a (b (c d) e)))
--  (A B C D E)

-- flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
-- [1,2,3,4,5]


data NestedList a = Elem a | List [NestedList a]
-- my-flatten (h:t)
--    |  ++ my-flatten t
