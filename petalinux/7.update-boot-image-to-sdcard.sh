if [ $# -eq 0 ]; then
  echo "$1 <PROJECT_NAME>"
  exit 1
fi

image_folder=$1/images/linux
BOOT=/media/even/BOOT
rootfs=/media/even/rootfs

echo "Clean old images..."
sudo rm -rf $BOOT/*
sudo rm -rf $rootfs/*

echo "Copy boot images..."
sudo cp $image_folder/boot.scr $BOOT/
sudo cp $image_folder/BOOT.BIN $BOOT/
sudo cp $image_folder/image.ub $BOOT/

echo "Copy rootfs..."
sudo tar zxf $image_folder/rootfs.tar.gz -C $rootfs/

echo "Wait for 3s"
sleep 3

echo "Umount..."
sudo umount $BOOT
sudo umount $rootfs

echo "OK"
