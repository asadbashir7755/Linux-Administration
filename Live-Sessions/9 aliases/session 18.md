# 📅 Session 18 — 24 Aug 2025 • Aliases

## 🔹 Introduction
Aliases in Linux let you create shortcuts for commands, making your workflow faster and more efficient.

---

```bash
# Aliases
```
Session topic: working with aliases.

```bash
alias
```
List all current aliases.

```bash
ls -l
```
List files in long format.

```bash
ll
```
Try running 'll' (may not be defined yet).

```bash
ls -l
```
List files in long format.

```bash
alias
```
Check aliases again.

```bash
ls
```
List files.

```bash
alias ='ls'
```
⚠️ Incorrect syntax. Should be: `alias name='command'`

```bash
alias
```
List aliases.

```bash
dikhao
```
Try running a custom alias (not defined yet).

```bash
ls -ltrh
```
List files, sorted by time, long format, human-readable.

```bash
alias lt='ls -ltrh'
```
Create alias 'lt' for detailed listing.

```bash
lt
```
Use the new alias.

```bash
alias
```
List aliases.

```bash
su zubair
```
Switch user to zubair.

```bash
alias
```
List aliases as new user.

```bash
cd
```
Change directory.

```bash
ls
```
List files.

```bash
ls -al
```
List all files, including hidden.

```bash
vi .bashrc
```
Edit .bashrc to add persistent aliases.

```bash
alias
```
List aliases.

```bash
source .bashrc
```
Reload .bashrc to apply changes.

```bash
alias
```
List aliases.

```bash
ls
```
List files.

```bash
golimaro ABC
```
Try running a custom alias (not defined yet).

```bash
ls
```
List files.

```bash
golimaro a
```
Try running a custom alias (not defined yet).

```bash
ls
```
List files.

```bash
lt
```
Use 'lt' alias again.

```bash
alias kahan='pwd'
```
Create alias 'kahan' for printing working directory.

```bash
kahan
```
Use the new alias.

```bash
alias
```
List aliases.

```bash
unalias kahan
```
Remove the 'kahan' alias.

```bash
alias
```
List aliases.

```bash
kahan
```
Try using 'kahan' (should fail if unaliased).

```bash
vi /etc/bashrc
```
Edit global bashrc for system-wide aliases.

```bash
kahan
```
Try using 'kahan' again.

```bash
kahan
```
Try using 'kahan' again.

```bash
su zubair
```
Switch user to zubair.

---

## 📝 Notes
- Use `alias name='command'` to create an alias.
- Use `unalias name` to remove an alias.
- Add aliases to `.bashrc` for persistence.
- Use `source .bashrc` to reload aliases without logging out.

---

# End of Session 18