
FAILURES=0

apply() {
    sudo puppet apply --detailed-exitcodes --debug "$@" || [ $? -eq 2 ]
    FAILURES=$((FAILURES + $?))
}

check() {
    "$@"
    FAILURES=$((FAILURES + $?))
}
