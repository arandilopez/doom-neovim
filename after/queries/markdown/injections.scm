; extends
((inline) @_inline (#match? @_inline "^\(import\|export\)")) @tsx

((inline) @_meta (#match? @_meta "<Meta")) @tsx

((html_block) @_html_block) @tsx
