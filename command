sudo apt-get update && upgrade

sudo apt-get install cups

sudo usermod -a -G lpadmin * (replace the asterisk with your device name)

sudo cupsctl --remote-any

sudo /etc/init.d/cups restart

hostname -I

http://*:631 (replace the asterisk with your b860h ip address)

sudo nano /etc/cups/cupsd.conf

  Browsing On
  <location>
    Allow all
  </location>
  <locatiion /admin>
    Allow all
  </location>

sudo apt-get install samba

sudo nano /etc/samba/smb.conf

  # CUPS printing.  
[printers]
comment = All Printers
browseable = no
path = /var/spool/samba
printable = yes
guest ok = yes
read only = yes
create mask = 0700

# Windows clients look for this share name as a source of downloadable
# printer drivers
[print$]
comment = Printer Drivers
path = /var/lib/samba/printers
browseable = yes
read only = no
guest ok = no

sudo systemctl restart smbd

