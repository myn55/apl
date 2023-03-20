⍝ Statistical functions in tacit and dfn form

:Namespace tacit
    sort ← (⍋∘.⌷⊂)
    shuffle ← (((⊢?⊢)≢)∘.⌷⊂)
    mean ← (+/÷≢)
    medianE ← (+/÷≢)(1(+,⊢)(2÷⍨≢))∘.⌷(⊂(⍋∘.⌷⊂))
    medianO ← (⌈(2÷⍨≢))⌷(⍋∘.⌷⊂)
    mode ← (∪∊)((1-⍨⊢)(+⌿⊢∘.=⊢))⊆⊢
    range ← (-/(≢⊃⊢),⊃)(⍋∘.⌷⊂)
:EndNamespace

:Namespace dfn
    sort ← {(⍋⍵)∘.⌷⊂⍵}
    shuffle ← {(⊂⍵)∘.⌷⍨?⍥⊢⍨≢⍵}
    mean ← {(+/⍵)÷≢⍵}
    medianE ← {c←2÷⍨≢⍵}
    medianO ← {}
:EndNamespace