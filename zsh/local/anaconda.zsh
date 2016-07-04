export ANACONDA_PATH="$HOME/anaconda/bin"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

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
