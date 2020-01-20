# Python

TODO: Enter the cookbook description here.

1. We are spinning up an Ubuntu machine with the help of VirtualBox and Vagrant that automates the project
for that we start doing a 'vagrant init' to create our Vagrantfile
2. We creates a cookbook named Python_cookbook that will provision the Virtual Machine through Chef
3. Berksfile
4.


5. We use Jenkins as slave creating 2 jobs: the CI job will listen for any change in our cookbook set in the repository using a webhook and
run a test, the upstream job will merge all changes to master branch once the test is pass
6. We have createn
6. Packer will replicate that provision cookbook generating automaticaly an Amazon Image (AMI) in AWS.
run a packer file


