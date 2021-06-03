# Cache in aliases because /usr/bin will be moved to top in .zshrc
_cache pyenv init --path
_cache pyenv init - --no-rehash

alias py=python
_is_callable python2 && alias py2=python2
_is_callable python3 && alias py3=python3

alias ipy=ipython
alias ipylab='ipython --pylab=qt5 --no-banner'
_is_callable jupyter && alias jp='jupyter lab --NotebookApp.iopub_data_rate_limit=10000000'

alias sa="source activate"
alias sd="conda deactivate || source deactivate"
alias cl="conda info --envs"

# Pipenv
alias pe="pipenv"

# Pipenv completion
_pipenv() {
  eval $(env COMMANDLINE="${words[1, $CURRENT]}" _PIPENV_COMPLETE=complete-zsh pipenv)
}
compdef _pipenv pipenv

_is_callable black && alias format-all-black='black -q **/*.py'
_is_callable autoflake && alias remove-py-imports="git diff --name-only origin/develop | xargs -I{} autoflake --in-place --remove-all-unused-imports {}"
