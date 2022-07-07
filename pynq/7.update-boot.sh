help () {
  echo "用法: $(basename $0) [Board]"
  exit 1
}

if [ $# -eq 0 ]; then
    help
fi

image_folder=PYNQ/sdbuild/output/boot/$1
BOOT=/media/even/BOOT

echo "Clean old boot images..."
sudo rm -rf $BOOT/*

echo "Copy boot images..."
sudo cp $image_folder/boot.scr $BOOT/
sudo cp $image_folder/BOOT.BIN $BOOT/
sudo cp $image_folder/image.ub $BOOT/

sync
sync

echo "OK"
