# Example FuseSoc project for Vivado backend

It shows how to:
1. Build for different targets with different configurations based on:
  * different filesets
  * VHDL generics defined in .core file
2. Set synthesis options

To build targets run:

custom\_target\_1:
```
fusesoc --cores-root . run --target custom_target_1 ::fusesoc_example
```
custom\_target\_2:
```
fusesoc --cores-root . run --target custom_target_2 ::fusesoc_example
```

**NOTE:**

To make it work you need the latest master commit from edalize.
If FuseSoc is not installed on your machine you want to run:
```
sudo pip install fusesoc
sudo pip uninstall edalize
sudo pip install git+git://github.com/olofk/edalize@master
```
If you want, install wihtout sudo with --user.
