# Rspamd for docker

This is an image for running [Rspamd](https://www.rspamd.com/) and its companion, rmilter. This image is based on the lightweight [Alpine Linux](https://alpinelinux.org/).

## Usage

```
docker run -v /etc/my-rspamd/local.d:/etc/rspamd/local.d:ro -v /etc/my-rmilter.conf:/etc/rmilter/rmilter.conf.local:ro waldher/rspamd
```
