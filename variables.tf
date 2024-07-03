variable "location" {
  type = string
  description = "location"
  default = "south india"
}

variable "resource_group_name" {
  type = string
  description = "This variable defines the Resource Group"
  default = "terraform-aks"
}

variable "environment" {
  type = string  
  description = "This variable defines the Environment"  
  #default = "dev2"
}

variable "ssh_public_key" {
  default = "~/.ssh/id_rsa.pub"
  description = "This variable defines the SSH Public Key for Linux k8s Worker nodes"  
}

variable "windows_admin_username" {
  type = string
  default = "azureuser"
  description = "This variable defines the Windows admin username k8s Worker nodes"  
}

# Windows Admin Password for k8s worker nodes
variable "windows_admin_password" {
  type = string
  default = "P@ssw0rd1234"
  description = "This variable defines the Windows admin password k8s Worker nodes"  
}


