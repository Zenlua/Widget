# Để true để bỏ qua Mount system
SKIPMOUNT=false
# Để true nó sẽ kết hợp system.prop vào build.prop
PROPFILE=false
# Để true post-fs-data.sh được sử dụng
POSTFSDATA=false
# Để true để service.sh được sử dụng
LATESTARTSERVICE=false

export MODPATH=$MODPATH
Checknn="$(grep -acm1 'vi-VN' /data/system/users/0/settings_system.xml)"

# Giới thiệu
print_modname() {
ui_print " "
[ "$Checknn" == 1 ] && ui_print "  Tên: Widget OS by Kakathic" || ui_print "  Name: Widget OS by Kakathic"
ui_print " "
}

# Bắt đầu cài đặt
on_install() {
unzip -o -j "$ZIPFILE" bin/* -d $MODPATH >&2
chmod -R 755 $MODPATH
$MODPATH/widget.sh
[ "$Checknn" == 1 ] && ui_print "  Hoàn thành" || ui_print "  Complete"
ui_print " "
}

# Cấp quyền
set_permissions() { 
true
}
