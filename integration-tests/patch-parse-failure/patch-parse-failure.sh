# make sure errors stop the script
set -e

echo "add patch-package"
yarn add $1

(>&2 echo "SNAPSHOT: patch parse failure message")
if yarn patch-package; then
  exit 1
fi
(>&2 echo "END SNAPSHOT")
