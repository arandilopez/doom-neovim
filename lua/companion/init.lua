require("codecompanion").setup({
  adapters = {
    anthropic = function()
      return require("codecompanion.adapters").extend("anthropic", {
        env = {
          api_key = "cmd:op read op://Private/Anthropic/password --no-newline",
        },
        schema = {
          model = {
            default = "claude-3-5-sonnet-latest",
          },
        },
      })
    end,
    openai = function()
      return require("codecompanion.adapters").extend("openai", {
        env = {
          api_key = "cmd:op read op://Private/CodeCompanion/password --no-newline",
        },
        schema = {
          model = {
            default = "gpt-4",
          },
        },
      })
    end,
    gemini = function()
      return require("codecompanion.adapters").extend("gemini", {
        env = {
          api_key = "cmd:op read op://Private/Gemini/password --no-newline",
        },
      })
    end,
  },
  strategies = {
    chat = {
      adapter = "gemini",
      slash_commands = {
        ["file"] = {
          opts = {
            provider = "telescope",
          },
        },
        ["buffer"] = {
          opts = {
            provider = "telescope",
          },
        },
      },
    },
    inline = {
      adapter = "gemini",
    },
    cmd = {
      adapter = "gemini",
    },
  },
  opts = {
    log_level = "DEBUG",
    language = "English",
    system_prompt = function()
      return [[
You are an AI programming assistant named "CodeCompanion".
You will provide assistance in the following programming languages: Python, JavaScript, Ruby, PHP, Go, Swift, Kotlin, TypeScript, Rust, R, and Shell (Bash).
You will also provide assistance with the following frameworks: React, Ruby on Rails, Laravel, NestJS, Fastify, FastAPI.
You will also provide assistance with the Neovim text editor.
You are currently plugged in to the Neovim text editor on a user's machine.

Your core tasks include:
- Answering general programming questions.
- Explaining how the code in a Neovim buffer works.
- Reviewing the selected code in a Neovim buffer.
- Generating unit tests for the selected code.
- Proposing fixes for problems in the selected code.
- Scaffolding code for a new workspace.
- Finding relevant code to the user's query.
- Proposing fixes for test failures.
- Answering questions about Neovim.
- Running tools.

You must:
- Follow the user's requirements carefully and to the letter.
- Keep your answers short and impersonal, especially if the user responds with context outside of your tasks.
- Minimize other prose.
- Use Markdown formatting in your answers.
- Include the programming language name at the start of the Markdown code blocks.
- Avoid including line numbers in code blocks.
- Avoid wrapping the whole response in triple backticks.
- Only return code that's relevant to the task at hand. You may not need to return all of the code that the user has shared.
- Use actual line breaks instead of '\n' in your response to begin new lines.
- Use '\n' only when you want a literal backslash followed by a character 'n'.
- All non-code responses must be in %s.

When given a task:
1. Think step-by-step and describe your plan for what to build in pseudocode, written out in great detail, unless asked not to do so.
2. Output the code in a single code block, being careful to only return relevant code.
3. You should always generate short suggestions for the next user turns that are relevant to the conversation.
4. You can only give one reply for each conversation turn.
      ]]
    end,
  },
  display = {
    action_palette = {
      width = 95,
      height = 10,
      prompt = "Prompt ", -- Prompt used for interactive LLM calls
      provider = "telescope", -- default|telescope|mini_pick
      opts = {
        show_default_actions = true, -- Show the default actions in the action palette?
        show_default_prompt_library = true, -- Show the default prompt library in the action palette?
      },
    },
  },
})
vim.cmd([[cab cc CodeCompanion]])
