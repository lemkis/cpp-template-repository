pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="${PATH:+"$PATH:"}$1"
    fi
}

./scripts/make_debug.sh
source .venv/bin/activate &&\
pathadd "$(pwd)/external/oclint/build/oclint-release/bin"\
&&\
git add -u && git commit -m "$@"