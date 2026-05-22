# Trace Tables

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- define trace table
- explain why trace tables are useful
- dry-run algorithms step by step
- track variable values as an algorithm executes
- record outputs in the correct order
- trace sequence, selection, and iteration
- complete trace tables for algorithms with counters and accumulators
- trace algorithms with Boolean flags
- predict final outputs from pseudocode or flowcharts
- identify logic errors using trace tables
- explain common tracing mistakes
- apply trace tables to calculation, search, password, discount, and loop examples
- answer exam-style questions about trace tables

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | B1 Computational Thinking |
| Label | SL Core |
| Main skill | Manually following an algorithm to track variable values and outputs |
| Connected topics | Algorithms, flowcharts, sequence, selection, iteration, pseudocode, debugging |
| Practical focus | Completing trace tables and predicting output |
| Exam relevance | Dry runs, variables, loops, conditions, counters, accumulators, output prediction, logic errors |

::: tip Learning Focus
A trace table records the values of variables as an algorithm runs. It helps students predict output, understand loops, and find logic errors.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Trace table | 跟踪表 | Table used to record variable values as an algorithm runs |
| Dry run | 手动运行 | Manually following an algorithm step by step |
| Variable | 变量 | Named storage location for a value |
| Value | 值 | Data stored in a variable |
| Assignment | 赋值 | Storing a new value in a variable |
| Output | 输出 | Value or message produced by the algorithm |
| Input | 输入 | Data used by the algorithm |
| Condition | 条件 | Expression that evaluates to true or false |
| Iteration | 循环 / 迭代 | Repetition of a block of instructions |
| Selection | 选择结构 | Decision using IF/ELSE |
| Sequence | 顺序结构 | Instructions executed in order |
| Counter | 计数器 | Variable used to count repetitions |
| Accumulator | 累加器 | Variable used to store a running total |
| Flag | 标志变量 | Boolean variable used to remember a state |
| Boolean | 布尔值 | True or false value |
| Logic error | 逻辑错误 | Algorithm runs but gives incorrect result |
| Final value | 最终值 | Value after the algorithm has finished |
| Initial value | 初始值 | Starting value of a variable |
| Loop condition | 循环条件 | Condition that controls whether a loop repeats |
| Off-by-one error | 差一错误 | Loop runs one too many or one too few times |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

**Trace table（跟踪表）** 是用来手动检查 algorithm 的表格。  
它记录 algorithm 运行过程中 variable 的变化。

例如：

```text
x ← 3
x ← x + 2
OUTPUT x
```

我们可以 trace：

| Step | x | Output |
|---:|---:|---|
| 1 | 3 |  |
| 2 | 5 |  |
| 3 | 5 | 5 |

Trace table 的重点是：

```text
一步一步执行
变量变了就记录
遇到 IF 就判断 true/false
遇到 loop 就每一轮都更新
遇到 OUTPUT 才记录 output
```

很多学生做错 trace table，是因为：

```text
忘记更新 counter
忘记更新 total
把 output 写早了
每次 loop 少走或多走一次
IF 条件判断错
把旧值和新值搞混
```

简单来说：

```text
trace table = manually run algorithm and record variable values
```

</template>

<template #en>

### English Explanation

A **trace table** is a table used to manually check an algorithm.  
It records how variable values change while the algorithm runs.

Example:

```text
x ← 3
x ← x + 2
OUTPUT x
```

We can trace it:

| Step | x | Output |
|---:|---:|---|
| 1 | 3 |  |
| 2 | 5 |  |
| 3 | 5 | 5 |

The key idea is:

```text
execute step by step
record variable changes
evaluate IF conditions as true/false
update values in every loop iteration
record output only when OUTPUT runs
```

Many students make trace table mistakes because they:

```text
forget to update the counter
forget to update the total
write output too early
run a loop one too many or one too few times
evaluate IF conditions incorrectly
confuse old values and new values
```

In simple terms:

```text
trace table = manually run algorithm and record variable values
```

</template>
</LangBlock>

---

## 5. What Is a Trace Table?

A trace table is a table used to record the values of variables as an algorithm runs.

### Simple Definition

```text
A trace table records variable values step by step during a dry run of an algorithm.
```

### It Helps To

```text
predict output
understand how an algorithm works
check variable changes
follow loops
find logic errors
test an algorithm before coding
```

