
return {
  ["<Leader>"] = {
    p = {
      name = "+Project",
      p = {":lua require'telescope'.extensions.project.project{}<CR>", "Open project"}
    }
  }
}
