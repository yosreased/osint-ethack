# osint-ethack — Offensive OSINT Toolkit

Modular terminal-based OSINT toolkit focused on ethical hacking recon,
exploit intelligence, and zero-day tracking. Runs fully inside the Kali
NetHunter chroot **and Termux (Android)**. No browser, no web UI.

> ⚡ Auto-detects environment — works on Kali, Kali NetHunter, and Termux with no manual config.

---

## INSTALL

### Kali / Kali NetHunter
```bash
git clone https://github.com/yosreased/osint-ethack.git
cd osint-ethack
chmod +x setup.sh osint-ethack
sudo bash setup.sh
osint-ethack
```

### Termux (Android — no root required)
```bash
pkg install git -y
git clone https://github.com/yosreased/osint-ethack.git
cd osint-ethack
chmod +x osint-ethack
./osint-ethack
```

For first-time tool install: choose **[9] Install Tools** from the main menu.

---

## ENVIRONMENT SUPPORT

| Feature | Kali / NetHunter | Termux |
|---------|-----------------|--------|
| Auto-detection | ✅ | ✅ |
| Passive Recon | ✅ Full | ✅ Full |
| Exploit Intel | ✅ Full | ✅ Full |
| Network Scan (nmap) | ✅ | ✅ |
| Web App Recon | ✅ Full | ⚠️ Partial |
| People OSINT | ✅ Full | ✅ Full |
| Dark Web / Leaks | ✅ Full | ✅ Full |
| Wireless / BT | ✅ Full | ⚠️ Needs NetHunter chroot |
| Package manager | apt | pkg |

---

## MODULES

| # | Module | Tools |
|---|--------|-------|
| 1 | Passive Recon | theHarvester, amass, subfinder, dnsx, crt.sh, recon-ng, metagoofil, x-osint, websift, spiderfoot |
| 2 | Exploit & Zero-Day Intel | NVD CVE feed, ExploitDB/searchsploit, Metasploit, GitHub PoC, CISA KEV, PacketStorm |
| 3 | Network & Host Intel | nmap (quick/full/vuln/stealth), masscan, netdiscover, traceroute+ASN |
| 4 | People & Identity | sherlock, holehe, maigret, socialscan, phoneinfoga, h8mail, ghosttrack, leaker, daprofile, clatscope |
| 5 | Web App Recon | nuclei, nikto, gobuster, ffuf, whatweb, wafw00f, wpscan, sqlmap, xssrecon, sn1per, fsociety |
| 6 | Dark Web & Leaks | HIBP, IntelX CLI, Tor routing, paste site dorks |
| 7 | Wireless & Bluetooth | hcxdumptool (wlan1), BT scan, Blue Hydra, WiGLE |
| 8 | Threat Intel | ThreatFox, MalwareBazaar, GreyNoise, URLhaus, AbuseIPDB, H.I.V.E |
| 9 | Update All | apt + pip + git repos + nuclei templates in one shot |
| 0 | Installer | Guided install for each tool group |

---

## UPDATE

From inside the tool:
- **[8] Update All Tools** — updates everything at once

Or manually:
```bash
# apt tools
sudo apt update && sudo apt upgrade nmap amass gobuster nuclei ...

# pip tools
pip3 install --upgrade holehe h8mail maigret socialscan --break-system-packages

# git tools (auto-handled by updater)
git -C ~/.osint-ethack/tools/sherlock pull
```

---

## API KEYS (optional but recommended)

Set via **[c] Config** or edit `~/.osint-ethack/config.env`:

```
SHODAN_API_KEY=""     # shodan.io — free tier available
VT_API_KEY=""         # virustotal.com — free tier
HIBP_API_KEY=""       # haveibeenpwned.com — paid
```

---

## CHANGELOG

### v2.4.0
- Passive Recon: added Recon-ng (100+ modules), Metagoofil (document metadata), X-osint (all-in-one)
- People OSINT: added ClatScope (unified IP/domain/email/phone/username)
- Web App: added fsociety (modular pentest framework wrapper)
- Installer: separate groups for v2.3 and v2.4 tools + Install ALL option
- Updater: covers all new git-cloned tools automatically

### v2.3.0
- Added NEW MODULE: Threat Intel (ThreatFox, MalwareBazaar, GreyNoise, URLhaus, AbuseIPDB, H.I.V.E)
- Passive Recon: added WebSift (email/phone scraper) and SpiderFoot (200+ source aggregator)
- Exploit Intel: added TweetFeed IOC feed and CVE GitHub Scraper
- People OSINT: added GhostTrack, Leaker (10 breach DBs), DaProfiler
- Web App: added XSSRecon and Sn1per (attack surface management)
- Updater now covers all new tools automatically
- Config: added AbuseIPDB API key support

### v2.2.0
- Added full Termux (Android) support
- Auto-detects environment at startup (Kali / NetHunter / Termux)
- Package manager auto-switches: `apt` on Kali, `pkg` on Termux
- pip installs work on both environments automatically
- Wireless tools warn Termux users to use NetHunter chroot
- Wordlist paths adapt per environment
- Main menu displays active environment

### v2.1.0
- Initial release
- 7 modules: Passive Recon, Exploit Intel, Network, People, Web App, Dark Web, Wireless
- Self-updating via apt + pip + git in one command
- CISA KEV, NVD CVE feed, GitHub PoC finder

---

## LEGAL

This tool is for **authorized penetration testing and security research only**.
Always obtain written permission before testing any system you do not own.