::: tip Exam Phrase
A trace table records the values of variables as an algorithm runs, helping to predict outputs and identify logic errors.
:::

---

## 6. Why Trace Tables Are Useful

Trace tables are useful because algorithms can be difficult to understand just by reading them.

### Benefits

| Benefit | Explanation |
|---|---|
| Predict output | shows what the algorithm will produce |
| Track variables | records changes to variable values |
| Understand loops | shows each iteration clearly |
| Check conditions | records true/false decision results |
| Find errors | helps identify where logic goes wrong |
| Test algorithm | checks if algorithm works for sample inputs |
| Debug code | same idea can be used when checking programs |
| Improve exam accuracy | reduces guessing |

### Key Idea

Tracing forces students to follow the algorithm exactly instead of guessing the result.

---

## 7. Dry Run Method

A dry run means manually executing an algorithm without using a computer.

### Method

```text
1. Read the algorithm carefully.
2. Create columns for all important variables.
3. Add a column for Output.
4. Use the given input values in order.
5. Start from the first instruction.
6. Execute one instruction at a time.
7. Record any variable change.
8. Evaluate each condition.
9. Repeat loops carefully.
10. Stop only when the algorithm ends.
```

### Exam Tip

Do not skip steps just because the algorithm looks easy.

---

## 8. Basic Trace Table Format

A trace table usually includes:

```text
step or iteration
variables
condition result
output
```

### Example Format

| Step | x | y | condition | Output |
|---:|---:|---:|---|---|
| 1 |  |  |  |  |
| 2 |  |  |  |  |

### Important

Not every trace table needs all columns.  
Use columns for variables and conditions that change or matter.

---

## 9. Tracing Assignment

Assignment changes a variable value.

### Algorithm

```text
x ← 4
x ← x + 3
x ← x * 2
OUTPUT x
```

### Trace Table

| Step | x | Output |
|---:|---:|---|
| 1 | 4 |  |
| 2 | 7 |  |
| 3 | 14 |  |
| 4 | 14 | 14 |

### Key Idea

For:

```text
x ← x + 3
```

use the old value of `x`, calculate the new value, then store it back in `x`.

---

## 10. Tracing Sequence

Sequence means instructions run in order.

### Algorithm

```text
a ← 5
b ← 2
c ← a + b
a ← c * 2
OUTPUT a
```

### Trace Table

| Step | a | b | c | Output |
|---:|---:|---:|---:|---|
| 1 | 5 |  |  |  |
| 2 | 5 | 2 |  |  |
| 3 | 5 | 2 | 7 |  |
| 4 | 14 | 2 | 7 |  |
| 5 | 14 | 2 | 7 | 14 |

### Common Mistake

Students sometimes forget that changing `a` later does not automatically change old values of `c`.

---

## 11. Tracing Input

When an algorithm says `INPUT`, use the next given input value.

### Algorithm

```text
INPUT x
INPUT y
sum ← x + y
OUTPUT sum
```

Given inputs:

```text
8, 6
```

### Trace Table

| Step | x | y | sum | Output |
|---:|---:|---:|---:|---|
| 1 | 8 |  |  |  |
| 2 | 8 | 6 |  |  |
| 3 | 8 | 6 | 14 |  |
| 4 | 8 | 6 | 14 | 14 |

### Key Idea

Input values are used in the order they are given.

---

## 12. Tracing Output

Only write an output when an `OUTPUT` statement runs.

### Algorithm

```text
x ← 2
x ← x + 1
OUTPUT x
x ← x + 1
OUTPUT x
```

### Trace Table

| Step | x | Output |
|---:|---:|---|
| 1 | 2 |  |
| 2 | 3 |  |
| 3 | 3 | 3 |
| 4 | 4 |  |
| 5 | 4 | 4 |

### Output Order

Final output is:

```text
3
4
```

### Common Mistake

Do not output every variable change.  
Output only when the algorithm says `OUTPUT`.

---

## 13. Tracing Selection

Selection uses IF/ELSE decisions.

### Algorithm

```text
INPUT score

IF score >= 50 THEN
    result ← "Pass"
ELSE
    result ← "Fail"
ENDIF

OUTPUT result
```

Given input:

```text
72
```

### Trace Table

