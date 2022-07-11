local M = {}

function M.mix()
  return {
    exe = "mix",
    args = {
      "format",
      "-",
    },
    stdin = true,
  }
end

return M
