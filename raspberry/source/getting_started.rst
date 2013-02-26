Getting Started
===============

This guide is under construnction. Feel free to contact me via chris@linuxuser.at with feedback and ideas.


Essential Websites
------------------

These are some of the essential websites around the Raspberry Pi:

Community and Q&A

* `Raspberry Forums <http://www.raspberrypi.org/phpBB3>`_, the primary community website with lots of people.
  Questions are answered quickly and you'll find many friendly hackers.
* `Reddit - Raspberry_Pi <http://www.reddit.com/r/raspberry_pi/>`_, mostly showing off pictures of projects
* `Stack Overflow <http://stackoverflow.com/questions/tagged/raspberry-pi>`_, a great community for source code related questions and answers
* `The MagPie <http://www.themagpi.com/>`_, a free monthly magazine
* There's also an active IRC channel ``#raspberrypi`` on freenode

Wiki Pages

* http://elinux.org/RaspberryPiBoard
* http://elinux.org/RPi_VerifiedPeripherals
* http://elinux.org/RPi_SD_cards
* http://elinux.org/RPi_Low-level_peripherals
* http://elinux.org/RPi_Hardware

Learning

* http://learn.adafruit.com/category/raspberry-pi (very good! ++)



Prerequisites
-------------

-


Preparing the SD Card
---------------------

-


Programming with Python
=======================

`Python <http://www.python.org>`_ is a versatile, easy-to-learn programming language. Most recommended! It's already installed on
all Raspberries, as well as part of all Linux and OSX distributions. You can start the Python interpreter via the ``python`` command::

    $ python

Now you can simply enter Python commands and they'll be executed::

    >>> print("Hello World")
    Hello World

    >>> 1 + 2 + 3 + 4
    10
    >>> 

**Download Geany** (`geany.org/download <http://www.geany.org/Download/Releases>`_)::

    $ sudo apt-get install geany


Geany is a free Python IDE which makes it super easy to write and test Python code. A good IDE will save you countless hours!
Other free IDE's include Eclipse, ...


Python Tutorial
---------------

A great way to get to know Python is to just try it out. Make sure you set aside enough time (2 hours min.)!

* http://docs.python.org/2/tutorial/introduction.html

**Type out each and every command in this tutorial yourself!**. Trust me
on this. It makes it super easy to follow your curiosity and play with code
variations (eg. what happens if i change this...?).

Have fun!


Python GPIO Programming
-----------------------

There are several libraries which make it easy to work with the GPIOs:

* `RPIO <http://pypi.python.org/pypi/RPIO>`_
* `RPi.GPIO <http://pypi.python.org/pypi/RPi.GPIO>`_
* `WiringPi <https://github.com/WiringPi>`_

