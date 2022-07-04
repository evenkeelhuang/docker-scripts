help () {
  echo "用法: $(basename $0) [PYNQ DIR] [Board]"
  exit 1
}

if [ $# -eq 0 ]; then
    help
fi

if [ -z $2 ]; then
    help
fi

image_folder=$1/sdbuild/output/boot/$2
BOOT=/media/even/BOOT

echo "Clean old boot images..."
sudo rm -rf $BOOT/*

echo "Copy boot images..."
sudo cp $image_folder/boot.scr $BOOT/
sudo cp $image_folder/BOOT.BIN $BOOT/
sudo cp $image_folder/image.ub $BOOT/

echo "Wait for 3s"
sleep 3

echo "Umount..."
sudo umount $BOOT
sudo umount $rootfs

echo "OK"
