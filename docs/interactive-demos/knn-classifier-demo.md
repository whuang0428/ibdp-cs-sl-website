<script setup>
import KNNClassifierDemo from '../.vitepress/components/demos/KNNClassifierDemo.vue'
</script>

# k-Nearest Neighbour Classifier Demo

## Learning Goals

By the end of this demo, students should be able to:

- explain how k-nearest neighbour classification works
- understand that training examples are labelled
- explain how distance is used to find nearest neighbours
- explain how majority vote decides the predicted class
- understand why changing k can change the prediction
- write an exam-style explanation of kNN classification

## Key Idea

k-nearest neighbour, often written as kNN, is a supervised learning algorithm.

It classifies an unknown item by comparing it with labelled training examples.

The basic process is:

```text
1. Store labelled training examples.
2. Calculate distance from the unknown item to each training example.
3. Select the k nearest examples.
4. Use majority vote to predict the class.
```

## Interactive Demo

<KNNClassifierDemo />

## Exam-style Explanation

k-nearest neighbour is a supervised learning algorithm used for classification. The unknown item is compared with labelled training data. The distance from the unknown item to each training example is calculated, and the k nearest neighbours are selected. The class that appears most often among those neighbours is used as the prediction. Changing the value of k can change the prediction because a different number of neighbours are used in the vote.

## Common Mistakes

| Mistake | Why It Is Wrong | Better Understanding |
|---|---|---|
| thinking kNN creates a complex model during training | kNN stores labelled examples and compares distances later | prediction happens by comparing neighbours |
| ignoring the value of k | k controls how many neighbours vote | changing k can change the result |
| using unlabelled examples for voting | supervised learning needs labelled examples | each neighbour must have a known class |
| thinking the closest point always decides | only true when k = 1 | when k > 1, majority vote decides |
| forgetting features | distance is calculated using feature values | features must be numerical or encoded |

## Quick Practice

### Question 1

What does `k` mean in k-nearest neighbour?

<details>
<summary>Answer</summary>

`k` is the number of nearest labelled training examples used to vote for the class of the unknown item.

</details>

### Question 2

Why can changing k change the prediction?

<details>
<summary>Answer</summary>

Changing k changes how many neighbours are included in the vote. A small k may depend strongly on nearby points, while a larger k includes more examples and may produce a different majority class.

</details>

### Question 3

Explain why kNN is supervised learning.

<details>
<summary>Answer</summary>

kNN is supervised learning because it uses labelled training examples. The known labels are used to classify a new unknown item.

</details>

