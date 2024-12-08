*NOTE: This repository is a work in progress and will be frequently updated.*

# Sorbonne IPRS (IP Route Survey)

This repository is the official home page of Sorbonne IPRS, the Sorbonne University IP Route Survey.
This survey is conducted by the [Dioptra](https://dioptra.io) research group at [Sorbonne University](https://sorbonne-universite.fr/en)'s [LIP6](https://www.lip6.fr/?LANG=en) computer science laboratory, and it is made publicly available through [Measurement Lab](https://www.measurementlab.net) and through the Dioptra group.

IPRS is a series of snapshots of IP-level routing in the internet.
Each snapshot consists of a set of `traceroute`-style measurements.
These measurements are conducted from multiple vantage points around the internet.
The route trace destinations comprise a significant portion of the internet's routable address blocks.

As of December 2024, there are four IPRS IPv4 snapshots and one IPv6 per day.
The IPv4 snapshots consist of multipath route traces from ten vantage points towards all routable IPv4 /24 prefixes.
The IPv6 snapshots consist of single-path route traces towards a large number of prefixes and are available from Dioptra upon request.

# How the route survey is conducted

The Sorbonne University IP Route Survey is conducted using free open-source liberally-licensed software developed, unless otherwise noted, by the Dioptra group:

* The measurements are orchestrated by the [Iris](https://github.com/dioptra-io/zeph) measurement orchestration system.
* The dynamic allocation of IPv4 destination prefixes to vantage points is determined by the [Zeph](https://github.com/dioptra-io/zeph) reinforcement learning algorithm. IPv6 destination prefix allocations are currently static.
* At each vantage point, probe packets are sent and probe replies are received and logged by the [Caracal](https://github.com/dioptra-io/caracal) tool.
* The determination of which probe packets should be sent, and in which order, is conducted using the [Diamond Miner](https://github.com/dioptra-io/diamond-miner) algorithm for IPv4 and the yarrp algorithm for IPv6. The latter was developed by Robert Beverly's research team at the Naval Postgraduate School, and the former by Dioptra, in collaboration with that team.

Iris, Zeph, Diamond Miner, and Yaarp have been described in peer-reviewed publications. 

# Obtaining IPRS data

The IPv4 snapshots are available through Measurement Lab in the same `scamper1` format in Google BigQuery tables that they use for their existing `traceroute`data.
For more detailed IPv4 data, and for the IPv6 data, please write to us at Dioptra.
We maintain this data in a ClickHouse database, in an Amazon S3-compatible database format.
