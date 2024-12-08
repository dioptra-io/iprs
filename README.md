Welcome to the official home page of the Sorbonne IP Route Survey (IPRS)

# Overview

Sorbonne IPRS is an initiative to continuously monitor IP-level routing across the internet.
This is done through the regular collection of `traceroute`-style measurements from multiple vantage points towards a significant portion of the internet's routable address blocks.
The survey is conducted by the [Dioptra](https://dioptra.io) research group at [Sorbonne University](https://sorbonne-universite.fr/en)'s [LIP6](https://www.lip6.fr/?LANG=en) computer science laboratory.

# Current Coverage

As of December 2024, IPRS provides:

* Four daily IPv4 snapshots featuring multipath route traces from ten vantage points, covering all routable IPv4 /24 prefixes
* One daily IPv6 snapshot with single-path route traces covering a substantial number of prefixes 

# Data Access

IPRS data is available through two primary channels:

## Measurement Lab

IPv4 snapshots are accessible via [Measurement Lab](https://www.measurementlab.net)'s Google BigQuery tables.
This data is provided in the `scamper1` format, consistent with existing Measurement Lab `traceroute` data.

## Dioptra

Contact the Dioptra group directly for your additional data needs:

* More detailed versions of the IPv4 data
* The IPv6 data

We can make this data available to you as ClickHouse tables, which are an Amazon S3-compatible format.
Other formats are also possible.

# Future Development

Our development roadmap focuses on two key areas.

## Enhanced Monitoring Capabilities

We are working to:

* Increase snapshot frequency from hour-level to minute-level time resolution
* Expand coverage of internet routes that are not well covered by current publicly-available data
* Improve observers' ability to detect and track network attacks and anomalies

## Community-Driven Improvements

Our mission is to serve a diverse set of stakeholders, including content providers, network operators, telecom regulators, cybersecurity analysts, and internet measurement researchers.

We welcome your feedback to better align IPRS capabilities with community needs.

# Technical Implementation

IPRS relies on open-source software developed by the Dioptra group and others:

* The measurements are orchestrated by the [Iris](https://github.com/dioptra-io/zeph) measurement orchestration system.
* The dynamic allocation of IPv4 destination prefixes to vantage points is determined by the [Zeph](https://github.com/dioptra-io/zeph) reinforcement learning algorithm. IPv6 destination prefix allocations are currently static.
* At each vantage point, probe packets are sent and probe replies are received and logged by the [Caracal](https://github.com/dioptra-io/caracal) high-speed probing tool that we currently throttle to 100,000 packets per second.
* The determination of which probe packets should be sent, and in which order, is conducted using the [Diamond Miner](https://github.com/dioptra-io/diamond-miner) algorithm for IPv4 and the yarrp algorithm for IPv6. The latter was developed by Robert Beverly's research team at the Naval Postgraduate School, and the former by Dioptra, in collaboration with that team.

Iris, Zeph, Diamond Miner, and Yaarp have been described in peer-reviewed publications. 
If you wish to use any of this code in your own measurement work, we will be happy to help you do so. Please contact us!

# Acknowledgements

Sorbonne IPRS is funded in part by a cybersecurity grant from the French Ministry of Armed Forces.
Sorbonne University is a sponsor of Measurement Lab. The Dioptra research group receives cloud credits from Google in support of this partnership, and Measurement Lab hosts IPRS data.
