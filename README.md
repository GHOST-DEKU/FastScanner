<div align="center">

# `FastScanner`

### _Java I/O but it actually slaps._

[![Java](https://img.shields.io/badge/Java-ffc8dd?style=for-the-badge&logo=java&logoColor=black)](https://java.com)
[![Speed](https://img.shields.io/badge/Vibe-Immaculate-a9def9?style=for-the-badge&logo=sparkles&logoColor=black)](#)
[![License](https://img.shields.io/badge/License-b8b8ff?style=for-the-badge&logo=open-source-initiative&logoColor=black)](LICENSE)

<br>

> **" `java.util.Scanner` walked so `FastScanner` could run. "**

[Get It](#-setup) • [The Code](#-the-drip) • [Cheat Sheet](#-cheat-sheet)

</div>

---

## 💅 The Tea

Look, standard Java `Scanner` is slow. Like, painfully slow. When you're grinding LeetCode or Codeforces, you can't be getting TLE just because Java decided to take a nap.

**FastScanner** is that girl.

- **Speed?** ✨ Main Character Energy. 20x faster than Scanner.
- **Complexity?** 📉 Zero. It's just one file, bestie.
- **Vibe?** 🍬 Immaculate.

---

## 📦 Setup

Don't overcomplicate it. Just click.

| **OS**      | **Lazy Install**                                                                                                          |
| :---------- | :------------------------------------------------------------------------------------------------------------------------ |
| **Windows** | [`setup.bat`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/setup.bat) <br> _(Double Click & Slay)_  |
| **macOS**   | [`setup.command`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/setup.command) <br> _(Double Click)_ |
| **Linux**   | [`install.sh`](https://github.com/GHOST-DEKU/FastScanner/releases/download/v1.0.0/install.sh) <br> _(Terminal)_           |

<details>
<summary><b>Manual Setup (For the control freaks)</b></summary>
<br>
1. Clone it: <code>git clone https://github.com/GHOST-DEKU/FastScanner.git</code><br>
2. Yeet the <code>FastScanner/</code> folder into your project.<br>
3. Import and go.
</details>

---

## 💻 The Drip

```java
import FastScanner.FastScanner;

public class MainCharacter {
    public static void main(String[] args) {
        FastScanner fs = new FastScanner();

        // Literal one-liner integer input
        int n = fs.nextInt();

        // Reading an array? Easy clap.
        int[] arr = fs.readIntArray(n);

        // Check if we still have content or if we ghosted
        if (fs.hasNext()) {
            System.out.println("We stay winning 🏆");
        }
    }
}
```

---

## 🔮 Cheat Sheet

| Type      | Syntax            | What's the tea?                    |
| :-------- | :---------------- | :--------------------------------- |
| `int`     | `nextInt()`       | Yoink the next integer.            |
| `long`    | `nextLong()`      | Big number energy.                 |
| `double`  | `nextDouble()`    | Decimals? We got u.                |
| `String`  | `next()`          | Reads one word. No cap.            |
| `String`  | `nextLine()`      | Reads the whole sentence.          |
| `int[]`   | `readIntArray(n)` | Fills a whole array. Satisfying.   |
| `boolean` | `hasNext()`       | Returns true if not ghosted (EOF). |

---

<div align="center">
    <br>
    <i>coded with ☕ & 😭 by <a href="https://github.com/GHOST-DEKU">GHOST-DEKU</a></i>
</div>
