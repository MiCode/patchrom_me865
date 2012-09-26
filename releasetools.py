import common
import edify_generator

def AddAssertions(info):
    info.script.AppendExtra('set_perm_recursive(0, 2000, 06755, 06755, "/system/xbin");');
    info.script.AppendExtra('symlink("/pds/wifi/nvs_map_mac80211.bin", "/system/etc/firmware/ti-connectivity/wl12xx-fac-nvs.bin");');
    info.script.AppendExtra('symlink("/data/misc/wifi/firmware/wl12xx-nvs.bin", "/system/etc/firmware/ti-connectivity/wl12xx-upd-nvs.bin");');
    edify = info.script
    for i in xrange(len(edify.script)):
        if "assert" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("assert", "ui_print")
        elif "unmount(\"/system\");" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("unmount(\"/system\");", "mount(\"ext3\", \"EMMC\", \"/dev/block/mmcblk1p21\", \"/system\");")
        elif "ui_print(\"Update Boot image...\");" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("ui_print(\"Update Boot image...\");", "")
        elif "format" in edify.script[i] and "/dev/block/mmcblk1p21" in edify.script[i]:
            edify.script[i] = edify.script[i].replace("format(\"ext3\", \"EMMC\", \"/dev/block/mmcblk1p21\", \"0\");", 'delete_recursive("/system/app", "/system/bin", "/system/etc", "/system/fonts", "/system/framework", "/system/lib", "/system/media", "/system/tts", "/system/usr", "/system/vendor", "/system/xbin","/system/build.prop", "/system/default.prop","/system/multiconfig","/system/lost+found","recovery-from-boot.p","0");')
    return 

def FullOTA_InstallEnd(info):
    AddAssertions(info)

def IncrementalOTA_InstallEnd(info):
    AddAssertions(info)
