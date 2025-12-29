<div align="center">

# ⚡ FastScanner

### A lightweight, high-performance input reader for Java.

<br>

[![Java](https://img.shields.io/badge/java-ffc8dd?style=for-the-badge&logo=openjdk&logoColor=1e1e1e)](https://java.com)
[![Fast](https://img.shields.io/badge/fast-a9def9?style=for-the-badge&logoColor=1e1e1e)](#)
[![MIT](https://img.shields.io/badge/MIT-d0f4de?style=for-the-badge&logoColor=1e1e1e)](LICENSE)

</div>

---

## Overview

`FastScanner` is a single-file Java utility for **competitive programming**. It uses `BufferedReader` internally, making it faster than `java.util.Scanner` for large inputs.

**Why use it?**

- ⚡ ~20x faster than standard Scanner
- 📦 Single file, no dependencies
- 🧩 Familiar API: `nextInt()`, `nextLong()`, `next()`
- 🔒 Robust: Handles EOF and edge cases

---

## Installation

Download and run the installer for your system:

|     | Installer                                                                                           | How to Run      |
| :-: | :-------------------------------------------------------------------------------------------------- | :-------------- |
| 🪟  | [`setup.bat`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/setup.bat)         | Double-click    |
| 🍎  | [`setup.command`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/setup.command) | Double-click    |
| 🐧  | [`install.sh`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/install.sh)       | `sh install.sh` |

<details>
<summary><b>Manual Setup</b></summary>

```bash
git clone https://github.com/GHOST-DEKU/FastScanner.git
```

Copy the `FastScanner/` folder into your project.

</details>

---

## Usage

```java
import FastScanner.FastScanner;
import java.util.*;

public class Solution {
    public static void main(String[] args) {
        FastScanner fs = new FastScanner();

        int n = fs.nextInt();
        int[] arr = fs.readIntArray(n);

        Arrays.sort(arr);
        System.out.println(Arrays.toString(arr));
    }
}
```

---

## API

| Return    | Method            | Description          |
| :-------- | :---------------- | :------------------- |
| `int`     | `nextInt()`       | Read next integer    |
| `long`    | `nextLong()`      | Read next long       |
| `double`  | `nextDouble()`    | Read next double     |
| `String`  | `next()`          | Read next token      |
| `String`  | `nextLine()`      | Read entire line     |
| `int[]`   | `readIntArray(n)` | Read n integers      |
| `boolean` | `hasNext()`       | Check for more input |

---

<div align="center">

_Made by [GHOST-DEKU](https://github.com/GHOST-DEKU)_

</div>
