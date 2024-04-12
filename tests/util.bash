
FAILURES=0

apply() {
    echo Apply "$@"
    sudo puppet apply --detailed-exitcodes --debug "$@" || [ $? -eq 2 ]
    FAILURES=$((FAILURES + $?))
}

check() {
    echo Check "$@"
    "$@"
    FAILURES=$((FAILURES + $?))
}
