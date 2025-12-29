# FastScanner (Java)

A robust, high-performance input reader for Java, designed for competitive programming (Codeforces, LeetCode, etc.).

## Features

- **Fast I/O**: significantly faster than `Scanner`.
- **Multi-type Support**: `int`, `long`, `double`, `char`, `String`.
- **Arrays**: Helper methods to read entire arrays in one line (`readIntArray(n)`).
- **Robustness**: Handles empty lines and EOF correctly.

## Usage

1. Copy `FastScanner.java` into your project.
2. Use it in your main method:

```java
FastScanner fs = new FastScanner();
int n = fs.nextInt();
int[] a = fs.readIntArray(n);
```

## CodeRabbit Review

This repository is set up to be reviewed by CodeRabbit.
