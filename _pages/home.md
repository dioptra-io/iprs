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

<style>
#ipv4-ipv6-summary {
  display: flex;
  align-items: center;
  gap: 1.5rem;
  justify-content: center;
  margin: 2rem 0;
}
#ipv4-ipv6-summary .logo-col {
  width: 100px;
  min-width: 100px;
  display: flex;
  justify-content: center;
  align-items: center;
}
#ipv4-ipv6-summary .text-col {
  flex: 1 1 0;
  font-size: 0.95rem;
  color: #333;
}
@media (max-width: 900px) {
  #ipv4-ipv6-summary {
    flex-direction: column;
    gap: 1rem;
    align-items: stretch;
  }
  #ipv4-ipv6-summary .logo-col {
    width: 100%;
    justify-content: flex-start;
    margin-bottom: 0.5rem;
  }
}
</style>

<div id="ipv4-ipv6-summary">
  <div class="logo-col">
    <img src="{{ '/assets/images/ipv4.svg' | relative_url }}" alt="IPv4 Coverage" style="width: 100px; height: 100px;">
  </div>
  <div class="text-col">
    Four daily IPv4 snapshots, each one featuring multipath route traces from ten vantage points, with each vantage point tracing towards 200,000 /24 prefixes
  </div>
  <div class="logo-col">
    <img src="{{ '/assets/images/ipv6.svg' | relative_url }}" alt="IPv6 Coverage" style="width: 100px; height: 100px;">
  </div>
  <div class="text-col">
    One daily IPv6 snapshot with single-path route traces from the ten vantage points towards the /48 prefixes in the <a href="https://ipv6hitlist.github.io/" target="_blank" rel="noopener">IPv6 hitlist</a>
  </div>
</div>

<style>
#accessing-data {
  width: 100%;
  margin: 2rem 0;
  text-align: left;
  font-size: 0.95rem;
  color: #222;
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 1.5rem;
}
@media (max-width: 700px) {
  #accessing-data {
    flex-direction: column !important;
    align-items: stretch !important;
    gap: 1rem !important;
    text-align: left !important;
  }
  #accessing-data img {
    margin-bottom: 0.5rem;
    margin-right: 0 !important;
  }
}
</style>

<div id="accessing-data">
  <img src="{{ '/assets/images/mlab-logo-black.png' | relative_url }}" alt="M-Lab Logo" style="width: 100px; height: auto; flex-shrink: 0;">
  <div style="max-width: none; width: auto; min-width: 0;">
    <p style="margin: 0;">
      The <a href="https://www.dioptra.io/" target="_blank" rel="noopener">Dioptra</a> group at Sorbonne Université conducts the IPRS measurements through a collaboration with M-Lab.
      You may see and analyze the IPRS data in the <code>mlab-collaboration.sorbonne</code> <a href="https://console.cloud.google.com/bigquery?ws=!1m4!1m3!3m2!1smlab-collaboration!2ssorbonne" target="_blank" rel="noopener">dataset</a>.
      For access, please <a href="mailto:support@measurementlab.net">email</a> the M-Lab team.
    </p>
    <p style="margin: 1em 0 0 0;">
      Most of the IPv4 snapshots are stored in that dataset's <code>iprs_data1</code> BigQuery <a href="https://console.cloud.google.com/bigquery?project=mlab-collaboration&p=mlab-collaboration&d=sorbonne&t=iprs_data1&page=table" target="_blank" rel="noopener">table</a>. 
      To access a snapshot that is not published, as indicated by the <code>iprs_index1</code> <a href="https://console.cloud.google.com/bigquery?project=mlab-collaboration&p=mlab-collaboration&d=sorbonne&t=iprs_index1&page=table" target="_blank" rel="noopener">table</a>, or to receive data in another format, please  <a href="mailto:iprs@dioptra.io">email</a> the IPRS team.      
    </p>
    <p style="margin: 1em 0 0 0;">
      IPRS data is dedicated to the public domain (<a href="https://creativecommons.org/publicdomain/zero/1.0/">CC0 1.0 Universal</a>).
    </p>
  </div>
</div>