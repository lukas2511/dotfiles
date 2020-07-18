# for connecting to temporary systems (e.g. initial router configurations) while not cluttering known_hosts
alias stupid_ssh="ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o VerifyHostKeyDNS=no"
alias stupid_scp="scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o VerifyHostKeyDNS=no"
compdef stupid_ssh=ssh
compdef stupid_scp=scp

# interact with devices from the stone age
alias old_ssh="ssh -o 'KexAlgorithms diffie-hellman-group1-sha1' -o 'HostKeyAlgorithms +ssh-dss' -o 'Ciphers aes128-cbc'"
alias stupid_old_ssh="ssh -o 'KexAlgorithms diffie-hellman-group1-sha1' -o 'HostKeyAlgorithms +ssh-dss' -o 'Ciphers aes128-cbc' -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o VerifyHostKeyDNS=no"
alias stupid_old_scp="scp -o 'KexAlgorithms diffie-hellman-group1-sha1' -o 'HostKeyAlgorithms +ssh-dss' -o 'Ciphers aes128-cbc'. -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o VerifyHostKeyDNS=no"
compdef old_ssh=ssh
compdef stupid_old_ssh=ssh
compdef stupid_old_scp=scp
