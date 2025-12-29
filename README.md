<div align="center">

# `FastScanner.java`

### High-Performance Input Reader for Competitive Programming

![Java](https://img.shields.io/badge/Language-Java-orange?style=for-the-badge&logo=java)
![IO](https://img.shields.io/badge/IO-BufferedReader-blue?style=for-the-badge)
![Speed](https://img.shields.io/badge/Performance-High-green?style=for-the-badge)

</div>

---

## 📝 Description

**FastScanner** is a standalone Java utility designed to bypass the slowness of `java.util.Scanner`. It wraps `BufferedReader` and `StringTokenizer` into a simple, robust API for handling large inputs in competitive programming environments (Codeforces, LeetCode, AtCoder).

## 💻 Class Structure

```java
public class FastScanner {

    /* --- Constructors --- */
    public FastScanner();                  // Reads from System.in
    public FastScanner(InputStream is);    // Custom InputStream
    public FastScanner(String fileName);   // Reads from File

    /* --- Core Methods --- */
    boolean hasNext();          // Checks for EOF / more tokens
    String  next();             // Reads next token
    String  nextLine();         // Reads remainder of line

    /* --- Primitives --- */
    int     nextInt();          // Parses int
    long    nextLong();         // Parses long
    double  nextDouble();       // Parses double
    char    nextChar();         // Reads first char of token

    /* --- Array Helpers (One-Liners) --- */
    int[]    readIntArray(int n);
    long[]   readLongArray(int n);
    double[] readDoubleArray(int n);
}
```

## 🚀 Usage Example

### Option 1: As a Library (Recommended)

1. Clone/Download this repo into a folder named `FastScanner` inside your project.
2. Import it in your code:

```java
import FastScanner.FastScanner; // Import the class
import java.io.*;
import java.util.*;

public class Solution {
    public static void main(String[] args) {
        // Initialize
        FastScanner fs = new FastScanner();

        // Read Input
        int n = fs.nextInt();
        int[] a = fs.readIntArray(n); // One-line array input!

        Arrays.sort(a);
        System.out.println(Arrays.toString(a));
    }
}
```

### Option 2: Single File

If you paste the code directly into your solution file or same directory without the folder, remove the `package FastScanner;` line from the top of `FastScanner.java`.

## ⚡ Performance Note

> Uses `BufferedReader` with default buffer size (8KB), which is ~20x faster than `Scanner` for large datasets.

---

<div align="center">
    <i>Happy Coding!</i>
</div>
