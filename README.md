# QR_Code_Generator
```
    ___  ____     ____ ___  ____  _____ 
   / _ \|  _ \   / ___/ _ \|  _ \| ____|
  | | | | | |_) | |  | | | | | | | |__| 
  | |_| |  _ <  | |__| |_| | |_| | |___ 
   \__\_\_| \_\  \____\___/|____/|_____|
         QR Code Generator by M.S.I
             (CLI Edition)
     Saved To: /sdcard/QRCode-Output
```
**Platform:** `Android (Termux) and Linux`

**Tool Type:** `Offline CLI Tool`

---

## ✅ Features

- ✅ Two Modes:
  - Input text manually
  - Read multiple QR strings from a `.txt` file
- ✅ Batch QR code generation from file lines
- ✅ Unicode/Emoji/Multilingual support
- ✅ Automatically saves QR codes to `/sdcard/QRCode-Output`
- ✅ High Quality QR: **600x600, 360ppi**
- ✅ Locate folder directly in Android's native file manager
- ✅ Terminal fallback list view
- ✅ Unique ASCII banner and colorful UI
- ✅ Works completely offline after install
- ✅ One-command installer for quick setup

---

## Quick Installation (One Line Command)

Paste the following in your `Termux` or `Linux`:

```
curl -sL https://raw.githubusercontent.com/MSI-Sirajul/QR_Code_Generator/main/install.sh | bash
````

Once installed, you can run the tool from anywhere in Termux: `Just Type`

```
qrcode
```
---

## QR Code Output Location

All generated QR codes are automatically saved here:

```
/sdcard/QRCode-Output/
```
**In your `Internal` Storage**

Each file is saved as:

* `0.png`, `1.png`, etc. (for input text mode)
* `1.png`, `2.png`, etc. (for file mode — based on line/entry)

---

## Required Packages (Automatically Installed)

* `qrencode`
* `termux-api` [Termux-API APP](https://github.com/termux/termux-api)
* `git`
* `curl`

---

## How to Use

### ✅ Option 1: Input Text

* From main menu, press `1`
* Enter your text and press Enter
* Type `exit` to stop input mode

**Example:**

```text
>> Hello M.S.I
>> https://google.com
>> exit
```

This will create:

```
/sdcard/QRCode-Output/0.png
/sdcard/QRCode-Output/1.png
```

---

### ✅ Option 2: Select a `.txt` File

* From main menu, press `2`
* Provide full path to `.txt` file

Each line must contain **one or more** entries inside `"` (double quotes).
Multiple entries in one line are also supported.

**Example file content:**

```
"This is QR 1"
"This is QR 2"
"This is QR 3" "Another One"
```

This will create:

```
/sdcard/QRCode-Output/1.png
/sdcard/QRCode-Output/2.png
/sdcard/QRCode-Output/3.png
/sdcard/QRCode-Output/4.png
```

---

### ✅ Option 3: Locate QR Code Folder

* From main menu, press `3`
* Tries to open file manager to `/sdcard/QRCode-Output` using Android system intent
* If that fails, fallback list is shown in Termux

**Example Terminal Output:**

```
QR Codes are here:
/sdcard/QRCode-Output
1.png
2.png
...
```

---

## Permissions

First-time users must run:

```bash
termux-setup-storage
```

And grant Termux access to storage.

---

## To-Do / Future Features

* [ ] Add PIN/password lock before accessing QR folder
* [ ] Auto-upload generated QR to Telegram or Drive
* [ ] Add QR scanner mode
* [ ] Compress all QR codes into `.zip` for sharing

---

## License

This tool iscompletely Free to Use.
---

## Quick Summary

| Option | Description                      |
| ------ | -------------------------------- |
| \[1]   | Input text manually              |
| \[2]   | Read QR codes from a `.txt` file |
| \[3]   | Open/save directory of QR codes  |
| \[0]   | Exit tool                        |

---

<div align="center">
<h2>About Developer</h2> </div>
<div align="center">
  <img src="https://raw.githubusercontent.com/MSI-Sirajul/Stack-Exchange/refs/heads/main/.GitHub/banner.jpg" alt="Profile" width="100%"/>

  <h2>MD Sirajul Islam</h2>
  <a href="https://www.linkedin.com/in/sirajul26">
    <img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn"/>
  </a>
  <a href="https://www.facebook.com/TS.Sirajul26">
    <img src="https://img.shields.io/badge/Facebook-1877F2?style=for-the-badge&logo=facebook&logoColor=white" alt="Facebook"/>
  </a>
  <a href="https://www.youtube.com/@basichacker26">
    <img src="https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white" alt="YouTube"/>
  </a>
  <a href="https://www.instagram.com/its.sirajul16">
    <img src="https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white" alt="Instagram"/>
  </a>
  <a href="https://md-sirajul-islam.lovable.app">
    <img src="https://img.shields.io/badge/Website-000000?style=for-the-badge&logo=About.me&logoColor=white" alt="Website"/>
  </a>
</div>

---

- Expert in:`Windows`,`Linux`,`MacOS`,`Android` etc.
- Working on:`Building a personal-portfolio`, `Open-source project`

---
<div align="center">
  <h2>Basic Knowledge</h2></div>
<div align="center">
  <img src="https://img.shields.io/badge/HTML5-E34F26?style=flat-square&logo=html5&logoColor=white" alt="HTML5"/>
  <img src="https://img.shields.io/badge/CSS3-1572B6?style=flat-square&logo=css3&logoColor=white" alt="CSS3"/>
  <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=flat-square&logo=javascript&logoColor=black" alt="JavaScript"/>
  <img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" alt="Python"/>
  <img src="https://img.shields.io/badge/React-61DAFB?style=flat-square&logo=react&logoColor=black" alt="React"/>
</div>

---

<div align="center">
  <h2>Copyright</h2>
© 2025 MSI-Sirajul. All rights reserved.
</div>

---

