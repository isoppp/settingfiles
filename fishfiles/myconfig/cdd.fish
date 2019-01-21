function find_working_directories
    cd (find ~/workspace ~/tools_and_personal -type d -mindepth 1 -maxdepth 1 | fzf)
end

alias cdd 'find_working_directories'
