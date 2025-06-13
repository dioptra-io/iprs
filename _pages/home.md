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
/* More specific selectors to override minimal-mistakes */

/* Remove the non-breaking spaces that minimal-mistakes adds to code elements */
.page__content :not(pre)>code::before,
.page__content :not(pre)>code::after {
  content: "" !important;
}

/* Remove background from code elements */
code {
  background: none !important;
  font-size: 0.9em !important; /* slightly smaller than the surrounding text */
}

/* Custom link styling */
a.iprs-hover-link {
  text-decoration: none !important;
  color: rgb(43, 98, 134);
  background: none !important;
  border-radius: 3px;
  transition: color 0.2s, text-decoration 0.2s;
  padding: 0;
}

a.iprs-hover-link:hover,
a.iprs-hover-link:focus {
  text-decoration: underline !important;
}


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
    One daily IPv6 snapshot with single-path route traces from the ten vantage points towards the /48 prefixes in the <a class="iprs-hover-link" href="https://ipv6hitlist.github.io/" target="_blank" rel="noopener">IPv6 hitlist</a>
  </div>
</div>

<div id="accessing-data">
  <img src="{{ '/assets/images/mlab-logo-black.png' | relative_url }}" alt="M-Lab Logo" style="width: 100px; height: auto; flex-shrink: 0;">
  <div style="max-width: none; width: auto; min-width: 0;">
    <p style="margin: 0;">
      The <a class="iprs-hover-link" href="https://dioptra.io/" target="_blank" rel="noopener">Dioptra</a> group at Sorbonne Université conducts the IPRS measurements in collaboration with M-Lab.
      You can explore and analyze the IPRS data through the <a class="iprs-hover-link" href="https://console.cloud.google.com/bigquery?ws=!1m4!1m3!3m2!1smlab-collaboration!2ssorbonne" target="_blank" rel="noopener"><code>mlab-collaboration.sorbonne</code></a> BigQuery dataset.
      To request access, please <a class="iprs-hover-link" href="mailto:support@measurementlab.net">email</a> the M-Lab team.
    </p>
    <p style="margin: 1em 0 0 0;">
      Most IPv4 snapshots are available in the dataset's <a class="iprs-hover-link" href="https://console.cloud.google.com/bigquery?project=mlab-collaboration&p=mlab-collaboration&d=sorbonne&t=iprs_data1&page=table" target="_blank" rel="noopener"><code>iprs_data1</code></a> table. 
      For unpublished snapshots (as indicated in the  <a class="iprs-hover-link" href="https://console.cloud.google.com/bigquery?project=mlab-collaboration&p=mlab-collaboration&d=sorbonne&t=iprs_index1&page=table" target="_blank" rel="noopener"><code>iprs_index1</code></a> table) or to request data in alternative formats, please  <a class="iprs-hover-link" href="mailto:iprs@dioptra.io">email</a> the IPRS team.      
    </p>
    <p style="margin: 1em 0 0 0;">
      All IPRS data is released under the <a class="iprs-hover-link" href="https://creativecommons.org/publicdomain/zero/1.0/" target="_blank" rel="noopener">CC0 1.0 Universal</a> public domain dedication, making it freely available for any use.
    </p>
  </div>
</div>