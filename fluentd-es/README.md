## Fluentd

Fluentd is an open source data collector for unified logging layer

### Plugins

* fluent-plugin-secure-forward
* fluent-plugin-elasticsearch
* fluent-plugin-record-reformer

### Usage

```
docker run -d -p 24224:24224 -v /var/lib/docker/containers:/var/lib/docker/containers yunlzheng/fluent-es
```
