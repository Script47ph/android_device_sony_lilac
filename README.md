Device configuration for Sony Xperia XZ1 Compact (lilac)
========================================================

Description
-----------

This repository is for Nusantara Project (Snow Cone) on Sony Xperia XZ1 Compact (lilac).

How to build Nusantara Project
----------------------

* Make a workspace:

        mkdir -p ~/nusantara
        cd ~/nusantara

* Initialize the repo:

        repo init --depth=1 -u https://github.com/NusantaraProject-ROM/android_manifest -b 12

* Create a local manifest:

        vim .repo/local_manifests/roomservice.xml

        <?xml version="1.0" encoding="UTF-8"?>
        <manifest>
            <!-- SONY -->
            <project name="whatawurst/android_kernel_sony_msm8998" path="kernel/sony/msm8998" remote="github" revision="lineage-19.1" />
            <project name="Havoc-Devices/android_device_sony_yoshino-common" path="device/sony/yoshino-common" remote="github" revision="twelve" />
            <project name="Script47ph/android_device_sony_lilac" path="device/sony/lilac" remote="github" revision="nusantara-12.1" />

            <!-- blobs for lilac -->
            <project name="Havoc-Devices/android_vendor_sony_lilac" path="vendor/sony/lilac" remote="github" revision="twelve" />
        </manifest>

* Sync the repo:

        repo sync -c --force-sync --no-tags --no-clone-bundle -j$(nproc --all)

* Setup the environment

        . build/envsetup.sh
        lunch nusantara_lilac-userdebug

* Build LineageOS

        make -j$(nproc --all) bacon
