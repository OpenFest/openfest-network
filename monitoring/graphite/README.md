# Graphite config
Configuration for graphite/carbon

# Design
System is designed to receive data from collectd, pass it trough aggregation/relay and finally stuff it into cache

```
+----------+
| collectd |
+----------+
     ||
     \/
+------------+
| aggregator |
+------------+
     ||
     \/
  +-------+
  | cache |
  +-------+

```

# Running
 * Via systemd
 * Webapp is run with uwsgi in nginx
