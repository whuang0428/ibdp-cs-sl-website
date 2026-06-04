# Data Representation

## 1. Lesson Goals

By the end of this lesson, students should be able to:

- explain why computers represent data using binary
- distinguish bit, nibble, byte, and word at a basic level
- convert simple binary numbers to denary
- convert simple denary numbers to binary
- explain how integers, characters, images, and sound can be represented
- explain character sets such as ASCII and Unicode at a basic level
- explain bitmap image representation using pixels, colour depth, and resolution
- explain sound representation using sampling rate and bit depth
- explain the relationship between file size, resolution, colour depth, sampling rate, and bit depth
- avoid common misconceptions about binary and file size
- answer exam-style questions about data representation

---

## Start here: data is stored as binary

Computers store and process data using binary.

Different types of data, such as text, images, and sound, are represented using binary patterns. Students should first understand binary basics, then learn how different data types are encoded.

Exam questions may ask for explanations, conversions, comparisons, or file size calculations.

---

## Core exam focus

Focus first on these exam skills:

- binary and denary conversion
- character encoding
- bitmap image representation
- sound sampling
- file size calculations
- lossy and lossless compression
- choosing suitable representation or compression in a scenario

---

## Recommended learning route

1. Start with binary and place value.
   Learn how powers of 2 give each bit its value.
2. Practise binary / denary conversion.
   Convert in both directions until the place values feel familiar.
3. Learn how text is represented using character codes.
   Understand that characters are mapped to numeric codes.
4. Learn how images are represented using pixels and colour depth.
   Connect resolution and colour depth to file size.
5. Learn how sound is represented using samples and sample resolution (bit depth).
   Connect sampling rate, bit depth, duration, and channels.
6. Practise file size calculations.
   Keep units clear and convert bits to bytes when required.
7. Compare lossy and lossless compression.
   Choose the method that fits the type of file and scenario.

---

## Formula checklist

Use these formulas carefully in calculation questions:

| Purpose | Formula or rule |
|---|---|
| Image file size | `width × height × colour depth` |
| Sound file size | `sample rate × sample resolution (bit depth) × duration × channels` |
| Bits to bytes | divide by 8 |
| Bytes to KB | use `1 KB ≈ 1000 bytes` for simple estimation on this page |
| Bytes to MB | use `1 MB ≈ 1,000,000 bytes` for simple estimation on this page |

---

## Core checklist

After studying this page, you should be able to:

- explain why computers use binary
- convert simple values between binary and denary
- explain how text is represented
- explain how bitmap images are represented
- explain how sound is sampled and stored
- calculate simple file sizes
- distinguish lossy and lossless compression
- choose a suitable compression method for a scenario

---

## Exam answer pattern

Use this order when answering data representation questions:

1. Identify the type of data: number, text, image, or sound.
2. Identify whether the question asks for explanation, conversion, calculation, or comparison.
3. Write the correct formula if calculation is needed.
4. Substitute values carefully with correct units.
5. Convert bits and bytes if required.
6. Explain the result in the context of the question.

---

## 2. Syllabus Mapping

| Item | Detail |
|---|---|
| Unit | A1 Computer Fundamentals |
| Label | SL Core |
| Main skill | Understanding how different types of data are represented inside computer systems |
| Connected topics | Hardware, memory, storage, logic gates, networks, databases, programming |
| Practical focus | Binary conversion, file size reasoning, and representation of text/images/sound |
| Exam relevance | Definitions, conversions, calculations, explanation questions, scenario reasoning |

::: tip Learning Focus
Students should understand that computers store and process all data as binary patterns. Binary is not only for numbers; text, images, sound, and instructions are also represented using bits.
:::

---

## 3. Key Terms

