# Ruboty::Mecab

[Ruboty](https://github.com/r7kamura/ruboty) plug-in. Reply MeCab Result.

## Usage

Requires [MeCab](http://taku910.github.io/mecab/). For Heroku, you can use [heroku-buildpack-mecab](https://github.com/diasks2/heroku-buildpack-mecab.git).

```
heroku config:set \
  BUILDPACK_URL=https://github.com/diasks2/heroku-buildpack-mecab.git\
  LD_LIBRARY_PATH=/app/vendor/mecab/lib\
  MECAB_PATH=/app/vendor/mecab/lib/libmecab.so
```

## Thanks

- [r7kamura/ruboty-kokodeikku](https://github.com/r7kamura/ruboty-kokodeikku)

## Blog

- [ruboty-mecab をリリースしました | なぜにぶろぐ](https://blog.whywrite.it/2017/02/16/ruboty-mecab/)
