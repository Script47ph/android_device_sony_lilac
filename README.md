Device configuration for Sony Xperia XZ1 Compact (lilac)
========================================================

Description
-----------

This repository is for xdroidOSS (Snow Cone) on Sony Xperia XZ1 Compact (lilac).

How to build
----------------------

* Make a workspace:
    ```bash
    mkdir -p ~/Xdroid && \
    cd ~/Xdroid
    ```

* Initialize the repo:

    ```bash
    repo init --depth=1 -u https://github.com/xdroid-oss/xd_manifest -b twelve
    ```

* Create a local manifest:

    ```bash
    mkdir -p .repo/local_manifests && \
    vim .repo/local_manifests/roomservice.xml
    ```

    ```xml
    <?xml version="1.0" encoding="UTF-8"?>
    <manifest>
        <!-- SONY -->
        <project name="whatawurst/android_kernel_sony_msm8998" path="kernel/sony/msm8998" remote="github" revision="lineage-19.1" />
        <project name="Havoc-Devices/android_device_sony_yoshino-common" path="device/sony/yoshino-common" remote="github" revision="twelve" />
        <project name="Script47ph/android_device_sony_lilac" path="device/sony/lilac" remote="github" revision="xdroid-12" />

        <!-- blobs for lilac -->
        <project name="Havoc-Devices/android_vendor_sony_lilac" path="vendor/sony/lilac" remote="github" revision="twelve" />
    </manifest>
    ```

* Sync the repo:

    ```bash
    repo sync -c --force-sync --no-tags --no-clone-bundle -j$(nproc --all)
    ```

* Setup the environment
    
    ```bash
    . build/envsetup.sh && \
    lunch xdroid_lilac-userdebug
    ```

* Build

    ```bash
    make -j$(nproc --all) xd
    ```
