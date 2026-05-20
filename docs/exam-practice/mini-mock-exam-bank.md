# Mini Mock Exam Bank

## How to Use

Each mini mock is designed for 25-35 minutes. Students should complete the questions first, then compare with the hidden answers.

---

# Mini Mock 1: Systems and Networks

## Question 1 [4 marks]

Compare RAM and secondary storage.

<details>
<summary>Answer</summary>

RAM is primary memory used to store currently running programs and data. It is volatile, so data is lost when power is off. Secondary storage stores data long-term and is non-volatile, so files remain after power is off. Secondary storage usually has larger capacity but is slower than RAM.

</details>

## Question 2 [5 marks]

Describe how packet switching is used to send a file.

<details>
<summary>Answer</summary>

The file is split into smaller packets. Each packet contains a header with information such as source address, destination address, and sequence number, and a payload containing part of the file. Packets are routed through the network and may take different paths. At the destination they are checked, reordered, and reassembled into the original file.

</details>

## Question 3 [4 marks]

Explain why a school network should use authentication and authorization.

<details>
<summary>Answer</summary>

Authentication checks the identity of users before allowing access, such as through username and password or MFA. Authorization controls what each authenticated user is allowed to access. This is important in a school because students, teachers, and administrators should have different access rights to files, grades, and systems.

</details>

---

# Mini Mock 2: Programming and OOP

## Question 1 [4 marks]

Trace the output.

```java
int[] data = {3, 6, 2, 8};
int total = 0;

for (int i = 0; i < data.length; i++) {
    if (data[i] > 4) {
        total = total + data[i];
    }
}

System.out.println(total);
```

<details>
<summary>Answer</summary>

Values greater than 4 are 6 and 8.  
Total = 14.  
Output: `14`.

</details>

## Question 2 [4 marks]

Explain the difference between a class and an object.

<details>
<summary>Answer</summary>

A class is a blueprint or template that defines attributes and methods. An object is an instance created from a class. Many objects can be created from the same class, and each object can store its own attribute values.

</details>

## Question 3 [4 marks]

Explain why private attributes and public setters can improve reliability.

<details>
<summary>Answer</summary>

Private attributes cannot be changed directly by outside code. Public setters provide controlled access. A setter can validate a value before changing the attribute, preventing invalid data from being stored and improving reliability.

</details>

---

# Mini Mock 3: Databases and Machine Learning

## Question 1 [4 marks]

A library database has BOOK and LOAN tables. Explain why `BookID` may appear in both tables.

<details>
<summary>Answer</summary>

`BookID` is the primary key in the BOOK table and uniquely identifies each book. It can appear as a foreign key in the LOAN table to link each loan record to the correct book. This avoids repeating all book details in every loan record.

</details>

## Question 2 [5 marks]

Write SQL to display `StudentName` and `Mark` from `STUDENT` where `Mark` is at least 80, ordered by `Mark` from highest to lowest.

<details>
<summary>Answer</summary>

```sql
SELECT StudentName, Mark
FROM STUDENT
WHERE Mark >= 80
ORDER BY Mark DESC;
```

</details>

## Question 3 [6 marks]

Explain why accuracy alone may be misleading when evaluating a disease prediction model.

<details>
<summary>Answer</summary>

Accuracy shows the overall proportion of correct predictions, but it does not show the types of errors. In disease prediction, false negatives may be dangerous because sick patients may be told they are healthy. If the data is imbalanced, a model can have high accuracy by predicting the majority class. Precision, recall, and a confusion matrix provide more useful detail.

</details>
