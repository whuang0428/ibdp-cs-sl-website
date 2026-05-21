# B3 Object-Oriented Programming Quality Audit v1.0

## 1. Audit Purpose

This report starts the v1.1 upgrade process for **B3 Object-Oriented Programming**.

After completing B2 Programming v1.1, students should already understand:

```text
variables
data types
selection
loops
arrays
methods of tracing
basic Java syntax
```

B3 builds on these skills and introduces a new way to organize programs:

```text
classes + objects + attributes + methods
```

The goal of this audit is to decide:

```text
Which B3 pages are already usable?
Which B3 pages need v1.1 teaching-depth upgrade?
Which pages should be upgraded first?
What teaching risks should we avoid?
```

---

## 2. Overall Judgement

| Area | Judgement |
|---|---|
| Current status | Usable as v1.0 framework |
| Main strength | The B3 structure is already clear and follows the OOP learning path |
| Main weakness | OOP concepts need more visual examples, Java class examples, UML examples, and code tracing |
| Biggest teaching risk | Students may memorize definitions but fail to connect class, object, attribute, method, constructor, and encapsulation in real Java code |
| Recommended next action | Upgrade **Classes and Objects** first |

Final judgement:

```text
B3 OOP should now enter v1.1 teaching-depth upgrade.
```

---

## 3. B3 Learning Path

Recommended teaching order:

```text
Classes and Objects
→ Attributes and Methods
→ Constructors
→ Encapsulation
→ Accessors and Mutators
→ UML Class Diagrams
→ Multiple Classes / HL Extension
→ B3 Overview Review
```

This order is important because each later concept depends on the previous one.

| Concept | Depends On |
|---|---|
| Object | class |
| Attribute | class and object |
| Method | class and object |
| Constructor | attributes and object creation |
| Encapsulation | attributes and access modifiers |
| Accessor / Mutator | encapsulation |
| UML | class, attributes, methods, visibility |
| Multiple classes | all previous OOP ideas |

---

## 4. Page-by-page Audit

| Page | Current Status | Priority | Main Issue | Recommended v1.1 Action |
|---|---|---|---|---|
| Overview | Minor Revision | P3 | Should become a strong module homepage after topic pages are upgraded | Upgrade last |
| Classes and Objects | Needs v1.1 Upgrade | P1 | Foundation topic; students often confuse class and object | Add real-world analogy, Java class/object example, memory-style object table, exam questions |
| Attributes and Methods | Needs v1.1 Upgrade | P1 | Students confuse attributes, local variables, parameters, and return values | Add Java examples, method call tracing, object state changes |
| Constructors | Needs v1.1 Upgrade | P1 | Students often think constructor is a normal method | Add object creation trace, default vs parameterized constructor, constructor mistakes |
| Encapsulation | Needs v1.1 Upgrade | P1 | Important written concept; needs clear reason and Java private examples | Add public/private explanation, data protection scenarios, exam wording |
| Accessors and Mutators | Needs v1.1 Upgrade | P1 | Students need to understand getters/setters and validation | Add getter/setter Java examples, validation in setter, common mistakes |
| UML Class Diagrams | Needs v1.1 Upgrade | P1 | Students need symbol reading and Java mapping | Add UML notation, visibility, attributes, methods, constructor mapping |
| HL Multiple Classes | Minor/Major Revision | P2 | Useful extension beyond SL; should connect to real multi-class Java programs | Add object collaboration, composition-style examples, simple project structure |

---

## 5. Priority Ranking

### P1: Upgrade First

These pages should be improved before B3 is taught in depth.

| Rank | Page | Why |
|---:|---|---|
| 1 | Classes and Objects | Foundation of all OOP |
| 2 | Attributes and Methods | Students need object state and behaviour |
| 3 | Constructors | Needed for creating objects correctly |
| 4 | Encapsulation | High-value explanation topic |
| 5 | Accessors and Mutators | Practical Java implementation of encapsulation |
| 6 | UML Class Diagrams | Important for design and exam-style interpretation |

### P2: Upgrade Second

| Page | Why |
|---|---|
| HL Multiple Classes | Useful extension, especially because your course includes extra HL programming content |
| B3 Overview | Best upgraded after all core pages are finished |

---

## 6. Teaching Risks in B3

B3 is conceptually harder than B2 because students must think beyond one sequence of statements.

Common student misunderstandings:

| Misunderstanding | Correct Idea |
|---|---|
| A class and object are the same thing | A class is a blueprint; an object is an instance created from the class |
| Attributes are just normal variables | Attributes belong to an object and describe its state |
| Methods are the same as functions only | Methods belong to a class/object and describe behaviour |
| Constructor is called like a normal method | Constructor runs when a new object is created |
| `private` is just syntax | `private` protects internal data from direct outside access |
| Getters and setters are unnecessary | They provide controlled access to private attributes |
| UML is just a drawing | UML is a design representation of classes, attributes, methods, and visibility |
| Multiple classes are just multiple files | Classes should collaborate through objects and method calls |

---

## 7. B3 v1.1 Upgrade Standard

For each B3 core page, add or strengthen these sections:

