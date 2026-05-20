# Attributes and Methods

## 1. Learning Objectives

By the end of this page, students should be able to:

- define an attribute
- define a method
- distinguish between data and behaviour in a class
- identify suitable attributes and methods for simple classes

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B3 Object-Oriented Programming |
| Label | SL Core |
| Main skill | Class structure |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Attribute | A value or piece of data stored in an object |
| Method | A procedure or function that belongs to a class |
| Behaviour | An action that an object can perform |
| State | The current values stored in an object |

## 4. Concept Explanation

Attributes describe what an object knows or stores.

Methods describe what an object can do.

For example, a BankAccount object may have these attributes:

- account number
- account holder name
- balance

It may have these methods:

- deposit money
- withdraw money
- display balance

## 5. Step-by-step Example

Class: Rectangle

| Type | Examples |
|---|---|
| Attributes | width, height |
| Methods | calculate area, calculate perimeter |

The attributes store data.  
The methods use the data to perform actions or calculations.

## 6. Visual Structure

::: info Attributes vs Methods

**Attributes**

→ describe the object  
→ store values  
→ examples: name, age, balance  

**Methods**

→ describe actions  
→ use or change attribute values  
→ examples: deposit, withdraw, displayDetails  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Treating a method as stored data | Methods are actions, not values |
| Treating an attribute as an action | Attributes describe state |
| Choosing unrelated attributes | The class becomes poorly designed |
| Creating methods that do not belong to the class | The class loses clear responsibility |

## 8. Exam-style Question

A program uses a class called `Car`.

**Identify two suitable attributes and two suitable methods for this class.** [4]

## 9. Mark Scheme Style Answer

Possible answers:

| Type | Example |
|---|---|
| Attribute | registration number |
| Attribute | speed |
| Method | accelerate |
| Method | brake |

Award marks for suitable attributes and methods that match the class.

## 10. Quick Check

1. What is an attribute?
2. What is a method?
3. For a class called `Player`, give two attributes and one method.
