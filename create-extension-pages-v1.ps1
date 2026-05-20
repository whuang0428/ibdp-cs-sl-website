$hlPath = "docs\extension-hl-programming"
$sePath = "docs\extension-social-engineering"

New-Item -ItemType Directory -Force $hlPath | Out-Null
New-Item -ItemType Directory -Force $sePath | Out-Null

$hlPages = @{
"index.md" = @'
# Extension: HL Programming

## Module Overview

This extension module is designed to strengthen students' programming ability beyond the SL core.

The main IBDP CS course delivered here is SL, but selected HL-style programming ideas are included to help students write better programs, understand larger systems, and prepare for advanced computer science study.

This module is not the main SL external examination focus. It should be clearly labelled as extension content.

## Topics

| Topic | Main Focus | Label |
|---|---|---|
| Advanced Problem Solving | Break larger programming problems into modules | HL Extension |
| Modular Programming | Use functions and procedures to organize code | HL Extension |
| Recursion Basics | Understand functions that call themselves | HL Extension |
| Advanced Arrays and Lists | Process larger collections of data | HL Extension |
| Records and Objects | Store grouped data more clearly | HL Extension |
| Multiple Classes Review | Connect programming with B3 OOP extension | HL Extension |
| Simple ADT Ideas | Introduce stacks, queues, and lists conceptually | HL Extension |
| Algorithm Efficiency | Think about time, input size, and better algorithms | HL Extension |

## How to Study This Module

1. Finish B2 Programming basics first.
2. Understand each extension idea conceptually.
3. Practise with small code examples.
4. Connect extension ideas to real programming tasks.
5. Clearly separate SL Core from HL Extension in revision.

::: warning Extension Content
This section supports stronger programming ability. Students should not confuse every page here with SL examination requirements.
:::
'@

"advanced-problem-solving.md" = @'
# Advanced Problem Solving

## 1. Learning Objectives

By the end of this page, students should be able to:

- break a larger programming problem into smaller tasks
- identify inputs, outputs, and processes for each task
- plan a solution before coding
- connect decomposition with modular programming

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Extension: HL Programming |
| Label | HL Extension |
| Main skill | Planning larger programs |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Problem decomposition | Breaking a problem into smaller sub-problems |
| Module | A separate part of a program with a specific role |
| Requirement | Something the program must do |
| Sub-task | A smaller task within a larger problem |
| Interface | How one part of a program communicates with another |

## 4. Concept Explanation

As programs become larger, students should not try to write all code in one place.

A better approach is to identify smaller parts of the problem and solve each part separately.

For example, a student grade management system may need:

- add a student
- add a mark
- calculate average
- decide grade
- display report
- save data

Each part can later become a function, method, or class.

## 5. Step-by-step Example

Problem: Create a quiz program.

Possible sub-tasks:

| Sub-task | Purpose |
|---|---|
| load questions | prepare quiz data |
| ask question | display one question |
| check answer | compare user answer with correct answer |
| update score | increase score when correct |
| show result | display final score |

## 6. Visual Structure

::: info Larger Problem Structure
Large problem → break into sub-tasks → design each sub-task → test each part → combine into full program.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Starting code immediately | The program can become disorganized |
| Making one huge function | Testing and debugging become harder |
| Not defining inputs and outputs | Parts may not connect correctly |
| Ignoring edge cases | The program may fail for unusual input |

## 8. Exam-style Question

A program is needed to manage a school quiz competition.

**Explain how decomposition can help when designing this program.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- the whole system can be split into smaller tasks
- examples include storing teams, asking questions, updating scores, and displaying winners
- each sub-task can be designed, coded, and tested separately
- this makes the program easier to understand, debug, and maintain

## 10. Quick Check

1. Why should large programs be decomposed?
2. Give three sub-tasks in a quiz program.
3. What should be identified before coding each sub-task?
'@

"modular-programming.md" = @'
# Modular Programming

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain what modular programming is
- understand why functions and procedures are useful
- identify parameters and return values
- describe how modular programming improves maintainability

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Extension: HL Programming |
| Label | HL Extension |
| Main skill | Organizing code |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Module | A self-contained part of a program |
| Function | A named block of code that usually returns a value |
| Procedure | A named block of code that performs an action |
| Parameter | A value passed into a function or procedure |
| Return value | A value sent back by a function |
| Maintainability | How easy code is to update and fix |

## 4. Concept Explanation

Modular programming organizes code into smaller named parts.

Instead of writing the same code many times, a programmer can write a function or procedure once and reuse it.

Benefits include:

- easier testing
- less repeated code
- clearer program structure
- easier debugging
- easier teamwork

## 5. Step-by-step Example

Task: Calculate the area of several rectangles.

Instead of repeating the same calculation, create a function:

| Input | Process | Output |
|---|---|---|
| length, width | length × width | area |

## 6. Visual Structure

::: info Modular Program
Main program → calls function/procedure → receives result or action → continues program.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Writing repeated code | The program becomes longer and harder to maintain |
| Making modules too large | They become difficult to test |
| Using unclear function names | The purpose of the code becomes unclear |
| Confusing parameters and return values | Data may not pass correctly between modules |

## 8. Exam-style Question

**Explain two advantages of using functions in a program.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- functions reduce repeated code
- the same function can be reused with different inputs
- functions make the program easier to test
- functions improve readability and maintainability

## 10. Quick Check

1. What is a function?
2. What is a parameter?
3. Why does modular programming reduce repeated code?
'@

"recursion-basics.md" = @'
# Recursion Basics

## 1. Learning Objectives

By the end of this page, students should be able to:

- define recursion
- identify a base case
- explain why recursive calls must move toward the base case
- trace a simple recursive process conceptually

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Extension: HL Programming |
| Label | HL Extension |
| Main skill | Recursive thinking |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Recursion | A process where a function calls itself |
| Recursive call | A function calling itself |
| Base case | The condition that stops recursion |
| Stack | A structure that stores active function calls |
| Infinite recursion | Recursion that never reaches a base case |

## 4. Concept Explanation

Recursion happens when a function calls itself.

Every recursive solution needs:

1. a base case that stops the recursion
2. a recursive case that moves closer to the base case

Without a base case, recursion may continue forever or cause a stack overflow.

## 5. Step-by-step Example

Example idea: countdown from 3.

| Call | Action |
|---|---|
| countdown(3) | print 3, call countdown(2) |
| countdown(2) | print 2, call countdown(1) |
| countdown(1) | print 1, call countdown(0) |
| countdown(0) | stop |

## 6. Visual Structure

::: info Recursion Structure
Check base case → if not base case, perform action → call same function with smaller/simpler input → eventually stop.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| No base case | Recursion may never stop |
| Recursive call does not move closer to base case | Infinite recursion may occur |
| Treating recursion as a normal loop only | Recursion uses function calls |
| Not tracing call order | Output order can be misunderstood |

## 8. Exam-style Question

**Explain why a recursive function must have a base case.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- the base case provides a stopping condition
- without it, the function may continue calling itself
- this can cause infinite recursion or a stack overflow

## 10. Quick Check

1. What is recursion?
2. What is a base case?
3. What might happen without a base case?
'@

"advanced-arrays-lists.md" = @'
# Advanced Arrays and Lists

## 1. Learning Objectives

By the end of this page, students should be able to:

- process larger collections of data
- use traversal patterns
- search and update values in arrays or lists
- identify common collection-processing errors

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Extension: HL Programming |
| Label | HL Extension |
| Main skill | Processing collections |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Array | A fixed or indexed collection of values |
| List | A collection that may be flexible in size depending on language |
| Traversal | Visiting each item in a collection |
| Index | Position of an item |
| Nested loop | A loop inside another loop |
| Two-dimensional array | A structure with rows and columns |

## 4. Concept Explanation

Basic arrays store multiple values under one name.

Advanced use may include:

- finding maximum and minimum values
- counting matching values
- updating selected values
- processing two-dimensional tables
- using nested loops

## 5. Step-by-step Example

Find the highest score:

| Step | Action |
|---|---|
| 1 | Set highest to first score |
| 2 | Visit each score |
| 3 | If current score is higher, update highest |
| 4 | Output highest |

## 6. Visual Structure

::: info Collection Processing
Start with initial value → visit each item → compare or update → continue until all items are processed.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Starting from the wrong index | Items may be skipped |
| Going outside the collection range | Program may crash |
| Not initializing highest or total | Result may be wrong |
| Using nested loops unnecessarily | Program becomes harder to understand |

## 8. Exam-style Question

An array stores student scores.

**Describe how an algorithm could find the highest score.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- set highest to the first score or a suitable starting value
- loop through each score
- compare the current score with highest
- update highest if the current score is larger

## 10. Quick Check

1. What is traversal?
2. Why can index errors occur?
3. How can a program find the largest value in a list?
'@

"records-objects.md" = @'
# Records and Objects

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain why grouped data is useful
- distinguish separate variables from grouped records or objects
- identify suitable fields for a record
- connect records and objects to OOP ideas

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Extension: HL Programming |
| Label | HL Extension |
| Main skill | Grouping related data |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Record | A data structure that groups related fields |
| Field | A named item of data inside a record |
| Object | An instance of a class containing attributes and methods |
| Attribute | Data stored in an object |
| Structured data | Data organized in a clear format |

## 4. Concept Explanation

Programs often need to store several pieces of data about one thing.

For example, a student may have:

- student ID
- name
- email
- year group
- score

Instead of using many separate variables, these can be grouped into a record or object.

## 5. Step-by-step Example

Student record:

| Field | Example Value |
|---|---|
| studentID | 1001 |
| name | Alice Chen |
| email | alice@example.com |
| score | 86 |

This makes it easier to pass student data around the program as one structure.

## 6. Visual Structure

::: info Grouped Data
Separate variables → group related fields → create a record or object → process one meaningful unit of data.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Using many unrelated variables | Code becomes hard to manage |
| Putting unrelated fields in one record | The structure becomes unclear |
| Confusing record and array | A record stores different fields; an array usually stores similar items |
| Ignoring field names | Data meaning becomes unclear |

## 8. Exam-style Question

A program stores data about each library member.

**Identify three suitable fields for a member record.** [3]

## 9. Mark Scheme Style Answer

Possible answers:

- member ID
- name
- email address
- phone number
- date joined

## 10. Quick Check

1. What is a record?
2. What is a field?
3. Why is grouped data useful?
'@

"multiple-classes-review.md" = @'
# Multiple Classes Review

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain why larger programs may use several classes
- identify class responsibilities
- understand simple object interaction
- connect this topic to B3 OOP

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Extension: HL Programming |
| Label | HL Extension |
| Main skill | Larger OOP program design |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Class responsibility | The main job of a class |
| Object interaction | Objects using each other to complete a task |
| Association | A relationship between classes |
| Coupling | How strongly classes depend on each other |
| Cohesion | How focused a class is on one responsibility |

## 4. Concept Explanation

In larger programs, one class is usually not enough.

Each class should have a clear responsibility.

Example: Library system

| Class | Responsibility |
|---|---|
| Book | Store book details |
| Member | Store member details |
| Loan | Store borrowing information |

This design is easier to maintain than one huge class containing everything.

## 5. Step-by-step Example

Borrowing a book may involve:

1. Member object requests a book.
2. Book object checks availability.
3. Loan object stores borrowing details.
4. Book availability is updated.

## 6. Visual Structure

::: info Multi-class Design
Identify system parts → assign responsibilities → create classes → define how objects interact.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Putting all logic into one class | The program becomes hard to maintain |
| Giving one class too many responsibilities | Low cohesion |
| Making classes depend too much on each other | High coupling |
| Creating classes without a clear purpose | The design becomes confusing |

## 8. Exam-style Question

A library system uses Book, Member, and Loan classes.

**Explain one advantage of using separate classes.** [2]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- each class has a clear responsibility
- the program becomes easier to understand and maintain
- changes to one class are less likely to affect unrelated parts

## 10. Quick Check

1. What is class responsibility?
2. What does object interaction mean?
3. Why should a class be cohesive?
'@

"simple-adt-ideas.md" = @'
# Simple ADT Ideas

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the idea of an abstract data type at a simple level
- identify stacks and queues
- describe basic stack and queue operations
- understand this as conceptual extension content

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Extension: HL Programming |
| Label | HL Extension |
| Main skill | Understanding ADT concepts |

## 3. Key Terms

| Term | Meaning |
|---|---|
| ADT | Abstract Data Type |
| Stack | A structure where the last item added is the first removed |
| Queue | A structure where the first item added is the first removed |
| Push | Add an item to a stack |
| Pop | Remove an item from a stack |
| Enqueue | Add an item to a queue |
| Dequeue | Remove an item from a queue |

## 4. Concept Explanation

An abstract data type describes what operations can be performed, without focusing on exactly how it is implemented.

Two common ADTs are stack and queue.

| ADT | Rule | Real-life Example |
|---|---|---|
| Stack | Last in, first out | Stack of plates |
| Queue | First in, first out | Queue at a cafeteria |

## 5. Step-by-step Example

Stack example:

| Operation | Stack |
|---|---|
| push A | A |
| push B | A, B |
| pop | A |

The last item added, B, is removed first.

## 6. Visual Structure

::: info ADT Rules
Stack → last in, first out.  
Queue → first in, first out.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Confusing stack and queue | They remove items in different orders |
| Saying ADT is a specific programming language feature only | It is a conceptual data structure idea |
| Forgetting operation names | Push/pop and enqueue/dequeue are different |
| Ignoring order of removal | The output sequence becomes wrong |

## 8. Exam-style Question

A system processes print jobs in the order they arrive.

**Identify whether a stack or queue is more suitable and justify your answer.** [2]

## 9. Mark Scheme Style Answer

Award marks for:

- queue
- print jobs should be processed first in, first out

## 10. Quick Check

1. What does ADT stand for?
2. What is the rule for a stack?
3. What is the rule for a queue?
'@

"algorithm-efficiency.md" = @'
# Algorithm Efficiency

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain why algorithm efficiency matters
- understand that input size affects running time
- compare simple algorithm approaches conceptually
- identify when one algorithm may be better than another

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Extension: HL Programming |
| Label | HL Extension |
| Main skill | Thinking about performance |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Efficiency | How well an algorithm uses time or memory |
| Time complexity | How running time changes as input size grows |
| Input size | The amount of data processed |
| Linear search | Checks items one by one |
| Binary search | Repeatedly halves sorted data to find a target |
| Scalability | Ability to work well as data size increases |

## 4. Concept Explanation

Different algorithms can solve the same problem, but some are faster or more efficient.

For small data, the difference may not matter much.

For large data, efficiency can become very important.

Example:

| Task | Simple Approach | More Efficient Approach |
|---|---|---|
| Find a name in an unsorted list | Linear search | Sort first or use better structure |
| Find a value in sorted data | Linear search | Binary search |
| Repeated calculation | Recalculate every time | Store useful results |

## 5. Step-by-step Example

Searching for a name in 10 students may be quick with linear search.

Searching in 1,000,000 users may require a more efficient approach.

## 6. Visual Structure

::: info Efficiency Thinking
As input size grows → number of steps may grow → inefficient algorithms become slow → better algorithms may be needed.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Only checking if an algorithm works | A working algorithm may still be too slow |
| Ignoring input size | Performance problems appear with larger data |
| Saying fastest is always best | Simplicity and memory use may also matter |
| Using binary search on unsorted data | Binary search requires sorted data |

## 8. Exam-style Question

**Explain why algorithm efficiency becomes more important as the amount of data increases.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- larger input size may require more processing steps
- inefficient algorithms may take too long on large datasets
- choosing a more efficient algorithm can reduce running time or resource use

## 10. Quick Check

1. What is efficiency?
2. Why does input size matter?
3. Why does binary search require sorted data?
'@
}

