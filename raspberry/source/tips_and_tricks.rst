Tips & Tricks
=============

System Update
-------------

Do it regularly! With Raspbian (or any Debian) you can do it with ``apt-get``:

::

    $ sudo apt-get update
    $ sudo apt-get upgrade
    $ sudo apt-get dist-upgrade


SD Card Performance
-------------------

SD cards have very varying performances, and sometimes lower-class SD cards 
are faster than higher ones. See http://elinux.org/RPi_SD_cards for details
on verified speeds for specific cards. You can test a card in the Raspberry
with these commands:

::

    # Test Write Speed
    dd if=/dev/zero of=~/test.tmp bs=500K count=1024

    # Test Read Speed
    dd if=~/test.tmp of=/dev/null bs=500K count=1024

    # Cleanup
    rm ~/test.tmp
