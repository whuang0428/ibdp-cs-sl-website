# B2 and B3 Programming Practice

## 1. Quick Revision

| Concept | Reminder |
|---|---|
| Variable | Named storage location |
| Selection | IF / ELSE decision |
| Loop | Repetition |
| Array | Fixed collection of values |
| Class | Blueprint for objects |
| Object | Instance of a class |
| Attribute | Data stored in object |
| Method | Behaviour of object |
| Constructor | Initializes object |
| Encapsulation | Controls access to data |

## 2. Code Tracing

### Question 1 [4 marks]

Trace the code.

```java
int total = 0;

for (int i = 1; i <= 5; i++) {
    if (i % 2 == 0) {
        total = total + i;
    }
}

System.out.println(total);
```

<details>
<summary>Answer</summary>

Even values are 2 and 4.

| i | condition | total |
|---:|---|---:|
| 1 | false | 0 |
| 2 | true | 2 |
| 3 | false | 2 |
| 4 | true | 6 |
| 5 | false | 6 |

Output: `6`

</details>

## 3. Array Practice

### Question 2 [5 marks]

Write Java code to count how many values in an integer array `marks` are greater than or equal to 50.

<details>
<summary>Answer</summary>

```java
int count = 0;

for (int i = 0; i < marks.length; i++) {
    if (marks[i] >= 50) {
        count++;
    }
}

System.out.println(count);
```

</details>

## 4. OOP Practice

### Question 3 [6 marks]

Write a Java class called `Student` with private attributes `name` and `score`, a constructor, a getter for score, and a setter that only accepts scores from 0 to 100.

<details>
<summary>Answer</summary>

```java
public class Student {
    private String name;
    private int score;

    public Student(String newName, int newScore) {
        name = newName;
        setScore(newScore);
    }

    public int getScore() {
        return score;
    }

    public void setScore(int newScore) {
        if (newScore >= 0 && newScore <= 100) {
            score = newScore;
        }
    }
}
```

</details>

### Question 4 [4 marks]

Explain how encapsulation is shown in Question 3.

<details>
<summary>Answer</summary>

The attributes are private, so outside code cannot directly access or change them. Public methods such as `getScore` and `setScore` provide controlled access. The setter validates the score before changing the private attribute, preventing invalid values.

</details>

## 5. Pseudocode Practice

### Question 5 [6 marks]

Write pseudocode to search an array `names` for `"Alice"` and output `"Found"` if it exists.

<details>
<summary>Answer</summary>

```text
found = false

FOR i = 0 TO LENGTH(names) - 1 DO
    IF names[i] = "Alice" THEN
        found = true
    END IF
END FOR

IF found = true THEN
    OUTPUT "Found"
ELSE
    OUTPUT "Not found"
END IF
```

</details>
