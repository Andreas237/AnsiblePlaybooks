# AnsiblePlaybooks


## Raspberry-Pi Zeros: Home Network

### Steps taken to setup a Raspberr-Pi
 0. Configure SD card
 1. Check Wifi to see that the Pi's show up
 2. Pull down repo
  - How to setup SSH keys
 3. Run configuration script for the Pi.
    - Update
    - Upgrade
    - Install Python 3
    - Create a virtual environment
    - Start virtual environment
    - Install packages in virtual environment

4. Run `playbook_pi-zero.yaml`

### Files

`playbook_pi-zero.yaml` Install Djano, run my site.  Can github ssh be configured through Ansible?

`setup_pre_boot.sh` writes the OS image to an SD card, enables SSH, and configures WiFi.  All done ahead of booting the Pi.

`setup_post_boot.sh` update packages, install ansible and virtualenv, activate the virtualenv, run the playbook.


`wpa_supplicant.conf` the file with my local WiFi configuration.



### Status
Provisioned 4GB, 8GB and 64GB SD cards.  Haven't tested whether they're connected to the network.  When HDMI comes in check that.

## References

 - Setting up `SSH` and wifi after installing Raspbian and before logging in [here](https://zedt.eu/tech/linux/how-to-pre-configure-raspberry-pi-for-remote-ssh-and-wifi/).

 - Provision Pi with ansible and shell scripts [here](https://leonelgalan.com/2020/04/24/ansible-raspberry-pi.html).

 - Setup Debian with Ansible [here](http://www.lpenz.org/articles/ansiblerpi/index.html).

 - Ansible configures SSH to private Github repo [here](https://www.jeffgeerling.com/blog/2018/cloning-private-github-repositories-ansible-on-remote-server-through-ssh).
