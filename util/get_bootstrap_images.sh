ARCH=x86_64

# list available files 
# openshift-install coreos print-stream-json | grep -Eo 'https.*(kernel-|initramfs.|rootfs.)\w+(\.img)?'

for file in $(openshift-install coreos print-stream-json | grep -Eo 'https.*(kernel-|initramfs.|rootfs.)\w+(\.img)?' | grep "/$ARCH/" | uniq)
do
    wget $file
done
