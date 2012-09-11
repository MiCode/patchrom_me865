.class public Lcom/motorola/android/storage/MotoEnvironment;
.super Ljava/lang/Object;
.source "MotoEnvironment.java"


# static fields
.field public static final MEDIA_TYPE_EMULATED:Ljava/lang/String; = "EMULATED"

.field public static final MEDIA_TYPE_FLASH:Ljava/lang/String; = "FLASH"

.field public static final MEDIA_TYPE_SDCARD:Ljava/lang/String; = "SDCARD"

.field public static final MEDIA_TYPE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final MEDIA_TYPE_USBDISK:Ljava/lang/String; = "USBDISK"

.field private static final TAG:Ljava/lang/String; = "MotoEnvironment"

.field private static sMountService:Landroid/os/storage/IMountService;

.field private static sVolumeList:[Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/storage/MotoEnvironment;->sMountService:Landroid/os/storage/IMountService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalAltStorageDirectory()Ljava/io/File;
    .locals 4

    .prologue
    .line 88
    invoke-static {}, Lcom/motorola/android/storage/MotoEnvironment;->ready()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/motorola/android/storage/MotoEnvironment;->sVolumeList:[Landroid/os/Parcelable;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 92
    sget-object v2, Lcom/motorola/android/storage/MotoEnvironment;->sVolumeList:[Landroid/os/Parcelable;

    aget-object v1, v2, v0

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 93
    .local v1, sv:Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/mnt/usbdisk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .end local v1           #sv:Landroid/os/storage/StorageVolume;
    :goto_1
    return-object v2

    .line 91
    .restart local v1       #sv:Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v1           #sv:Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getExternalAltStorageState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/motorola/android/storage/MotoEnvironment;->ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-static {}, Lcom/motorola/android/storage/MotoEnvironment;->getExternalAltStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 115
    .local v0, altFile:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/android/storage/MotoEnvironment;->getExternalStorageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "removed"

    goto :goto_0
.end method

.method public static getExternalStorageDirectories()[Ljava/io/File;
    .locals 8

    .prologue
    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v1, array:Ljava/util/ArrayList;
    invoke-static {}, Lcom/motorola/android/storage/MotoEnvironment;->ready()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 157
    sget-object v0, Lcom/motorola/android/storage/MotoEnvironment;->sVolumeList:[Landroid/os/Parcelable;

    .local v0, arr$:[Landroid/os/Parcelable;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .local v4, s:Landroid/os/Parcelable;
    move-object v5, v4

    .line 158
    check-cast v5, Landroid/os/storage/StorageVolume;

    .line 159
    .local v5, volume:Landroid/os/storage/StorageVolume;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v0           #arr$:[Landroid/os/Parcelable;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #s:Landroid/os/Parcelable;
    .end local v5           #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/io/File;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/io/File;

    check-cast v6, [Ljava/io/File;

    return-object v6
.end method

.method public static getExternalStorageDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mountPoint"

    .prologue
    .line 199
    invoke-static {}, Lcom/motorola/android/storage/MotoEnvironment;->ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-static {p0}, Lcom/motorola/android/storage/MotoEnvironment;->getStorageVolumeFromPath(Ljava/lang/String;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 201
    .local v0, volume:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 205
    .end local v0           #volume:Landroid/os/storage/StorageVolume;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getExternalStorageMediaType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "mountPoint"

    .prologue
    .line 218
    invoke-static {}, Lcom/motorola/android/storage/MotoEnvironment;->ready()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    invoke-static {p0}, Lcom/motorola/android/storage/MotoEnvironment;->getStorageVolumeFromPath(Ljava/lang/String;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 220
    .local v0, volume:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_3

    .line 221
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const-string v1, "EMULATED"

    .line 232
    .end local v0           #volume:Landroid/os/storage/StorageVolume;
    :goto_0
    return-object v1

    .line 223
    .restart local v0       #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 224
    const-string v1, "FLASH"

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/mnt/usbdisk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    const-string v1, "USBDISK"

    goto :goto_0

    .line 228
    :cond_2
    const-string v1, "SDCARD"

    goto :goto_0

    .line 232
    .end local v0           #volume:Landroid/os/storage/StorageVolume;
    :cond_3
    const-string v1, "UNKNOWN"

    goto :goto_0
.end method

.method public static getExternalStorageState(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mountPoint"

    .prologue
    .line 134
    invoke-static {}, Lcom/motorola/android/storage/MotoEnvironment;->ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    :try_start_0
    sget-object v1, Lcom/motorola/android/storage/MotoEnvironment;->sMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p0}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 141
    :goto_0
    return-object v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MotoEnvironment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in getVolumeState() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const-string v1, "removed"

    goto :goto_0
.end method

.method private static getStorageVolumeFromPath(Ljava/lang/String;)Landroid/os/storage/StorageVolume;
    .locals 6
    .parameter "mountPoint"

    .prologue
    .line 237
    sget-object v0, Lcom/motorola/android/storage/MotoEnvironment;->sVolumeList:[Landroid/os/Parcelable;

    .local v0, arr$:[Landroid/os/Parcelable;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, s:Landroid/os/Parcelable;
    move-object v4, v3

    .line 238
    check-cast v4, Landroid/os/storage/StorageVolume;

    .line 239
    .local v4, volume:Landroid/os/storage/StorageVolume;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 243
    .end local v3           #s:Landroid/os/Parcelable;
    .end local v4           #volume:Landroid/os/storage/StorageVolume;
    :goto_1
    return-object v4

    .line 237
    .restart local v3       #s:Landroid/os/Parcelable;
    .restart local v4       #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v3           #s:Landroid/os/Parcelable;
    .end local v4           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isExternalStorageRemovable(Ljava/lang/String;)Z
    .locals 2
    .parameter "mountPoint"

    .prologue
    .line 176
    invoke-static {}, Lcom/motorola/android/storage/MotoEnvironment;->ready()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-static {p0}, Lcom/motorola/android/storage/MotoEnvironment;->getStorageVolumeFromPath(Ljava/lang/String;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 178
    .local v0, volume:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    .line 182
    .end local v0           #volume:Landroid/os/storage/StorageVolume;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static ready()Z
    .locals 3

    .prologue
    .line 248
    :try_start_0
    sget-object v1, Lcom/motorola/android/storage/MotoEnvironment;->sMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 249
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Lcom/motorola/android/storage/MotoEnvironment;->sMountService:Landroid/os/storage/IMountService;

    .line 253
    :cond_0
    sget-object v1, Lcom/motorola/android/storage/MotoEnvironment;->sMountService:Landroid/os/storage/IMountService;

    if-eqz v1, :cond_1

    .line 254
    sget-object v1, Lcom/motorola/android/storage/MotoEnvironment;->sMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/Parcelable;

    move-result-object v1

    sput-object v1, Lcom/motorola/android/storage/MotoEnvironment;->sVolumeList:[Landroid/os/Parcelable;

    .line 255
    sget-object v1, Lcom/motorola/android/storage/MotoEnvironment;->sVolumeList:[Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 261
    .local v0, ex:Ljava/lang/Exception;
    :goto_0
    return v1

    .line 257
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 258
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "MotoEnvironment"

    const-string v2, "Fail talk to mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1
    const-string v1, "MotoEnvironment"

    const-string v2, "Fail to ready MotoEnvironment"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v1, 0x0

    goto :goto_0
.end method