| Step | score | score >= 50? | result | Output |
|---:|---:|---|---|---|
| 1 | 72 |  |  |  |
| 2 | 72 | true |  |  |
| 3 | 72 | true | Pass |  |
| 4 | 72 | true | Pass | Pass |

### Key Idea

Only the branch matching the condition runs.

---

## 14. Tracing Selection with False Condition

Same algorithm, input:

```text
42
```

### Trace Table

| Step | score | score >= 50? | result | Output |
|---:|---:|---|---|---|
| 1 | 42 |  |  |  |
| 2 | 42 | false |  |  |
| 3 | 42 | false | Fail |  |
| 4 | 42 | false | Fail | Fail |

### Common Mistake

Do not run both IF and ELSE branches.

---

## 15. Tracing Multiple Conditions

### Algorithm

```text
INPUT username
INPUT password

IF username = "admin" AND password = "1234" THEN
    OUTPUT "Access granted"
ELSE
    OUTPUT "Access denied"
ENDIF
```

Given inputs:

```text
admin, 0000
```

### Trace Table

| Step | username | password | username = "admin"? | password = "1234"? | AND result | Output |
|---:|---|---|---|---|---|---|
| 1 | admin |  |  |  |  |  |
| 2 | admin | 0000 |  |  |  |  |
| 3 | admin | 0000 | true | false | false |  |
| 4 | admin | 0000 | true | false | false | Access denied |

### Key Idea

For `AND`, both conditions must be true.

---

## 16. Tracing FOR Loops

A FOR loop repeats a known number of times.

### Algorithm

```text
total ← 0

FOR count ← 1 TO 3
    INPUT number
    total ← total + number
ENDFOR

OUTPUT total
```

Given inputs:

```text
4, 7, 2
```

### Trace Table

| Iteration | count | number | total | Output |
|---:|---:|---:|---:|---|
| Start |  |  | 0 |  |
| 1 | 1 | 4 | 4 |  |
| 2 | 2 | 7 | 11 |  |
| 3 | 3 | 2 | 13 |  |
| End |  |  | 13 | 13 |

### Key Idea

The loop runs for count values 1, 2, and 3.

---

## 17. Counters in Trace Tables

A counter counts repetitions or items.

### Algorithm

```text
count ← 0

FOR i ← 1 TO 4
    count ← count + 1
ENDFOR

OUTPUT count
```

### Trace Table

| Iteration | i | count | Output |
|---:|---:|---:|---|
| Start |  | 0 |  |
| 1 | 1 | 1 |  |
| 2 | 2 | 2 |  |
| 3 | 3 | 3 |  |
| 4 | 4 | 4 |  |
| End |  | 4 | 4 |

### Memory

```text
counter = counts how many
```

---

## 18. Accumulators in Trace Tables

An accumulator stores a running total.

### Algorithm

```text
total ← 0

FOR i ← 1 TO 4
    INPUT price
    total ← total + price
ENDFOR

OUTPUT total
```

Given inputs:

```text
5, 10, 3, 7
```

### Trace Table

| Iteration | i | price | total | Output |
|---:|---:|---:|---:|---|
| Start |  |  | 0 |  |
| 1 | 1 | 5 | 5 |  |
| 2 | 2 | 10 | 15 |  |
| 3 | 3 | 3 | 18 |  |
| 4 | 4 | 7 | 25 |  |
| End |  |  | 25 | 25 |

### Memory

```text
accumulator = adds values together
```

---

## 19. Tracing WHILE Loops

A WHILE loop repeats while a condition is true.

### Algorithm

```text
count ← 1

WHILE count <= 3
    OUTPUT count
    count ← count + 1
ENDWHILE
```

### Trace Table

| Step | count | count <= 3? | Output |
|---:|---:|---|---|
| 1 | 1 | true |  |
| 2 | 1 | true | 1 |
| 3 | 2 | true |  |
| 4 | 2 | true | 2 |
| 5 | 3 | true |  |
| 6 | 3 | true | 3 |
| 7 | 4 | false |  |

### Final Output

```text
1
2
3
```

### Key Idea

The condition is checked before each loop iteration.

---

## 20. Tracing REPEAT UNTIL Loops

A REPEAT UNTIL loop runs at least once.

### Algorithm

