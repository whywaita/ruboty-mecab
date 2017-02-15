# Ruboty::Mecab

[Ruboty](https://github.com/r7kamura/ruboty) plug-in. Reply Mecab Result.

## Usage

Requires mecab. you can use [heroku-buildpack-mecab](https://github.com/diasks2/heroku-buildpack-mecab.git).

```
heroku config:set \
  BUILDPACK_URL=https://github.com/diasks2/heroku-buildpack-mecab.git\
  LD_LIBRARY_PATH=/app/vendor/mecab/lib\
  MECAB_PATH=/app/vendor/mecab/lib/libmecab.so
```

## Thanks

- [r7kamura/ruboty-kokodeikku](https://github.com/r7kamura/ruboty-kokodeikku)