| Required Upgrade | Details |
|---|---|
| Bilingual concept explanation | Clear Chinese + English explanation |
| Real-world analogy | Blueprint/object, bank account, student record, game character, etc. |
| Java class example | Complete class code |
| Java object-use example | Separate `main` program that creates and uses objects |
| Line-by-line explanation | Explain attributes, methods, constructor, visibility |
| Object state table | Show how object values change after method calls |
| Common mistakes | Very specific beginner OOP mistakes |
| Guided practice | Questions with hidden answers |
| Independent practice | Code-writing and design tasks |
| Exam-style questions | Definition, explanation, code interpretation, UML interpretation |
| Homework | Practical coding + written explanation |
| One-page summary | Core vocabulary and patterns |

---

## 8. Recommended Java Example Theme

To keep B3 consistent, use one repeated example theme across multiple pages:

```text
Student
```

Example class:

```java
public class Student {
    private String name;
    private int mark;

    public Student(String name, int mark) {
        this.name = name;
        this.mark = mark;
    }

    public String getName() {
        return name;
    }

    public int getMark() {
        return mark;
    }

    public void setMark(int mark) {
        if (mark >= 0 && mark <= 100) {
            this.mark = mark;
        }
    }

    public boolean hasPassed() {
        return mark >= 50;
    }
}
```

Why this example is good:

| Concept | How Student Example Shows It |
|---|---|
| Class | `Student` blueprint |
| Object | individual student such as Alice |
| Attribute | `name`, `mark` |
| Constructor | initializes name and mark |
| Encapsulation | attributes are private |
| Accessor | `getName()`, `getMark()` |
| Mutator | `setMark()` |
| Validation | mark must be 0 to 100 |
| Method | `hasPassed()` |
| UML | easy to convert to class diagram |

---

## 9. Suggested B3 v1.1 Upgrade Order

Recommended order:

```text
1. Classes and Objects v1.1
2. Attributes and Methods v1.1
3. Constructors v1.1
4. Encapsulation v1.1
5. Accessors and Mutators v1.1
6. UML Class Diagrams v1.1
7. HL Multiple Classes v1.1
8. B3 Overview v1.1
9. B3 v1.1 Quality Review
```

---

## 10. What Each Page Should Focus On

### 10.1 Classes and Objects

Must answer:

```text
What is a class?
What is an object?
How are they different?
How does Java create an object?
```

Needed additions:

- blueprint analogy
- Student class example
- multiple objects from same class
- object state table
- exam question: class vs object

---

### 10.2 Attributes and Methods

Must answer:

```text
What data does an object store?
What behaviour can an object perform?
```

Needed additions:

- attributes as object state
- methods as object behaviour
- method call syntax
- method return value
- `void` vs return type
- object state before/after method call

---

### 10.3 Constructors

Must answer:

```text
How does an object receive initial values?
```

Needed additions:

- constructor syntax
- constructor name matches class name
- no return type
- default constructor
- parameterized constructor
- `this` keyword
- constructor trace

---

### 10.4 Encapsulation

Must answer:

```text
Why should attributes usually be private?
```

Needed additions:

- `private` vs `public`
- direct access problem
- data validation
- protection of object state
- exam-style advantages of encapsulation

---

### 10.5 Accessors and Mutators

Must answer:

```text
How can outside code read or update private data safely?
```

Needed additions:

- getter pattern
- setter pattern
- validation inside setter
- read-only attribute example
- common naming conventions

---

### 10.6 UML Class Diagrams

Must answer:

```text
How can class design be represented visually?
```

Needed additions:

- class name compartment
- attribute compartment
- method compartment
- visibility signs `+` and `-`
- data types and return types
- constructor in UML
- UML to Java translation
- Java to UML translation

---

### 10.7 HL Multiple Classes

Must answer:

```text
How do objects from different classes work together?
```

Needed additions:

- two-class example
- object as attribute
- simple composition idea
- `main` class creates objects
- method calls across objects
- mini project example

---

## 11. B3 Practice Design

B3 practice should include three types of tasks.

### 11.1 Concept Tasks

Examples:

```text
Define class.
Define object.
Explain why encapsulation is useful.
Compare attribute and method.
```

### 11.2 Code Reading Tasks

Examples:

```java
Student s1 = new Student("Alice", 85);
System.out.println(s1.getMark());
s1.setMark(90);
System.out.println(s1.getMark());
```

Students trace the object state.

### 11.3 Code Writing Tasks

Examples:

```text
Write a Book class.
Write a constructor.
Write getter and setter methods.
Create two Book objects in main.
```

---

## 12. B3 Assessment Focus

B3 questions may ask students to:

- define class and object
- compare class and object
- identify attributes and methods from a scenario
- write a simple Java class
- write a constructor
- explain encapsulation
- write accessor and mutator methods
- interpret UML diagrams
- convert UML to Java code
- trace object state after method calls
- explain how objects interact

---

## 13. Recommended First Upgrade

Start with:

```text
B3 Classes and Objects v1.1
```

Reason:

```text
If students do not understand class vs object, all later OOP topics become memorization rather than real understanding.
```

The first page should establish:

```text
class = blueprint
object = instance
attribute = data/state
method = behaviour
constructor = object initialization
```

Even if attributes and constructors get their own pages later, the first page should preview them gently.

---

## 14. Decision

Final decision:

```text
B3 OOP is ready to enter v1.1 upgrade.
The first page to upgrade should be Classes and Objects.
```

Recommended immediate next step:

```text
Create B3 Classes and Objects teaching content v1.1.
```
