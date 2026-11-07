# SPDX-License-Identifier: BSD-2-Clause
# Copyright (c) 2026 The Blueberry Pie OS Authors

TOOLS += chflags
chflags_SRCS := chflags/chflags.c
chflags_DIR := usr/bin
chflags_MANS := chflags/chflags.1:man1

TOOLS += chmod
chmod_SRCS := chmod/chmod_acl.c chmod/chmod.c
chmod_DIR := bin
chmod_MANS := chmod/chmod.1:man1

TOOLS += chown
chown_SRCS := chown/chown.c
chown_DIR := usr/sbin
chown_MANS := chown/chown.8:man8

TOOLS += cksum
cksum_SRCS := cksum/sum2.c cksum/sum1.c cksum/print.c cksum/crc32.c cksum/crc.c cksum/cksum.c
cksum_DIR := usr/bin
cksum_MANS := cksum/cksum.1:man1

TOOLS += compress
compress_SRCS := compress/zopen.c compress/compress.c
compress_DIR := usr/bin
compress_MANS := compress/compress.1:man1

TOOLS += cp
cp_SRCS := cp/utils.c cp/cp.c
cp_DIR := bin
cp_MANS := cp/cp.1:man1

TOOLS += dd
dd_SRCS := dd/position.c dd/misc.c dd/dd.c dd/conv_tab.c dd/conv.c dd/args.c
dd_DIR := bin
dd_LIBS := -lutil
dd_MANS := dd/dd.1:man1

TOOLS += df
df_SRCS := df/df.c
df_DIR := bin
df_LIBS := -lxo -lutil
df_MANS := df/df.1:man1

TOOLS += du
du_SRCS := du/du.c
du_DIR := usr/bin
du_LIBS := -lutil
du_MANS := du/du.1:man1

TOOLS += gzip
gzip_SRCS := gzip/futimens.c gzip/gzip.c
gzip_DIR := usr/bin
gzip_FLAGS := '-DGZIP_APPLE_VERSION="$(PIE_UPSTREAM_VERSION)"'
gzip_LIBS := -lbz2 -llzma -lz
gzip_MANS := gzip/gzip.1:man1

TOOLS += install
install_SRCS := install/xinstall.c
install_DIR := usr/bin
install_LIBS := -lmd
install_MANS := install/install.1:man1

TOOLS += ipcrm
ipcrm_SRCS := ipcrm/ipcrm.c
ipcrm_DIR := usr/bin
ipcrm_MANS := ipcrm/ipcrm.1:man1

TOOLS += ipcs
ipcs_SRCS := ipcs/ipcs.c
ipcs_DIR := usr/bin
ipcs_FLAGS := -iquote $(SDK)/System/Library/Frameworks/Kernel.framework/PrivateHeaders -iquote $(SDK)/System/Library/Frameworks/System.framework/PrivateHeaders
ipcs_MANS := ipcs/ipcs.1:man1

TOOLS += ln
ln_SRCS := ln/ln.c
ln_DIR := bin
ln_MANS := ln/ln.1:man1 ln/symlink.7:man7

TOOLS += ls
ls_SRCS := ls/cmp.c ls/ls.c ls/print.c ls/util.c
ls_DIR := bin
ls_FLAGS := -D__FBSDID=__RCSID -DCOLORLS
ls_LIBS := -lutil -lcurses
ls_MANS := ls/ls.1:man1

TOOLS += mkdir
mkdir_SRCS := mkdir/mkdir.c
mkdir_DIR := bin
mkdir_MANS := mkdir/mkdir.1:man1

TOOLS += mkfifo
mkfifo_SRCS := mkfifo/mkfifo.c
mkfifo_DIR := usr/bin
mkfifo_MANS := mkfifo/mkfifo.1:man1

TOOLS += mknod
mknod_SRCS := mknod/pack_dev.c mknod/mknod.c
mknod_DIR := sbin
mknod_MANS := mknod/mknod.8:man8

TOOLS += mv
mv_SRCS := mv/mv.c
mv_DIR := bin
mv_MANS := mv/mv.1:man1

TOOLS += pathchk
pathchk_SRCS := pathchk/pathchk.c
pathchk_DIR := usr/bin
pathchk_MANS := pathchk/pathchk.1:man1

TOOLS += pax
pax_SRCS := pax/ar_io.c pax/ar_subs.c pax/buf_subs.c pax/cache.c pax/cpio.c pax/file_subs.c pax/ftree.c pax/gen_subs.c pax/getoldopt.c pax/options.c pax/pat_rep.c pax/pax.c pax/pax_format.c pax/sel_subs.c pax/tables.c pax/tar.c pax/tty_subs.c
pax_DIR := bin
pax_MANS := pax/pax.1:man1

TOOLS += rm
rm_SRCS := rm/rm.c
rm_DIR := bin
rm_MANS := rm/rm.1:man1

TOOLS += rmdir
rmdir_SRCS := rmdir/rmdir.c
rmdir_DIR := bin
rmdir_MANS := rmdir/rmdir.1:man1

TOOLS += stat
stat_SRCS := stat/stat.c
stat_DIR := usr/bin
stat_MANS := stat/stat.1:man1

TOOLS += touch
touch_SRCS := touch/touch.c
touch_DIR := usr/bin
touch_MANS := touch/touch.1:man1

TOOLS += truncate
truncate_SRCS := truncate/truncate.c
truncate_DIR := usr/bin
truncate_LIBS := -lutil
truncate_MANS := truncate/truncate.1:man1

TOOLS += xattr
xattr_SRCS := xattr/xattr.c
xattr_DIR := usr/bin
xattr_MANS := debian/man/xattr.1:man1

LINKS += bin/ln:bin/link
LINKS += bin/rm:bin/unlink
LINKS += usr/bin/cksum:usr/bin/sum
LINKS += usr/bin/compress:usr/bin/uncompress
LINKS += usr/bin/stat:usr/bin/readlink
LINKS += usr/sbin/chown:usr/bin/chgrp
MANS += chown/chgrp.1:man1
MANS += ln/link.1:man1
MANS += stat/readlink.1:man1
MANS += cksum/sum.1:man1
MANS += compress/uncompress.1:man1
MANS += rm/unlink.1:man1
