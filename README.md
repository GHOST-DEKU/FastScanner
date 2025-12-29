<div align="center">

```
  ___          _   ___
 | __|_ _ ___ | |_/ __| __ __ _ _ _  _ _  ___ _ _
 | _/ _` (_-< |  _\__ \/ _/ _` | ' \| ' \/ -_) '_|
 |_|\__,_/__/  \__|___/\__\__,_|_||_|_||_\___|_|

```

### ✦ _A lightweight, high-performance input reader for Java._ ✦

<br>

[![](https://img.shields.io/badge/java-ffc8dd?style=for-the-badge&logo=openjdk&logoColor=1e1e1e)](https://java.com)
[![](https://img.shields.io/badge/fast-a9def9?style=for-the-badge&logoColor=1e1e1e)](#)
[![](https://img.shields.io/badge/MIT-d0f4de?style=for-the-badge&logoColor=1e1e1e)](LICENSE)

</div>

---

<br>

## ✧ Overview

`FastScanner` is a single-file Java utility designed for **competitive programming**. It uses `BufferedReader` internally, making it significantly faster than `java.util.Scanner` for large inputs.

<br>

## ✧ Features

|                     |                                      |
| :------------------ | :----------------------------------- |
| **⚡ Performance**  | ~20x faster than standard Scanner    |
| **📦 Portable**     | Single file, no dependencies         |
| **🧩 Familiar API** | `nextInt()`, `nextLong()`, `next()`  |
| **🔒 Robust**       | Handles EOF, empty lines, edge cases |

<br>

---

<br>

## ✧ Installation

Download and run the installer for your system:

<div align="center">

|     | Installer                                                                                           | Action          |
| :-: | :-------------------------------------------------------------------------------------------------- | :-------------- |
| 🪟  | [`setup.bat`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/setup.bat)         | Double-click    |
| 🍎  | [`setup.command`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/setup.command) | Double-click    |
| 🐧  | [`install.sh`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/install.sh)       | `sh install.sh` |

</div>

<details>
<summary><b>Manual Setup</b></summary>
<br>

```bash
git clone https://github.com/GHOST-DEKU/FastScanner.git
```

Then copy the `FastScanner/` package into your project.

</details>

<br>

---

<br>

## ✧ Usage

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

<br>

---

<br>

## ✧ API

| Return    | Method            | Description          |
| :-------- | :---------------- | :------------------- |
| `int`     | `nextInt()`       | Read next integer    |
| `long`    | `nextLong()`      | Read next long       |
| `double`  | `nextDouble()`    | Read next double     |
| `String`  | `next()`          | Read next token      |
| `String`  | `nextLine()`      | Read entire line     |
| `int[]`   | `readIntArray(n)` | Read n integers      |
| `boolean` | `hasNext()`       | Check for more input |

<br>

---

<div align="center">
<br>

_crafted with care by [GHOST-DEKU](https://github.com/GHOST-DEKU)_

</div>
