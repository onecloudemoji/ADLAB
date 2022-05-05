# ADLAB

Packer and Vagrant combo to bring up a domain controller populated by BadBlood.

As one would assume, you need to install Vagrant. You also need to install the plugin, by running ````vagrant plugin install vagrant-vmware-desktop````. You then also need this. I dont recall why you need both and I dont care to find out. https://www.vagrantup.com/docs/providers/vmware/vagrant-vmware-utility

After installing Vagrant, it will have added itself to your path. Download packer and put the exe in the same location as the vagrant exe, so it too is in your path. https://www.packer.io/downloads

You will need your own Server 2016 ISO. If you choose another variant, make amendments to the Autounattend.xml to reflect this choice, and the ````DC.json```` to point to the right ISO/hash. If you also use a different version than DataCentre, there are keys here. https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/jj612867(v=ws.11)

You will need a virtual network called ````VMnet18```` set to the range of ````192.168.1.0/24````, otherwise you will need to edit the ````DC_vagrant_file.template```` to reflect the appropriate network name, as well as the winrm address vagrant will try to connect to, AND the ````DC_Set_IP.ps1````

This is set to work with Vmware Workstation. It will not run on anything else. Its performing on the fly .vmx changes when provisioning the vm. You can find more about this here. http://sanbarrow.com/vmx/vmx-network-advanced.html

There are many, many left over artifacts from my attempts to get this to run. I havent cleaned them up and I dont intend on doing it either. Eventually a new version will come out with a deployed workstation.