```text
REPEAT
    INPUT password
UNTIL password = "secret"

OUTPUT "Access granted"
```

Given inputs:

```text
abc, test, secret
```

### Trace Table

| Iteration | password | password = "secret"? | Output |
|---:|---|---|---|
| 1 | abc | false |  |
| 2 | test | false |  |
| 3 | secret | true |  |
| End | secret | true | Access granted |

### Key Idea

The input happens before the condition is checked.

---

## 21. Tracing Nested Selection

### Algorithm

```text
INPUT mark

IF mark >= 80 THEN
    grade ← "A"
ELSE IF mark >= 60 THEN
    grade ← "B"
ELSE IF mark >= 50 THEN
    grade ← "C"
ELSE
    grade ← "Fail"
ENDIF

OUTPUT grade
```

Given input:

```text
65
```

### Trace Table

| Step | mark | mark >= 80? | mark >= 60? | mark >= 50? | grade | Output |
|---:|---:|---|---|---|---|---|
| 1 | 65 |  |  |  |  |  |
| 2 | 65 | false |  |  |  |  |
| 3 | 65 | false | true |  | B |  |
| 4 | 65 | false | true |  | B | B |

### Key Idea

After one branch is chosen, later ELSE IF branches are not checked.

---

## 22. Tracing Flags

A flag is a Boolean variable that remembers whether something has happened.

### Algorithm

```text
found ← false

FOR i ← 1 TO 4
    INPUT name
    IF name = "Ali" THEN
        found ← true
    ENDIF
ENDFOR

IF found = true THEN
    OUTPUT "Found"
ELSE
    OUTPUT "Not found"
ENDIF
```

Given inputs:

```text
Ben, Chen, Ali, Dana
```

### Trace Table

| Iteration | i | name | name = "Ali"? | found | Output |
|---:|---:|---|---|---|---|
| Start |  |  |  | false |  |
| 1 | 1 | Ben | false | false |  |
| 2 | 2 | Chen | false | false |  |
| 3 | 3 | Ali | true | true |  |
| 4 | 4 | Dana | false | true |  |
| End |  |  |  | true | Found |

### Key Idea

Once `found` becomes true, it stays true unless the algorithm changes it.

---

## 23. Tracing Search with Early Stop

### Algorithm

```text
found ← false
i ← 1

WHILE i <= 5 AND found = false
    INPUT number
    IF number = 9 THEN
        found ← true
    ENDIF
    i ← i + 1
ENDWHILE

OUTPUT found
```

Given inputs:

```text
3, 7, 9, 4, 1
```

### Trace Table

| Iteration | i | number | number = 9? | found | i <= 5 AND found = false? | Output |
|---:|---:|---:|---|---|---|---|
| Start | 1 |  |  | false | true |  |
| 1 | 2 | 3 | false | false | true |  |
| 2 | 3 | 7 | false | false | true |  |
| 3 | 4 | 9 | true | true | false |  |
| End | 4 | 9 | true | true | false | true |

### Important

The remaining inputs are not used because the loop stops once `found = true`.

---

## 24. Tracing Output Inside a Loop

### Algorithm

```text
FOR i ← 1 TO 3
    OUTPUT i * 2
ENDFOR
```

### Trace Table

| Iteration | i | i * 2 | Output |
|---:|---:|---:|---|
| 1 | 1 | 2 | 2 |
| 2 | 2 | 4 | 4 |
| 3 | 3 | 6 | 6 |

### Final Output

```text
2
4
6
```

### Common Mistake

Students sometimes write only the last output.  
But if OUTPUT is inside the loop, it runs every iteration.

---

## 25. Tracing Output After a Loop

### Algorithm

```text
total ← 0

FOR i ← 1 TO 3
    total ← total + i
ENDFOR

OUTPUT total
```

### Trace Table

| Iteration | i | total | Output |
|---:|---:|---:|---|
| Start |  | 0 |  |
| 1 | 1 | 1 |  |
| 2 | 2 | 3 |  |
| 3 | 3 | 6 |  |
| End |  | 6 | 6 |

### Final Output

```text
6
```

### Key Difference

If OUTPUT is after the loop, it runs once.

---

## 26. Common Trace Table Errors

