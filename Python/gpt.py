from scapy.all import *

# Global variables
target_mac = "D8:28:C9:11:F1:2E"
access_points = {}

def process_packet(pkt):
    if pkt.haslayer(Dot11) and pkt.type == 0:
        handle_management_frame(pkt)

def handle_management_frame(pkt):
    if pkt.subtype == 4 or pkt.subtype == 8:
        mac_address = pkt.addr2.upper()
        ssid = pkt.info.decode() if pkt.info else "<Hidden SSID>"
        check_mac_address(mac_address, ssid, pkt.addr3)

def check_mac_address(mac_address, ssid, ap_mac):
    if mac_address == target_mac:
        if ssid in access_points:
            handle_existing_association(mac_address, ssid, ap_mac)
        else:
            handle_new_association(mac_address, ssid, ap_mac)

def handle_existing_association(mac_address, ssid, ap_mac):
    if access_points[ssid] != ap_mac:
        print(f"[!] {mac_address} switched access points from {access_points[ssid]} to {ap_mac} (SSID: {ssid})")
        access_points[ssid] = ap_mac

def handle_new_association(mac_address, ssid, ap_mac):
    access_points[ssid] = ap_mac
    print(f"[+] {mac_address} associated with access point {ap_mac} (SSID: {ssid})")

def main():
    print(f"Monitoring MAC address: {target_mac}")

    # Sniff WiFi packets on the specified interface
    sniff(iface="wlan0mon", prn=process_packet, store=0)

if __name__ == "__main__":
    main()
