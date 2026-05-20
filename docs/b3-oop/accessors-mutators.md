# Accessors and Mutators

## 1. Learning Objectives

By the end of this page, students should be able to:

- define accessor methods
- define mutator methods
- explain why getter and setter methods are used
- describe how mutators can validate data

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B3 Object-Oriented Programming |
| Label | SL Core |
| Main skill | Safe access to private data |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Accessor | A method that returns the value of an attribute |
| Mutator | A method that changes the value of an attribute |
| Getter | Another name for an accessor |
| Setter | Another name for a mutator |
| Validation | Checking that data is sensible before accepting it |

## 4. Concept Explanation

Accessors and mutators are used with private attributes.

An accessor method allows outside code to read an attribute value.

A mutator method allows outside code to change an attribute value, usually with validation.

Example:

A Student class may have a private attribute called score.

| Method | Purpose |
|---|---|
| getScore | Return the current score |
| setScore | Change the score if the new value is valid |

## 5. Step-by-step Example

Problem: Set a student's score.

Validation rule:

| Rule | Meaning |
|---|---|
| score >= 0 and score <= 100 | The score is valid |
| otherwise | The score should be rejected |

A mutator can check the value before changing the private attribute.

## 6. Visual Structure

::: info Accessor and Mutator Flow

Private attribute: score

→ Accessor reads score  
→ Mutator receives new score  
→ Mutator validates new score  
→ If valid, update score  
→ If invalid, reject change  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Using a mutator without validation | Invalid values may be accepted |
| Confusing accessor and mutator | Reading and changing data are different actions |
| Returning private data incorrectly | The object may expose more than needed |
| Making attributes public instead | Encapsulation is weakened |

## 8. Exam-style Question

A class has a private attribute called `age`.

**Explain why a mutator method could be used to change the age.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- the age attribute is private and cannot be changed directly
- a mutator provides controlled access to change the value
- the method can validate the age before updating it

## 10. Quick Check

1. What is an accessor?
2. What is a mutator?
3. Why should a setter validate data?
