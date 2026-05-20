# Neural Networks and CNNs

## 1. Learning Objectives

By the end of this page, students should be able to:

- describe a neural network at a high level
- identify that CNNs are often used for image-related tasks
- explain why GPUs can be useful for training large models
- understand this topic as school extension content

## 2. Syllabus Link

| Item | Detail |
|---|---|
| Unit | A4 Machine Learning |
| Label | School Extension |
| Main skill | High-level understanding of neural models |

## 3. Key Terms

| Term | Meaning |
|---|---|
| Neural network | A model inspired by connected layers of nodes |
| Layer | A group of nodes in a neural network |
| CNN | Convolutional Neural Network |
| Training | Adjusting model parameters using data |
| GPU | Graphics Processing Unit, useful for parallel processing |

## 4. Concept Explanation

A neural network is a type of machine learning model made from layers.

A CNN is often used for image analysis tasks because it can learn patterns from image data.

Examples:

- detecting objects in images
- classifying medical X-rays
- recognizing handwritten digits
- identifying defects in products

Training large neural networks can require many calculations. GPUs are useful because they can process many operations in parallel.

## 5. Step-by-step Example

Image classification:

1. Input an image.
2. The model processes visual patterns.
3. The model predicts a class.
4. The prediction is compared with the correct label during training.
5. The model updates itself to improve future predictions.

## 6. Visual Structure

::: info CNN High-Level Flow
Image input → layers process visual features → model outputs a class prediction → prediction is evaluated.
:::

## 7. Common Mistakes

| Mistake | Why it is a problem |
|---|---|
| Thinking CNN means any machine learning model | CNNs are a specific type of neural network |
| Going too deep into university-level maths | IBDP focus is conceptual understanding |
| Saying GPUs make models intelligent | GPUs speed up computation; they do not replace training logic |
| Ignoring evaluation | A model still needs to be tested |

## 8. Exam-style Question

A hospital trains a CNN to classify chest X-rays.

**Outline one reason why a GPU may be useful during training.** [2]

## 9. Mark Scheme Style Answer

Award marks for points such as:

- training a CNN involves many repeated calculations
- a GPU can perform many operations in parallel
- this can reduce training time for large image datasets

## 10. Quick Check

1. What is a CNN often used for?
2. Why can GPUs help with training?
3. Why must a CNN still be evaluated?
