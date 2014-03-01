vagrant configuration for software development
=======

##basic_java_dev 
 -  It is basic basic configuration for java deleopment
 -  Provider is Virtual Box 
 -  For provisioning is used puppet
 -  The guest OS is Fedora 20 x64 with lightweight Mate desktop 
 -  Provisioning configuration has OpenJdk 1.7.x, git, maven 3.1x, intellij 13. 

To use the box Vagrant and Virtual Box is required. After checkout it is enough to run '''vagrant up''' in the 
basic_java_dev directory. The box itself and provisioned packages will be downloaded automatically.
