<div align="center">

![Java](https://img.shields.io/badge/Language-Java-orange?style=flat-square&logo=java)
![Version](https://img.shields.io/badge/Version-1.0.0-blue?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)

# Class `FastScanner`

</div>

**Package**: `FastScanner`  
**Extends**: `java.lang.Object`

---

## Class Overview

```java
public class FastScanner
extends Object
```

A **high-performance input reader** designed for competitive programming (Codeforces, LeetCode, AtCoder). It wraps `java.io.BufferedReader` and `java.util.StringTokenizer` to provide significant speed improvements over `java.util.Scanner` while maintaining a simple, robust API.

**Key Features:**

- **Speed**: ~20x faster than standard Scanner for large inputs ($10^6+$ integers).
- **Robustness**: Handles `EOF` and empty lines correctly.
- **Convenience**: Built-in one-liners for reading arrays (`readIntArray`).

---

## Constructor Summary

| Constructor                    | Description                                                |
| :----------------------------- | :--------------------------------------------------------- |
| `FastScanner()`                | Creates a scanner reading from `System.in`.                |
| `FastScanner(InputStream is)`  | Creates a scanner reading from the specified input stream. |
| `FastScanner(String fileName)` | Creates a scanner reading from the specified file.         |

## Method Summary

| Return Type | Method                   | Description                                                     |
| :---------- | :----------------------- | :-------------------------------------------------------------- |
| `boolean`   | `hasNext()`              | Checks if there are more tokens available. Safe for EOF checks. |
| `String`    | `next()`                 | Reads the next token from the input.                            |
| `int`       | `nextInt()`              | Parses the next token as an `int`.                              |
| `long`      | `nextLong()`             | Parses the next token as a `long`.                              |
| `double`    | `nextDouble()`           | Parses the next token as a `double`.                            |
| `char`      | `nextChar()`             | Reads the first character of the next token.                    |
| `String`    | `nextLine()`             | Reads the remainder of the current line.                        |
| `int[]`     | `readIntArray(int n)`    | Reads `n` integers into an array.                               |
| `long[]`    | `readLongArray(int n)`   | Reads `n` longs into an array.                                  |
| `double[]`  | `readDoubleArray(int n)` | Reads `n` doubles into an array.                                |

---

## Installation

<details open>
<summary><b>1. One-Click Installation (Recommended)</b></summary>
<br>

|                                                   **Windows**                                                   |                                                        **macOS**                                                        |                                                    **Linux**                                                     |
| :-------------------------------------------------------------------------------------------------------------: | :---------------------------------------------------------------------------------------------------------------------: | :--------------------------------------------------------------------------------------------------------------: |
| [`setup.bat`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/setup.bat)<br>_(Double-click)_ | [`setup.command`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/setup.command)<br>_(Double-click)_ | [`install.sh`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/install.sh)<br>`sh install.sh` |

_Installs to `~/JavaLibs` and configures `CLASSPATH`._

</details>

<details>
<summary><b>2. Manual Import</b></summary>
<br>

1. Clone repo keys: `git clone https://github.com/GHOST-DEKU/FastScanner.git`
2. Add `FastScanner/` folder to your project.
3. Use `import FastScanner.FastScanner;`
</details>

---

## Usage Example

```java
import FastScanner.FastScanner;
import java.io.*;
import java.util.*;

public class Solution {
    public static void main(String[] args) {
        FastScanner fs = new FastScanner();

        // 1. Safe EOF Check
        if (!fs.hasNext()) return;

        // 2. Read Primitives
        int n = fs.nextInt();

        // 3. Read Arrays (One-Liner)
        int[] a = fs.readIntArray(n);

        Arrays.sort(a);
        System.out.println(Arrays.toString(a));
    }
}
```

---

<div align="center">
<i>Authored by <a href="https://github.com/GHOST-DEKU">GHOST-DEKU</a></i>
</div>
