# Paper 2 Theme B Integrated Practice

## Page map

- [Start here](#start-here-solve-one-connected-problem)
- [Original scenario](#original-scenario-northbridge-equipment-loans)
- [Trace practice](#part-1-trace-the-existing-logic)
- [Algorithm design](#part-2-design-an-algorithm)
- [Java and Python equivalence](#part-3-pseudocode-java-and-python-equivalence)
- [OOP application](#part-4-apply-oop-to-the-scenario)
- [Testing and debugging](#part-5-testing-and-debugging)
- [Integrated practice set](#integrated-practice-set)

## Learning goals

By the end of this page, you should be able to:

- decompose one scenario into data, processes, decisions, and outputs
- trace variables, arrays, conditions, and loops in order
- design an algorithm that matches stated requirements
- recognize equivalent logic in pseudocode, Java, and Python
- apply classes, objects, attributes, methods, constructors, and encapsulation
- choose normal, boundary, and invalid test data
- explain and justify a solution using scenario evidence

::: info Practice boundary
The public 2027 subject brief identifies Paper 2 with Theme B computational thinking and problem-solving and states that equivalent Java and Python versions are provided for questions requiring programming. This page is an original integrated practice activity. Its scenario, questions, mark allocations, code, and suggested answers are not official IB material.
:::

## Start here: solve one connected problem

Paper 2 preparation should not become a list of disconnected syntax exercises. A longer scenario can test several connected skills:

```text
understand requirements
-> decompose the problem
-> trace existing logic
-> design or complete an algorithm
-> interpret code
-> apply OOP
-> test and justify the solution
```

Use the programming language studied by your class. When this page shows both Java and Python, compare the **logic**, not just punctuation.

## Original scenario: Northbridge Equipment Loans

Northbridge School lends cameras, tripods, microphones, and robotics kits to students. The current paper system causes duplicate bookings and makes overdue items difficult to find.

The proposed program stores:

- each student's `studentId`, name, and active-loan count
- each item's `itemId`, category, condition, and availability
- each loan's student, item, loan date, due date, and return status
- a waiting list when every item in a requested category is unavailable

The main rules are:

1. A student may have at most three active loans.
2. An item can be issued only when it is available and its condition is not `Repair`.
3. A return updates the item and loan together.
4. A waiting-list request should not be duplicated for the same student and category.
5. Staff need a report of overdue loans.

### Decomposition table

| Subproblem | Inputs | Processing | Output |
|---|---|---|---|
| Validate student | student ID, active-loan count | find student; compare count with limit | allowed / reason refused |
| Find item | requested category, item records | search for matching available safe item | item ID or `NOT_FOUND` |
| Issue loan | student, item, dates | validate; create loan; update item and count | confirmation or error |
| Return item | loan ID, returned condition | find active loan; close it; update item | return confirmation |
| Overdue report | active loans, current date | select loans whose due date has passed | overdue-loan list |

### Abstraction choices

The program needs identifiers, availability, condition, dates, and active-loan state. It does not need unrelated details such as a student's favourite subject or an item's colour unless a stated requirement later uses them.

This is abstraction: keep information relevant to the problem and ignore unnecessary detail.

## Part 1: trace the existing logic

The array `activeLoans` stores the number of active loans for four students.

```text
activeLoans = [1, 3, 2, 0]
approved = 0

FOR index = 0 TO 3
    IF activeLoans[index] < 3 THEN
        activeLoans[index] = activeLoans[index] + 1
        approved = approved + 1
    ENDIF
ENDFOR

OUTPUT activeLoans
OUTPUT approved
```

### Trace table

| `index` | value before test | `< 3` | value after iteration | `approved` |
|---:|---:|:---:|---:|---:|
| 0 | 1 | true | 2 | 1 |
| 1 | 3 | false | 3 | 1 |
| 2 | 2 | true | 3 | 2 |
| 3 | 0 | true | 1 | 3 |

Final output:

```text
[2, 3, 3, 1]
3
```

### What the trace proves

- the condition is checked before each update
- the second student is not approved because the starting value is already three
- `approved` counts successful changes, not loop iterations
- every array element is visited once

### Trace traps

- changing an element before evaluating the condition
- forgetting that the array uses indexes `0` to `3`
- increasing `approved` on the false branch
- writing only the final output when the question asks for a trace table

## Part 2: design an algorithm

### Requirement

Design a subprogram that searches an array of item records and returns the ID of the first item that:

- matches `requestedCategory`
- is available
- does not have condition `Repair`

Return `NOT_FOUND` if no item is suitable.

### Worked pseudocode

```text
FUNCTION findAvailableItem(items, requestedCategory)
    FOR index = 0 TO LENGTH(items) - 1
        IF items[index].category = requestedCategory AND
           items[index].available = TRUE AND
           items[index].condition <> "Repair" THEN
            RETURN items[index].itemId
        ENDIF
    ENDFOR

    RETURN "NOT_FOUND"
ENDFUNCTION
```

### Why this algorithm fits

- it checks each item in order using linear search
- all three requirements appear in the condition
- `RETURN` stops the search when the first suitable item is found
- `NOT_FOUND` is returned only after the whole array has been checked

### Alternative design

A version may store the result in a variable and use a flag instead of returning immediately. Either design can be correct if it checks the same rules and terminates safely.

## Part 3: pseudocode, Java, and Python equivalence

The following subprogram counts active loans that are overdue. Assume `daysLate` contains a positive number for an overdue loan, `0` when due today, and a negative number before the due date.

### Pseudocode

```text
FUNCTION countOverdue(daysLate)
    count = 0
    FOR EACH value IN daysLate
        IF value > 0 THEN
            count = count + 1
        ENDIF
    ENDFOR
    RETURN count
ENDFUNCTION
```

### Java

```java
public static int countOverdue(int[] daysLate) {
    int count = 0;

    for (int value : daysLate) {
        if (value > 0) {
            count++;
        }
    }

    return count;
}
```

### Python

```python
def count_overdue(days_late):
    count = 0

    for value in days_late:
        if value > 0:
            count += 1

    return count
```

### Logic mapping

| Idea | Pseudocode | Java | Python |
|---|---|---|---|
| parameter | `daysLate` | `int[] daysLate` | `days_late` |
| initialise counter | `count = 0` | `int count = 0;` | `count = 0` |
| visit each value | `FOR EACH` | enhanced `for` loop | `for ... in` loop |
| compare | `value > 0` | `value > 0` | `value > 0` |
| increment | `count = count + 1` | `count++` | `count += 1` |
| send result back | `RETURN count` | `return count;` | `return count` |

The syntax differs, but the state changes and output are equivalent.

### Quick trace

Input:

```text
daysLate = [-2, 0, 5, 1, -1]
```

The function returns `2` because only `5` and `1` are greater than zero.

## Part 4: apply OOP to the scenario

One class can protect each equipment item's state.

### UML-style design

```text
EquipmentItem
---------------------------------
- itemId : String
- category : String
- condition : String
- available : boolean
---------------------------------
+ EquipmentItem(itemId, category)
+ getItemId() : String
+ isAvailable() : boolean
+ issue() : boolean
+ returnItem(newCondition) : void
```

### Java version

```java
public class EquipmentItem {
    private String itemId;
    private String category;
    private String condition;
    private boolean available;

    public EquipmentItem(String itemId, String category) {
        this.itemId = itemId;
        this.category = category;
        this.condition = "Good";
        this.available = true;
    }

    public String getItemId() {
        return itemId;
    }

    public boolean isAvailable() {
        return available;
    }

    public boolean issue() {
        if (available && !condition.equals("Repair")) {
            available = false;
            return true;
        }
        return false;
    }

    public void returnItem(String newCondition) {
        condition = newCondition;
        available = !newCondition.equals("Repair");
    }
}
```

### Python version

```python
class EquipmentItem:
    def __init__(self, item_id, category):
        self.__item_id = item_id
        self.__category = category
        self.__condition = "Good"
        self.__available = True

    def get_item_id(self):
        return self.__item_id

    def is_available(self):
        return self.__available

    def issue(self):
        if self.__available and self.__condition != "Repair":
            self.__available = False
            return True
        return False

    def return_item(self, new_condition):
        self.__condition = new_condition
        self.__available = new_condition != "Repair"
```

### OOP explanation

The attributes are private, so outside code cannot directly set an item to an invalid state. The `issue` method checks availability and condition before changing the object. The `returnItem` / `return_item` method keeps condition and availability changes together.

This is encapsulation: the class controls how its state is read and changed.

## Part 5: testing and debugging

### Test table for issuing an item

| Test type | Starting state | Attempt | Expected result | Reason |
|---|---|---|---|---|
| Normal | available, condition `Good`, student has 1 loan | issue item | accepted; item becomes unavailable; count becomes 2 | all rules are satisfied |
| Boundary | available, condition `Good`, student has 2 loans | issue item | accepted; count becomes 3 | reaches maximum exactly |
| Invalid/rule violation | available, condition `Good`, student has 3 loans | issue item | refused; no state changes | maximum already reached |
| Invalid/rule violation | available, condition `Repair` | issue item | refused; no loan created | unsafe item cannot be issued |
| State conflict | unavailable item | second issue request | refused; no duplicate active loan | item is already on loan |

### Transaction-style update

Issuing an item changes several related records:

```text
create loan record
set item unavailable
increase student's active-loan count
```

These changes should succeed together. If the loan record cannot be created, the item must not remain unavailable and the student's count must not increase. This prevents a half-completed issue operation.

### Debugging example

Faulty condition:

```text
IF activeLoanCount <= 3 THEN
    approve loan
ENDIF
```

When `activeLoanCount` is already `3`, the condition is true and incorrectly allows a fourth loan.

Correction:

```text
IF activeLoanCount < 3 THEN
    approve loan
ENDIF
```

The boundary test with starting count `3` exposes the logic error.

## Integrated practice set

The allocations are instructional and support self-marking; they are not an official paper or markscheme.

### Question 1: decomposition **[4 marks]**

Outline two subproblems that must be solved when an item is returned.

<details>
<summary>Suggested answer points</summary>

- Locate and validate the active loan record so the correct transaction is closed.
- Update the return date/status in the loan record.
- Update the item's condition and decide whether it becomes available or needs repair.
- Decrease the correct student's active-loan count.
- Treat related changes as one safe operation so partial state is not stored.

Two developed subproblems are enough for this practice allocation.

</details>

### Question 2: trace **[5 marks]**

Trace the following code and state the final values of `waiting` and `accepted`.

```text
requests = [2, 4, 1, 3]
waiting = []
accepted = 0

FOR EACH current IN requests
    IF current < 3 THEN
        accepted = accepted + 1
    ELSE
        APPEND current TO waiting
    ENDIF
ENDFOR
```

<details>
<summary>Suggested trace</summary>

| `current` | `< 3` | `accepted` | `waiting` |
|---:|:---:|---:|---|
| 2 | true | 1 | `[]` |
| 4 | false | 1 | `[4]` |
| 1 | true | 2 | `[4]` |
| 3 | false | 2 | `[4, 3]` |

Final values: `accepted = 2`, `waiting = [4, 3]`.

</details>

### Question 3: algorithm design **[7 marks]**

Write pseudocode for `canBorrow(activeLoanCount, itemAvailable, itemCondition)`. It should return `TRUE` only when the student is below the loan limit, the item is available, and the condition is not `Repair`.

<details>
<summary>One possible solution</summary>

```text
FUNCTION canBorrow(activeLoanCount, itemAvailable, itemCondition)
    IF activeLoanCount < 3 AND
       itemAvailable = TRUE AND
       itemCondition <> "Repair" THEN
        RETURN TRUE
    ELSE
        RETURN FALSE
    ENDIF
ENDFUNCTION
```

Equivalent logically correct structures are acceptable. The key evidence is that all three rules are tested and a Boolean result is returned on every path.

</details>

### Question 4: OOP **[6 marks]**

Explain two ways in which the `EquipmentItem` class uses encapsulation to protect object state.

<details>
<summary>Suggested answer points</summary>

- Attributes are private, so outside code cannot directly change `available` or `condition` to inconsistent values.
- The `issue` method checks both availability and condition before changing state.
- The return method updates condition and availability together, so an item marked `Repair` is not made available.
- Public methods provide controlled behaviour while hiding the internal representation.

Each selected point should include the mechanism and its effect in the equipment-loan scenario.

</details>

### Question 5: testing **[6 marks]**

Design three distinct tests for `canBorrow` and give the expected result for each.

<details>
<summary>Suggested test set</summary>

| Inputs | Expected | Purpose |
|---|:---:|---|
| `2, TRUE, "Good"` | `TRUE` | boundary: one below the maximum |
| `3, TRUE, "Good"` | `FALSE` | boundary: already at the maximum |
| `1, TRUE, "Repair"` | `FALSE` | condition rule |

Another useful test is `1, FALSE, "Good" -> FALSE` for an unavailable item.

</details>

## Scenario-answer pattern

When explaining a design choice, use:

```text
requirement -> computational idea -> implementation action -> effect
```

Example:

```text
The school must prevent a fourth active loan. The program uses selection to compare activeLoanCount with the limit before creating a loan. If the value is already three, the issue operation is refused, so the stored student state remains within the rule.
```

## Common mistakes

| Mistake | Better approach |
|---|---|
| Solving only the syntax | Identify requirements and state changes before writing code |
| Mixing array indexes and stored values | Label both clearly in a trace table |
| Translating word by word between languages | Preserve inputs, conditions, updates, repetition, and returned output |
| Changing private attributes directly | Use methods that validate and coordinate state changes |
| Testing only one valid case | Include boundaries and each important refusal rule |
| Giving code without explanation | Link the algorithm or class design to the equipment-loan requirement |

## Completion checklist

- [ ] I can trace the two algorithms without looking at the answers.
- [ ] I can write `findAvailableItem` in my class programming language.
- [ ] I can explain why the Java and Python counting functions are logically equivalent.
- [ ] I can identify object state before and after each method call.
- [ ] I can design tests for the maximum-loan, availability, and repair rules.
- [ ] I can justify a solution using details from the scenario.

Continue with [Paper 2 Theme B Skills](./paper-2-theme-b-skills), [B1 Practice](./b1-practice), or [B2 and B3 Practice](./b2-b3-practice).