| English Term | 中文解释 | Exam-style meaning |
|---|---|---|
| Binary | 二进制 | Base-2 number system using 0 and 1 |
| Denary / Decimal | 十进制 | Base-10 number system using digits 0-9 |
| Bit | 位 | One binary digit, either 0 or 1 |
| Nibble | 半字节 | 4 bits |
| Byte | 字节 | 8 bits |
| Word | 字 | Fixed-size group of bits processed by CPU |
| Data representation | 数据表示 | How data is stored using binary patterns |
| Character set | 字符集 | A system that maps characters to binary codes |
| ASCII | ASCII 字符编码 | Character set using codes for common characters |
| Unicode | Unicode 字符编码 | Character set that supports many world languages and symbols |
| Pixel | 像素 | Smallest picture element in a bitmap image |
| Resolution | 分辨率 | Number of pixels in an image, such as width × height |
| Colour depth | 色彩深度 | Number of bits used to represent colour of each pixel |
| Sample | 采样 | Measurement of sound amplitude at a moment in time |
| Sampling rate | 采样率 | Number of sound samples taken per second |
| Bit depth | 位深度 | Number of bits used for each sound sample |
| File size | 文件大小 | Amount of storage needed for a file |
| Compression | 压缩 | Reducing file size by encoding data more efficiently |

---

## 4. Concept Explanation

<LangBlock>
<template #cn>

### 中文讲解

计算机内部使用电子电路工作。  
这些电路最容易表示两种状态：

```text
on / off
high voltage / low voltage
1 / 0
```

所以计算机使用 **binary（二进制）** 来表示数据。

但是 binary 不只是用来表示数字。  
在计算机中，很多类型的数据最终都可以表示成 0 和 1 的组合：

```text
integers
characters
images
sound
video
program instructions
```

例如：

```text
A character can be represented by a binary code.
An image can be represented by many pixels.
Each pixel can be represented by binary colour values.
Sound can be represented by many samples.
Each sample can be represented by binary numbers.
```

所以本节的核心是：

```text
different data types → encoded as binary patterns
```

学习时不要只背公式，更要理解：

```text
more pixels usually means larger image file
higher colour depth usually means larger image file
higher sampling rate usually means larger sound file
higher bit depth usually means larger sound file
```

</template>

<template #en>

### English Explanation

Computers work using electronic circuits.  
These circuits can easily represent two states:

```text
on / off
high voltage / low voltage
1 / 0
```

Therefore, computers use **binary** to represent data.

However, binary is not only used for numbers.  
Inside a computer, many types of data can be represented as patterns of 0s and 1s:

```text
integers
characters
images
sound
video
program instructions
```

For example:

```text
A character can be represented by a binary code.
An image can be represented by many pixels.
Each pixel can be represented by binary colour values.
Sound can be represented by many samples.
Each sample can be represented by binary numbers.
```

So the core idea of this lesson is:

```text
different data types → encoded as binary patterns
```

Students should not only memorize formulas. They should understand that:

```text
more pixels usually means larger image file
higher colour depth usually means larger image file
higher sampling rate usually means larger sound file
higher bit depth usually means larger sound file
```

</template>
</LangBlock>

---

## 5. Why Computers Use Binary

Computers use binary because digital circuits can reliably represent two states.

| Physical State | Binary Value |
|---|---|
| off | 0 |
| on | 1 |
| low voltage | 0 |
| high voltage | 1 |
| false | 0 |
| true | 1 |

### Why Not Use 10 Digits Directly?

A computer could theoretically use more voltage levels, but two states are easier and more reliable.

Binary makes it easier to design circuits that are:

```text
simple
reliable
less affected by small electrical noise
easy to combine using logic gates
```

::: tip Exam Phrase
Computers use binary because electronic circuits can reliably represent two states, such as on/off or high/low voltage.
:::

---

## 6. Bits, Nibbles, Bytes, and Words

| Unit | Size | Meaning |
|---|---:|---|
| bit | 1 binary digit | 0 or 1 |
| nibble | 4 bits | half a byte |
| byte | 8 bits | common unit of storage |
| word | depends on CPU | group of bits processed as a unit |

### Examples

```text
1 bit: 1
4 bits: 1010
8 bits: 10101100
```

### Byte Example

A byte has 8 bits:

```text
01000001
```

This pattern could represent:

```text
a number
a character
part of an image
part of a sound file
an instruction
```

The meaning depends on how the data is interpreted.

---

## 7. Place Values in Binary

Binary is base 2.

Each position has a value that is a power of 2.

### 8-bit Place Values

| 128 | 64 | 32 | 16 | 8 | 4 | 2 | 1 |
|---:|---:|---:|---:|---:|---:|---:|---:|

Example:

```text
10110010
```

| Bit | 1 | 0 | 1 | 1 | 0 | 0 | 1 | 0 |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| Place value | 128 | 64 | 32 | 16 | 8 | 4 | 2 | 1 |

