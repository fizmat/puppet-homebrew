
FAILURES=0

apply() {
    echo Apply "$@"
    puppet apply --detailed-exitcodes --debug "$@" || [ $? -eq 2 ] || echo "Error $((++FAILURES))"
    FAILURES=$((FAILURES + $?))
}

check() {
    echo Check "$@"
    "$@" || echo "Error $((++FAILURES))"
}
