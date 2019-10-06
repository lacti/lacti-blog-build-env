# Build environment for [lacti-blog](https://github.com/lacti/lacti-blog)

`GitHub Actions` is awesome but it is slower than Travis-CI now and I found it is slow to download all packages about `Gatsby.js`.

I think it can be fast when it downloads its environment via Docker instead of npm repository so I build and cache its `node_modules` in this docker image.

... But, it is only about 10~20 seconds reduced rather than downloading node packages directly. I hope GitHub actions would be cached docker layers more efficiently as soon.
