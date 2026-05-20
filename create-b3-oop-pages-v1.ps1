$basePath = "docs\b3-oop"

New-Item -ItemType Directory -Force $basePath | Out-Null

$pages = @{
    "index.md" = @'
# B3 Object-Oriented Programming

## Unit Overview

This unit introduces the basic ideas of object-oriented programming.

Object-oriented programming, often called OOP, is a way of designing programs using classes and objects. Students learn how data and behaviour can be grouped together inside a class.

For SL, the focus is mainly on a single class. Our course will also include some HL extension content to help students understand larger programs with multiple classes.

## Topics

| Topic | Main Focus | Label |
|---|---|---|
| Classes and Objects | Understand the difference between a class and an object | SL Core |
| Attributes and Methods | Store data and define behaviour inside a class | SL Core |
| Constructors | Create objects with initial values | SL Core |
| Encapsulation | Protect data inside a class | SL Core |
| Accessors and Mutators | Get and change private attribute values safely | SL Core |
| UML Class Diagrams | Represent class structure visually | SL Core |
| Multiple Classes | Understand how classes can work together | HL Extension |

## How to Study This Unit

1. Understand the vocabulary first.
2. Study the structure of a simple class.
3. Trace how objects are created and used.
4. Practise writing small classes.
5. Connect OOP ideas to real-world examples.

::: tip SL Core and HL Extension
For SL, students should focus on single-class OOP. Multiple-class OOP is included as an extension to support stronger programming skills.
:::
'@

    "classes-objects.md" = @'
# Classes and Objects

## 1. Learning Objectives

By the end of this page, students should be able to:

- define a class
- define an object
- explain the difference between a class and an object
- identify real-world examples of classes and objects

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B3 Object-Oriented Programming |
| Label | SL Core |
| Main skill | Understanding OOP foundations |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Class | A template or blueprint for creating objects |
| Object | An instance of a class |
| Instance | A specific object created from a class |
| Attribute | Data stored inside an object |
| Method | Behaviour or action that an object can perform |

## 4. Concept Explanation

A class is like a blueprint. It describes what data an object should store and what actions it can perform.

An object is a real example created from the class.

Example:

| Class | Possible Objects |
|---|---|
| Student | student1, student2, student3 |
| Car | car1, car2 |
| BankAccount | account1, account2 |

The class defines the general structure. Each object has its own attribute values.

## 5. Step-by-step Example

Class: Student

Possible attributes:

- name
- student ID
- grade
- email

Possible methods:

- display details
- update grade
- send message

Object examples:

| Object | name | grade |
|---|---|---|
| student1 | Alice | 11 |
| student2 | Ben | 12 |

## 6. Visual Structure

::: info Class and Object Relationship

**Class**

→ defines attributes and methods  
→ used to create objects  

**Object**

→ created from a class  
→ stores its own data values  
→ can use methods defined in the class  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Saying a class is the same as an object | A class is a template, but an object is an instance |
| Forgetting that each object has its own values | Students may think all objects share the same data |
| Only thinking of OOP as code syntax | OOP is also a design method |
| Confusing attributes and methods | Data and actions have different roles |

## 8. Exam-style Question

A program stores information about library books.

**Explain how the idea of a class and objects could be used in this program.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- a Book class can be used as a template
- attributes may include title, author, ISBN, and availability
- each book in the library can be represented as an object
- each object stores its own values for the attributes

## 10. Quick Check

1. What is a class?
2. What is an object?
3. Give one class and two possible objects from that class.
'@

    "attributes-methods.md" = @'
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
'@

    "constructors.md" = @'
# Constructors

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the purpose of a constructor
- understand how constructors initialize objects
- identify constructor parameters
- explain why initial values are useful

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B3 Object-Oriented Programming |
| Label | SL Core |
| Main skill | Object creation |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Constructor | A special method used when an object is created |
| Initialize | Give starting values to attributes |
| Parameter | A value passed into a method or constructor |
| Default value | A value used if no specific value is provided |

## 4. Concept Explanation

A constructor is used to create an object and give it initial attribute values.

Without a constructor, an object may be created without useful starting data.

Example:

A Student object might need:

- name
- student ID
- year group

The constructor can receive these values and store them inside the object.

## 5. Step-by-step Example

Class: Student

Constructor input:

| Parameter | Purpose |
|---|---|
| name | Set the student's name |
| id | Set the student's ID |
| grade | Set the student's grade level |

Object creation idea:

| Object | Initial values |
|---|---|
| student1 | Alice, 1001, Grade 11 |
| student2 | Ben, 1002, Grade 12 |

## 6. Visual Structure

::: info Constructor Process

Create object.

→ Call constructor  
→ Pass initial values  
→ Store values in attributes  
→ Object is ready to use  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Forgetting to initialize attributes | Objects may contain missing data |
| Confusing constructor with normal method | A constructor is called during object creation |
| Passing parameters in the wrong order | Attribute values may be incorrect |
| Not matching parameters to attributes | Data may not be stored correctly |

## 8. Exam-style Question

A class called `Student` has attributes `name` and `score`.

**Explain why a constructor could be useful when creating a new Student object.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- a constructor is called when an object is created
- it can receive values such as name and score
- it initializes the object's attributes so the object starts with valid data

## 10. Quick Check

1. What is a constructor?
2. What does initialize mean?
3. Why are constructor parameters useful?
'@

    "encapsulation.md" = @'
# Encapsulation

## 1. Learning Objectives

By the end of this page, students should be able to:

- define encapsulation
- explain why data should be protected inside a class
- distinguish between public and private access
- explain how encapsulation improves program reliability

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B3 Object-Oriented Programming |
| Label | SL Core |
| Main skill | Data protection |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Encapsulation | Bundling data and methods together inside a class and controlling access |
| Private | Can only be accessed inside the class |
| Public | Can be accessed from outside the class |
| Data hiding | Preventing direct access to internal data |
| Interface | The public methods used to interact with an object |

## 4. Concept Explanation

Encapsulation means keeping related data and methods together inside a class and controlling how the data is accessed.

A class may make attributes private so that other parts of the program cannot change them directly.

This helps prevent invalid or unsafe changes.

Example:

A BankAccount object should not allow any part of the program to set the balance directly to a negative value without checking.

Instead, the program should use methods such as:

- deposit
- withdraw
- get balance

## 5. Step-by-step Example

Problem: Protect a bank account balance.

Poor design:

| Action | Problem |
|---|---|
| Directly change balance to -500 | Invalid value may be allowed |

Better design:

| Action | Benefit |
|---|---|
| Use withdraw method | The method can check if enough money exists |

## 6. Visual Structure

::: info Encapsulation Idea

Private attributes are protected inside the class.

→ Outside code cannot change them directly  
→ Outside code uses public methods  
→ Public methods can validate data before changing attributes  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Making every attribute public | Data can be changed incorrectly |
| Thinking encapsulation means hiding everything | Public methods are still needed |
| Ignoring validation | Invalid data may still enter the object |
| Confusing private with deleted | Private data still exists, but access is restricted |

## 8. Exam-style Question

A class stores a student's exam mark.

**Explain why the mark attribute should be private and changed using a method.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- making the mark private prevents direct external changes
- a method can control how the mark is changed
- the method can validate the mark is within an allowed range
- this reduces errors and protects the object's data

## 10. Quick Check

1. What is encapsulation?
2. Why might an attribute be private?
3. What is one benefit of using public methods?
'@

    "accessors-mutators.md" = @'
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
'@

    "uml-class-diagrams.md" = @'
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
'@

    "hl-multiple-classes.md" = @'
# Multiple Classes

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain why larger programs may use multiple classes
- identify simple relationships between classes
- understand how objects can work together
- distinguish this extension content from SL core content

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | B3 Object-Oriented Programming |
| Label | HL Extension |
| Main skill | Designing larger OOP programs |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Multiple classes | A program design that uses more than one class |
| Relationship | A connection between classes |
| Association | A general link between classes |
| Aggregation | A whole-part relationship where parts can exist independently |
| Composition | A stronger whole-part relationship where parts depend on the whole |

## 4. Concept Explanation

In larger programs, one class is often not enough.

Multiple classes allow different parts of a system to be represented separately.

Example:

A school system might use:

| Class | Purpose |
|---|---|
| Student | Store student information |
| Course | Store course information |
| Teacher | Store teacher information |
| GradeBook | Manage marks |

Each class has its own responsibility.

## 5. Step-by-step Example

System: Library borrowing system

Possible classes:

| Class | Responsibility |
|---|---|
| Book | Store book details |
| Member | Store member details |
| Loan | Store borrowing date and return date |

These classes work together to model the full system.

## 6. Visual Structure

::: warning HL Extension
This page is not the main SL focus. It is included to improve programming understanding and prepare students for more complex OOP tasks.
:::

::: info Multiple-Class Thinking

Break the system into responsibilities.

→ Choose one class for each major responsibility  
→ Give each class suitable attributes and methods  
→ Decide how objects need to interact  
→ Keep each class focused and clear  

:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Putting everything into one large class | The class becomes hard to maintain |
| Creating too many tiny classes | The design becomes unnecessarily complex |
| Giving a class unrelated responsibilities | The design becomes unclear |
| Confusing object interaction with inheritance | Not all class relationships are inheritance |

## 8. Exam-style Question

A library system uses books, members, and loans.

**Explain why using multiple classes may be better than using one large class.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- each class can represent a separate part of the system
- Book, Member, and Loan can each have their own attributes and methods
- this makes the program easier to understand and maintain
- changes to one class are less likely to affect unrelated parts of the program

## 10. Quick Check

1. Why might a program use multiple classes?
2. Give two possible classes in a shopping system.
3. Why should a class have a clear responsibility?
'@
}

foreach ($file in $pages.Keys) {
    $fullPath = Join-Path $basePath $file
    Set-Content -Path $fullPath -Value $pages[$file] -Encoding UTF8
}

Write-Host "B3 OOP pages created successfully."
