help () {
  echo "用法: $(basename $0) [Rootfs file]"
  exit 1
}

if [ $# -eq 0 ]; then
    help
fi

rootfs=/media/even/rootfs

echo "Clean old rootfs..."
sudo rm -rf $rootfs/*
sync

echo "Copy rootfs..."
sudo tar zxf $1 -C $rootfs/

sync
sync

echo "OK"
