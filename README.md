<div align="center">

# `fastscanner`

### ✦ _java i/o. just faster._ ✦

<br>

[![Java](https://img.shields.io/badge/java-ffc8dd?style=flat-square&logo=java&logoColor=black)](https://java.com)
[![Speed](https://img.shields.io/badge/status-fast_af-a9def9?style=flat-square&logo=speedtest&logoColor=black)](#)
[![License](https://img.shields.io/badge/license-MIT-cdb4db?style=flat-square&logo=open-source-initiative&logoColor=black)](LICENSE)

<br>

> **" speed run your input. "**

[get it](#-setup) • [how to](#-usage) • [features](#-features)

</div>

---

<br>

## ✦ overview

**FastScanner** is a lightweight wrapper around `BufferedReader` and `StringTokenizer` designed to replace `java.util.Scanner` for competitive programming.

- ✨ **Faster**: Bypasses regex parsing used by `Scanner`.
- 📦 **Zero External Deps**: Uses only standard Java libraries (`java.io`, `java.util`).
- 🧠 **Smart**: Handles `EOF` and empty lines automatically.

<br>

## ✦ setup

click. install. done.

|     | **OS**      | **Installer**                                                                                                           |
| :-: | :---------- | :---------------------------------------------------------------------------------------------------------------------- |
| 🪟  | **Windows** | [`setup.bat`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/setup.bat)<br>_(Double-click)_         |
| 🍎  | **macOS**   | [`setup.command`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/setup.command)<br>_(Double-click)_ |
| 🐧  | **Linux**   | [`install.sh`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/install.sh)<br>_(Terminal)_           |

<details>
<summary><b>manual install</b></summary>
<br>

1. `git clone https://github.com/GHOST-DEKU/FastScanner.git`
2. Copy the `FastScanner/` folder to your project.
3. You're set.
</details>

<br>

## ✦ usage

Import it. Use it like normal.

```java
import FastScanner.FastScanner;

public class Main {
    public static void main(String[] args) {
        // 1. read from system.in
        FastScanner fs = new FastScanner();

        // 2. read primitives
        int n = fs.nextInt();
        long k = fs.nextLong();

        // 3. read arrays (one-liner)
        int[] arr = fs.readIntArray(n);

        // 4. check for more input
        if (fs.hasNext()) {
            System.out.println("we active ⚡");
        }
    }
}
```

<br>

## ✦ cheat sheet

| Method             | Returns   | Description                        |
| :----------------- | :-------- | :--------------------------------- |
| `nextInt()`        | `int`     | Reads the next integer             |
| `nextLong()`       | `long`    | Reads the next long                |
| `nextDouble()`     | `double`  | Reads the next double              |
| `next()`           | `String`  | Reads the next token (word)        |
| `nextChar()`       | `char`    | Reads the first char of next token |
| `nextLine()`       | `String`  | Reads the remaining line           |
| `readIntArray(n)`  | `int[]`   | Reads `n` integers                 |
| `readLongArray(n)` | `long[]`  | Reads `n` longs                    |
| `hasNext()`        | `boolean` | Checks for more tokens (EOF)       |

<br>

---

<div align="center">
    <br>
    <i>crafted by <a href="https://github.com/GHOST-DEKU">GHOST-DEKU</a></i>
</div>
