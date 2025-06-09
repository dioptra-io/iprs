---
layout: splash
permalink: /
hidden: false
header:
  overlay_color: "#ff6b35"
  overlay_filter: "0.5"
  overlay_image: /assets/images/networked-globe.jpg
  show_overlay_title: false
  actions:
    - label: "<i class='fas fa-database'></i> Data on M-Lab"
      url: "https://measurementlab.net/tests/iprs"
      class: "btn--primary btn--large"
    - label: "<i class='fas fa-at'></i> Email Us"
      url: "mailto:iprs@dioptra.io"
      class: "btn--inverse btn--large"
excerpt:
  IPRS is an initiative to continuously monitor IP-level routing across the internet
---

<div id="ipv4-ipv6-summary" style="display: flex; align-items: center; gap: 2rem; justify-content: center; margin: 2rem 0;">
  <img src="{{ '/assets/images/ipv4.svg' | relative_url }}" alt="IPv4 Coverage" style="width: 100px; height: 100px;">
  <span style="font-size: 0.95rem; color: #333;">Four daily IPv4 snapshots, each one featuring multipath route traces from ten vantage points, with each vantage point tracing towards 200,000 /24 prefixes</span>
  <img src="{{ '/assets/images/ipv6.svg' | relative_url }}" alt="IPv6 Coverage" style="width: 100px; height: 100px;">
  <span style="font-size: 0.95rem; color: #333;">One daily IPv6 snapshot with single-path route traces from the ten vantage points towards the /48 prefixes in the <a href="https://ipv6hitlist.github.io/" target="_blank" rel="noopener">IPv6 hitlist</a></span>
</div>

<div id="ipv4-ipv6-details" style="width: 100%; margin: 2rem 0; text-align: left; font-size: 0.95rem; color: #222; display: flex; justify-content: center;">
  <div style="max-width: none; width: auto; min-width: 0;">
    <p style="margin: 0;">
      The <a href="https://www.dioptra.io/" target="_blank" rel="noopener">Dioptra</a> group at <a href="https://www.sorbonne-universite.fr/en" target="_blank" rel="noopener">Sorbonne Université</a> conducts the IPRS measurements through a collaboration with <a href="https://www.measurementlab.net/" target="_blank" rel="noopener">M-Lab</a>.
      You may see and analyze the IPRS data in the <code>mlab-collaboration.sorbonne</code> dataset.
      Please <a href="mailto:support@measurementlab.net">email</a> the M-Lab team for help in accessing it.
      Most of the IPv4 snapshots are stored in that dataset's <code>iprs_data1</code> BigQuery <a href="https://console.cloud.google.com/bigquery?project=mlab-collaboration&p=mlab-collaboration&d=sorbonne&t=iprs_data1&page=table" target="_blank" rel="noopener">table</a>. 
      If you wish for access to a snapshot that is not published, as indicated by the <code>iprs_index1</code> <a href="https://console.cloud.google.com/bigquery?project=mlab-collaboration&p=mlab-collaboration&d=sorbonne&t=iprs_index1&page=table" target="_blank" rel="noopener">table</a>, or if you would like to receive data in another format, please  <a href="mailto:iprs@dioptra.io">email</a> the IPRS team.      
    </p>
  </div>
</div>