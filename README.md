# chatter.nvim

chatter.nvim is a Neovim plugin that provides a chat interface powered by AI models. It allows users to interact with AI models seamlessly within Neovim, featuring a sidebar for chat history, code block highlighting, and more.


![chatter_models](https://github.com/user-attachments/assets/d0623ba8-1e95-4881-9c34-48d491de3770)
![chatter_prompt](https://github.com/user-attachments/assets/e62525fe-c34f-4e87-87b5-7aca3479c524)
![chatter_loading](https://github.com/user-attachments/assets/7a77e8bb-9098-470d-bd26-cebfd2d668fd)
![chatter_response](https://github.com/user-attachments/assets/150ab654-6e48-4a3e-8c6e-91c413a3b302)

## Features

- **AI Chat Interface**: Start a chat with AI models directly in Neovim.
- **Sidebar Display**: View chat history in a dedicated sidebar.
- **Code Block Highlighting**: Automatically highlights code blocks using Treesitter.
- [WIP] **Clipboard Support**: Easily copy code blocks to the clipboard.
- **Customizable Keymaps**: Configure key mappings to suit your workflow.
- **Lazy Loading Support**: Integrates with `lazy.nvim` for efficient loading.

## Requirments

- `ollama` installed on your os.
- `fzf-lua` for selection of local LLMs.


## Installation

### Using Lazy.nvim

To install chatter.nvim with `lazy.nvim`, add the following to your Neovim configuration:

```lua
{
    "Dan7h3x/chatter.nvim",
    event = "VeryLazy",
    dependencies = {
      'nvim-lua/plenary.nvim',
      "ibhagwan/fzf-lua",
    },
    keys = { {
      "<leader>cc", "<Cmd>ChatterStart<CR>", desc = "Chatter Start"
    }, },
    config = function()
      require('chatter').setup({
        offline_api_url = os.getenv("OLLAMA_HOST") or "http://localhost:8888",
        sidebar_width = 60,
        sidebar_height = vim.o.lines - 12,
        models = {},
        highlight = {
          title = "Title",
          user = "Comment",
          assistant = "String",
          system = "Type",
          error = "ErrorMsg",
          loading = "WarningMsg",

        }
      })
    end,
  }
```

### Manual Installation

If you prefer to install manually, clone the repository into your Neovim plugins directory:

```bash
git clone https://github.com/Dan7h3x/chatter.nvim.git ~/.config/nvim/lua/chatter
```

Then, add the following to your `init.lua` or `init.vim`:

```lua
require("chatter").setup()
```

## Usage

1. **Open the Chat Interface**: Use the command `:ChatterToggle` to open or close the chat sidebar.
2. **Start a Chat**: Use the command `:ChatterStart` to initiate a chat session.
3. **Send Messages**: Press `i` to enter your message and hit Enter to send.
4. [WIP] **Copy Code Blocks**: Navigate to a code block and press `yc` to copy it to the clipboard.
5. **Clear Chat**: Use the command `:ChatterClear` to clear the chat history.


## Key Mappings

The following key mappings are available by default:

- `i`: Enter message input
- [WIP] `yc`: Copy the current code block to clipboard
- `q`: Close the chat sidebar automatically
- `<C-c>`: Clear the chat.
- `<C-r>`: Reload the `chatter.nvim` for selecting another model.

Available commands are `ChatterStart`,`ChatterToggle`,`ChatterClear`,`ChatterRestart`,`ChatterSend`.
## Contributing

Contributions are welcome! Please feel free to submit issues or pull requests. Make sure to follow the [contribution guidelines](CONTRIBUTING.md).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [Neovim](https://neovim.io/) - The extensible Vim-based text editor.
- [Treesitter](https://tree-sitter.github.io/tree-sitter/) - For syntax highlighting.
- [Lazy.nvim](https://github.com/folke/lazy.nvim) - For efficient plugin loading.
