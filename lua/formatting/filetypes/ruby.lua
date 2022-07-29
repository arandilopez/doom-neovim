local M = {}

function M.rubocop()
  return {
    exe = "rubocop",
    args = {
      '--autocorrect', '--format', 'files', '--stdin', '%:p', '2>/dev/null', '|',
      "awk 'f; /^====================$/{f=1}'"
    },
    stdin = true,
  }
end

return M
