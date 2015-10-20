export ANACONDA_PATH="$HOME/anaconda/bin"

function have_anaconda(){
    [[ -n $path[(r)$ANACONDA_PATH] ]]
}

function anaconda_toggle(){
    if have_anaconda ; then
        path[$path[(i)$ANACONDA_PATH]]=()
        print "Anaconda deactivated"
    else
        export PATH=$ANACONDA_PATH:$PATH
        print "Anaconda activated"
    fi
}

alias anaconda='anaconda_toggle'
