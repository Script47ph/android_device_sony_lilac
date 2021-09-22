export HAVOC_MAINTAINER="Shashank Verma (shank03)"
export HAVOC_GROUP_URL=https://t.me/havoc_lilac
export HAVOC_BUILD_TYPE=Official
export WITHOUT_CHECK_API=true

# Fix mem leak issue from gralloc
cp device/sony/lilac/patches/mem.patch hardware/qcom-caf/msm8998/display
cd hardware/qcom-caf/msm8998/display && git apply mem.patch
