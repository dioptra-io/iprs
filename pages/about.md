---
title: About
layout: home
nav_order: 4
---

## Acknowledgements

Sorbonne IPRS is funded in part by a cybersecurity grant from the French Ministry of Armed Forces.
Sorbonne University is a sponsor of Measurement Lab. The Dioptra research group receives cloud credits from Google in support of this partnership, and Measurement Lab hosts IPRS data.

## Related Initiatives

The Sorbonne IP Route Survey is related to several other initiatives, most of which predate IPRS by many years.
These include IP-level data sets and BGP-level data sets.

IPRS is most similar to the following IP-level route tracing initiative:

* CAIDA's [Archipelago](https://www.caida.org/projects/ark/), or Ark, data. Ark also collects IP-level routes at internet scale. IPRS collects snapshots at a higher frequency than does Ark, and IPRS sees more IP addresses and `traceroute`-style links between those addresses. However, Ark collects snapshots from a larger number of vantage points, and different vantage points than does IPRS, thereby collecting route segments that IPRS does not currently obtain.

IPRS is also related to other IP-level route tracing initiatives:

* Measurement Lab's [Traceroute](https://www.measurementlab.net/tests/traceroute/) data. This is also not an internet-scale routing survey. However, it, too, contains an immense number of route traces.
* The [RIPE Atlas](https://atlas.ripe.net/) data. While RIPE Atlas is not an internet-scale routing survey, the dataset does contain an immense number of route traces from on the order of 10,000 vantage points. RIPE Atlas only conducts single-path route traces, whereas the IPRS and Measurement Lab Traceroute data sets provide multipath route traces.
* Measurement Lab's [Reverse Traceeroute](https://www.measurementlab.net/tests/reverse_traceroute/) data. Similar to IPRS, and in contrast to the other initiatives listed here, this is relatively recent.

Routes can also be seen at the BGP level. The advantage of BGP feeds for following routing changes in near-real-time is their short timescale. There are two main initiatives:

* The [Oregon RouteViews Project](https://www.routeviews.org/routeviews/)
* The [RIPE Routing Information Service](https://www.ripe.net/analyse/internet-measurements/routing-information-service-ris/) (RIS)
