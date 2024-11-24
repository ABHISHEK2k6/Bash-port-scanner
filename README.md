# Port Scanner Bash Script

This is a simple Bash script for port scanning. It scans a specified range of ports on a given IP address to identify open ports. The script uses `nc` (Netcat) for port checking.

## Features

- Scans a specified range of ports on a given IP address.
- Reports open ports.
- Lightweight and easy to use.

## Requirements

- **Netcat (nc)**: Make sure `nc` is installed on your system.

### Installing Netcat

You can install Netcat with the following commands:

```bash
# On Debian/Ubuntu
sudo apt update && sudo apt install -y netcat

# On CentOS/RHEL
sudo yum install -y nc
```

## Usage
1. Clone the repository or download the script file.
2. Make the script executable:
```bash
chmod +x port_scanner.sh
```
3. Run the script with the following syntax:
```bash
./port_scanner.sh <IP_ADDRESS> <START_PORT> <END_PORT>
```
- IP_ADDRESS: The target IP address to scan.
- START_PORT: The starting port number for the scan range.
- END_PORT: The ending port number for the scan range.

## Example
To scan ports 20 through 80 on IP address 192.168.1.1, run:
```bash
./port_scanner.sh 192.168.1.1 20 80
```

## Sample Output
```bash
Scanning ports from 20 to 80 on 192.168.1.1...
Port 22 is open
Port 80 is open
Scan complete.
```

## Important Note
This script is intended for educational purposes and authorized network testing only. Unauthorized port scanning of external networks is illegal. Use responsibly and only on networks you own or have permission to scan.
