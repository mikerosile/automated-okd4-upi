# An automated approach to OpenShift (OKD) 4.14 User Provisioned Installation (UPI)

This repository contains information and configure files specific for deploying a 3-node OKD cluster in which the control plane nodes will run workloads removing the need for worker nodes.

I was inspired by [github.com/eduardolucioac/okd_bare_metal](https://github.com/eduardolucioac/okd_bare_metal)'s repository and scripts, and decided to make the following improvements:

* Decided to use Fedora 38 Server (instead of CentOS) for the OKD Services node
  * The nodes in the OpenShift cluster use Fedora CoreOS, so I thought it best to keep everything Fedora.
* Use Ansible for provisioning the OKD Services node
  * Reduce humor error by automating as much as possible, playbook can be executed repeatedily due to Ansible's idemponent nature.
* Use the OKD Services node as a PXEBOOT server
  * Great for automating the deployment of bare metal or virtual machines.


## Dependencies

* Python v3.9+
* Ansible core v2.10+

## Requirements

* a server (or VM) running Fedora 38, with 2x NICs (the OKD Services node)

## References
* https://docs.okd.io/4.14/installing/installing_bare_metal/installing-bare-metal.html
* https://docs.fedoraproject.org/en-US/fedora-coreos/live-reference/
* https://github.com/eduardolucioac/okd_bare_metal