$sePages = @{
"index.md" = @'
# Extension: Social Engineering Awareness

## Module Overview

This module teaches cybersecurity awareness from a defensive and ethical perspective.

The aim is to help students recognize social engineering attacks, understand how attackers manipulate people, and learn safe response habits.

This module must not be used to teach students how to attack real people or real systems.

## Topics

| Topic | Main Focus | Label |
|---|---|---|
| Safety and Ethics | Understand boundaries and defensive purpose | School Extension |
| What is Social Engineering? | Understand the basic concept | School Extension |
| Phishing Awareness | Recognize suspicious messages | School Extension |
| Pretexting and Impersonation | Identify fake identities and false stories | School Extension |
| Baiting and Tailgating | Recognize physical and digital manipulation | School Extension |
| Passwords and MFA | Protect accounts from compromise | School Extension |
| Reporting Incidents | Know how to respond safely | School Extension |
| Safe Classroom Simulations | Practise awareness using fictional examples only | School Extension |

::: danger Defensive Education Only
This module is for awareness, prevention, and ethical discussion. Do not create real phishing pages, steal credentials, bypass MFA, impersonate real people, or test real users without formal authorization.
:::
'@

"safety-ethics.md" = @'
# Safety and Ethics

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain the defensive purpose of this module
- identify unsafe or unethical activities
- understand authorization and consent
- follow safe classroom boundaries

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Social Engineering Awareness |
| Label | School Extension |
| Main skill | Ethical cybersecurity awareness |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Authorization | Formal permission to perform an action |
| Consent | Agreement given by people involved |
| Defensive education | Learning how to prevent and respond to harm |
| Responsible disclosure | Reporting security issues safely to the correct people |
| Harm | Damage to privacy, safety, trust, accounts, or systems |

## 4. Concept Explanation

Social engineering should be taught as cybersecurity awareness.

The goal is to help students recognize manipulation and protect themselves and their community.

Students should not perform real attacks, collect real passwords, impersonate real people, or test classmates without permission.

## 5. Safe vs Unsafe Activities

| Safe Activity | Unsafe Activity |
|---|---|
| Analyse a fictional phishing email | Send a real phishing email |
| Discuss warning signs | Collect real login details |
| Use fake accounts in a closed demo | Impersonate real staff or students |
| Report suspicious messages | Hide or exploit security problems |

## 6. Visual Structure

::: danger Boundary Rule
Learn to recognize attacks → practise with fictional examples → report concerns safely → never attack real people or systems.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Thinking it is okay if it is only for practice | Real people can still be harmed |
| Testing classmates without permission | This breaks trust and may violate rules |
| Sharing real phishing tools | This can enable misuse |
| Ignoring reporting channels | Problems may not be handled safely |

## 8. Scenario Question

A student wants to test whether classmates will enter passwords into a fake login page.

**Explain why this is not acceptable.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- classmates have not given informed consent
- collecting passwords can harm privacy and security
- it may break school rules or laws
- safe simulations should use fictional accounts and teacher approval

## 10. Quick Check

1. What does authorization mean?
2. Why should real passwords never be collected?
3. What is the purpose of this module?
'@

"what-is-social-engineering.md" = @'
# What is Social Engineering?

## 1. Learning Objectives

By the end of this page, students should be able to:

- define social engineering
- explain why people are targeted
- identify common manipulation techniques
- distinguish technical attacks from human-focused attacks

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Social Engineering Awareness |
| Label | School Extension |
| Main skill | Recognizing manipulation |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Social engineering | Manipulating people into revealing information or taking unsafe actions |
| Manipulation | Influencing someone unfairly or deceptively |
| Trust | Belief that someone or something is reliable |
| Urgency | Pressure to act quickly |
| Authority | Use of a position or identity to influence others |

## 4. Concept Explanation

Social engineering targets human behaviour.

Instead of attacking only software or hardware, an attacker may try to trick a person.

Common techniques include:

- pretending to be someone trusted
- creating urgency
- offering a fake reward
- using fear
- asking for confidential information

## 5. Step-by-step Example

A fake message says:

"Your school account will be deleted today. Click this link and confirm your password."

Warning signs:

| Sign | Why Suspicious |
|---|---|
| Urgent deadline | Pressures the user |
| Password request | Legitimate staff should not ask for passwords |
| Link in message | Could lead to a fake site |
| Fear-based wording | Pushes quick action |

## 6. Visual Structure

::: info Social Engineering Pattern
Build trust or pressure → ask for action → user acts without checking → attacker gains information or access.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Thinking only careless people are tricked | Anyone can be targeted |
| Only checking spelling mistakes | Some attacks look professional |
| Acting under pressure | Urgency reduces careful thinking |
| Not verifying identity | Impersonation may succeed |

## 8. Scenario Question

A message claims to be from IT support and asks for your password.

**State two warning signs.** [2]

## 9. Mark Scheme Style Answer

Possible answers:

- asks for a password
- creates urgency or pressure
- sender identity may be fake
- includes a suspicious link
- should be verified through official channels

## 10. Quick Check

1. What is social engineering?
2. Why do attackers use urgency?
3. What should you do before trusting a sensitive request?
'@

"phishing-awareness.md" = @'
# Phishing Awareness

## 1. Learning Objectives

By the end of this page, students should be able to:

- define phishing
- identify warning signs in suspicious messages
- explain safe response steps
- distinguish phishing from legitimate communication

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Social Engineering Awareness |
| Label | School Extension |
| Main skill | Recognizing phishing |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Phishing | A deceptive message designed to steal information or make users take unsafe actions |
| Suspicious link | A link that may lead to an unsafe or fake site |
| Spoofing | Making a sender or website appear to be someone else |
| Credential | Information used to log in, such as username and password |
| Attachment | A file included with a message |

## 4. Concept Explanation

Phishing commonly appears in email, text messages, social media, or chat platforms.

Attackers may try to steal:

- passwords
- verification codes
- bank information
- personal data
- school account details

## 5. Warning Signs

| Warning Sign | Explanation |
|---|---|
| Unexpected message | You did not request it |
| Urgent threat | Pressures you to act quickly |
| Suspicious link | May not match official domain |
| Password request | Passwords should not be shared |
| Unknown attachment | May contain malware |
| Poor context | The message does not match normal communication |

## 6. Visual Structure

::: info Safe Response
Pause → inspect sender and link → do not enter passwords → verify through official channel → report suspicious message.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Clicking before checking | The link may lead to a fake site |
| Replying with personal data | The attacker may collect information |
| Downloading attachments | Files may contain malware |
| Feeling embarrassed to report | Reporting helps protect others |

## 8. Scenario Question

You receive a message saying your school email will be closed unless you click a link and log in.

**Explain two safe actions you should take.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- do not click the link or enter login details
- verify the message through official school IT channels
- report the message to a teacher or IT department
- check the sender address and domain carefully

## 10. Quick Check

1. What is phishing?
2. Why are suspicious links dangerous?
3. What should you do with a suspicious email?
'@

"pretexting-impersonation.md" = @'
# Pretexting and Impersonation

## 1. Learning Objectives

By the end of this page, students should be able to:

- define pretexting
- define impersonation
- identify fake identity warning signs
- explain how to verify sensitive requests

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Social Engineering Awareness |
| Label | School Extension |
| Main skill | Verifying identity |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Pretexting | Creating a false story to persuade someone |
| Impersonation | Pretending to be another person or organization |
| Verification | Checking whether a request is genuine |
| Sensitive information | Information that should be protected |
| Trusted channel | An official and known method of communication |

## 4. Concept Explanation

Pretexting uses a fake story to gain trust.

Impersonation uses a fake identity.

Examples:

- pretending to be IT support
- pretending to be a teacher
- pretending to be a delivery company
- pretending to be a bank

## 5. Step-by-step Example

A caller says they are from IT and need your login code.

Warning signs:

| Sign | Explanation |
|---|---|
| Requests a code | Verification codes should not be shared |
| Unexpected contact | You did not ask for support |
| Pressure | They want quick action |
| No official channel | Identity is not verified |

## 6. Visual Structure

::: info Verification Habit
Unexpected request → pause → use official contact method → confirm identity → only share appropriate information.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Trusting a name or logo only | These can be copied |
| Sharing verification codes | Accounts may be taken over |
| Responding to pressure | You may skip verification |
| Using contact details in the suspicious message | They may also be fake |

## 8. Scenario Question

Someone claiming to be from school IT asks for your MFA code.

**Explain why you should not share it.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- MFA codes are sensitive credentials
- sharing the code may allow account access
- identity should be verified through official channels
- IT staff should not need your code

## 10. Quick Check

1. What is pretexting?
2. What is impersonation?
3. How can you verify a sensitive request?
'@

"baiting-tailgating.md" = @'
# Baiting and Tailgating

## 1. Learning Objectives

By the end of this page, students should be able to:

- define baiting
- define tailgating
- identify physical and digital manipulation risks
- explain safe prevention habits

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Social Engineering Awareness |
| Label | School Extension |
| Main skill | Recognizing risky situations |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Baiting | Using a tempting offer or object to trick someone |
| Tailgating | Following an authorized person into a restricted area |
| Physical security | Protecting buildings, rooms, and devices |
| Removable media | Portable storage such as USB drives |
| Access control | Rules and systems controlling who can enter or access something |

## 4. Concept Explanation

Baiting uses curiosity or reward to trick users.

Examples:

- unknown USB drive labelled "exam answers"
- fake free gift link
- fake download
- fake prize message

Tailgating happens when someone enters a restricted area by following an authorized person.

## 5. Step-by-step Example

A student finds an unknown USB drive.

Safe response:

| Step | Action |
|---|---|
| 1 | Do not plug it into a computer |
| 2 | Give it to a teacher or IT staff |
| 3 | Report where it was found |

## 6. Visual Structure

::: info Safe Habit
Unknown object or person → do not assume safe → follow school procedure → report to responsible staff.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Plugging in unknown USB drives | They may contain malware |
| Holding doors open for unknown people in secure areas | This may bypass access control |
| Clicking fake reward links | They may steal data |
| Ignoring physical security | Cybersecurity includes physical access too |

## 8. Scenario Question

You find a USB drive in the hallway labelled "student passwords".

**Explain what you should do and why.** [4]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- do not plug the USB drive into a computer
- it may contain malware or unsafe files
- report it to a teacher or IT department
- follow school security procedure

## 10. Quick Check

1. What is baiting?
2. What is tailgating?
3. Why should unknown USB drives not be used?
'@

"passwords-mfa.md" = @'
# Passwords and MFA

## 1. Learning Objectives

By the end of this page, students should be able to:

- explain why strong passwords matter
- identify weak password habits
- explain the purpose of MFA
- describe safe account protection practices

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Social Engineering Awareness |
| Label | School Extension |
| Main skill | Protecting accounts |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Password | A secret used to prove identity |
| Passphrase | A longer password made from multiple words or a phrase |
| MFA | Multi-factor authentication |
| Authentication factor | A method used to prove identity |
| Password manager | Software used to store passwords securely |

## 4. Concept Explanation

Passwords protect accounts, but weak passwords are easy to guess or reuse.

Safer habits include:

- using long and unique passwords
- avoiding password reuse
- using a password manager
- enabling MFA
- never sharing passwords or codes

MFA adds another layer of protection, such as an app code, security key, or biometric factor.

## 5. Step-by-step Example

A safe login process may require:

| Step | Example |
|---|---|
| 1 | Enter password |
| 2 | Confirm MFA code or approval |
| 3 | Access account if both factors are valid |

## 6. Visual Structure

::: info Account Protection
Unique password → password manager → MFA enabled → never share codes → report suspicious login alerts.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Reusing passwords | One leaked password can affect many accounts |
| Sharing MFA codes | Attackers can use them to log in |
| Using personal information | It may be easy to guess |
| Storing passwords in plain text | Others may read them |

## 8. Scenario Question

A friend asks to borrow your school account password to check homework.

**Explain why you should not share it.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- the password protects your personal account
- actions taken by the friend may be recorded as your actions
- sharing passwords breaks security rules
- they should use their own account or ask a teacher

## 10. Quick Check

1. What does MFA stand for?
2. Why is password reuse risky?
3. Should MFA codes be shared?
'@

"reporting-incidents.md" = @'
# Reporting Incidents

## 1. Learning Objectives

By the end of this page, students should be able to:

- identify when an incident should be reported
- describe safe reporting steps
- explain why early reporting matters
- understand that reporting protects the community

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Social Engineering Awareness |
| Label | School Extension |
| Main skill | Safe response |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Incident | A security event that may cause harm |
| Report | Notify the correct person or team |
| Evidence | Information that helps understand what happened |
| Escalation | Passing a serious issue to someone with responsibility |
| Response | Actions taken after an incident |

## 4. Concept Explanation

Security incidents should be reported quickly and safely.

Examples to report:

- suspicious email
- lost device
- unknown login alert
- accidental password sharing
- malware warning
- fake account impersonating someone

Reporting is not about blame. It helps reduce harm.

## 5. Step-by-step Example

If you clicked a suspicious link:

| Step | Action |
|---|---|
| 1 | Stop entering information |
| 2 | Do not try to hide the mistake |
| 3 | Report to teacher or IT staff |
| 4 | Change password if advised |
| 5 | Follow instructions from responsible staff |

## 6. Visual Structure

::: info Incident Response
Notice problem → stop unsafe action → preserve useful details → report to responsible person → follow recovery steps.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Hiding the incident | The problem may spread |
| Deleting everything immediately | Useful evidence may be lost |
| Trying to fix serious issues alone | More damage may occur |
| Blaming victims | This discourages reporting |

## 8. Scenario Question

You entered your password into a suspicious website.

**State two actions you should take next.** [2]

## 9. Mark Scheme Style Answer

Possible answers:

- report the incident to a teacher or IT department
- change the password using the official website
- do not reuse the same password elsewhere
- check account activity if instructed
- enable or reset MFA if needed

## 10. Quick Check

1. Why is early reporting important?
2. Who should you report suspicious messages to?
3. Why should incidents not be hidden?
'@

"safe-classroom-simulations.md" = @'
# Safe Classroom Simulations

## 1. Learning Objectives

By the end of this page, students should be able to:

- distinguish safe simulations from real attacks
- design awareness activities using fictional data only
- explain why consent and teacher control are required
- follow ethical cybersecurity learning rules

## 2. Content Label

| Item | Detail |
|---|---|
| Module | Social Engineering Awareness |
| Label | School Extension |
| Main skill | Safe practice design |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Simulation | A controlled practice activity |
| Fictional data | Made-up data that does not belong to real people |
| Consent | Agreement from participants |
| Scope | Clear limits of an activity |
| Debrief | Discussion after an activity to explain learning points |

## 4. Concept Explanation

Classroom simulations can help students learn, but they must be safe.

Safe simulations should use:

- fictional names
- fictional emails
- fake passwords that are not real credentials
- teacher-approved scenarios
- clear boundaries
- debrief after the activity

They should not target real people unexpectedly.

## 5. Safe Simulation Example

Activity: Identify suspicious messages.

| Safe Design Choice | Reason |
|---|---|
| Use fictional messages | No real person is targeted |
| No real login page | No credentials are collected |
| Teacher controls activity | Scope is clear |
| Debrief afterwards | Students understand warning signs |

## 6. Visual Structure

::: warning Safe Simulation Rule
Use fictional data → define scope → get teacher approval → avoid collecting credentials → debrief learning points.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Surprising real classmates with fake attacks | This can harm trust |
| Collecting real passwords | This is unsafe and unethical |
| Using real school logos to deceive users | This may be treated as impersonation |
| Skipping debrief | Students may not learn the intended lesson |

## 8. Scenario Question

A teacher wants students to learn phishing warning signs.

**Describe one safe classroom activity.** [3]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- use fictional phishing examples
- ask students to identify warning signs
- do not collect real login details
- discuss the correct safe response after the activity

## 10. Quick Check

1. Why should simulations use fictional data?
2. Why is a debrief useful?
3. What must never be collected in a classroom simulation?
'@
}

foreach ($file in $hlPages.Keys) {
    $fullPath = Join-Path $hlPath $file
    Set-Content -Path $fullPath -Value $hlPages[$file] -Encoding UTF8
}

foreach ($file in $sePages.Keys) {
    $fullPath = Join-Path $sePath $file
    Set-Content -Path $fullPath -Value $sePages[$file] -Encoding UTF8
}

Write-Host "Extension framework pages created successfully."