The denary value is:

```text
128 + 32 + 16 + 2 = 178
```

---

## 8. Binary to Denary

### Method

```text
1. Write the place values.
2. Put the binary digits under them.
3. Add the place values where the bit is 1.
```

### Binary conversion example

### Example 1

Convert:

```text
01001101
```

Place values:

| 128 | 64 | 32 | 16 | 8 | 4 | 2 | 1 |
|---:|---:|---:|---:|---:|---:|---:|---:|
| 0 | 1 | 0 | 0 | 1 | 1 | 0 | 1 |

Add:

```text
64 + 8 + 4 + 1 = 77
```

Answer:

```text
01001101₂ = 77₁₀
```

### Example 2

```text
11111111₂ = 255₁₀
```

because:

```text
128 + 64 + 32 + 16 + 8 + 4 + 2 + 1 = 255
```

---

## 9. Denary to Binary

### Method

Use place values from left to right.

Example: convert 106 to 8-bit binary.

| Place value | Use it? | Remaining |
|---:|---|---:|
| 128 | no | 106 |
| 64 | yes | 42 |
| 32 | yes | 10 |
| 16 | no | 10 |
| 8 | yes | 2 |
| 4 | no | 2 |
| 2 | yes | 0 |
| 1 | no | 0 |

So:

```text
106₁₀ = 01101010₂
```

### Quick Check

```text
64 + 32 + 8 + 2 = 106
```

---

## 10. Range of Unsigned Binary

With n bits, unsigned binary can represent:

```text
0 to 2^n - 1
```

### Examples

| Bits | Number of Patterns | Unsigned Range |
|---:|---:|---|
| 1 | 2 | 0 to 1 |
| 2 | 4 | 0 to 3 |
| 4 | 16 | 0 to 15 |
| 8 | 256 | 0 to 255 |
| 16 | 65,536 | 0 to 65,535 |

### 8-bit Example

The largest 8-bit unsigned value is:

```text
11111111₂ = 255₁₀
```

---

## 11. Overflow Preview

Overflow happens when a value is too large for the number of bits available.

### Example

If only 8 bits are available, the largest unsigned number is:

```text
255
```

Trying to store:

```text
256
```

requires more than 8 bits.

### Why This Matters

Computers have fixed-size storage units.  
If a result exceeds the available range, the system must handle it somehow.

::: info Level Control
This is a preview. Teach signed binary and overflow in more detail only if required by your syllabus sequence.
:::

---

## 12. Characters

Computers represent characters using binary codes.

Examples of characters:

```text
A
B
a
7
?
空格
中
😊
```

A **character set** maps each character to a number.  
That number is then stored in binary.

### Text representation example

### Simple Example

```text
Character A → code 65 → binary 01000001
```

So the computer does not store the shape of the letter directly in plain English.  
It stores a binary code that represents the character.

---

## 13. ASCII

ASCII is an older character set used for common English letters, digits, and symbols.

Examples:

| Character | Denary Code | 8-bit Binary |
|---|---:|---|
| A | 65 | 01000001 |
| B | 66 | 01000010 |
| a | 97 | 01100001 |
| 0 | 48 | 00110000 |
| Space | 32 | 00100000 |

### Limitation

ASCII is limited and does not support all world languages and modern symbols.

It is not enough for:

```text
Chinese characters
Arabic
emoji
many mathematical symbols
many world scripts
```

---

## 14. Unicode

Unicode is a much larger character set designed to represent characters from many languages and symbol systems.

It supports:

```text
English
Chinese
Japanese
Korean
Arabic
Greek
mathematical symbols
emoji
many other scripts
```

### Why Unicode Is Needed

A global computer system needs to represent many languages.

Example:

```text
Hello
你好
こんにちは
😊
```

Unicode allows these to be represented using standard codes.

### ASCII vs Unicode

| ASCII | Unicode |
|---|---|
| smaller character set | much larger character set |
| mainly English characters and symbols | many languages and symbols |
| uses fewer bits per character in simple forms | may need more bytes per character |
| limited global support | global text support |

---

## 15. Bitmap Images

A bitmap image is made of pixels.

A **pixel** is a tiny picture element.

### Simple Image Grid

