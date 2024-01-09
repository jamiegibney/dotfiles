# Usage

### 1. Clone the repository
**SSH**
```bash
git clone git@github.com:jamiegibney/dotfiles.git
```

**HTTPS**
```bash
git clone https://github.com/jamiegibney/dotfiles.git
```

**CLI**
```bash
gh repo clone jamiegibney/dotfiles
```

### 2. `cd` to the cloned directory

```bash
cd dotfiles-master
```

### 3. Make `links.sh` executable

```bash
chmod +x links.sh
```

### 4. Run `links.sh` to create the symbolic links

```bash
./links.sh
```

**NOTE**: this will prompt the user to confirm the creation of links where a file already exists in the target location. To override all existing links, please run `force_links.sh`.
