# Show available columns:
# echo "show stat" | sudo nc -U /var/lib/haproxy/stats | grep "#" | tr ',' '\n' | nl

watch 'echo "show stat" | sudo nc -U /var/lib/haproxy/stats | cut -d "," -f 1,2,5-11,18,24,27,30,36,50,37,56,57,62 | column -s, -t'
