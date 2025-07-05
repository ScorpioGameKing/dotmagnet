# What is dotmagnet?

While working on my first rice and creating the basic install guide I realized a few things. The install process isn't
hard, it's just a lot. Some things we need to do can be determined programatically, some things need to be done by the 
user. And often times to get what we want there's a lot of groundwork. So what if we could write a simple install script
for each application or set of applications we wanted and then could chain the ones we want togther to effectively 
rebuild our system with one command. That's the grand idea at least, currently we have 3 options. `install.sh` can be used
to set up everything in the `installers` directory, `uninstall.sh` does the reverse using the `uninstallers` directory.
`re-build.sh` simply chains the two together. 
