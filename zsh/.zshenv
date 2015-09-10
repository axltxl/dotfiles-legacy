# PATH is set through a set of scripts
for pf in $ZSH_HOME/path.d/*; do
    . $pf
done
