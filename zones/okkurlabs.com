@                   3600 IN SOA     ns.gitns.com. domains.nzt.ventures. (
                                      2021050401   ; serial
                                      5m           ; refresh
                                      5m           ; retry
                                      1w           ; expire
                                      12h    )     ; minimum

@                  86400 IN NS      ns.gitns.com.
@                  86400 IN NS      ns.gitns.nl.
@                  86400 IN NS      ns.gitns.net.
@                  86400 IN NS      ns.gitns.org.
@                  86400 IN NS      ns.gitns.io.

; redirect
@                  86400 IN A       45.85.238.5
@                  86400 IN AAAA    2a0e:c885:5::1

_redirect          86400 IN TXT     "v=txtv0;type=host;>Strict-Transport-Security=max-age%3D163072000%3B%20includeSubDomains%3B%20preload;to=https://about.okkur.org{uri}"

@                   3600 IN MX 1    ASPMX.L.google.com.
@                   3600 IN MX 5    ALT1.ASPMX.L.GOOGLE.COM.
@                   3600 IN MX 5    ALT2.ASPMX.L.GOOGLE.COM.
@                   3600 IN MX 10   ASPMX2.GOOGLEMAIL.COM.
@                   3600 IN MX 10   ASPMX3.GOOGLEMAIL.COM.
@                   3600 IN TXT     "v=spf1 include:_spf.google.com ~all"

@                   3600 IN TXT     "google-site-verification=Fo7pMrF9ZOS5lqqeE7Cib9-kU6Ow998lRUO9pfoaCIU"
google._domainkey   3600 IN TXT     "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlJx4rO6s2U/bOBC6hOTtlVSfy4+SUt5xmuKNBH2t7VO5LKlzna+4GTBy5gXj8MI6wt+4vbtD7PaFdJrDl55QvBootd7I5gdTZ7VVZF4Bp7dH+XFFCYawR4yQd0o+FPvCwq7cDip/LTjNqdNSuL1E1GXKVX7XXQagEu380EakdEBtZbPLJpn15DBY18PLhUWV06POwhYr38xuBbz99Cmdi0q//A9JWMm5Ic6xbGkdz+VByG/yH8Tl814gXzYtKG/7fl1bPcUlOFuEBmQuYG30u39CEVuJ2WI9n6yY6TtgwiPG+F+TJUX2i8N3s+FpYCCRpl6IDQD+kdChpvDsKHNxyQIDAQAB"

@                    300 IN CAA 0   issue "letsencrypt.org"
@                    300 IN CAA 0   issuewild ";"
@                    300 IN CAA 0   iodef "mailto:caa@nzt.ventures"
