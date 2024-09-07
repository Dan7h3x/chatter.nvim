# Chatter.nvim

Chatter.nvim is a Neovim plugin that provides a chat interface powered by AI models. It allows users to interact with AI models seamlessly within Neovim, featuring a sidebar for chat history, code block highlighting, and more.

![Chatter.nvim Screenshot](path/to/screenshot.png)

## Features

- **AI Chat Interface**: Start a chat with AI models directly in Neovim.
- **Sidebar Display**: View chat history in a dedicated sidebar.
- **Code Block Highlighting**: Automatically highlights code blocks using Treesitter.
- **Clipboard Support**: Easily copy code blocks to the clipboard.
- **Customizable Keymaps**: Configure key mappings to suit your workflow.
- **Lazy Loading Support**: Integrates with `lazy.nvim` for efficient loading.

## Installation

### Using Lazy.nvim

To install Chatter.nvim with `lazy.nvim`, add the following to your Neovim configuration:

```lua
{
  "Dan7h3x/Chatter.nvim",
  config = function()
    require("Chatter").setup({
      -- Customization params
    })
  end
}
```

### Manual Installation

If you prefer to install manually, clone the repository into your Neovim plugins directory:

```bash
git clone https://github.com/Dan7h3x/chatter.nvim.git ~/.config/nvim/lua/Chatter
```

Then, add the following to your `init.lua` or `init.vim`:

```lua
require("Chatter").setup()
```

## Usage

1. **Open the Chat Interface**: Use the command `:ChatterToggle` to open or close the chat sidebar.
2. **Start a Chat**: Use the command `:ChatterStart` to initiate a chat session.
3. **Send Messages**: Press `i` to enter your message and hit Enter to send.
4. **Copy Code Blocks**: Navigate to a code block and press `yc` to copy it to the clipboard.
5. **Clear Chat**: Use the command `:ChatterClear` to clear the chat history.

## Configuration

You can customize the plugin by passing options to the `setup` function:

```lua
require("Chatter").setup({
  offline_api_url = os.getenv("OLLAMA_HOST") or "http://localhost:8888"),
  sidebar_width = 60,
  highlight = {
    title = "Title",
    user = "Comment",
    assistant = "String",
  },
})
```

## Key Mappings

The following key mappings are available by default:

- `i`: Enter message input
- `yc`: Copy the current code block to clipboard
- `q`: Close the chat sidebar

You can customize these key mappings in the `setup` function.

## Contributing

Contributions are welcome! Please feel free to submit issues or pull requests. Make sure to follow the [contribution guidelines](CONTRIBUTING.md).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments

- [Neovim](https://neovim.io/) - The extensible Vim-based text editor.
- [Treesitter](https://tree-sitter.github.io/tree-sitter/) - For syntax highlighting.
- [Lazy.nvim](https://github.com/folke/lazy.nvim) - For efficient plugin loading.
