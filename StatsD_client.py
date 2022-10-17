from datadog import initialize, statsd
import time
import random
#if __name__ == "__main__":
options = {
    'statsd_host':'host.docker.internal',
    'statsd_port':8125
}
"""options = {
  'statsd_host' : $DD_DOGSTATSD_SOCKET
}"""

initialize(**options)


while(1):
  statsd.distribution('gunicorn.request.duration.avg', random.randint(0, 100), tags=["reason:statsd_test"])
  statsd.increment('gunicorn.test_count.increment', random.randint(0, 100), tags=["reason:statsd_test"])
  statsd.gauge("gunicorn.test_gauge", random.randint(0, 75), tags=["reason:statsd_test"])
  #statsd.decrement('gunicorn.test_count.decrement', tags=["environment:statsd_test"])
  time.sleep(2)

