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

**FastScanner** is the upgrade your competitive programming setup needs.
It replaces the default `Scanner` with something that actually handles large inputs without choking.

- ✨ **Speed**: ~20x faster (uses `BufferedReader` internally).
- 📦 **Tiny**: Single file. Zero dependencies.
- 🧠 **Smart**: Handles messy inputs & EOF automatically.

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
        FastScanner fs = new FastScanner();

        // 1. read an integer (fast)
        int n = fs.nextInt();

        // 2. read a whole array (one line)
        int[] arr = fs.readIntArray(n);

        // 3. check for more input
        if (fs.hasNext()) {
            System.out.println("we active ⚡");
        }
    }
}
```

<br>

## ✦ cheat sheet

| Method            | What it does                   |
| :---------------- | :----------------------------- |
| `nextInt()`       | Reads the next `int`           |
| `nextLong()`      | Reads the next `long`          |
| `nextDouble()`    | Reads the next `double`        |
| `next()`          | Reads one word                 |
| `nextLine()`      | Reads the whole line           |
| `readIntArray(n)` | Fills an array of size `n`     |
| `hasNext()`       | Returns `true` if input exists |

<br>

---

<div align="center">
    <br>
    <i>crafted by <a href="https://github.com/GHOST-DEKU">GHOST-DEKU</a></i>
</div>
