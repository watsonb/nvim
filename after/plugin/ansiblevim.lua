--vim.g.ansible_unindent_after_newline = 1
--vim.g.ansible_yamlKeyName = 'yamlKey'
--vim.g.ansible_attribute_highlight = "n"
vim.g.ansible_name_highlight = 'd'
vim.g.ansible_extra_keywords_highlight = 1
vim.g.ansible_extra_keywords_highlight_group = 'Structure'
vim.g.ansible_normal_keywords_highlight = 'Statement'
vim.g.ansible_loop_keywords_highlight = 'Statement'
--vim.g.ansible_template_syntaxes = { '*.rb.j2': 'ruby', '*.ps1.j2': 'powershell', '*.sh.j2': 'bash' }
--vim.g.ansible_ftdetect_filename_regex = '\v(playbook|site|main|local|requirements)\.ya?ml$'
--vim.g.ansible_ftdetect_filename_regex = '([\s\S]+)\.ya?ml$'
vim.g.ansible_ftdetect_filename_regex = "([\\S]+)\\.ya?ml$"