| Error | Why It Happens | How to Avoid |
|---|---|---|
| Forgetting initial values | student starts at first loop only | record initial assignments |
| Missing counter update | loop variable ignored | update counter every iteration |
| Running loop too many times | condition checked incorrectly | evaluate condition carefully |
| Running loop too few times | stops before final valid iteration | check boundary values |
| Running both IF and ELSE | misunderstanding selection | only one branch runs |
| Writing output too early | output column filled for every row | output only when OUTPUT runs |
| Confusing old/new value | assignment misunderstood | calculate from old value first |
| Ignoring Boolean flag | flag column not updated | track true/false changes |
| Using input values out of order | inputs skipped or reused | use next input each INPUT |
| Stopping at wrong time | End condition ignored | stop only when algorithm ends |

---

## 27. Off-by-one Errors

An off-by-one error means a loop runs one too many or one too few times.

### Example

If the goal is to input 5 scores:

Correct:

```text
FOR count ← 1 TO 5
```

Possible error:

```text
FOR count ← 1 TO 4
```

This only inputs 4 scores.

Another possible error:

```text
WHILE count < 5
```

if count starts at 1, this may run only 4 times.

### Trace tables help detect this.

---

## 28. Logic Errors Found by Tracing

A logic error means the algorithm runs but gives the wrong result.

### Example

Problem:

```text
Calculate average of 5 scores.
```

Wrong algorithm:

```text
average ← total / 4
```

### Trace Result

The total may be correct, but the average is wrong.

### Fix

```text
average ← total / 5
```

### Common Logic Errors

```text
wrong operator
wrong loop boundary
wrong initial value
wrong variable updated
output in wrong place
condition reversed
```

---

## 29. Trace Table Exam Strategy

When completing a trace table:

```text
1. Copy given inputs clearly.
2. Record all initial values.
3. Follow the algorithm line by line.
4. Use one row per important change or iteration.
5. Evaluate conditions as true or false.
6. Update counters and accumulators carefully.
7. Write output only when OUTPUT runs.
8. Stop when the algorithm ends.
9. Check final output order.
10. Review loop boundaries.
```

### Quick Check

Ask yourself:

```text
Did I update every variable?
Did I use inputs in the right order?
Did I run the loop correct number of times?
Did I record every output?
```

---

## 30. Worked Example: Average of Five Scores

### Algorithm

```text
total ← 0

FOR count ← 1 TO 5
    INPUT score
    total ← total + score
ENDFOR

average ← total / 5
OUTPUT average
```

Given inputs:

```text
10, 20, 30, 40, 50
```

### Trace Table

| Iteration | count | score | total | average | Output |
|---:|---:|---:|---:|---:|---|
| Start |  |  | 0 |  |  |
| 1 | 1 | 10 | 10 |  |  |
| 2 | 2 | 20 | 30 |  |  |
| 3 | 3 | 30 | 60 |  |  |
| 4 | 4 | 40 | 100 |  |  |
| 5 | 5 | 50 | 150 |  |  |
| End |  |  | 150 | 30 | 30 |

---

## 31. Worked Example: Largest Number

### Algorithm

```text
INPUT number
largest ← number

FOR count ← 2 TO 5
    INPUT number
    IF number > largest THEN
        largest ← number
    ENDIF
ENDFOR

OUTPUT largest
```

Given inputs:

```text
8, 3, 11, 5, 9
```

### Trace Table

| Step / Iteration | count | number | number > largest? | largest | Output |
|---|---:|---:|---|---:|---|
| Input first |  | 8 |  |  |  |
| Set largest |  | 8 |  | 8 |  |
| 2 | 2 | 3 | false | 8 |  |
| 3 | 3 | 11 | true | 11 |  |
| 4 | 4 | 5 | false | 11 |  |
| 5 | 5 | 9 | false | 11 |  |
| End |  |  |  | 11 | 11 |

### Final Output

```text
11
```

---

## 32. Worked Example: Password Attempts

### Algorithm

```text
correctPassword ← "secret"
attempts ← 0
loggedIn ← false

WHILE attempts < 3 AND loggedIn = false
    INPUT password
    attempts ← attempts + 1

    IF password = correctPassword THEN
        loggedIn ← true
    ELSE
        OUTPUT "Incorrect"
    ENDIF
ENDWHILE

IF loggedIn = true THEN
    OUTPUT "Access granted"
ELSE
    OUTPUT "Access denied"
ENDIF
```

