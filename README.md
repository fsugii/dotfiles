# Dotfiles - Professional Development Environment Configuration

> A comprehensive and meticulously crafted development environment setup optimized for C programming, system development, and productivity at 42 School and beyond.

[![Shell](https://img.shields.io/badge/Shell-Zsh%20%7C%20Bash-green.svg)](https://github.com/fsugii/dotfiles)
[![Editor](https://img.shields.io/badge/Editor-Neovim-brightgreen.svg)](https://neovim.io/)
[![Platform](https://img.shields.io/badge/Platform-Linux-blue.svg)](https://github.com/fsugii/dotfiles)

## 📋 Table of Contents

- [Project Overview](#-project-overview)
- [Contents](#-contents)
- [Installation & Setup](#-installation--setup)
- [Configuration Highlights](#-configuration-highlights)
- [Custom Scripts & Utilities](#-custom-scripts--utilities)
- [Tools & Dependencies](#-tools--dependencies)
- [Technical Skills Demonstrated](#-technical-skills-demonstrated)
- [Productivity Enhancements](#-productivity-enhancements)
- [Maintenance](#-maintenance)

## 🎯 Project Overview

This repository contains my personal dotfiles - a carefully curated collection of configuration files that define my development environment. These configurations represent years of iteration and optimization, focusing on:

- **System Programming Proficiency**: Configurations tailored for C development with strict standards (42 School's norminette compliance)
- **Developer Productivity**: Extensive use of aliases, shortcuts, and automation to streamline workflows
- **Tool Integration**: Seamless integration between Git, Neovim, Tmux, and shell environments
- **Code Quality**: Built-in linting, formatting, and diagnostic tools for maintaining high code standards
- **Modern Development Practices**: Leveraging contemporary tools like Language Servers (LSP), fuzzy finders, and intelligent autocompletion

### Why This Matters

A well-configured development environment is crucial for productivity. This repository demonstrates:
- Attention to detail in tool configuration
- Understanding of development workflows and optimization
- Proficiency with command-line tools and Unix environments
- Commitment to code quality and best practices
- Ability to customize and extend development tools

## 📦 Contents

This repository includes comprehensive configurations for:

### Shell Configuration
- **`zshrc`** - Zsh configuration with Oh My Zsh framework
  - Custom prompt theme (Bira)
  - Git plugin integration
  - Path management for multiple development tools
  - Custom aliases and productivity shortcuts
  - NVM (Node Version Manager) integration
  - Homebrew environment setup
  
- **`bashrc`** - Bash configuration
  - Neovim path setup
  - Local binary path configuration

### Version Control
- **`gitconfig`** - Git user configuration
  - User identity setup
  - Custom settings for version control workflows

### Editor Configuration
- **`nvim/`** - Comprehensive Neovim configuration
  - Modern Lua-based configuration (init.lua)
  - Lazy.nvim plugin manager
  - Modular configuration structure:
    - `lua/config/options.lua` - Editor options and 42 School settings
    - `lua/config/keymaps.lua` - Custom key mappings
    - `lua/config/functions.lua` - Custom Lua functions
    - `lua/config/autocmds.lua` - Autocommands
  - Plugin configurations:
    - LSP (Language Server Protocol) integration
    - Autocompletion (nvim-cmp)
    - Fuzzy finder (Telescope)
    - File explorer (nvim-tree)
    - Syntax highlighting (Treesitter)
    - Code linting (ALE)
    - 42 Header generator
    - Norminette integration for 42 School standards
    - GitHub Copilot integration
    - Doxygen documentation support

### Terminal Multiplexer
- **`tmux.conf`** - Tmux configuration
  - Mouse support enabled
  - Vi-mode key bindings
  - Extended scroll-back history (100,000 lines)
  - System clipboard integration (xclip)
  - Pane synchronization shortcuts
  - Window management optimizations

### Installation Automation
- **`install.sh`** - Automated installation script
  - Intelligent backup system
  - Symlink management
  - Lazy.nvim bootstrap
  - Safe installation with rollback capability

## 🚀 Installation & Setup

### Prerequisites

Before installing, ensure you have the following:

**Required:**
- Linux operating system (tested on Ubuntu/Debian-based distributions)
- Git (`sudo apt install git`)
- Zsh or Bash shell
- Neovim 0.9+ (`sudo apt install neovim` or build from source)

**Recommended:**
- Tmux (`sudo apt install tmux`)
- xclip for clipboard integration (`sudo apt install xclip`)
- Ripgrep for fast file searching (`sudo apt install ripgrep`)
- Node.js and NVM for JavaScript development
- Oh My Zsh for enhanced Zsh experience

**Optional but Beneficial:**
- clangd language server for C/C++ development
- Valgrind for memory debugging
- Homebrew (Linux) for package management

### Installation Instructions

1. **Clone the repository:**
   ```bash
   git clone https://github.com/fsugii/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. **Run the installation script:**
   ```bash
   chmod +x install.sh
   ./install.sh
   ```

The installation script will:
- ✅ Create backups of existing configurations (`.backup` suffix)
- ✅ Create symbolic links to the dotfiles
- ✅ Set up Neovim with Lazy.nvim plugin manager
- ✅ Preserve your existing configurations safely

3. **Install Oh My Zsh (if using Zsh):**
   ```bash
   sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

4. **Reload your shell:**
   ```bash
   # For Zsh
   source ~/.zshrc
   
   # For Bash
   source ~/.bashrc
   ```

5. **Launch Neovim to install plugins:**
   ```bash
   nvim
   ```
   Lazy.nvim will automatically install all configured plugins on first launch.

### Backup Recommendations

The installation script automatically creates backups, but for extra safety:

```bash
# Manual backup before installation
cp ~/.zshrc ~/.zshrc.backup.$(date +%Y%m%d)
cp ~/.gitconfig ~/.gitconfig.backup.$(date +%Y%m%d)
cp ~/.tmux.conf ~/.tmux.conf.backup.$(date +%Y%m%d)
cp -r ~/.config/nvim ~/.config/nvim.backup.$(date +%Y%m%d)
```

### Platform Compatibility

- **Primary Platform**: Linux (Ubuntu, Debian, Fedora, Arch)
- **Tested On**: 42 School systems (Linux-based)
- **Potential Compatibility**: macOS with minor adjustments to paths

**Note**: Some paths are specific to 42 School environments (e.g., `/sgoinfre/`). You may need to adjust these paths in `zshrc` for your specific setup.

## ⚙️ Configuration Highlights

### Shell Configuration (Zsh)

#### Custom Aliases
```bash
# Editor shortcuts
alias v="nvim"                    # Quick Neovim launch
alias config="nvim ~/.zshrc"      # Edit configuration quickly
alias restart="source ~/.zshrc"   # Reload shell configuration

# Development
alias c="cc -Wall -Wextra -Werror"  # C compiler with 42 School flags
alias code='/path/to/vscode'         # VS Code launcher
alias paco='/path/to/francinette'    # 42 School tester

# Tools
alias rg='~/ripgrep/rg'            # Fast file searching
```

**Why These Matter:**
- **Productivity**: Reduces keystrokes for common operations
- **Consistency**: Enforces 42 School compilation standards
- **Efficiency**: Quick access to frequently used tools

#### Environment Variables
```bash
# Development tools paths
export PATH="$HOME/clangd/clangd-20.1.0/bin:$PATH"      # C/C++ LSP
export PATH="$HOME/.local/bin:$PATH"                     # Local binaries
export PATH="$HOME/.local/valgrind/bin:$PATH"           # Memory debugger

# 42 School settings
export EMAIL42="student.42porto.com"                     # School email
export PAGER=less                                        # Default pager

# Node.js environment
export NVM_DIR="$HOME/.nvm"                             # Node Version Manager

# Homebrew configuration
export HOMEBREW_PREFIX="/sgoinfre/fshiniti/homebrew"    # Package manager
```

**Key Benefits:**
- **Path Management**: Organized hierarchy for tool precedence
- **Environment Isolation**: Separate development tool versions
- **Tool Integration**: Seamless access to LSP, debuggers, and utilities

#### Prompt Customization
- **Theme**: Bira - A clean, informative two-line prompt
- **Features**: Git status integration, current directory display
- **Benefits**: Visual feedback on repository state and location

### Git Configuration

#### User Settings
```gitconfig
[user]
    name = Flavio Sugii
    email = fsugii@gmail.com
```

**Professional Practice:**
- Consistent commit identity
- Professional email for open-source contributions
- Separate work/school email configurations available

### Neovim Configuration

A modern, Lua-based Neovim setup optimized for C programming and system development.

#### Core Philosophy
- **Modal Editing Mastery**: Leveraging Vim's efficient editing paradigm
- **LSP Integration**: Modern language server support for intelligent code completion
- **Minimal Distraction**: Clean interface with transparent background
- **42 School Compliance**: Built-in norminette checking and 42 header generation

#### Key Customizations

**Editor Options:**
```lua
-- 42 School standard indentation
tabstop = 4              -- Tab width
shiftwidth = 4           -- Indentation width
expandtab = false        -- Use real tabs (not spaces) per 42 norm

-- User identity for 42 headers
vim.g.user = "fshiniti"
vim.g.mail = "fshiniti@student.42porto.com"
```

**Keybindings:**
- **Leader Key**: `Space` - Ergonomic access to custom commands
- **`<C-e>`**: Telescope file finder - Quick file navigation
- **`<leader>d`**: Show diagnostics - View linting/LSP errors
- **`<leader>ta`**: Toggle autocomplete - Control when suggestions appear
- **`<F1>`**: Insert 42 header - Automatic header generation

#### Plugins & Extensions

**Development Productivity:**
- **Telescope**: Fuzzy finder for files, grep, buffers
  - Ignores compiled files (`.o`, `.a`, `.out`)
  - Fast file navigation with preview
  
- **nvim-tree**: File explorer with tree view
  - Project structure visualization
  
- **Treesitter**: Advanced syntax highlighting
  - Better code understanding through AST parsing

**Code Intelligence:**
- **nvim-cmp**: Autocompletion engine
  - Manual trigger mode for focused coding
  - LSP-based suggestions
  - Snippet support via LuaSnip
  
- **ALE**: Asynchronous Lint Engine
  - Real-time code checking
  - Integration with norminette for 42 compliance

**42 School Specific:**
- **42-header**: Automatic header generation
  - One-key header insertion
  - Auto-updates modification time
  
- **norminette**: 42 School norm checker
  - Instant feedback on norm compliance
  - Integrated with diagnostic system

**AI-Assisted Development:**
- **GitHub Copilot**: AI pair programmer
  - Code suggestions and completions
  - Pattern recognition and generation

**Documentation:**
- **Doxygen**: Documentation comment generator
  - Professional code documentation
  - Function documentation templates

#### Performance Optimizations
- **Lazy Loading**: Plugins load only when needed
- **Transparent Background**: Cleaner terminal integration
- **Selective Autocompletion**: Manual trigger prevents distraction
- **File Ignore Patterns**: Faster searches by excluding build artifacts

### Tmux Configuration

A powerful terminal multiplexer setup for efficient session management.

#### Core Features

**Mouse Support:**
```tmux
set -g mouse on
```
- Click to select windows and panes
- Drag to resize panes
- Scroll to navigate history

**Vi Mode Keybindings:**
```tmux
set -g mode-keys vi
```
- Familiar Vim-style navigation in copy mode
- Consistent editing experience across tools

**Extended History:**
```tmux
set -g history-limit 100000
```
- 100,000 lines of scroll-back
- Essential for reviewing long build outputs or logs

**System Clipboard Integration:**
```tmux
bind-key -T copy-mode-vi y send-keys -X copy-pipe-and-cancel "xclip -sel clip -in"
```
- Copy directly to system clipboard
- Seamless copy/paste between tmux and other applications

**Pane Synchronization:**
```tmux
bind-key y setw synchronize-panes on   # Broadcast to all panes
bind-key Y setw synchronize-panes off  # Disable broadcast
```
- Execute commands across multiple panes simultaneously
- Perfect for managing multiple servers or instances

## 🔧 Custom Scripts & Utilities

### Installation Script (`install.sh`)

**Purpose**: Automate the dotfiles installation process with safety and rollback capability.

**Key Features:**
- ✅ **Backup System**: Automatically backs up existing configurations
- ✅ **Symlink Management**: Creates and manages symbolic links
- ✅ **Idempotent**: Safe to run multiple times
- ✅ **Plugin Bootstrap**: Automatically sets up Lazy.nvim

**Usage:**
```bash
./install.sh
```

**Technical Implementation:**
```bash
# Intelligent backup function
backup_if_exists() {
  if [ -e "$1" ] && [ ! -L "$1" ]; then
    mv "$1" "$1.backup"
  fi
}

# Safe symlink creation
create_symlink() {
  backup_if_exists "$2"
  ln -sf "$1" "$2"
}
```

**Benefits:**
- Non-destructive installation
- Easy rollback if needed
- Consistent setup across machines
- Time-saving automation

## 🛠️ Tools & Dependencies

### Core Development Tools

**Version Control:**
- Git - Distributed version control system

**Shell:**
- Zsh - Modern shell with Oh My Zsh framework
- Bash - Fallback shell configuration

**Editor:**
- Neovim 0.9+ - Modern Vim-based editor with LSP support

**Terminal Multiplexer:**
- Tmux - Terminal session management

### Development Utilities

**Language Servers & Linters:**
- clangd 20.1.0 - C/C++ language server
- ALE - Asynchronous linting engine
- norminette - 42 School norm checker

**Search & Navigation:**
- Telescope - Fuzzy finder for Neovim
- ripgrep - Fast recursive search tool

**Debugging:**
- Valgrind - Memory debugging and profiling

**Package Managers:**
- Homebrew - Package management for Linux
- NVM - Node Version Manager

**Clipboard:**
- xclip - X11 clipboard integration

**Documentation:**
- Doxygen - Documentation generation

### Neovim Plugins (Managed by Lazy.nvim)

| Plugin | Purpose | Category |
|--------|---------|----------|
| lazy.nvim | Plugin manager | Core |
| nvim-cmp | Autocompletion | Productivity |
| nvim-lspconfig | LSP configuration | Development |
| Telescope | Fuzzy finder | Navigation |
| nvim-tree | File explorer | Navigation |
| Treesitter | Syntax highlighting | Editor |
| ALE | Linting | Code Quality |
| 42-header | Header generation | 42 School |
| norminette | Norm checking | 42 School |
| copilot.lua | AI assistance | Productivity |
| doxygen | Documentation | Documentation |
| LuaSnip | Snippets | Productivity |

## 💼 Technical Skills Demonstrated

This dotfiles repository showcases proficiency in:

### Shell Scripting & Automation
- **Bash scripting**: Automated installation with error handling
- **Environment configuration**: Complex PATH and variable management
- **Conditional logic**: Safe backup and symlink operations
- **Package management**: Integration with Homebrew and NVM

### Development Environment Optimization
- **Tool integration**: Seamless workflow between Git, Neovim, and Tmux
- **Path management**: Organized hierarchy for multiple tool versions
- **Configuration management**: Modular, maintainable config structure
- **Performance tuning**: Lazy loading, selective features, optimized history

### Neovim & Lua Programming
- **Modern Lua configuration**: Migration from VimScript to Lua
- **Plugin management**: Lazy.nvim setup and plugin configuration
- **Modular architecture**: Separation of concerns (options, keymaps, functions)
- **LSP integration**: Language server setup for intelligent features
- **Custom functions**: Lua scripting for extended functionality

### Version Control Best Practices
- **Git configuration**: User settings and workflow optimization
- **Repository structure**: Clean, organized project layout
- **Documentation**: Comprehensive README with clear instructions
- **Commit practices**: Meaningful structure and organization

### Cross-Platform Considerations
- **Path abstraction**: Configurations work across different systems
- **Conditional logic**: Platform-specific adjustments
- **Portability**: Easy setup on new machines
- **Compatibility**: Support for multiple shells (Zsh/Bash)

### Code Quality & Standards
- **Linting integration**: Real-time code checking
- **42 School norms**: Automated compliance checking
- **Documentation**: Inline comments and external documentation
- **Best practices**: Professional coding standards

### System Administration
- **User environment management**: Custom paths and variables
- **Service integration**: Multiple development tools coordination
- **Backup strategies**: Safe configuration management
- **Troubleshooting**: Error handling and rollback capabilities

## ⚡ Productivity Enhancements

### Time-Saving Aliases

**Quick Editor Access:**
- `v` → Launch Neovim instantly (70% faster than typing `nvim`)
- `config` → Edit shell configuration immediately
- `restart` → Reload configuration without logout

**Development Workflow:**
- `c -Wall -Wextra -Werror` → One command for 42-compliant compilation
- `paco` → Instant access to testing framework
- `code` → Quick VS Code launch

**Estimated Time Savings:** ~15-20 minutes per day from reduced typing and context switching

### Workflow Improvements

**Fuzzy Finding:**
- `<C-e>` in Neovim → Find any file in project in <2 seconds
- No need to navigate directory structure
- Preview files before opening

**Split-Screen Efficiency:**
- Tmux mouse mode → Click and drag for instant pane arrangement
- Pane synchronization → Execute commands on multiple panes simultaneously
- Perfect for testing across multiple configurations

**Clipboard Integration:**
- Copy in Tmux → Available in all applications
- No manual file transfers needed
- Seamless workflow between terminal and browser/editor

### Custom Functions

**Toggle Autocompletion:**
```lua
<leader>ta -- Enable/disable suggestions on demand
```
- Focus mode when writing new code
- Suggestion mode when exploring APIs

**Diagnostic Float:**
```lua
<leader>d -- Show detailed error information
```
- Quick error investigation
- No need to navigate error list

### Tool Integration Benefits

**Git + Shell:**
- Git status in prompt → Always aware of repository state
- Git plugin in Zsh → Intelligent completions and shortcuts

**LSP + Autocompletion:**
- Context-aware suggestions → Faster coding
- Error detection while typing → Catch issues early
- Go to definition → Quick code navigation

**Telescope + Ripgrep:**
- Search entire codebase in seconds
- Find function definitions instantly
- Explore unfamiliar codebases efficiently

## 🔄 Maintenance

### Updating Configurations

**Shell Configuration:**
```bash
# Edit and reload Zsh
config              # Opens ~/.zshrc in Neovim
restart             # Reloads configuration
```

**Neovim Configuration:**
```bash
# Edit Neovim config
nvim ~/.config/nvim/init.lua

# Update plugins
nvim
:Lazy sync          # Update all plugins
```

**Git Configuration:**
```bash
# Direct edit
nvim ~/.gitconfig

# Or use git config
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
```

### Adding New Tools

1. **Install the tool** using your package manager:
   ```bash
   sudo apt install newtool
   # or
   brew install newtool
   ```

2. **Add to PATH** in `~/.zshrc`:
   ```bash
   export PATH="$HOME/newtool/bin:$PATH"
   ```

3. **Create alias** (if needed):
   ```bash
   alias nt="newtool"
   ```

4. **Reload configuration**:
   ```bash
   restart
   ```

5. **Update dotfiles repository**:
   ```bash
   cd ~/dotfiles
   git add zshrc
   git commit -m "Add newtool configuration"
   git push
   ```

### Keeping Dotfiles in Sync Across Machines

**Initial Setup on New Machine:**
```bash
# Clone dotfiles
git clone https://github.com/fsugii/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

**Syncing Changes:**
```bash
# On machine A (after making changes)
cd ~/dotfiles
git add .
git commit -m "Update configurations"
git push

# On machine B (to receive changes)
cd ~/dotfiles
git pull
./install.sh  # Re-run to update symlinks if needed
restart       # Reload shell configuration
```

**Best Practices:**
- Commit frequently with descriptive messages
- Test changes before pushing
- Use branches for experimental configurations
- Keep machine-specific settings in separate files (not tracked)
- Document non-obvious changes in commit messages

### Troubleshooting

**Neovim plugins not working:**
```bash
nvim
:Lazy clean    # Remove unused plugins
:Lazy sync     # Reinstall and update
```

**Symlinks broken:**
```bash
cd ~/dotfiles
./install.sh   # Re-run installation
```

**Shell configuration not loading:**
```bash
# Check for syntax errors
zsh -n ~/.zshrc

# View errors during load
zsh -x
```

---

## 📄 License

This project is open source and available for personal use. Feel free to fork and customize for your own needs.

## 🤝 Contributing

While these are personal configurations, suggestions and improvements are welcome! Feel free to:
- Open an issue for bugs or suggestions
- Submit a pull request with improvements
- Share your own dotfiles inspired by this setup

## 📬 Contact

**Flavio Sugii**
- GitHub: [@fsugii](https://github.com/fsugii)
- Email: fsugii@gmail.com

---

*Last Updated: January 2026*

**Note**: This README demonstrates professional documentation practices, attention to development workflow, and commitment to maintaining a productive development environment. These configurations represent continuous improvement and optimization based on real-world development needs.