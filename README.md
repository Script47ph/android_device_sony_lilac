Device configuration for Sony Xperia XZ1 Compact (lilac)
========================================================

Description
-----------

This repository is for Pixel Experience Plus on Sony Xperia XZ1 Compact (lilac).

How to build Pixel Experience Plus
----------------------

* Make a workspace:

        mkdir -p ~/pe
        cd ~/pe

* Initialize the repo:

        repo init -u https://github.com/PixelExperience/manifest -b ten-plus

* Create a local manifest:

        git clone https://github.com/shank03/local_manifests.git -b pe-10 .repo/local_manifests

* Sync the repo:

        repo sync -c -j6 --no-clone-bundle -no-tags

* No need to extract vendor blobs, roomservice.xml will do it for us.

* Setup the environment

        . build/envsetup.sh
        lunch aosp_lilac-userdebug

* Build LineageOS

        mka -j8 bacon