Given inputs:

```text
abc, test, secret
```

### Trace Table

| Iteration | attempts | password | password = correctPassword? | loggedIn | Output |
|---:|---:|---|---|---|---|
| Start | 0 |  |  | false |  |
| 1 | 1 | abc | false | false | Incorrect |
| 2 | 2 | test | false | false | Incorrect |
| 3 | 3 | secret | true | true |  |
| End | 3 | secret | true | true | Access granted |

### Final Output

```text
Incorrect
Incorrect
Access granted
```

---

## 33. Worked Example: Discount Calculator

### Algorithm

```text
INPUT total

IF total > 100 THEN
    discount ← total * 0.10
ELSE
    discount ← 0
ENDIF

finalPrice ← total - discount
OUTPUT finalPrice
```

Given input:

```text
150
```

### Trace Table

| Step | total | total > 100? | discount | finalPrice | Output |
|---:|---:|---|---:|---:|---|
| 1 | 150 |  |  |  |  |
| 2 | 150 | true |  |  |  |
| 3 | 150 | true | 15 |  |  |
| 4 | 150 | true | 15 | 135 |  |
| 5 | 150 | true | 15 | 135 | 135 |

---

## 34. Worked Example: Count Passes

### Algorithm

```text
passCount ← 0

FOR i ← 1 TO 5
    INPUT score
    IF score >= 50 THEN
        passCount ← passCount + 1
    ENDIF
ENDFOR

OUTPUT passCount
```

Given inputs:

```text
40, 55, 70, 20, 90
```

### Trace Table

| Iteration | i | score | score >= 50? | passCount | Output |
|---:|---:|---:|---|---:|---|
| Start |  |  |  | 0 |  |
| 1 | 1 | 40 | false | 0 |  |
| 2 | 2 | 55 | true | 1 |  |
| 3 | 3 | 70 | true | 2 |  |
| 4 | 4 | 20 | false | 2 |  |
| 5 | 5 | 90 | true | 3 |  |
| End |  |  |  | 3 | 3 |

---

## 35. Worked Example: Output Position Error

### Wrong Algorithm

Problem:

```text
Input 3 numbers and output the final total once.
```

Wrong algorithm:

```text
total ← 0

FOR i ← 1 TO 3
    INPUT number
    total ← total + number
    OUTPUT total
ENDFOR
```

Given inputs:

```text
2, 4, 6
```

### Trace Table

| Iteration | i | number | total | Output |
|---:|---:|---:|---:|---|
| Start |  |  | 0 |  |
| 1 | 1 | 2 | 2 | 2 |
| 2 | 2 | 4 | 6 | 6 |
| 3 | 3 | 6 | 12 | 12 |

### Problem

The algorithm outputs the running total each time, not just the final total.

### Fix

Move `OUTPUT total` after the loop.

---

## 36. Scenario Answer Bank

### If Asked: “Define trace table”

```text
A trace table records the values of variables as an algorithm runs, helping to predict outputs and identify logic errors.
```

### If Asked: “Why are trace tables useful?”

```text
Trace tables are useful because they show how variable values change step by step, making it easier to understand the algorithm, predict output, and find logic errors.
```

### If Asked: “Explain dry run”

```text
A dry run means manually following an algorithm step by step using sample input values.
```

### If Asked: “Find a logic error”

```text
By tracing the algorithm, we can see that [variable/output] becomes [wrong value]. The error is caused by [wrong line/condition/loop boundary]. It should be changed to [fix].
```

### If Asked: “Output inside vs after loop”

```text
If the OUTPUT statement is inside the loop, it runs every iteration. If it is after the loop, it runs once after the loop finishes.
```

---

## 37. Common Misconceptions

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| Trace table only needs final answer | It records step-by-step values | track changes |
| Output every variable every row | Output only when OUTPUT runs | keep output column accurate |
| Loops are guessed | Loops must be followed by condition/counter | trace each iteration |
| IF and ELSE both run | Only one branch runs | condition chooses path |
| Assignment is equality | Assignment updates variable | old value produces new value |
| Counter updates automatically in WHILE | Usually must be updated manually | check update line |
| FOR loop never needs count column | count often matters | record it if useful |
| Flag resets automatically | value stays until changed | track true/false |
| Inputs can be reused freely | INPUT uses next value | use order given |
| Logic errors are always syntax errors | logic errors may still run | trace to find wrong result |