```text
pixel pixel pixel
pixel pixel pixel
pixel pixel pixel
```

Each pixel has a colour.  
The colour is represented using binary.

### Important Image Factors

```text
resolution
colour depth
```

These affect image quality and file size.

---

## 16. Resolution

Resolution is the number of pixels in an image.

It is often written as:

```text
width × height
```

Example:

```text
1920 × 1080
```

Number of pixels:

```text
1920 × 1080 = 2,073,600 pixels
```

### Higher Resolution

Higher resolution usually means:

```text
more pixels
more detail
larger file size
more storage needed
more processing needed
```

---

## 17. Colour Depth

Colour depth is the number of bits used to represent the colour of each pixel.

### Examples

| Colour Depth | Number of Colours |
|---:|---:|
| 1 bit | 2 colours |
| 2 bits | 4 colours |
| 4 bits | 16 colours |
| 8 bits | 256 colours |
| 24 bits | 16,777,216 colours |

Formula:

```text
number of colours = 2^(colour depth)
```

### Higher Colour Depth

Higher colour depth usually means:

```text
more possible colours
better image quality
larger file size
```

---

## 18. Image File Size

Uncompressed bitmap file size can be estimated using:

```text
file size in bits = width × height × colour depth
```

Then convert bits to bytes:

```text
bytes = bits ÷ 8
```

### Example

Image:

```text
100 × 100 pixels
colour depth = 8 bits
```

File size:

```text
100 × 100 × 8 = 80,000 bits
80,000 ÷ 8 = 10,000 bytes
```

### Note

Real image files may also include metadata and compression, so actual file size may differ.

---

## 19. Sound Representation

Sound is analogue in the real world.  
Computers store sound digitally using samples.

### Process

```text
sound wave
→ sample amplitude many times per second
→ store each sample as a binary number
```

Important factors:

```text
sampling rate
bit depth
duration
number of channels
```

---

## 20. Sampling Rate

Sampling rate is the number of samples taken per second.

It is often measured in:

```text
Hz
kHz
```

Example:

```text
44.1 kHz = 44,100 samples per second
```

### Higher Sampling Rate

Higher sampling rate usually means:

```text
more samples per second
more accurate sound representation
larger file size
```

---

## 21. Bit Depth for Sound

Bit depth is the number of bits used to store each sound sample.

Example:

```text
8-bit sample
16-bit sample
24-bit sample
```

### Higher Bit Depth

Higher bit depth usually means:

```text
more possible amplitude levels
better sound quality
larger file size
```

---

## 22. Sound File Size

Uncompressed sound file size can be estimated using:

```text
file size in bits = sampling rate × bit depth × duration × channels
```

### Example

Mono sound:

```text
sampling rate = 8000 samples per second
bit depth = 8 bits
duration = 10 seconds
channels = 1
```

File size:

```text
8000 × 8 × 10 × 1 = 640,000 bits
640,000 ÷ 8 = 80,000 bytes
```

### Stereo

Stereo has 2 channels, so file size doubles compared with mono if other settings stay the same.

---

## 23. Compression Preview

Compression reduces file size.

### Compression example

It can be:

```text
lossless
lossy
```

### Lossless Compression

Lossless compression allows the original data to be restored exactly.

Examples:

```text
text files
some image formats
program files
database backups
```

### Lossy Compression

Lossy compression removes some data to reduce file size.

Examples:

```text
JPEG images
MP3 audio
streaming video
```

### Important

Compression can make file size much smaller than raw bitmap or raw sound calculations.

---

## 24. Worked Example: Text Message

Message:

```text
Hi
```

Using simple ASCII:

| Character | Code | Binary |
|---|---:|---|
| H | 72 | 01001000 |
| i | 105 | 01101001 |

The computer stores the message as binary patterns.

```text
01001000 01101001
```

---

## 25. Worked Example: Image Size

### Image file size example

A small image has:

```text
width = 200 pixels
height = 100 pixels
colour depth = 24 bits
```

File size in bits:

```text
200 × 100 × 24 = 480,000 bits
```

File size in bytes:

```text
480,000 ÷ 8 = 60,000 bytes
```

So the uncompressed image needs about:

```text
60 KB
```

using 1 KB ≈ 1000 bytes for simple estimation.

---

