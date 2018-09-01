function lookbusy
    command cat /dev/urandom | hexdump -C | grep --color "ca fe"
end