---

## 38. Guided Practice

### Practice 1: Basic Assignment

Trace:

```text
x ← 5
x ← x + 4
OUTPUT x
```

<details>
<summary>Suggested Answer</summary>

`x` becomes 5, then 9.  
Output is 9.

</details>

---

### Practice 2: Selection

Input `score = 45`.

```text
IF score >= 50 THEN
    OUTPUT "Pass"
ELSE
    OUTPUT "Fail"
ENDIF
```

<details>
<summary>Suggested Answer</summary>

`score >= 50` is false, so output is `Fail`.

</details>

---

### Practice 3: Loop Output

Trace:

```text
FOR i ← 1 TO 3
    OUTPUT i
ENDFOR
```

<details>
<summary>Suggested Answer</summary>

Output:

```text
1
2
3
```

</details>

---

### Practice 4: Accumulator

Inputs: `2, 3, 5`

```text
total ← 0
FOR i ← 1 TO 3
    INPUT n
    total ← total + n
ENDFOR
OUTPUT total
```

<details>
<summary>Suggested Answer</summary>

Total becomes 2, then 5, then 10.  
Output is 10.

</details>

---

### Practice 5: Error

The algorithm should input 5 marks but uses:

```text
FOR i ← 1 TO 4
```

What is the error?

<details>
<summary>Suggested Answer</summary>

The loop runs only 4 times, so it inputs one mark too few. It should use `FOR i ← 1 TO 5`.

</details>

---

## 39. Independent Practice

### Question 1

Define trace table.

### Question 2

Explain why trace tables are useful.

### Question 3

Trace this algorithm:

```text
x ← 2
y ← x + 3
x ← y * 2
OUTPUT x
```

### Question 4

Trace this algorithm with input `75`:

```text
INPUT mark
IF mark >= 50 THEN
    OUTPUT "Pass"
ELSE
    OUTPUT "Fail"
ENDIF
```

### Question 5

Trace this algorithm with inputs `3, 4, 5`:

```text
total ← 0
FOR i ← 1 TO 3
    INPUT n
    total ← total + n
ENDFOR
OUTPUT total
```

### Question 6

Trace this algorithm and state the output:

```text
count ← 1
WHILE count <= 4
    OUTPUT count * 2
    count ← count + 1
ENDWHILE
```

### Question 7

Explain the difference between output inside a loop and output after a loop.

### Question 8

Give two examples of logic errors that trace tables can reveal.

### Question 9

Explain what an off-by-one error is.

### Question 10

Trace a password algorithm with a Boolean flag and explain when the flag changes.

---

## 40. Exam-style Questions

### Question 1 [4 marks]

Define trace table and explain why it is useful.

<details>
<summary>Mark Scheme Style Answer</summary>

A trace table records the values of variables as an algorithm runs. It is useful because it helps predict the output, shows how variables change step by step, and can help identify logic errors in the algorithm.

</details>

---

### Question 2 [5 marks]

Complete the trace for the following algorithm with inputs `4`, `7`, and `2`.

```text
total ← 0

FOR count ← 1 TO 3
    INPUT number
    total ← total + number
ENDFOR

OUTPUT total
```

<details>
<summary>Mark Scheme Style Answer</summary>

| Iteration | count | number | total | Output |
|---:|---:|---:|---:|---|
| Start |  |  | 0 |  |
| 1 | 1 | 4 | 4 |  |
| 2 | 2 | 7 | 11 |  |
| 3 | 3 | 2 | 13 |  |
| End |  |  | 13 | 13 |

The final output is `13`.

</details>

---

### Question 3 [6 marks]

Trace the following algorithm and state the output.

```text
x ← 1

WHILE x <= 4
    OUTPUT x
    x ← x + 1
ENDWHILE
```

<details>
<summary>Mark Scheme Style Answer</summary>

| Step | x | x <= 4? | Output |
|---:|---:|---|---|
| 1 | 1 | true |  |
| 2 | 1 | true | 1 |
| 3 | 2 | true |  |
| 4 | 2 | true | 2 |
| 5 | 3 | true |  |
| 6 | 3 | true | 3 |
| 7 | 4 | true |  |
| 8 | 4 | true | 4 |
| 9 | 5 | false |  |

