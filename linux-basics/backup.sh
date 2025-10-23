set -euo pipefail
SRC_DIR=${1:-notes}
DST_DIR=backup_$(date +%F_%H%M%S)
mkdir -p "$DST_DIR"
cp -r "$SRC_DIR" "$DST_DIR"/
echo "Backed up $SRC_DIR -> $DST_DIR"