## 26. Worked Example: Sound Size

### Sound file size example

A sound file has:

```text
sampling rate = 44,100 samples per second
bit depth = 16 bits
duration = 5 seconds
channels = 2
```

File size in bits:

```text
44,100 × 16 × 5 × 2 = 7,056,000 bits
```

File size in bytes:

```text
7,056,000 ÷ 8 = 882,000 bytes
```

This is about:

```text
882 KB
```

before compression.

---

## Common mistakes

Watch for these mistakes in data representation questions:

- forgetting that 1 byte = 8 bits
- mixing up bits and bytes
- using the wrong colour depth
- forgetting duration or channels in sound file size calculations
- confusing sample rate with sample resolution
- saying compression always improves quality
- confusing lossy and lossless compression
- giving a formula without matching it to the scenario

### Common exam trap

A correct formula is only useful if the values and units match the scenario. Check whether the answer should be in bits, bytes, KB, or MB.

---

## 27. Common Mistakes

| Mistake | Why it is wrong | Better understanding |
|---|---|---|
| Binary is only for numbers | All data can be represented as binary | Text, images, sound, instructions use binary |
| 1 byte = 4 bits | 1 byte is 8 bits | 4 bits is a nibble |
| Leading zeros have no purpose | They help fit fixed-size storage | 00000101 is 8-bit representation of 5 |
| ASCII supports all languages | ASCII is limited | Unicode supports many languages |
| Higher resolution always means better image with no downside | File size and processing needs increase | Trade-off between quality and size |
| Colour depth means image width × height | Colour depth is bits per pixel | Resolution is pixel count |
| Sampling rate means volume | Sampling rate is samples per second | Bit depth affects amplitude precision |
| Bit depth and file size are unrelated | Higher bit depth usually increases file size | More bits per pixel/sample |
| Compression always loses quality | Lossless compression keeps original data | Lossy removes some data |
| Calculated file size always equals real file size | Compression and metadata affect actual size | Raw estimates are approximate |

---

## 28. Guided Practice

### Practice 1: Binary to Denary

Convert:

```text
00101101
```

<details>
<summary>Suggested Answer</summary>

Place values:

```text
32 + 8 + 4 + 1 = 45
```

Answer:

```text
00101101₂ = 45₁₀
```

</details>

---

### Practice 2: Denary to Binary

Convert 19 to 8-bit binary.

<details>
<summary>Suggested Answer</summary>

```text
19 = 16 + 2 + 1
```

8-bit binary:

```text
00010011
```

</details>

---

### Practice 3: ASCII or Unicode?

Which is more suitable for storing Chinese characters and emoji?

<details>
<summary>Suggested Answer</summary>

Unicode, because it supports many world languages and symbols, including Chinese characters and emoji.

</details>

---

### Practice 4: Image Size

Calculate raw file size in bits:

```text
50 × 50 image
colour depth = 8 bits
```

<details>
<summary>Suggested Answer</summary>

```text
50 × 50 × 8 = 20,000 bits
```

</details>

---

### Practice 5: Sound Size

A mono sound has:

```text
sampling rate = 1000 samples per second
bit depth = 8 bits
duration = 4 seconds
```

Calculate file size in bits.

<details>
<summary>Suggested Answer</summary>

```text
1000 × 8 × 4 × 1 = 32,000 bits
```

</details>

---

## 29. Independent Practice

### Question 1

Explain why computers use binary.

### Question 2

Define bit, nibble, and byte.

### Question 3

Convert these binary numbers to denary:

```text
00001111
01010101
10000000
```

### Question 4

Convert these denary numbers to 8-bit binary:

```text
12
37
200
```

### Question 5

Explain the difference between ASCII and Unicode.

### Question 6

Explain how a bitmap image is represented.

### Question 7

An image is 300 × 200 pixels with 24-bit colour depth. Calculate the uncompressed file size in bits and bytes.

### Question 8

Explain how sound is represented digitally.

### Question 9

A sound file has sampling rate 8000 Hz, bit depth 16 bits, duration 20 seconds, and 1 channel. Calculate the uncompressed file size in bits and bytes.

### Question 10

Explain why compression can make calculated raw file size different from actual file size.

---

## 30. Exam-style Questions

### Question 1 [4 marks]

Explain why computers represent data using binary.

