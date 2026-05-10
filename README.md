# osint-ethack — Offensive OSINT Toolkit for Kali NetHunter & Termux

Modular terminal-based OSINT toolkit focused on ethical hacking recon,
exploit intelligence, and zero-day tracking. Runs on Kali NetHunter
and Termux (Android). No browser, no web UI.

> Auto-detects environment — works on Kali, Kali NetHunter, and Termux with no manual config.

---

## INSTALL

### Kali / Kali NetHunter
git clone https://github.com/yosreased/osint-ethack.git
cd osint-ethack
chmod +x setup.sh osint-ethack
sudo bash setup.sh
osint-ethack

### Termux (Android - no root required)
pkg install git -y
git clone https://github.com/yosreased/osint-ethack.git
cd osint-ethack
chmod +x osint-ethack
./osint-ethack

For first-time tool install: choose [9] Install Tools from the main menu.

---

## ENVIRONMENT SUPPORT

| Auto-detection | ✅ | ✅ |
| Passive Recon | ✅ Full | ✅ Full |
| Exploit Intel | ✅ Full | ✅ Full |
| Network Scan | ✅ Full | ✅ Full |
| Web App Recon | ✅ Full | ⚠️ Partial |
| People OSINT | ✅ Full | ✅ Full |
| Dark Web / Leaks | ✅ Full | ✅ Full |
| Wireless / BT | ✅ Full | ⚠️ Needs NetHunter chroot |
| Package manager | apt | pkg |

---

## MODULES

| # | Module | Tools |
|---|--------|-------|
| 1 | Passive Recon | theHarvester, amass, subfinder, dnsx, crt.sh, Google Dorks |
| 2 | Exploit & Zero-Day Intel | NVD CVE feed, ExploitDB, Metasploit, GitHub PoC, CISA KEV, PacketStorm |
| 3 | Network & Host Intel | nmap, masscan, netdiscover, traceroute+ASN |
| 4 | People & Identity | sherlock, holehe, maigret, socialscan, phoneinfoga, h8mail |
| 5 | Web App Recon | nuclei, nikto, gobuster, ffuf, whatweb, wafw00f, wpscan, sqlmap |
| 6 | Dark Web & Leaks | HIBP, IntelX CLI, Tor routing, paste site dorks |
| 7 | Wireless & Bluetooth | hcxdumptool, BT scan, Blue Hydra, WiGLE |
| 8 | Update All | apt + pip + git repos + nuclei templates in one shot |
| 9 | Installer | Guided install for each tool group |

---

## CHANGELOG

### v2.2.0
- Added full Termux (Android) support
- Auto-detects environment at startup (Kali / NetHunter / Termux)
- Package manager auto-switches: apt on Kali, pkg on Termux
- Wireless tools warn Termux users to use NetHunter chroot

### v2.1.0
- Initial release
- 7 modules: Passive Recon, Exploit Intel, Network, People, Web App, Dark Web, Wireless
- Self-updating via apt + pip + git in one command
- CISA KEV, NVD CVE feed, GitHub PoC finder

---

## LEGAL

This tool is for authorized penetration testing and security research only.
Always obtain written permission before testing any system you do not own.
