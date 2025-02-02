#!/bin/bash

# Exibe o texto "Clone ff" com figlet
figlet "Clone ff"

# Function to start Hydra (brute force on SSH)
function hydra_attack() {
    echo "Starting Hydra attack on SSH..."
    hydra -l root -P /path/to/passwords.txt ssh://target_ip
}

# Function to edit a file using Nano
function edit_file() {
    echo "Opening Nano to edit the file..."
    nano /path/to/file.txt
}

# Function to scan the network with Nmap
function network_scan() {
    echo "Scanning the network with Nmap..."
    read -p "Enter the target IP address: " target_ip
    nmap -sP $target_ip
}

# Function to open Metasploit
function metasploit() {
    echo "Starting Metasploit Framework..."
    msfconsole
}

# Function to check network connectivity with Netcat
function netcat_test() {
    echo "Testing network connectivity with Netcat..."
    read -p "Enter the target IP address: " target_ip
    read -p "Enter the target port: " target_port
    nc -zv $target_ip $target_port
}

# Function to display system information (Linux command)
function system_info() {
    echo "Displaying system information..."
    uname -a
    df -h
    free -m
}

# Function to monitor running processes on Linux
function monitor_processes() {
    echo "Monitoring running processes..."
    ps aux
}

# Function to display network interfaces on Linux
function network_interfaces() {
    echo "Displaying network interfaces..."
    ifconfig
}

# Function to check open ports using Netstat
function netstat_check() {
    echo "Checking open ports with Netstat..."
    netstat -tuln
}

# Function to find available Wi-Fi networks using iwconfig
function wifi_scan() {
    echo "Scanning for available Wi-Fi networks..."
    iwconfig wlan0 scanning
}

# Function to update and upgrade the system (Linux command)
function system_update() {
    echo "Updating and upgrading system..."
    pkg update && pkg upgrade -y
}

# Function to check disk space (Linux command)
function disk_space() {
    echo "Displaying disk space usage..."
    df -h
}

# Function to check CPU usage (Linux command)
function cpu_usage() {
    echo "Displaying CPU usage..."
    top -n 1
}

# Function to check memory usage (Linux command)
function memory_usage() {
    echo "Displaying memory usage..."
    free -m
}

# Function to start SSH service on Termux
function start_ssh() {
    echo "Starting SSH service on Termux..."
    sshd
}

# Function to install a package (Linux/Termux command)
function install_package() {
    echo "Enter the package you want to install:"
    read -p "Package name: " package_name
    pkg install $package_name
}

# Function to check running services (systemctl)
function check_services() {
    echo "Checking running services..."
    systemctl list-units --type=service --state=running
}

# Function to scan a subnet with Nmap
function subnet_scan() {
    echo "Scanning subnet with Nmap..."
    read -p "Enter the subnet (e.g., 192.168.1.0/24): " subnet
    nmap -sP $subnet
}

# Function to check for vulnerabilities with Nikto
function nikto_scan() {
    echo "Running vulnerability scan with Nikto..."
    read -p "Enter the target URL: " target_url
    nikto -h $target_url
}

# Function to show system uptime
function system_uptime() {
    echo "Showing system uptime..."
    uptime
}

# Function to check firewall rules (Linux command)
function firewall_rules() {
    echo "Displaying current firewall rules..."
    iptables -L
}

# Function to start Apache web server
function start_apache() {
    echo "Starting Apache web server..."
    service apache2 start
}

# Simple menu to choose the function
echo "Choose an option:"
echo "1. Start Hydra (brute force on SSH)"
echo "2. Edit file with Nano"
echo "3. Scan network with Nmap"
echo "4. Start Metasploit"
echo "5. Test network connectivity with Netcat"
echo "6. Display system information"
echo "7. Monitor running processes"
echo "8. Display network interfaces"
echo "9. Check open ports with Netstat"
echo "10. Scan for available Wi-Fi networks"
echo "11. Update and upgrade system"
echo "12. Check disk space usage"
echo "13. Check CPU usage"
echo "14. Check memory usage"
echo "15. Start SSH service"
echo "16. Install a package"
echo "17. Check running services"
echo "18. Scan a subnet with Nmap"
echo "19. Run vulnerability scan with Nikto"
echo "20. Show system uptime"
read -p "Choose an option: " choice

# Execute the chosen function
case $choice in
    1)
        hydra_attack
        ;;
    2)
        edit_file
        ;;
    3)
        network_scan
        ;;
    4)
        metasploit
        ;;
    5)
        netcat_test
        ;;
    6)
        system_info
        ;;
    7)
        monitor_processes
        ;;
    8)
        network_interfaces
        ;;
    9)
        netstat_check
        ;;
    10)
        wifi_scan
        ;;
    11)
        system_update
        ;;
    12)
        disk_space
        ;;
    13)
        cpu_usage
        ;;
    14)
        memory_usage
        ;;
    15)
        start_ssh
        ;;
    16)
        install_package
        ;;
    17)
        check_services
        ;;
    18)
        subnet_scan
        ;;
    19)
        nikto_scan
        ;;
    20)
        system_uptime
        ;;
    *)
        echo "Invalid option."
        ;;
esac