<details>
<summary>Mark Scheme Style Answer</summary>

Computers use electronic circuits that can reliably represent two states, such as on/off or high/low voltage. These two states can be represented as 1 and 0. Therefore, data and instructions can be encoded using binary patterns that the computer can store and process.

</details>

---

### Question 2 [4 marks]

Convert `01011010` to denary.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
01011010 = 64 + 16 + 8 + 2 = 90
```

Answer:

```text
90
```

</details>

---

### Question 3 [4 marks]

Convert 156 to 8-bit binary.

<details>
<summary>Mark Scheme Style Answer</summary>

```text
156 = 128 + 16 + 8 + 4
```

8-bit binary:

```text
10011100
```

</details>

---

### Question 4 [6 marks]

Explain how a bitmap image is represented in a computer system.

<details>
<summary>Mark Scheme Style Answer</summary>

A bitmap image is made up of pixels. Each pixel has a colour, and the colour is represented using binary values. The resolution determines how many pixels are in the image, while the colour depth determines how many bits are used for each pixel. Higher resolution or higher colour depth usually increases file size.

</details>

---

### Question 5 [6 marks]

A sound file is recorded at 44,100 samples per second, 16 bits per sample, for 10 seconds, in stereo. Calculate the uncompressed file size in bytes.

<details>
<summary>Mark Scheme Style Answer</summary>

Stereo has 2 channels.

```text
44,100 × 16 × 10 × 2 = 14,112,000 bits
14,112,000 ÷ 8 = 1,764,000 bytes
```

Answer:

```text
1,764,000 bytes
```

</details>

---

## 31. Practice task
### Activity 1: Binary Human Place Values

Eight students hold place value cards:

```text
128 64 32 16 8 4 2 1
```

Other students create binary numbers by standing up or sitting down.

---

### Activity 2: Image Pixel Grid

Students colour a small grid using 1-bit or 2-bit colour.

They compare:

```text
number of pixels
colour depth
file size
image detail
```

---

### Activity 3: Sound Sampling Demonstration

Draw a wave on the board.  
Students sample the wave at low and high sampling rates.

They discuss:

```text
accuracy
file size
quality
```

---

## 32. Independent practice
### Independent practice part A: Binary Practice

Convert:

```text
00110011
01100110
11110000
```

to denary.

Convert:

```text
25
64
173
```

to 8-bit binary.

---

### Independent practice part B: Character Sets

In 5-6 sentences, explain why Unicode is needed even though ASCII exists.

---

### Independent practice part C: Image Calculation

An image is:

```text
640 × 480 pixels
colour depth = 24 bits
```

Calculate uncompressed file size in:

```text
bits
bytes
approximate MB
```

Use:

```text
1 MB ≈ 1,000,000 bytes
```

---

### Independent practice part D: Sound Calculation

A mono audio file is:

```text
sampling rate = 22,050 Hz
bit depth = 16 bits
duration = 30 seconds
```

Calculate the uncompressed file size in bits and bytes.

---

## 33. One-page Revision Summary

| Point | Summary |
|---|---|
| Binary | Base-2, uses 0 and 1 |
| Bit | One binary digit |
| Nibble | 4 bits |
| Byte | 8 bits |
| Unsigned range | n bits gives 0 to 2^n - 1 |
| Character set | Maps characters to binary codes |
| ASCII | Limited character set, mainly English/common symbols |
| Unicode | Large character set for many languages/symbols |
| Pixel | Smallest element of bitmap image |
| Resolution | Width × height pixels |
| Colour depth | Bits per pixel |
| Image size | width × height × colour depth |
| Sampling rate | Samples per second |
| Bit depth | Bits per sound sample |
| Sound size | sampling rate × bit depth × duration × channels |
| Compression | Reduces file size |
| Exam phrase | Computers represent all data as binary patterns, including numbers, text, images, sound, and instructions |

---

## 34. Quick Self-test

Before moving on, students should be able to answer these:

1. Why do computers use binary?
2. How many bits are in a byte?
3. What are the 8-bit binary place values?
4. What is the denary value of `00001010`?
5. What is the 8-bit binary value of 20?
6. What is a character set?
7. Why is Unicode larger than ASCII?
8. What is colour depth?
9. What is sampling rate?
10. What factors affect sound file size?

