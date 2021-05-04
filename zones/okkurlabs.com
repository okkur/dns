@                   3600 IN SOA     ns.gitns.com. domains.nzt.ventures. (
                                      2021043001   ; serial
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
google._domainkey   3600 IN TXT     "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQClsOR8qs5On+g5zjMd2r6V5H/eXCGZUoghimCIOn9Ns2niG3Y1BdRf8tVUqdPrq/QHX2bLVCEe9RI9fhbcdGUuGhkFKQdMfaP5hJiDfjG3aLu5UP4FJz8HAoj02ewLeuhgjE+x2JD0cah2Ib9GJXmmExq/zebAlkhMuSjov8hgTQIDAQAB"

@                    300 IN CAA 0   issue "letsencrypt.org"
@                    300 IN CAA 0   issuewild ";"
@                    300 IN CAA 0   iodef "mailto:caa@nzt.ventures"
