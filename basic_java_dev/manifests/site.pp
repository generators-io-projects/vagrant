 group { "puppet":
   ensure => "present",
 }

File { owner => 0, group => 0, mode => 0644 }

file { '/etc/motd' :
  content => "Welcome to your Vagrant-built virtual machine!  Managed by Puppet.\n"
 }

package { 'java-1.7.0-openjdk-devel':
  ensure => present,
}

package { 'git':
  ensure => present,
}

package {"intellij-idea":
  provider=>rpm,
  ensure=>installed,
  source=>"http://repository.softwaria.net:8080/service/local/repositories/thirdparty/content/jetbrains/intellij-idea/13.0.2-1.x86_64/intellij-idea-13.0.2-1.x86_64.rpm",
}

package {"maven":
  provider=>rpm,
  ensure=>installed,
  source=>"http://repository.softwaria.net:8080/service/local/repositories/thirdparty/content/org/apache/maven/3.1.1-1.x86_64/maven-3.1.1-1.x86_64.rpm",
}
