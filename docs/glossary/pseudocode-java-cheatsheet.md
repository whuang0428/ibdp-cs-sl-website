# Pseudocode and Java Cheatsheet

## 1. Variables

### IB-style pseudocode

```text
score = 0
name = "Alice"
```

### Java

```java
int score = 0;
String name = "Alice";
```

## 2. Input and Output

### Pseudocode

```text
INPUT name
OUTPUT name
```

### Java

```java
Scanner input = new Scanner(System.in);
String name = input.nextLine();
System.out.println(name);
```

## 3. Selection

### Pseudocode

```text
IF score >= 50 THEN
    OUTPUT "Pass"
ELSE
    OUTPUT "Fail"
END IF
```

### Java

```java
if (score >= 50) {
    System.out.println("Pass");
} else {
    System.out.println("Fail");
}
```

## 4. Count-controlled Loop

### Pseudocode

```text
FOR i = 1 TO 10 DO
    OUTPUT i
END FOR
```

### Java

```java
for (int i = 1; i <= 10; i++) {
    System.out.println(i);
}
```

## 5. Condition-controlled Loop

### Pseudocode

```text
WHILE total < 100 DO
    INPUT number
    total = total + number
END WHILE
```

### Java

```java
while (total < 100) {
    int number = input.nextInt();
    total = total + number;
}
```

## 6. Array Traversal

### Pseudocode

```text
FOR i = 0 TO LENGTH(values) - 1 DO
    OUTPUT values[i]
END FOR
```

### Java

```java
for (int i = 0; i < values.length; i++) {
    System.out.println(values[i]);
}
```

## 7. Linear Search

### Pseudocode

```text
found = false

FOR i = 0 TO LENGTH(data) - 1 DO
    IF data[i] = target THEN
        found = true
    END IF
END FOR
```

### Java

```java
boolean found = false;

for (int i = 0; i < data.length; i++) {
    if (data[i] == target) {
        found = true;
    }
}
```

## 8. Class Template

### Java

```java
public class Student {
    private String name;
    private int score;

    public Student(String newName, int newScore) {
        name = newName;
        score = newScore;
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

## 9. Common Java Mistakes

| Mistake | Correct |
|---|---|
| `if score >= 50` | `if (score >= 50)` |
| single `=` in condition | use `==` for comparison |
| `array.length()` | `array.length` |
| `ArrayList.length` | `ArrayList.size()` |
| missing semicolon | add `;` |
| comparing strings with `==` | use `.equals()` |
