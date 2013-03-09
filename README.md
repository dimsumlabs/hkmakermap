hkmakermap
==========

Backs up the HK/SZ DIY Computer, Electronics (Hackjam/DSL) map's KML


Map
===

The map is at http://goo.gl/maps/akYqd .


Backing it up
=============

Sometimes the map gets vandalised.  To combat that, run the
map-backup.sh script every so often:

  map-backup.sh

It will backup the map to the git repo (expected to be in the same
directory as the script) with the name kml/hkmakermap-YYYYMMDD.kml .

If you are allowed to push to git@github.com:dimsumlabs/hkmakermap.git
, run:

  git push git@github.com:dimsumlabs/hkmakermap.git

You may have to pull first if your local repo was a bit out of date.


To publish the KML, click the "EDIT" button in Google Maps, then click
the "Import" link and find the KML file you want.



TODO
====

Add publishing, via something like:

    To publish the KML, run:

     map-backup.sh publish kml/hkmakermap-YYYYMMDD.kml


Dependencies
============

* curl
* git



License
=======

This code is licensed under the GPLv3+.  See the file COPYING for
details.





