# UML Class Diagrams

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the purpose of a UML class diagram
- identify class name, attributes, and methods in a class diagram
- create a simple class diagram for one class
- interpret visibility symbols

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B3 Object-Oriented Programming |
| Label | SL Core |
| Main skill | Representing class design |

## 3. Key Terms

| Term | Meaning |
|---|---|
| UML | Unified Modeling Language |
| Class diagram | A diagram showing the structure of a class |
| Visibility | Whether an attribute or method is public or private |
| Public | Usually shown with + |
| Private | Usually shown with - |

## 4. Concept Explanation

A UML class diagram is used to show the design of a class.

A simple class diagram usually has three sections:

| Section | Content |
|---|---|
| Top | Class name |
| Middle | Attributes |
| Bottom | Methods |

Example:

| Student |
|---|
| - name |
| - score |
| + getName() |
| + setScore(newScore) |
| + displayDetails() |

The minus symbol means private.  
The plus symbol means public.

## 5. Step-by-step Example

Class: Book

Possible UML design:

| Book |
|---|
| - title |
| - author |
| - available |
| + getTitle() |
| + borrowBook() |
| + returnBook() |

## 6. Visual Structure

::: info UML Class Diagram Structure

Top section: **Class name**

Middle section: **Attributes**

Bottom section: **Methods**

Visibility symbols:

- `+` means public
- `-` means private

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Putting methods in the attribute section | The class diagram becomes unclear |
| Forgetting visibility symbols | Access level is not shown |
| Using object names instead of class names | UML class diagrams describe classes |
| Adding unrelated methods | The class design becomes weak |

## 8. Exam-style Question

A class called `Product` has private attributes `name` and `price`, and public methods `getPrice()` and `setPrice(newPrice)`.

**Construct a simple UML class diagram for this class.** [4]

## 9. Mark Scheme Style Answer

Award marks for:

- class name Product
- private attribute name
- private attribute price
- public methods getPrice and setPrice

Example:

| Product |
|---|
| - name |
| - price |
| + getPrice() |
| + setPrice(newPrice) |

## 10. Quick Check

1. What are the three sections of a UML class diagram?
2. What does `-` mean in a UML class diagram?
3. What does `+` mean?