Output:

```text
1
2
3
4
```

</details>

---

### Question 4 [6 marks]

The following algorithm should output the average of 5 numbers. Explain the logic error and correct it.

```text
total ← 0

FOR i ← 1 TO 5
    INPUT number
    total ← total + number
ENDFOR

average ← total / 4
OUTPUT average
```

<details>
<summary>Mark Scheme Style Answer</summary>

The logic error is that the algorithm divides the total by 4 even though 5 numbers are input. This gives an incorrect average. The line should be corrected to:

```text
average ← total / 5
```

</details>

---

### Question 5 [6 marks]

Explain why a loop with a condition `count <= 10` may become infinite if `count` is never updated.

<details>
<summary>Mark Scheme Style Answer</summary>

If `count` is never updated inside the loop, its value may remain the same each time the condition is checked. If `count <= 10` is true at the start, it will stay true forever, so the loop will keep repeating and never reach the end. The algorithm should update `count`, for example using `count ← count + 1`.

</details>

---

## 41. Classroom Activity

### Activity 1: Human Trace Table

Students act as variables.

One student is `total`, one is `count`, one is `score`.

The class follows:

```text
total ← 0
FOR count ← 1 TO 3
    INPUT score
    total ← total + score
ENDFOR
OUTPUT total
```

Inputs:

```text
5, 8, 4
```

Students physically update values after each step.

---

### Activity 2: Output Inside or Outside Loop

Compare two algorithms:

```text
FOR i ← 1 TO 3
    OUTPUT i
ENDFOR
```

and:

```text
FOR i ← 1 TO 3
ENDFOR
OUTPUT i
```

Students discuss how output placement changes results.

---

### Activity 3: Find the Logic Error

Students trace faulty algorithms with:

```text
wrong divisor
missing counter update
wrong comparison operator
wrong initial value
output inside loop accidentally
```

They explain the error and fix it.

---

## 42. Homework

### Homework Part A: Concept Explanation

In 6-8 sentences, explain what a trace table is and how it helps test algorithms.

---

### Homework Part B: Trace Practice

Complete trace tables for:

```text
1. x ← 3; x ← x * 2; OUTPUT x
2. input score and output Pass/Fail
3. input 4 prices and output total
4. count from 1 to 5
5. search for a target value in 5 inputs
```

---

### Homework Part C: Debugging

For each error, explain what is wrong and how to fix it:

```text
1. average of 5 numbers uses total / 4
2. WHILE count <= 10 loop never changes count
3. pass/fail algorithm uses score > 50 instead of score >= 50
4. output total is inside loop but should only happen once
5. largest value starts at 0 when numbers may be negative
```

---

### Homework Part D: Misconception Correction

Correct these statements:

```text
A trace table only needs the final output.
Both IF and ELSE branches should be traced every time.
Variables update automatically without assignment.
OUTPUT happens whenever a variable changes.
A WHILE loop cannot be infinite.
```

---

## 43. One-page Revision Summary

| Point | Summary |
|---|---|
| Trace table | Records variable values as algorithm runs |
| Dry run | Manually follow algorithm step by step |
| Variable | Named storage for a value |
| Assignment | Updates variable value |
| Input | Use next given input value |
| Output | Record only when OUTPUT runs |
| Sequence | Follow instructions in order |
| Selection | Evaluate condition and follow one branch |
| Iteration | Repeat loop carefully |
| Counter | Counts repetitions/items |
| Accumulator | Stores running total |
| Flag | Boolean variable remembering state |
| WHILE | Check condition before each loop |
| REPEAT UNTIL | Runs at least once |
| Off-by-one error | Loop runs one too many/few times |
| Logic error | Algorithm runs but gives wrong output |
| Exam phrase | A trace table is used to dry-run an algorithm by recording variable values step by step, helping predict output and find logic errors |

---

## 44. Quick Self-test

Before moving on, students should be able to answer these:

1. What is a trace table?
2. What is a dry run?
3. Why are trace tables useful?
4. When should output be recorded?
5. What is a counter?
6. What is an accumulator?
7. What is a Boolean flag?
8. How do you trace an IF statement?
9. How do you trace a WHILE loop?
10. What is an off-by-one error?
