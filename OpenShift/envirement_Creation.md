# OpenShift OKD Home Lab Setup Using Ansible

## 1. Environment Preparation:

### a. Hardware & OS:
- **1.1** Identify the hardware specifications for the master, worker, and optional infra nodes.
  - 1.1.1 Check for CPU, memory, and storage requirements.
  - 1.1.2 Determine the number of nodes required.
  
- **1.2** Install a supported OS on each machine.
  - 1.2.1 Download the appropriate OS ISO or image.
  - 1.2.2 Install the OS using a bootable drive or virtual machine provisioning.
  - 1.2.3 Perform initial system setup and updates.

### b. Networking:
- **1.3** Set static IP addresses for all nodes.
  - 1.3.1 Choose a dedicated IP range for the cluster.
  - 1.3.2 Assign IPs based on node roles.
  
- **1.4** Ensure all nodes can communicate with each other.
  - 1.4.1 Test SSH connectivity from the master node to worker nodes.
  - 1.4.2 Check for firewall configurations and necessary ports.
  
- **1.5** Set up domain and DNS.
  - 1.5.1 Decide on a domain name for the cluster.
  - 1.5.2 Configure DNS resolution for the nodes and services.

## 2. Ansible Setup:

### a. Installation:
- **2.1** Install Ansible.
  - 2.1.1 Add Ansible’s repository.
  - 2.1.2 Use package manager (e.g., `yum` or `apt`) to install Ansible.
  
- **2.2** Prepare the inventory file.
  - 2.2.1 Group nodes based on their roles: master, worker, infra.
  - 2.2.2 Define variables if necessary, such as user credentials or specific versions.

### b. Playbook Preparation:
- **2.3** Write Ansible tasks for system updates and prerequisites.
  - 2.3.1 Ensure system packages are updated.
  - 2.3.2 Install required dependencies and libraries.
  
- **2.4** Configure Docker/containerd tasks.
  - 2.4.1 Install Docker or containerd packages.
  - 2.4.2 Start and enable the respective services.
  - 2.4.3 Configure users and permissions.
  
- **2.5** Define tasks for OpenShift installation.
  - 2.5.1 Download and install OpenShift binaries.
  - 2.5.2 Set up configurations and certificates.
  
- **2.6** Post-installation tasks.
  - 2.6.1 Deploy internal OpenShift router and registry.
  - 2.6.2 Set up storage solutions, if any (like NFS, iSCSI).
  - 2.6.3 Configure logging and monitoring agents.

## 3. OpenShift OKD Deployment Using Ansible:

### a. Pre-deployment:
- **3.1** Test connectivity.
  - 3.1.1 Use `ansible -m ping` to ensure all nodes are reachable.
  - 3.1.2 Fix any SSH or connectivity issues.
  
- **3.2** Dry-run the playbook.
  - 3.2.1 Use the `--check` flag with Ansible to perform a dry-run.
  - 3.2.2 Review outputs for any potential issues or errors.

### b. Deployment:
- **3.3** Execute the Ansible playbook.
  - 3.3.1 Monitor the output, noting any failed tasks.
  - 3.3.2 Check logs in case of failures and adjust playbook accordingly.

## 4. Post-Deployment Verification:
- **4.1** Access the OpenShift console.
  - 4.1.1 Navigate to the provided URL after installation.
  - 4.1.2 Log in using default credentials and change them.
  
- **4.2** Deploy a test application.
  - 4.2.1 Use sample templates or containers.
  - 4.2.2 Check if the application is accessible and running correctly.
  
- **4.3** Test OpenShift functionalities.
  - 4.3.1 Scale the test application and observe the behavior.
  - 4.3.2 Review logs, metrics, and monitoring dashboards.

## 5. Ongoing Management:

### a. Updates & Maintenance:
- **5.1** Schedule periodic playbook runs.
  - 5.1.1 Use tools like `cron` for regular updates.
  - 5.1.2 Monitor outputs for issues.
  
- **5.2** Backup configurations and data.
  - 5.2.1 Determine backup frequency (daily, weekly).
  - 5.2.2 Store backups in secure, redundant storage.

### b. Scaling & Optimization:
- **5.3** Modify the playbook for future changes.
  - 5.3.1 Add tasks for new nodes or resources.
  - 5.3.2 Adjust configurations for performance or security.
  
- **5.4** Regularly monitor cluster health.
  - 5.4.1 Use integrated tools or external solutions like Prometheus.
  - 5.4.2 Act on alerts and optimize resources as necessary.

## 6. Cleanup and Teardown:
- **6.1** Run cleanup tasks.
  - 6.1.1 Stop and delete applications and services.
  - 6.1.2 Remove nodes or decommission resources.
  
- **6.2** Ensure resources are returned to their initial state.
  - 6.2.1 Verify all nodes are free of OpenShift components.
  - 6.2.2 Check storage and network configurations.
