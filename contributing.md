# Contributing to Linux System Administration Repository

Thank you for your interest in contributing to this repository! 🎉 This project documents Linux Administration sessions with commands, explanations, and interview questions. The goal is to make it a **valuable resource for learners and DevOps professionals**.

---

## 📌 How to Contribute

We welcome all kinds of contributions, including:

* Adding new Linux commands with explanations.
* Improving existing documentation (typos, formatting, clarity).
* Adding interview questions or enhancing existing ones.
* Providing real-world examples for better understanding.
* Suggesting improvements to structure or organization.

---

## 🛠 Contribution Workflow

1. **Fork the repository**

   * Click on the **Fork** button at the top right of this repository page.

2. **Clone your fork locally**

   ```bash
   git clone https://github.com/YOUR-USERNAME/Linux-Administration.git
   cd Linux-Administration
   ```

3. **Create a new branch**

   ```bash
   git checkout -b feature-name
   ```

   Example: `git checkout -b add-session17`

4. **Make your changes**

   * If you are adding a new session, place it in the correct folder inside **Live-Sessions/** with a descriptive filename.
   * If you are adding interview questions, update the corresponding file in **Interview Questions/**.
   * Add any images, diagrams, or screenshots to the **assets/** folder and reference them in your Markdown.

5. **Commit your changes**

   ```bash
   git add .
   git commit -m "Add session 17: Networking basics with commands"
   ```

6. **Push changes to your fork**

   ```bash
   git push origin feature-name
   ```

7. **Open a Pull Request (PR)**

   * Go to your fork on GitHub.
   * Click **Compare & pull request**.
   * Provide a clear title and description of your changes.
   * Submit the PR for review.

---

## 📂 Repository Structure

```
linux-system-administration/
├── Readme.md               # Main project description and index
├── assets/                 # Images, diagrams, or gifs for documentation
├── Interview Questions/    # Session-wise interview questions
└── Live-Sessions/          # Session-wise commands & notes
```

Please keep your contributions consistent with this structure.

---

## 📝 Guidelines

* Use clear and descriptive **Markdown headings**.
* Always include explanations for commands, not just raw commands.
* Group **Interview Questions** at the end of each session.
* File naming should be **descriptive and numbered** for sequence.
* Keep contributions focused (one PR = one logical change).

---

## 🤝 Community and Support

* If unsure about where to add something, **open an issue** first.
* Use GitHub Discussions or Issues to suggest improvements.
* Be respectful and collaborative.

---

## ✅ Example Session Format

````markdown
# Session 1 — Basic Linux Commands

## 🖥️ Commands Learned

### 1. View current directory
```bash
pwd
````

Prints the current working directory.

### 2. List files

```bash
ls -l
```

Lists files in long format (permissions, owner, size).

---

## ❓ Interview Questions

1. What is the difference between `pwd` and `ls`?
2. How do you list hidden files?
3. What happens if you run `cd` without arguments?

```

---

## 🎉 Thank You

Your contributions make this repository more useful for everyone learning Linux and DevOps! 🚀

```
