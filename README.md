<div align="center">

# `FastScanner`

### _Input Reading. Reimagined._

[![Java](https://img.shields.io/badge/Java-ffc8dd?style=for-the-badge&logo=java&logoColor=black)](https://java.com)
[![Speed](https://img.shields.io/badge/Speed-a9def9?style=for-the-badge&logo=speedtest&logoColor=black)](https://github.com/GHOST-DEKU/FastScanner)
[![License](https://img.shields.io/badge/License-b8b8ff?style=for-the-badge&logo=open-source-initiative&logoColor=black)](LICENSE)

<br>

> **" Input Reading. Just Faster. "**

[Installation](#-setup) • [Usage](#-code) • [API](#-methods)

</div>

---

## 🌸 The Vibe

**FastScanner** is a drop-in file that makes your Java input reading **20x faster**. It's built for competitive programming but designed to look and feel like a native part of your codebase.

- ✨ **Simple**: No boilerplate. Just `fs.nextInt()`.
- 🚀 **Fast**: Buffered reading meant for $10^6+$ inputs.
- 🍬 **Sweet**: Handles edge cases so you don't have to.

---

## 📦 Setup

Choose your flavor.

| **OS**      | **Quick Install**                                                                                                         |
| :---------- | :------------------------------------------------------------------------------------------------------------------------ |
| **Windows** | [`setup.bat`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/setup.bat) <br> _(Double Click)_         |
| **macOS**   | [`setup.command`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/setup.command) <br> _(Double Click)_ |
| **Linux**   | [`install.sh`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/install.sh) <br> _(Terminal)_           |

<details>
<summary><b>Or do it the old school way...</b></summary>
<br>
1. Clone it: <code>git clone https://github.com/GHOST-DEKU/FastScanner.git</code><br>
2. Drag the folder into your project.<br>
3. Done.
</details>

---

## 💻 Code

```java
import FastScanner.FastScanner;

public class Aesthetic {
    public static void main(String[] args) {
        FastScanner fs = new FastScanner();

        // 1. Read an Integer
        int n = fs.nextInt();

        // 2. Read an Array (One-Liner)
        int[] arr = fs.readIntArray(n);

        // 3. Vibe Check
        if (fs.hasNext()) {
            System.out.println("We have more data! ✨");
        }
    }
}
```

---

## 🔮 Methods

| Type      | Syntax            | What it does                |
| :-------- | :---------------- | :-------------------------- |
| `int`     | `nextInt()`       | Grabs the next integer.     |
| `long`    | `nextLong()`      | Grabs the next long.        |
| `double`  | `nextDouble()`    | Grabs the next double.      |
| `String`  | `next()`          | Grabs the next word.        |
| `String`  | `nextLine()`      | Grabs the whole line.       |
| `int[]`   | `readIntArray(n)` | Fills an array of size `n`. |
| `boolean` | `hasNext()`       | Checks if input is empty.   |

---

<div align="center">
    <br>
    <i>made with 💜 by <a href="https://github.com/GHOST-DEKU">GHOST-DEKU</a></i>
</div>
