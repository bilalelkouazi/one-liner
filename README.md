# one-liner

##### search string print each match, count lines
gawk '/TERM/ {print $0}' INPUT.file | wc -l

###### get directory recursive 
wget -r --tries=5

###### ping multiple targets
printf "1.1.1.1\n8.8.8.8.\n8.8.4.4" | xargs -n 1 ping -c 5 

###### minimal ping
ping 1.1.1.1 | cut -d = -f 4

###### search in multiple txt files
find -name "*.txt" | xargs grep -i "search"

##### gracefully turn off all proxmox vms
for vm in $(qm list | grep running | awk '{print $2}'); do qm shutdown $vm; done
