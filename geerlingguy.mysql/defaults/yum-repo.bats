setup() {
    apt-get install -y curl
}

@test "The yum repo's vhost should return HTTP 200" {
    run curl -sSq -I -H 'Host: yum' http://localhost
    [ "$status" -eq 0 ]
    [[ "$output" =~ "HTTP/1.1 200 OK" ]]
}
