dns_get_servers() {
  tld="$(echo ${1} | cut -d. -f2)"
  for host in $(dig NS ${tld} +short); do
    echo "; ${host}"
    dig NS ${1} @"${host}" +noall +authority
  done
}
