# Problems

This project is to demo some problems found while exploring Crystal.

## #1

Seeing the following on `crystal spec`

```
Error in /usr/local/Cellar/crystal-lang/0.12.0/src/openssl/lib_crypto.cr:28: already initialized constant LibCrypto::PKCS5_SALT_LEN

  PKCS5_SALT_LEN     =  8
  ^~~~~~~~~~~~~~
```

Due to the `require "http/request"` in `spec/lib-conflicts_spec.cr`. The OpenSSL.cr lib seems to conflict with the built-in OpenSSL implementation and I can't figure out:

a) Where `http/request` is including stdlib OpenSSL
b) How to work around this issue.
