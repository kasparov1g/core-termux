# **Core-Termux**

Automate your web development environment setup in Termux!

**Core-Termux** is a powerful tool designed to streamline the setup of a modern web development environment directly on your Android device using the Termux app. Whether you're a beginner or an experienced developer, this project will help you get started quickly and efficiently.

---

## **✨ Features**

- 🚀 **Fully Automated Setup**  
  Get your development environment ready with just one command.

- 📦 **Node.js Modules Management**  
  Automatically install and update essential global packages, including:  
  - `@devcorex/dev.x`  
    **Dev.X** is the flagship tool developed by **DevCoreX**, designed to automate the creation of web applications, API setups, and frontend components with ease and flexibility.

  - `typescript`  
  - `@nestjs/cli`  
  - `prettier`  
  - `live-server`  
  - `localtunnel`  
  - `vercel`
  - `markserv`

- 💻 **Enhanced Shell Experience**  
  Core-Termux uses **Oh My Zsh** as the default shell, enhanced with powerful plugins for productivity:  
  - **zsh-defer**: Improves Zsh startup time by deferring plugin loading.  
  - **powerlevel10k**: A highly customizable and fast theme for Zsh.  
  - **zsh-autosuggestions**: Suggests commands based on history as you type.  
  - **zsh-syntax-highlighting**: Adds syntax highlighting to your shell commands.  
  - **zsh-history-substring-search**: Allows substring search in your command history.  
  - **zsh-completions**: Extends the Zsh autocomplete system with additional features.  
  - **fzf-tab**: Enhances tab completion with fuzzy search.  
  - **zsh-you-should-use**: Reminds you to use aliases you've defined.  
  - **zsh-autopair**: Auto-completes matching pairs like brackets and quotes.  
  - **zsh-better-npm-completion**: Improves npm command-line completion.

- 💡 **NvChad Integration**  
  Seamlessly configure and update your optimized Neovim setup for Termux.

- 🔄 **Auto-Updates**  
  Keep Core-Termux, **Dev.X**, and its dependencies up to date effortlessly.

- ✅ **Compatibility**  
  Specifically designed for the Termux app, running on Android devices.

---

## **📋 Prerequisites**

Before using Core-Termux, ensure the following:
1. **Minimum 4GB** of storage available on your android.
2. **Termux App** installed on your Android device.
3. **Internet Connection** to fetch required packages and updates.
4. **Git** installed on your Termux app.

---

## **🛠 Installation**

1. **Clone the Repository**
  Open Termux and run the following commands:

   ```bash
   git clone https://github.com/Dev-CoreX/core-termux.git
   ```
   ```bash
   cd core-termux
   ```

2. **Run the Setup Script**
Execute the setup script to set up your environment:
   ```bash
   bash setup.sh
   ```

---

## **💻 Update**

**Update Environment**

To update Core-Termux, Node.js modules, and NvChad, simply run:

```bash
bash update.sh
```

**What the Script Does:**

Syncs the latest changes from the Core-Termux repository.

Installs or updates essential Node.js modules globally.

Fetches and updates your NvChad configuration.

Keeps your shell plugins and configurations optimized.

---

## **📂 Project Structure**

Here's an overview of the Core-Termux directory structure:

```
core-termux/
├── config            # Configuration file for colors, variables, etc.
├── setup.sh          # Main script for setup core-termux
├── update.sh         # Find updates of core-termux
├── README.md         # Project documentation
└── .gitignore        # Git ignore rules
```

---

## **📦 Included Packages**

Core-Termux comes preconfigured with the following Termux packages:

**Languages**

- `nodejs` | `python` | `php`

**Shell Utilities**

- `zsh` | `curl` | `wget` | `lsd` | `bat` | `tree` | `jq`

**Development Tools**

- `git` | `gh (GitHub CLI)` | `neovim` | `lua-language-server` | `ncurses-utils` | `ripgrep` | `stylua`

**Databases**

- `mongodb` | `postgresql` | `mariadb` | `sqlite`

**Networking Tools**

- `proot` | `tmate` | `cloudflared`

**Utilities**

- `translate-shell` | `html2text` | `bc` | `fzf` | `imagemagick`

---

## **📞 Support**

Core-Termux is developed and maintained by DevCoreX. For support, suggestions, or contributions:

**Author:** DevCoreX

**Email:** devcorexofficial@gmail.com

**GitHub:** DevCoreXOfficial

---

## **🎉 Contributing**

We welcome contributions from the community! Follow these steps to contribute:

1. **Fork the repository.**

2. **Create a new branch:**
```bash
git checkout -b feature/your-feature-name.
```

3. **Commit your changes:**
```bash
git commit -m 'Add your feature here'.
```

4. **Push to your branch:**
```bash
git push origin feature/your-feature-name.
```

5. **Submit a pull request!**

---

## **📄 License**

This project is licensed under the MIT License. See the LICENSE file for details.

---

Thank you for using Core-Termux! Happy coding!
