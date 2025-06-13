---
permalink: /about/
title: "About"
author: dioptra
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
</style>

IPRS is the <a class="iprs-hover-link" href="https://dioptra.io/" target="_blank" rel="noopener">Dioptra</a> group's initiative to continuously monitor IP-level routing across the internet. 
This is done through the regular collection of `traceroute`-style measurements from multiple vantage points towards a significant portion of the internet’s routable address blocks.

## The IPRS Team

IPRS is built using free, open-source, liberally-licensed code that was created over the course of two completed doctoral dissertations. 
Kevin Vermeulen was the lead author of <a class="iprs-hover-link" href="https://github.com/dioptra-io/diamond-miner" target="_blank" rel="noopener"><code>diamond-miner</code></a>.
Matthieu Gouel was the lead author of <a class="iprs-hover-link" href="https://github.com/dioptra-io/zeph" target="_blank" rel="noopener"><code>zeph</code></a> and <a class="iprs-hover-link" href="https://github.com/dioptra-io/iris" target="_blank" rel="noopener"><code>iris</code></a>.
Former post-doctoral fellow Maxime Mouchet was the lead author of <a class="iprs-hover-link" href="https://github.com/dioptra-io/caracal" target="_blank" rel="noopener"><code>caracal</code></a> and a main contributor to the other code.

Senior research engineers Saied Kazemi and Elena Nardi have stabilized the code in production, and they maintain it and publish the data through M-Lab.
Contractor Ciro Scognamiglio manages sysops.
Doctoral student Hugo Rimlinger is using IPRS data to study BGP hijacks.
Doctoral student Ufuk Bombar is conceiving the next generation of IPRS.
Master's intern Zeynep Arslan is addressing IPRS tech debt.

Sorbonne Université faculty members Olivier Fourmaux and Timur Friedman head the Dioptra group. CNRS and École Polytechnique research scientist Kevin Vermeulen co-advises the Dioptra group doctoral students.

## Measurement Lab (M-Lab)

Founded in 2009, <a class="iprs-hover-link" href="https://www.measurementlab.net/" target="_blank" rel="noopener">M-Lab</a> is an open platform for studying internet performance and neutrality over time.
M-Lab provides public, transparent data to empower researchers, policymakers, and open internet advocates to make informed decisions about internet infrastructure and policies. 
M-Lab is a fiscally sponsored project of Code for Science & Society (CS&S).

## Support

 IPRS receives funding through a cybersecurity grant from the French Ministry of Armed Forces. 
 It receives Google Cloud credits and data hosting through its partnership with M-Lab.
