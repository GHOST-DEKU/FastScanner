<div align="center">

# `FastScanner.java`

### 🚀 High-Performance Input Reader for Competitive Programming

[![Java](https://img.shields.io/badge/Language-Java-orange?style=for-the-badge&logo=java)](https://java.com)
[![IO](https://img.shields.io/badge/IO-BufferedReader-blue?style=for-the-badge)](https://docs.oracle.com/javase/8/docs/api/java/io/BufferedReader.html)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)

<br/>

**Stop getting TLE on Java I/O.**<br/>
_A minimal, robust wrapper around `BufferedReader` & `StringTokenizer`._

[Installation](#-installation) • [Usage](#-usage-example) • [Benchmarks](#-performance-note)

</div>

---

## ⚡ What is it?

**FastScanner** is a standalone Java utility designed to bypass the slowness of `java.util.Scanner`. It provides a simple API for handling large input streams in competitive programming environments like **Codeforces**, **LeetCode**, and **AtCoder**, supporting **10^6+ integers/sec**.

## 💻 API Reference

```java
public class FastScanner {

    // --- Constructors ---
    public FastScanner();                  // System.in (Standard Input)
    public FastScanner(InputStream is);    // Custom Stream
    public FastScanner(String fileName);   // File Reading

    // --- Core Checks ---
    boolean hasNext();          // Safe EOF check
    String  next();             // Get next token
    String  nextLine();         // Get rest of line

    // --- Primitive Parsers ---
    int     nextInt();          // Integer
    long    nextLong();         // Long
    double  nextDouble();       // Double
    char    nextChar();         // Character

    // --- Array One-Liners ---
    int[]    readIntArray(int n);      // Read n integers
    long[]   readLongArray(int n);     // Read n longs
    double[] readDoubleArray(int n);   // Read n doubles
}
```

## 📦 Installation

<details open>
<summary><b>Option 1: One-Click Installation (Recommended)</b></summary>
<br>

<div align="center">
<table>
<tr>
<td align="center"><b>Windows</b></td>
<td align="center"><b>Linux / macOS</b></td>
</tr>
<tr>
<td>

1. Download [`install.ps1`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/install.ps1).
2. Right-click → **Run with PowerShell**.

</td>
<td>

1. Download [`install.sh`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/install.sh).
2. Run:
   ```bash
   chmod +x install.sh
   ./install.sh
   ```

</td>
</tr>
</table>
</div>

_Automatically installs to `~/JavaLibs` and configures your CLASSPATH._

</details>

<details>
<summary><b>Option 2: Import as Library (Manual)</b></summary>
<br>

1. Clone this repo into a folder named `FastScanner`.
2. Import it anywhere in your project:
   ```java
   import FastScanner.FastScanner;
   ```
   </details>

<details>
<summary><b>Option 3: Single File (Copy-Paste)</b></summary>
<br>

Just copy the content of `FastScanner.java` directly into your solution file.

> **Note:** Remove the `package FastScanner;` line from the top if you do this.

</details>

<br>

## 🚀 Usage Example

```java
import FastScanner.FastScanner; // Package import
import java.io.*;
import java.util.*;

public class Solution {
    public static void main(String[] args) {
        FastScanner fs = new FastScanner();

        // 1. Safe EOF Handling
        if (!fs.hasNext()) return;

        // 2. Super Fast Array Input
        int n = fs.nextInt();
        int[] a = fs.readIntArray(n);

        // 3. Logic
        Arrays.sort(a);

        // 4. Output
        System.out.println(Arrays.toString(a));
    }
}
```

## ⚡ Performance Note

> **FastScanner** uses an internal 8KB buffer via `BufferedReader`, making it **~20x faster** than `java.util.Scanner` for large inputs (e.g., $10^5$ integers).

---

<div align="center">
    <i>Built for Speed. Happy Coding!</i>
</div>
