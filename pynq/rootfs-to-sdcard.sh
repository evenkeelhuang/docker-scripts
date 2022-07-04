help () {
  echo "用法: $(basename $0) [Rootfs file]"
  exit 1
}

if [ $# -eq 0 ]; then
    help
fi

image_folder=$1/images/linux
BOOT=/media/even/BOOT
rootfs=/media/even/rootfs

echo "Clean old rootfs..."
sudo rm -rf $rootfs/*

echo "Copy rootfs..."
sudo tar zxf $1 -C $rootfs/

echo "Wait for 3s"
sleep 3

echo "Umount..."
sudo umount $BOOT
sudo umount $rootfs

echo "OK"
