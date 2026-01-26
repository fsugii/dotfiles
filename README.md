# 🚀 Dotfiles - Professional Development Environment

[![Shell](https://img.shields.io/badge/Shell-Zsh%20%2F%20Bash-89e051?style=flat-square&logo=gnu-bash&logoColor=white)](https://www.zsh.org/)
[![Editor](https://img.shields.io/badge/Editor-Neovim-57A143?style=flat-square&logo=neovim&logoColor=white)](https://neovim.io/)
[![Terminal](https://img.shields.io/badge/Terminal-Tmux-1BB91F?style=flat-square&logo=tmux&logoColor=white)](https://github.com/tmux/tmux)
[![License](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square)](LICENSE)

> A carefully curated collection of configuration files that optimize productivity and streamline the development workflow. Built for 42 School development but designed to be portable and adaptable.

---

## 📖 Table of Contents

- [Overview](#-overview)
- [What's Included](#-whats-included)
- [Installation & Setup](#-installation--setup)
- [Configuration Highlights](#-configuration-highlights)
- [Key Features & Customizations](#-key-features--customizations)
- [Productivity Optimizations](#-productivity-optimizations)
- [Customization Guide](#-customization-guide)
- [Technical Skills Demonstrated](#-technical-skills-demonstrated)
- [System Compatibility](#-system-compatibility)
- [Maintenance & Updates](#-maintenance--updates)
- [Dependencies & Requirements](#-dependencies--requirements)
- [Troubleshooting](#-troubleshooting)
- [Inspiration & Credits](#-inspiration--credits)

---

## 🎯 Overview

### What Are Dotfiles?

Dotfiles are configuration files that customize your Unix/Linux environment. This repository contains my personal development environment configurations, meticulously crafted to enhance productivity, maintain consistency across systems, and optimize workflows for C/C++ development.

### Development Philosophy

My approach to environment configuration is centered on:

- **Productivity First**: Every configuration choice is made to reduce friction and speed up development
- **Consistency**: Maintain a uniform development experience across different machines
- **Minimalism**: Keep configurations clean, well-documented, and purposeful
- **Portability**: Design for easy deployment on new systems
- **Version Control**: Track changes and maintain configuration history

### Why Dotfiles Matter

Well-configured dotfiles represent:

- **Systems Administration Skills**: Deep understanding of Unix/Linux environments
- **Attention to Detail**: Carefully optimized workflows show systematic thinking
- **Continuous Improvement**: Regular updates demonstrate commitment to learning
- **Professionalism**: Investment in productivity tools shows serious approach to development

### Quick Preview

This setup includes:
- **Neovim** configured as a powerful IDE for C/C++ development
- **Zsh** with Oh My Zsh for an enhanced shell experience
- **Tmux** for terminal multiplexing and session management
- **Git** with useful aliases and configurations
- **Development Tools** including clangd, norminette, and more

---

## 📦 What's Included

### Shell Configuration

#### Zsh Configuration (`zshrc`)
- **Framework**: Oh My Zsh with the `bira` theme
- **Plugins**: Git integration for repository status in prompt
- **Custom Aliases**:
  - `v` → Quick access to Neovim
  - `c` → Compile with strict 42 School flags (`-Wall -Wextra -Werror`)
  - `code` → VSCode integration
  - `restart` → Reload shell configuration
  - `config` → Edit Zsh configuration
  - `paco` → 42 School testing tool (Francinette)
  - `rg` → Ripgrep for fast code search
  
- **Path Management**: Organized PATH additions for:
  - Neovim
  - Clangd LSP server
  - Valgrind memory checker
  - Node Version Manager (NVM)
  - Homebrew package manager
  - Local binaries
  
- **Environment Variables**:
  - `EMAIL42`: 42 School email configuration
  - `PAGER`: Default pager set to less
  - `NVM_DIR`: Node Version Manager directory
  - `HOMEBREW_*`: Custom Homebrew installation paths

#### Bash Configuration (`bashrc`)
- Minimal Bash setup for compatibility
- PATH configuration for Neovim

### Text Editor Configuration

#### Neovim Setup (`nvim/`)
A comprehensive Neovim configuration optimized for C development at 42 School.

**Plugin Manager**: Lazy.nvim for efficient plugin management

**Core Plugins**:
- **nvim-cmp**: Intelligent code completion with LSP integration
- **nvim-lspconfig + Mason**: Language Server Protocol for C/C++
- **Telescope**: Fuzzy finder for files and live grep
- **nvim-tree**: File explorer with tree view
- **nvim-treesitter**: Advanced syntax highlighting and code understanding
- **ALE**: Asynchronous Lint Engine for real-time error checking
- **Copilot**: GitHub Copilot integration for AI-assisted coding

**42 School Specific**:
- **42-header.nvim**: Automatic 42 School header insertion (F1 key)
- **42-NorminetteNvim**: Norminette integration for code standard checking
- **DoxygenToolkit.vim**: Documentation generation

**Key Mappings**:
- `<Space>` → Leader key
- `<C-e>` → Telescope file finder
- `<C-n>` → Toggle file tree
- `<F1>` → Insert 42 header
- `<leader>d` → Show diagnostic float
- `<leader>ta` → Toggle autocomplete
- `<leader>n` → Check norminette
- `<leader>fg` → Live grep
- `<leader>fb` → Buffer list

**Features**:
- Transparent background for better terminal integration
- Tab width of 4 with real tabs (42 School standard)
- LSP-powered autocompletion (manual trigger with Ctrl+Space)
- Sign column for diagnostics
- File ignore patterns for compiled artifacts

### Git Configuration (`gitconfig`)
- **User Information**: Name and email setup
- Clean configuration ready for personalization

### Tmux Configuration (`tmux.conf`)
A powerful terminal multiplexer configuration for managing multiple sessions.

**Key Features**:
- **Mouse Support**: Clickable windows, panes, and resizable panes
- **Vi Mode**: Vim-like keybindings for copy mode
- **History**: Extended scrollback (100,000 lines)
- **Clipboard Integration**: System clipboard support via xclip
- **Pane Synchronization**: Broadcast commands to all panes
  - `<prefix>y` → Enable synchronization
  - `<prefix>Y` → Disable synchronization
- **Persistent Panes**: Keep panes open after command completion

**Custom Keybindings**:
- Copy to clipboard: `y` in copy mode
- Save buffer: `<C-c>`

---

## 🚀 Installation & Setup

### Prerequisites

#### Required Software
- **Git**: Version control system
- **Neovim**: 0.8+ (latest stable recommended)
- **Zsh**: For enhanced shell experience
- **Tmux**: Terminal multiplexer
- **Node.js**: Required for some Neovim plugins (via NVM)

#### Optional Dependencies
- **Oh My Zsh**: Zsh framework (will be configured manually if not present)
- **xclip**: For clipboard integration in Tmux
- **ripgrep**: Fast search tool
- **clangd**: C/C++ language server
- **norminette**: 42 School code checker
- **valgrind**: Memory debugging tool

#### OS Compatibility
- **Primary**: Ubuntu/Debian Linux
- **Tested**: 42 School systems
- **Compatible**: Most Unix-like systems (macOS, other Linux distributions)

### Quick Start

#### 1. Clone the Repository
```bash
git clone https://github.com/fsugii/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

#### 2. Backup Existing Configurations (Recommended)
```bash
# Manual backup
mkdir -p ~/dotfiles-backup
cp ~/.zshrc ~/dotfiles-backup/ 2>/dev/null || true
cp ~/.bashrc ~/dotfiles-backup/ 2>/dev/null || true
cp ~/.gitconfig ~/dotfiles-backup/ 2>/dev/null || true
cp ~/.tmux.conf ~/dotfiles-backup/ 2>/dev/null || true
cp -r ~/.config/nvim ~/dotfiles-backup/ 2>/dev/null || true
```

#### 3. Run Installation Script
```bash
chmod +x install.sh
./install.sh
```

The script will:
- Create automatic backups (`.backup` extension) if configurations exist
- Create symbolic links to the dotfiles
- Install Lazy.nvim plugin manager
- Set up Neovim configuration

#### 4. Post-Installation
```bash
# Open Neovim to install plugins
nvim
# Lazy.nvim will automatically install all plugins on first run

# Install Oh My Zsh (if not already installed)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Reload shell configuration
source ~/.zshrc
```

### Manual Installation Steps

If you prefer manual installation or need to troubleshoot:

```bash
# Neovim
mkdir -p ~/.config
ln -sf ~/dotfiles/nvim ~/.config/nvim

# Git
ln -sf ~/dotfiles/gitconfig ~/.gitconfig

# Shell
ln -sf ~/dotfiles/zshrc ~/.zshrc
ln -sf ~/dotfiles/bashrc ~/.bashrc

# Tmux
ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf

# Install Lazy.nvim
git clone --filter=blob:none \
  https://github.com/folke/lazy.nvim.git \
  --branch=stable \
  ~/.local/share/nvim/lazy/lazy.nvim
```

### Setup Script Details

The `install.sh` script is designed to be safe and non-destructive:

1. **Backup Strategy**: Moves existing files to `.backup` before creating symlinks
2. **Symlink Creation**: Uses `ln -sf` to create symbolic links
3. **Directory Structure**: Creates necessary directories (e.g., `~/.config`)
4. **Plugin Installation**: Automatically clones Lazy.nvim if not present
5. **Idempotent**: Can be run multiple times safely

---

## 🔧 Configuration Highlights

### Neovim: A Modern Development Environment

**Purpose**: Transform Neovim into a full-featured IDE specifically optimized for C development at 42 School.

**Benefits**:
- LSP-powered intelligent code completion
- Real-time syntax checking and linting
- Integrated 42 School tools (norminette, header)
- Fuzzy file finding with Telescope
- Tree-sitter for advanced syntax highlighting
- Seamless Git integration

**Productivity Enhancements**:
- Manual autocomplete trigger prevents distraction
- Quick access to file tree and fuzzy finder
- Automatic 42 header insertion
- Real-time norminette checking
- Transparent background for terminal aesthetics

### Zsh: Enhanced Shell Experience

**Purpose**: Provide a powerful, user-friendly command-line interface with smart completions and Git integration.

**Benefits**:
- Oh My Zsh framework for extensibility
- Beautiful `bira` theme with Git status display
- Custom aliases reduce typing and improve workflow
- Integrated development tool paths

**Productivity Enhancements**:
- One-letter aliases for common commands (`v`, `c`)
- Quick configuration editing and reloading
- Organized PATH management for all tools
- Node Version Manager integration

### Tmux: Terminal Session Management

**Purpose**: Enable efficient terminal workspace organization with multiple panes and sessions.

**Benefits**:
- Mouse support for intuitive interaction
- Extensive scrollback history
- System clipboard integration
- Pane synchronization for parallel operations
- Session persistence

**Productivity Enhancements**:
- Manage multiple projects simultaneously
- Copy/paste between terminal and system
- Broadcast commands to multiple panes
- Vi-mode navigation in copy mode

### Git: Version Control Optimization

**Purpose**: Streamline version control operations with sensible defaults.

**Benefits**:
- User configuration ready for 42 School projects
- Clean base for adding custom aliases
- Standardized commit information

---

## ⚡ Key Features & Customizations

### Shell Enhancements

#### Custom Aliases
```bash
# Quick editor access
v → nvim

# Compilation with 42 standards
c → cc -Wall -Wextra -Werror

# Configuration management
config → nvim ~/.zshrc
restart → source ~/.zshrc

# Development tools
paco → Francinette tester
rg → Ripgrep search
```

#### Custom Functions
- **Toggle autocomplete**: Dynamic control over code completion behavior
- **Diagnostic float**: Quick access to LSP diagnostics

#### Prompt Features
- Git branch display
- Repository status indicators
- Clean, informative layout with `bira` theme

#### Path Management
Organized addition of tool paths:
1. Neovim binary
2. Local binaries
3. Clangd LSP server
4. Valgrind
5. Node Version Manager
6. Homebrew packages

### Editor Workflow

#### Plugin Ecosystem
- **Completion**: nvim-cmp with LSP integration
- **Navigation**: Telescope fuzzy finder, nvim-tree file explorer
- **Development**: Mason for LSP management, ALE for linting
- **42 Specific**: norminette checker, 42 header generator, Doxygen
- **AI Assistance**: GitHub Copilot integration

#### Language Support
- C/C++ via clangd LSP
- Syntax highlighting for multiple languages via Treesitter
- Linting with GCC via ALE

#### Productivity Shortcuts
| Key | Action |
|-----|--------|
| `<Space>` | Leader key |
| `<C-e>` | Find files |
| `<C-n>` | Toggle file tree |
| `<F1>` | Insert 42 header |
| `<leader>d` | Show diagnostics |
| `<leader>ta` | Toggle autocomplete |
| `<leader>n` | Check norminette |
| `<Tab>` | Next completion item |
| `<C-Space>` | Trigger completion |

#### Code Quality Tools
- **Linting**: ALE with GCC
- **Formatting**: clang-format integration
- **Standards**: Norminette for 42 School compliance
- **Documentation**: Doxygen toolkit

### Developer Tools

#### Git Workflow
- Clean configuration base
- Ready for custom aliases
- Standardized user information

#### Build Tool Configurations
- Custom compiler flags for 42 School
- Include path management in ALE
- Support for libft library

#### Language Version Managers
- Node Version Manager (NVM) fully integrated
- Automatic loading of NVM on shell startup

#### Package Manager Setups
- Custom Homebrew installation path
- Local binary directories in PATH
- Organized tool installation

---

## 🎨 Productivity Optimizations

### Keyboard Shortcuts Philosophy

The configuration follows these principles:
- **Mnemonic**: Shortcuts are easy to remember (`n` for norminette, `d` for diagnostic)
- **Consistent**: Similar operations use similar keys
- **Non-conflicting**: Avoid overriding essential defaults
- **Ergonomic**: Frequently used commands have shorter shortcuts

### Workflow Automation

1. **Automatic Plugin Management**: Lazy.nvim auto-installs and updates plugins
2. **Path Auto-configuration**: Environment variables set automatically on shell start
3. **Header Insertion**: One keypress (`F1`) adds complete 42 header
4. **Norminette Integration**: Instant code standard checking
5. **LSP Auto-completion**: Intelligent suggestions based on project context

### Time-Saving Aliases

| Alias | Full Command | Time Saved |
|-------|--------------|------------|
| `v` | `nvim` | 3 characters |
| `c` | `cc -Wall -Wextra -Werror` | 23 characters |
| `config` | `nvim ~/.zshrc` | Variable |
| `restart` | `source ~/.zshrc` | Variable |

### Integration Between Tools

- **Telescope + Treesitter**: Enhanced file searching with syntax awareness
- **nvim-cmp + LSP**: Intelligent code completion
- **ALE + clangd**: Dual linting and LSP diagnostics
- **Tmux + xclip**: Seamless clipboard integration
- **Oh My Zsh + Git**: Repository status in prompt

---

## 🔨 Customization Guide

### How to Adapt These Dotfiles

#### 1. Personal Information
Edit `gitconfig`:
```bash
[user]
    name = Your Name
    email = your.email@domain.com
```

Edit `nvim/lua/config/options.lua`:
```lua
vim.g.user = "your_username"
vim.g.mail = "your.email@domain.com"
```

#### 2. Add Your Own Aliases
Edit `zshrc` and add to the custom aliases section:
```bash
# Your custom aliases
alias myalias="command"
```

#### 3. Customize Neovim Plugins
Add new plugins in `nvim/lua/plugins/` directory:
```lua
-- nvim/lua/plugins/your-plugin.lua
return {
  "author/plugin-name",
  config = function()
    -- your configuration
  end,
}
```

#### 4. Modify Key Bindings
Edit `nvim/lua/config/keymaps.lua`:
```lua
keymap('n', '<your-key>', '<your-command>', { desc = "Description" })
```

### Configuration Structure Explanation

```
dotfiles/
├── nvim/
│   ├── init.lua              # Main entry point
│   ├── lua/
│   │   ├── config/
│   │   │   ├── options.lua   # Editor options
│   │   │   ├── keymaps.lua   # Key mappings
│   │   │   ├── functions.lua # Custom functions
│   │   │   └── autocmds.lua  # Auto-commands
│   │   └── plugins/          # Plugin configurations
│   └── lazy-lock.json        # Plugin version lock
├── zshrc                     # Zsh configuration
├── bashrc                    # Bash configuration
├── gitconfig                 # Git configuration
├── tmux.conf                 # Tmux configuration
└── install.sh                # Installation script
```

### Adding New Tools

1. **Install the tool** (via package manager or manual installation)
2. **Add to PATH** in `zshrc`:
   ```bash
   export PATH="$HOME/path/to/tool:$PATH"
   ```
3. **Create aliases** if needed:
   ```bash
   alias tool="command"
   ```
4. **Document** your addition in README

### Personal Customization Tips

- Keep personal/sensitive information in separate files (use `*_local` or `*.secret` patterns - already in `.gitignore`)
- Test configuration changes in a separate branch
- Document your customizations for future reference
- Consider OS-specific configurations in separate files

---

## 🎓 Technical Skills Demonstrated

This dotfiles repository showcases:

### Shell Scripting Proficiency
- Bash script for automated installation
- Error handling and safe backup mechanisms
- Path management and environment variable configuration
- Conditional logic for checking prerequisites

### Unix/Linux System Administration
- Understanding of dotfiles and their locations
- Symbolic link management
- File system organization
- Process management (PATH, environment variables)

### Configuration Management
- Version control for configuration files
- Modular configuration structure
- Plugin management systems
- Dependency tracking (lazy-lock.json)

### Development Environment Optimization
- LSP integration for intelligent code assistance
- Linter and formatter configuration
- Custom workflow automation
- Tool chain integration

### Tool Chain Integration
- Multiple tool coordination (editor, shell, terminal multiplexer)
- Language server protocol setup
- Build system configuration
- Version manager integration (NVM)

### Version Control Best Practices
- Clean commit history
- Organized file structure
- Appropriate `.gitignore` patterns
- Documentation in version control

### Automation Mindset
- Automated installation script
- Plugin auto-installation
- Path auto-configuration
- Workflow shortcuts

### Documentation Skills
- Comprehensive README
- Inline code comments
- Clear installation instructions
- Troubleshooting guides

### Portability Considerations
- Relative path usage in configurations
- Backup before modification
- OS-agnostic design where possible
- Minimal dependencies

---

## 💻 System Compatibility

### Tested Operating Systems
- **Ubuntu 20.04+**: Fully tested and supported
- **Debian 10+**: Compatible with minor adjustments
- **42 School Systems**: Primary development environment

### OS-Specific Configurations

#### Linux
- Clipboard integration via `xclip`
- Standard path locations

#### macOS (Potential)
- Replace `xclip` with `pbcopy`/`pbpaste`
- Adjust Homebrew paths if needed
- GNU tools may require prefixing with 'g'

### Portable vs System-Specific Settings

**Portable**:
- Neovim configuration
- Tmux key bindings
- Git configuration
- Shell aliases

**System-Specific**:
- Homebrew installation paths
- User-specific paths (`/home/fshiniti/`)
- Tool installation locations

### Cross-Platform Considerations

For maximum portability:
1. Use environment variables for user-specific paths
2. Detect OS and adjust configurations accordingly
3. Provide alternative tools for different platforms
4. Document platform-specific requirements

---

## 🔄 Maintenance & Updates

### How Configurations Are Kept Up to Date

#### Regular Reviews
- Weekly review of plugin updates via Lazy.nvim
- Monthly review of shell configuration efficiency
- Continuous refinement based on workflow needs

#### Update Process
```bash
# Update plugins in Neovim
nvim
:Lazy update

# Pull latest dotfiles changes
cd ~/dotfiles
git pull

# Rerun installation if needed
./install.sh
```

### Testing New Configurations

1. **Create a test branch**:
   ```bash
   cd ~/dotfiles
   git checkout -b test-new-config
   ```

2. **Make changes** and test thoroughly

3. **Merge if successful**:
   ```bash
   git checkout main
   git merge test-new-config
   ```

### Version Control Strategy

- **Main branch**: Stable, tested configurations
- **Feature branches**: For testing new additions
- **Commits**: Descriptive messages explaining changes
- **Tags**: Mark significant configuration milestones

### Changelog

Version tracking through Git commits provides:
- History of all configuration changes
- Ability to rollback problematic changes
- Documentation of evolution over time

---

## 📋 Dependencies & Requirements

### Core Requirements

| Tool | Minimum Version | Purpose |
|------|----------------|---------|
| Neovim | 0.8.0+ | Text editor |
| Git | 2.0+ | Version control |
| Zsh | 5.0+ | Shell |
| Tmux | 2.0+ | Terminal multiplexer |

### Optional Dependencies

| Tool | Purpose | Installation |
|------|---------|--------------|
| Oh My Zsh | Zsh framework | `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"` |
| Node.js | Neovim plugins | Via NVM: `nvm install node` |
| xclip | Clipboard support | `apt-get install xclip` |
| ripgrep | Fast search | `apt-get install ripgrep` |
| clangd | C/C++ LSP | Download from [GitHub](https://github.com/clangd/clangd/releases) |
| norminette | 42 code checker | `pip install norminette` |
| valgrind | Memory checker | `apt-get install valgrind` |

### Installation of Prerequisites

#### Ubuntu/Debian
```bash
# Update package list
sudo apt-get update

# Install core tools
sudo apt-get install -y neovim git zsh tmux

# Install optional tools
sudo apt-get install -y xclip ripgrep valgrind curl

# Install Python for norminette
sudo apt-get install -y python3 python3-pip
pip3 install norminette

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Install Node.js via NVM
nvm install node
```

#### macOS
```bash
# Using Homebrew
brew install neovim git zsh tmux ripgrep

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
```

---

## 🔧 Troubleshooting

### Common Issues and Solutions

#### Issue: Plugins Don't Load in Neovim
**Solution**:
```bash
# Remove plugin cache
rm -rf ~/.local/share/nvim

# Reopen Neovim
nvim
# Lazy.nvim will reinstall everything
```

#### Issue: Tmux Clipboard Integration Not Working
**Solution**:
```bash
# Install xclip (Linux)
sudo apt-get install xclip

# Or install pbcopy/pbpaste (macOS - usually pre-installed)
# Modify tmux.conf to use pbcopy instead of xclip
```

#### Issue: Zsh Theme Doesn't Display Correctly
**Solution**:
```bash
# Install Oh My Zsh if not present
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Reload configuration
source ~/.zshrc
```

#### Issue: 42 Header Plugin Not Working
**Solution**:
Check user configuration in `nvim/lua/config/options.lua`:
```lua
vim.g.user = "your_42_username"
vim.g.mail = "your_42_email@student.42.fr"
```

#### Issue: LSP Not Working for C Files
**Solution**:
```bash
# Open Neovim and install LSP servers
nvim
:Mason
# Select clangd and press 'i' to install
```

### Compatibility Problems

#### Different Tmux Version
If using tmux < 2.1, some mouse options may need adjustment:
```bash
# In tmux.conf, replace:
set -g mouse on
# With:
set -g mode-mouse on
set -g mouse-select-pane on
set -g mouse-resize-pane on
```

#### Old Neovim Version
If using Neovim < 0.8:
- Some plugins may not work
- Consider upgrading to latest stable version
- Check plugin compatibility in their documentation

### Rollback Procedures

#### Restore from Backup
```bash
# If install.sh created backups
mv ~/.zshrc.backup ~/.zshrc
mv ~/.config/nvim.backup ~/.config/nvim
# Repeat for other config files
```

#### Git Rollback
```bash
cd ~/dotfiles
git log  # Find the commit to rollback to
git checkout <commit-hash>
./install.sh  # Reinstall from that version
```

#### Complete Removal
```bash
# Remove symlinks
rm ~/.zshrc ~/.bashrc ~/.gitconfig ~/.tmux.conf
rm -rf ~/.config/nvim

# Restore backups if available
mv ~/dotfiles-backup/* ~/  # If you created manual backup
```

---

## 🌟 Inspiration & Credits

### Dotfiles That Inspired This Setup

- [Mathias Bynens' dotfiles](https://github.com/mathiasbynens/dotfiles) - macOS sensible defaults
- [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles) - Professional development approach
- [holman/dotfiles](https://github.com/holman/dotfiles) - Topical organization

### Tools and Plugins Used

#### Neovim Plugins
- [lazy.nvim](https://github.com/folke/lazy.nvim) by folke - Modern plugin manager
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Completion framework
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) - File explorer
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Syntax highlighting
- [ALE](https://github.com/dense-analysis/ale) - Asynchronous linting
- [42-header.nvim](https://github.com/Diogo-ss/42-header.nvim) - 42 School header
- [42-NorminetteNvim](https://github.com/MrSloth-dev/42-NorminetteNvim) - Norminette integration

#### Shell Tools
- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) - Zsh framework
- [ripgrep](https://github.com/BurntSushi/ripgrep) - Fast search
- [NVM](https://github.com/nvm-sh/nvm) - Node version manager

#### Other Tools
- [Tmux](https://github.com/tmux/tmux) - Terminal multiplexer
- [Homebrew](https://brew.sh) - Package manager

### Community Resources

- [Awesome Dotfiles](https://github.com/webpro/awesome-dotfiles) - Curated list of dotfiles resources
- [GitHub Dotfiles](https://dotfiles.github.io/) - Guide to dotfiles on GitHub
- [Neovim Documentation](https://neovim.io/doc/) - Official Neovim docs
- [42 School](https://www.42.fr/) - Coding school inspiring this configuration

### Special Thanks

- **42 School Community** - For the learning environment that inspired this setup
- **Open Source Contributors** - All the plugin and tool maintainers
- **dotfiles Community** - For sharing knowledge and best practices

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

Feel free to fork, modify, and use these configurations for your own development environment!

---

## 🤝 Contributing

While this is a personal dotfiles repository, suggestions and improvements are welcome!

If you have ideas for optimization or find issues:
1. Open an issue describing the suggestion/problem
2. Fork the repository and create a feature branch
3. Submit a pull request with your improvements

---

## 📬 Contact

**Flavio Sugii**
- GitHub: [@fsugii](https://github.com/fsugii)
- Email: fsugii@gmail.com

---

<div align="center">

**[⬆ Back to Top](#-dotfiles---professional-development-environment)**

*Built with ❤️ for productivity and efficiency*

</div>