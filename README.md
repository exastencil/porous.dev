# porous.dev

## Development

```sh
$ porous dev
```

Go to [http://localhost:9292/](http://localhost:9292/)

## Production

Place your SSL certificate in `ssl`:

- `ssl/cert.pem`
- `ssl/key.pem`

```sh
$ porous build production
$ porous server
```
