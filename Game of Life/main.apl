⍝ Muhammad Nabil
⍝ A representation of Conway's Game of Life in APL

:Namespace main
    lifeInit ← {2=?2⍴⍨1 2×⍵} ⍝ Create a square matrix of size ⍵
    ⍝ Update each cell of the matrix by rotating it and adding together their values (alive cells are 1).
    ⍝ By doing this, each cell's number denotes the number of alive neighbors they have. 3 means they have 2 live neighbors, 4 means 3 live neighbors.
    ⍝ For these cells, they get to live.
    lifeIter ← {↑∨/3 4=+/9⍴1 0 ¯1∘.⊖1 0 ¯1⌽¨⊂⍵}
:EndNamespace
