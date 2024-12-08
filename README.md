*NOTE: This repository is a work in progress and will be frequently updated.*

# Iris

This repository is the official home page of Iris.

Iris is an open-source platform for orchestrating a specific set
of network route probing measurements from multiple Internet vantage
points, collecting the resulting data, and making that data publicly
available.

Iris conducts IP-level multipath route traces from a distributed
set of vantage points towards all routable IPv4 prefixes several
times each day, and to IPv6 addresses once a day.

The IPv4 measurements use the [Zeph](https://github.com/dioptra-io/zeph)
algorithm.

We are in the process of publishing Iris data from Zeph measurements
through [Measurement Lab](https://www.measurementlab.net).

## Iris measurements

Starting in April 2021, Iris has been performing single-path and
multipath (load-balanced) route traces from a small number of vantage
points to all IPv4 address prefixes.  The measurements include daily
Zeph measurements (currently four measurements per day from ten
vantage points).

Zeph measurements are coordinated multipath traces using the Zeph
algorithm from ten vantage points in Google Cloud Platform (GCP)
to achieve high coverage of the discoverable IPv4 infrastructure
addresses.  These measurements use ICMP probes at the rate of 100,000
PPS towards 2 million prefixes and discover around 1.5 million IPv4
infrastructure addresses and 8 million links between them.

The traceroute data collected by the above measurements is currently
saved in an Amazon S3-compatible database (ClickHouse) on the Iris
production server.

## Iris data at M-Lab

While Iris traceroute data is highly valuable for the research
community, its utilization is hampered by two primary challenges:

1. The data is stored in Iris-specific tables and schemas.
2. There is no web interface for querying and analyzing the data.

To address these limitations, the Iris team is collaborating with
the M-Lab team to make Iris route trace data publicly accessible
in the same format as M-Lab's traceroute (scamper1 table).  While
Iris data will be stored in a table that has the same schema as
M-Lab's `scamper1`, its name will be different (say, `zeph1`) so
that M-Lab data and Iris data remain separate.  The benefits of
using the same format are as follows:

* Existing queries and analysis tools developed for `scamper1` will
  also work with `zep1` with little or no modification (see below).
* Iris route trace data will seamlessly enhance and complement
  M-Lab's traceroute data.

The changes involve correcting the column definitions by using
INTEGER instead of FLOAT, where INTEGER should have been used from
the outset in the scamper1 format. For instance, the `TTL` field
is clearly an integer, not a floating-point number

## Useful links

* [Iris source code](https://github.com/dioptra-io/iris)
* TO BE EXPANDED...
