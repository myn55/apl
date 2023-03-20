⍝ Muhammad Nabil
⍝ My solutions to the 2020 APL challenges
⍝ https://www.dyalog.com/uploads/files/student_competition/2020_problems_phase1.pdf

⍝ PHASE 1 ⍝
⍝ Question 1
⍝ Count number of vowels in an uppercase string
C1 ← {
    solution1_dfn ← {+/⍵∊'AEIOU'}
    solution1_tct ← (+/'AEIOU'∊⍨⊢)

    solution2_dfn ← {+/+⌿'AEIOU'∘.=⍵}
    solution2_tct ← ((+/+⌿)'AEIOU'∘.=⊢)
}

⍝ Question 2
⍝ Create a function of the pattern X(fn)Y where Y is a scalar or non-zero vector
⍝ and X is a positive or negative integer so that its absolute value is less than
⍝ or equal to ≢Y that splits Y into a vector of two vectors according to X as follows:
⍝   - If X>0, first vector contains the first X elements of Y and last vector
⍝     contains the remaining elements.
⍝   - If X<0, first vector contains the last |X| elements of Y and last vector contains
⍝     contains the remaining elements.
C2 ← {
    solution1 ← {c←⍺+(⍺<0)×≢⍵ ⋄ (c↑⍵)(c↓⍵)}

    5 solution1 'SplittingHairs'
    ⍝ Returns [Split][tingHairs]
    ¯5 solution1 'SplittingHairs'
    ⍝ Returns [Splitting][Hairs]
}

⍝ Question 3
⍝ The rule is that an integer in the range 128 to 191 (inclusive) continues the
⍝ character of the previous integer (which may itself be a continuation). With that in
⍝ mind, write a function that, given a right argument which is a simple integer vector
⍝ representing valid UTF-8 text, encloses each sequence of integers that represent a
⍝ single character.
C3 ← {
    solution1 ← {⍵⊂⍨1≠128 191⍸⍵}
}

⍝ Question 4
⍝ A Microsoft Excel spreadsheet numbers its rows counting up from 1. However, its
⍝ columns are labelled alphabetically, beginning with A-Z, then AA-AZ, BA-BZ, up to
⍝ ZA-ZZ, then to AAA-AAZ, and so on. Write a function that, given a vector of characters
⍝ corresponding to a Microsoft Excel column, returns an integer that represents the number
⍝ of that column (i.e. column A is 1, Z is 26, AA is 27, etc).
C4 ← {
    solution1 ← {26⊥⎕A⍳1⎕C⍵}
}
