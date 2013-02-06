#!/bin/bash

site="$1"
c=$(openssl s_client -connect $site:443 </dev/null 2>/dev/null| sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p')
echo "$c" | openssl x509 -in /dev/stdin -noout -text



