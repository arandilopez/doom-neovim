local config = require'lsp.config'
local util = require 'lspconfig.util'

local function get_typescript_server_path(root_dir)
  local home = vim.fn.getenv('HOME')
  local nodejs_version = vim.fn.system('node -v'):gsub('%v', ''):gsub('v', '')
  local global_ts = home .. '/.asdf/installs/nodejs/' .. nodejs_version ..'/.npm/lib/node_modules/typescript/lib/tsserverlibrary.js'
  local found_ts = ''

  local function check_dir(path)
    found_ts =  util.path.join(path, 'node_modules', 'typescript', 'lib', 'tsserverlibrary.js')
    if util.path.exists(found_ts) then
      return path
    end
  end

  if util.search_ancestors(root_dir, check_dir) then
    return found_ts
  else
    return global_ts
  end
end

require'lspconfig'.volar.setup{
  filetype = { 'vue' },
  on_attach = config.on_attach,
  capabilities = config.capabilities,

  on_new_config = function(new_config, new_root_dir)
    new_config.init_options.typescript.serverPath = get_typescript_server_path(new_root_dir)
  end,
}
