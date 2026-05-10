# DHCP Security Analysis

##  Opis projektu
Celem projektu była analiza podatności protokołu DHCP na ataki w warstwie 2 modelu OSI oraz implementacja mechanizmów obronnych na urządzeniach sieciowych.

##  Wykorzystane technologie
**Język:** Python (biblioteka Scapy) 
**Środowisko:** MikroTik RouterOS (fizyczny switch/router) 
**Analiza:** Wireshark 

##  Funkcjonalności skryptów
1. **DHCP Starvation:** Skrypt w Pythonie wykorzystujący bibliotekę Scapy do generowania pakietów DHCP DISCOVER z dynamicznie zmienianym adresem MAC (MAC Spoofing).
2. **Rogue DHCP:** Skrypt implementujący mechanizm podstawienia nieautoryzowanego serwera (Rogue Server) w celu przechwycenia ruchu (MitM).

##  Disclaimer
This tool is for educational and ethical hacking purposes only. Use it only in isolated lab environments or networks where you have explicit permission. Unauthorized use against systems is illegal.

## Autor
**Jakub Malisz** 

