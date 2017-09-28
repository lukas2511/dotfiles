dns_get_servers() {
  tld="$(echo ${1} | cut -d. -f2)"
  dig NS ${tld} +short | xargs -I1 dig NS ${1} @1 +noall +authority
}
