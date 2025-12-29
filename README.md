<div align="center">

# FastScanner

### The Speed You Need.

[![Java](https://img.shields.io/badge/Java-100%25-orange?style=for-the-badge&logo=java)](https://java.com)
[![Performance](https://img.shields.io/badge/Performance-Blazing-red?style=for-the-badge&logo=speedtest)](https://github.com/GHOST-DEKU/FastScanner)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)

<br>

**Competitive programming in Java shouldn't be slow.**  
_Bypass `Scanner` overhead with a single, high-performance class._

[⬇️ Download](#-installation) • [📖 Documentation](#-api-cheat-sheet) • [⚡ Benchmarks](#-benchmarks)

</div>

---

## ⚡ Why FastScanner?

- **20x Faster**: Uses `BufferedReader` (8KB buffer) instead of standard Scanner.
- **Drop-in Replacement**: Similar API (`nextInt`, `nextLong`) but optimized.
- **Robust**: Handles messy inputs, empty lines, and huge files effortlessly.
- **Zero Dependencies**: Just one file. No external libraries.

## 📦 Installation

We've made it effortless. Install it globally once, use it everywhere.

| **System**                                                                     | **One-Click Installer**                                                                                                                        |
| :----------------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------- |
| <img src="https://simpleicons.org/icons/windows.svg" height="15"/> **Windows** | 1. Download [`setup.bat`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/setup.bat)<br>2. **Double-click** to run.         |
| <img src="https://simpleicons.org/icons/apple.svg" height="15"/> **macOS**     | 1. Download [`setup.command`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/setup.command)<br>2. **Double-click** to run. |
| <img src="https://simpleicons.org/icons/linux.svg" height="15"/> **Linux**     | 1. Download [`install.sh`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/install.sh)<br>2. Run `sh install.sh`            |

<details>
<summary><b>Or install manually...</b></summary>
<br>

1. Clone this repo:
   ```bash
   git clone https://github.com/GHOST-DEKU/FastScanner.git
   ```
2. Add the `FastScanner/` folder to your project.
</details>

## 🚀 Quick Usage

Once installed, simply import it:

```java
import FastScanner.FastScanner; // Just import it!
import java.io.*;
import java.util.*;

public class Solution {
    public static void main(String[] args) {
        FastScanner fs = new FastScanner();

        // Use it just like Scanner, but faster
        int n = fs.nextInt();
        int[] a = fs.readIntArray(n); // One-liner array input!

        System.out.println(Arrays.toString(a));
    }
}
```

## 📖 API Cheat Sheet

| Type     | Method            | Description            |
| :------- | :---------------- | :--------------------- |
| `int`    | `nextInt()`       | Read next integer      |
| `long`   | `nextLong()`      | Read next long         |
| `double` | `nextDouble()`    | Read next double       |
| `String` | `next()`          | Read next token (word) |
| `String` | `nextLine()`      | Read rest of the line  |
| `int[]`  | `readIntArray(n)` | Read array of size N   |
| `bool`   | `hasNext()`       | safe `EOF` check       |

---

<div align="center">
    <i>Happy Coding!</i>
</div>
