<div align="center">

# FastScanner

### The standard `java.util.Scanner`, but faster.

[![Java](https://img.shields.io/badge/Java-8%2B-ed8b00?style=flat-square&logo=java&logoColor=white)](https://java.com)
[![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)](LICENSE)
[![Performance](https://img.shields.io/badge/Performance-High-blue?style=flat-square)](https://github.com/GHOST-DEKU/FastScanner)

<br>

**Stop getting Time Limit Exceeded (TLE).**  
_A highly optimized, drop-in replacement for input reading in Competitive Programming._

[Installation](#-installation) • [API Reference](#-api-method-summary) • [Examples](#-usage-examples)

</div>

---

## ⚡ Why use this?

The built-in `Scanner` is slow because it parses input using regular expressions and has a small buffer. **FastScanner** fixes this by:

1.  **Using `BufferedReader`**: Reads large chunks of data (8KB buffer) at once.
2.  **Using `StringTokenizer`**: Splits strings efficiently without heavy regex overhead.
3.  **Handling Edges**: Correctly manages empty lines and End-Of-File (EOF).

**Result**: ~20x faster input reading (up to $10^7$ integers/sec).

---

## 📦 Installation

Install globally once, and use it in every project.

| System         | One-Click Installer                                                                                                                            |
| :------------- | :--------------------------------------------------------------------------------------------------------------------------------------------- |
| **🪟 Windows** | 1. Download [`setup.bat`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/setup.bat)<br>2. **Double-click** to run.         |
| **🍎 macOS**   | 1. Download [`setup.command`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/setup.command)<br>2. **Double-click** to run. |
| **🐧 Linux**   | 1. Download [`install.sh`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/install.sh)<br>2. Run `sh install.sh`            |

<details>
<summary><b>Manual Installation (Standard Way)</b></summary>
<br>

1. Clone the repository: `git clone https://github.com/GHOST-DEKU/FastScanner.git`
2. Copy the `FastScanner` folder into your source root.
3. Import it: `import FastScanner.FastScanner;`
</details>

---

## 📖 API Method Summary

| Return Type | Method                | Description                                        |
| :---------- | :-------------------- | :------------------------------------------------- |
| `int`       | `nextInt()`           | Reads the next token as an `int`.                  |
| `long`      | `nextLong()`          | Reads the next token as a `long`.                  |
| `double`    | `nextDouble()`        | Reads the next token as a `double`.                |
| `String`    | `next()`              | Reads the next word (delimited by whitespace).     |
| `String`    | `nextLine()`          | Reads the remainder of the current line.           |
| `int[]`     | `readIntArray(int n)` | Reads `n` integers into an array.                  |
| `boolean`   | `hasNext()`           | Returns `true` if more tokens exist (handles EOF). |

---

## 💻 Usage Examples

### 1. Basic Input

```java
import FastScanner.FastScanner;

public class Solution {
    public static void main(String[] args) {
        FastScanner fs = new FastScanner();

        int n = fs.nextInt();
        String s = fs.next();

        System.out.println(n + " " + s);
    }
}
```

### 2. Reading Arrays (The Fast Way)

```java
// Reads N integers in one line of code
int n = fs.nextInt();
int[] arr = fs.readIntArray(n);
```

### 3. File Input (Local Testing)

```java
// Reads from "input.txt" instead of System.in
FastScanner fs = new FastScanner("input.txt");
```

---

<div align="center">
    <i>Open Source software released under the MIT License.</i>
</div>
