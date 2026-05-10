#!/usr/bin/env bash
# osint-ethack setup — run once
set -euo pipefail

INSTALL_DIR="/usr/local/bin"
TOOL_DIR="${HOME}/.osint-ethack"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

R='\033[0;31m' G='\033[0;32m' Y='\033[1;33m' C='\033[0;36m' NC='\033[0m'

echo -e "\n  ${C}[*]${NC} Installing osint-ethack..."

cp "${SCRIPT_DIR}/osint-ethack" "${INSTALL_DIR}/osint-ethack"
chmod +x "${INSTALL_DIR}/osint-ethack"

mkdir -p "${TOOL_DIR}/tools" "${TOOL_DIR}/logs" "${HOME}/osint-results"

# Default config
cat > "${TOOL_DIR}/config.env" << 'CONF'
SHODAN_API_KEY=""
VT_API_KEY=""
HIBP_API_KEY=""
NVD_FEEDS_DAYS=7
DEFAULT_TARGET=""
CONF

echo -e "  ${G}[✓]${NC} Installed → ${INSTALL_DIR}/osint-ethack"
echo -e "  ${G}[✓]${NC} Config    → ${TOOL_DIR}/config.env"
echo -e "  ${G}[✓]${NC} Results   → ${HOME}/osint-results"
echo
echo -e "  ${Y}Run:${NC} osint-ethack"
echo -e "  ${Y}First time?${NC} Pick option [9] to install tools."
echo
