---
title: Development
layout: home
nav_order: 3
---

## Future Development

Our development roadmap focuses on two key areas.

### Enhanced Monitoring Capabilities

We are working to:

* Increase snapshot frequency from hour-level to minute-level time resolution
* Expand coverage of internet routes that are not well covered by current publicly-available data
* Improve observers' ability to detect and track network attacks and anomalies

### Community-Driven Improvements

Our mission is to serve a diverse set of stakeholders, including content providers, network operators, telecom regulators, cybersecurity analysts, and internet measurement researchers.

We welcome your feedback to better align IPRS capabilities with community needs.

## Technical Implementation

IPRS relies on free, liberally-licensed open-source software:

* The measurements are orchestrated by the [Iris](https://github.com/dioptra-io/zeph) measurement orchestration system.
* The dynamic allocation of IPv4 destination prefixes to vantage points is determined by the [Zeph](https://github.com/dioptra-io/zeph) reinforcement learning algorithm. IPv6 destination prefix allocations are currently static.
* At each vantage point, probe packets are sent and probe replies are received and logged by the [Caracal](https://github.com/dioptra-io/caracal) high-speed probing tool that we currently throttle to 100,000 packets per second.
* The determination of which probe packets should be sent, and in which order, is conducted using the [Diamond-Miner](https://github.com/dioptra-io/diamond-miner) algorithm for IPv4 and the [yarrp](https://github.com/cmand/yarrp) algorithm for IPv6.

Iris, Zeph, Diamond-Miner, and Caracal have been developed by the Dioptra research group.
We offer implementation support for individuals and organizations interested in utilizing this technology stack.