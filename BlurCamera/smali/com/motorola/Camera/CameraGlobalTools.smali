.class public Lcom/motorola/Camera/CameraGlobalTools;
.super Ljava/lang/Object;
.source "CameraGlobalTools.java"


# static fields
.field public static final ASPECT_TOLERANCE:D = 0.05

.field public static final CANNOT_STAT_ERROR:I = -0x2

.field public static final DEFAULT_RESOLUTION:Ljava/lang/String; = "1280x960"

.field public static final KPILOGGER_APPNAME:Ljava/lang/String; = "CAM"

.field public static final KPILOGGER_CAM_RESOLUTION:Ljava/lang/String; = "RES"

.field public static final KPILOGGER_CAM_SHOT2SHOT:Ljava/lang/String; = "S2S"

.field public static final KPILOGGER_CAM_STARTUP:Ljava/lang/String; = "STP"

.field public static final KPILOGGER_TAG:Ljava/lang/String; = "MotoCameraKPI"

.field public static final MEMORY_FULL:I = 0x0

.field public static final NONWIDESCREEN_AR:D = 1.3333333730697632

.field public static final NO_ERROR:I = 0x4

.field public static final NO_STORAGE_ERROR:I = -0x1

.field public static final SWITCH_TO_EXTERNAL:I = 0x2

.field public static final SWITCH_TO_INTERNAL:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MotoCameraGlobalTools"

.field public static final UNKNOWN:I = 0x3

.field public static final WIDESCREEN_AR:D = 1.7777777910232544

.field private static sResolutionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sStorageState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x3

    sput v0, Lcom/motorola/Camera/CameraGlobalTools;->sStorageState:I

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    .line 91
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "1080p"

    const-string v2, "1920x1080"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "720p"

    const-string v2, "1280x720"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "NTSC_D1"

    const-string v2, "720x480"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "VGA"

    const-string v2, "640x480"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "CIF"

    const-string v2, "352x288"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "QVGA"

    const-string v2, "320x240"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "QCIF"

    const-string v2, "176x144"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "1920x1080"

    const-string v2, "1080p"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "1280x720"

    const-string v2, "720p"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "720x480"

    const-string v2, "NTSC_D1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "640x480"

    const-string v2, "VGA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "352x288"

    const-string v2, "CIF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "320x240"

    const-string v2, "QVGA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "176x144"

    const-string v2, "QCIF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "4128x3096"

    const-string v2, "13MP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "4000x2248"

    const-string v2, "9MP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "3264x2448"

    const-string v2, "8MP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "3264x1840"

    const-string v2, "6MP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "2592x1458"

    const-string v2, "4MP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "2592x1456"

    const-string v2, "3.8MP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "13MP"

    const-string v2, "4128x3096"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "9MP"

    const-string v2, "4000x2248"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "8MP"

    const-string v2, "3264x2448"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "6MP"

    const-string v2, "3264x1840"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "4MP"

    const-string v2, "2592x1458"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "3.8MP"

    const-string v2, "2592x1456"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "1280x960"

    const-string v2, "1.3MP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    const-string v1, "1.3MP"

    const-string v2, "1280x960"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcResolutionMP(Ljava/lang/String;)I
    .locals 4
    .parameter "resDimension"

    .prologue
    .line 287
    const-string v2, "x"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, temp:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x49742400

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 290
    .local v0, mp:I
    return v0
.end method

.method public static calcVideoTimeRemaining(Z)I
    .locals 15
    .parameter "internalSD"

    .prologue
    .line 313
    const/4 v6, 0x0

    .line 314
    .local v6, second:I
    const v4, 0x2ee00

    .line 316
    .local v4, bitrate:I
    sget-boolean v9, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v9, :cond_0

    const-string v9, "MotoCameraGlobalTools"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calcVideoTimeRemaining  InternalSD "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/motorola/Camera/CameraGlobalTools;->hasStorage(Z)Z

    move-result v9

    if-nez v9, :cond_1

    .line 321
    const/4 v6, -0x1

    .line 365
    :goto_0
    return v6

    .line 327
    :cond_1
    sget-boolean v9, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-nez v9, :cond_2

    .line 329
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    .line 339
    .local v8, storageDirectory:Ljava/lang/String;
    :goto_1
    new-instance v7, Landroid/os/StatFs;

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 340
    .local v7, stat:Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v11, v11

    mul-long v2, v9, v11

    .line 341
    .local v2, availSpace:J
    const-wide/32 v0, 0x6400000

    .line 342
    .local v0, RESERVE_SPACE:J
    cmp-long v9, v2, v0

    if-gez v9, :cond_4

    .line 343
    const/4 v6, 0x0

    goto :goto_0

    .line 333
    .end local v0           #RESERVE_SPACE:J
    .end local v2           #availSpace:J
    .end local v7           #stat:Landroid/os/StatFs;
    .end local v8           #storageDirectory:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x1

    if-ne p0, v9, :cond_3

    .line 334
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #storageDirectory:Ljava/lang/String;
    goto :goto_1

    .line 336
    .end local v8           #storageDirectory:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/motorola/Camera/EnvironmentUtil/EnvironmentUtil;->getExternalAltStorageDirectory()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #storageDirectory:Ljava/lang/String;
    goto :goto_1

    .line 346
    .restart local v0       #RESERVE_SPACE:J
    .restart local v2       #availSpace:J
    .restart local v7       #stat:Landroid/os/StatFs;
    :cond_4
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance()Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v10

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :try_start_1
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance()Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v9

    invoke-virtual {v9}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoBitrate()I

    move-result v9

    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance()Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getAudioBitrate()I

    move-result v11

    add-int/2addr v9, v11

    shr-int/lit8 v4, v9, 0x3

    .line 350
    sub-long v11, v2, v0

    int-to-long v13, v4

    div-long/2addr v11, v13

    long-to-int v6, v11

    .line 351
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 357
    .end local v0           #RESERVE_SPACE:J
    .end local v2           #availSpace:J
    .end local v7           #stat:Landroid/os/StatFs;
    .end local v8           #storageDirectory:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 362
    .local v5, ex:Ljava/lang/Exception;
    const/4 v6, -0x2

    goto :goto_0
.end method

.method public static calculatePicturesAll()I
    .locals 7

    .prologue
    .line 550
    const/4 v2, 0x0

    .line 552
    .local v2, picall:I
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 554
    .local v4, storageDirectory:Ljava/lang/String;
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 555
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    const v6, 0x48c35000

    div-float v0, v5, v6

    .line 557
    .local v0, all:F
    float-to-int v2, v0

    .line 564
    .end local v0           #all:F
    .end local v3           #stat:Landroid/os/StatFs;
    .end local v4           #storageDirectory:Ljava/lang/String;
    :goto_0
    return v2

    .line 558
    :catch_0
    move-exception v1

    .line 562
    .local v1, ex:Ljava/lang/Exception;
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public static calculatePicturesRemaining(Ljava/lang/String;Z)I
    .locals 9
    .parameter "res"
    .parameter "internalSD"

    .prologue
    .line 483
    const/4 v1, 0x0

    .line 486
    .local v1, picremain:I
    invoke-static {p0}, Lcom/motorola/Camera/CameraGlobalTools;->calcResolutionMP(Ljava/lang/String;)I

    move-result v6

    int-to-float v3, v6

    .line 487
    .local v3, resolution:F
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_0

    .line 488
    const-string v6, "MotoCameraGlobalTools"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "res:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/motorola/Camera/CameraGlobalTools;->hasStorage(Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 494
    const/4 v1, -0x1

    .line 538
    :cond_1
    :goto_0
    return v1

    .line 500
    :cond_2
    sget-boolean v6, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-nez v6, :cond_3

    .line 502
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    .line 512
    .local v5, storageDirectory:Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 515
    .local v4, stat:Landroid/os/StatFs;
    const/4 v2, 0x0

    .line 516
    .local v2, remaining:F
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->camPremium:Z

    if-eqz v6, :cond_5

    .line 517
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const v7, 0x48874100

    mul-float/2addr v7, v3

    const/high16 v8, 0x3f80

    div-float/2addr v7, v8

    div-float v2, v6, v7

    .line 524
    :goto_2
    float-to-int v1, v2

    .line 525
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    .line 526
    const-string v6, "MotoCameraGlobalTools"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolution : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v6, "MotoCameraGlobalTools"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remaining : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 531
    .end local v2           #remaining:F
    .end local v4           #stat:Landroid/os/StatFs;
    .end local v5           #storageDirectory:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 536
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, -0x2

    goto :goto_0

    .line 506
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    const/4 v6, 0x1

    if-ne p1, v6, :cond_4

    .line 507
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #storageDirectory:Ljava/lang/String;
    goto :goto_1

    .line 509
    .end local v5           #storageDirectory:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/motorola/Camera/EnvironmentUtil/EnvironmentUtil;->getExternalAltStorageDirectory()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #storageDirectory:Ljava/lang/String;
    goto :goto_1

    .line 521
    .restart local v2       #remaining:F
    .restart local v4       #stat:Landroid/os/StatFs;
    :cond_5
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x4316

    mul-float/2addr v7, v3

    const/high16 v8, 0x4480

    mul-float/2addr v7, v8

    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance()Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    div-float v2, v6, v7

    goto :goto_2
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 722
    if-le p0, p2, :cond_0

    .line 724
    .end local p2
    :goto_0
    return p2

    .line 723
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    .line 724
    goto :goto_0
.end method

.method public static compareFloat(FF)Z
    .locals 2
    .parameter "num1"
    .parameter "num2"

    .prologue
    .line 628
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 630
    const/4 v0, 0x1

    .line 633
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "internalVals"

    .prologue
    .line 225
    sget-object v0, Lcom/motorola/Camera/CameraGlobalTools;->sResolutionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static createName(J)Ljava/lang/String;
    .locals 3
    .parameter "dateTaken"

    .prologue
    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyy-MM-dd_kk-mm-ss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    rem-long v1, p0, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static currentStorageState()I
    .locals 1

    .prologue
    .line 547
    sget v0, Lcom/motorola/Camera/CameraGlobalTools;->sStorageState:I

    return v0
.end method

.method public static format2Time(J)Ljava/lang/String;
    .locals 14
    .parameter "seconds"

    .prologue
    .line 172
    const-wide/16 v10, 0x0

    cmp-long v10, p0, v10

    if-ltz v10, :cond_3

    .line 173
    const-wide/16 v10, 0xe10

    div-long v0, p0, v10

    .line 174
    .local v0, hours:J
    const-wide/16 v10, 0xe10

    mul-long/2addr v10, v0

    sub-long v10, p0, v10

    const-wide/16 v12, 0x3c

    div-long v3, v10, v12

    .line 175
    .local v3, minutes:J
    const-wide/16 v10, 0xe10

    mul-long/2addr v10, v0

    sub-long v10, p0, v10

    const-wide/16 v12, 0x3c

    mul-long/2addr v12, v3

    sub-long v6, v10, v12

    .line 177
    .local v6, remainderSeconds:J
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 178
    .local v8, secondsString:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_0

    .line 179
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 181
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, minutesString:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_1

    .line 183
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 185
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, hoursString:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_2

    .line 187
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 193
    .end local v0           #hours:J
    .end local v2           #hoursString:Ljava/lang/String;
    .end local v3           #minutes:J
    .end local v5           #minutesString:Ljava/lang/String;
    .end local v6           #remainderSeconds:J
    .end local v8           #secondsString:Ljava/lang/String;
    .local v9, text:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 191
    .end local v9           #text:Ljava/lang/String;
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #text:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getAvailableMemory(Z)J
    .locals 8
    .parameter "internalSD"

    .prologue
    .line 370
    const-wide/16 v0, -0x1

    .line 372
    .local v0, availableMemory:J
    invoke-static {p0}, Lcom/motorola/Camera/CameraGlobalTools;->hasStorage(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 376
    sget-boolean v4, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-nez v4, :cond_1

    .line 378
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, storageDirectory:Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 389
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v0, v4, v6

    .line 391
    .end local v2           #stat:Landroid/os/StatFs;
    .end local v3           #storageDirectory:Ljava/lang/String;
    :cond_0
    return-wide v0

    .line 382
    :cond_1
    const/4 v4, 0x1

    if-ne p0, v4, :cond_2

    .line 383
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #storageDirectory:Ljava/lang/String;
    goto :goto_0

    .line 385
    .end local v3           #storageDirectory:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/motorola/Camera/EnvironmentUtil/EnvironmentUtil;->getExternalAltStorageDirectory()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #storageDirectory:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDownsizeByZoom()I
    .locals 4

    .prologue
    .line 620
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance()Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v0

    .line 622
    .local v0, zoomSetting:I
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraGlobalTools"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoom value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_0
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    mul-int/2addr v1, v2

    return v1
.end method

.method public static getFreeSpaceAsFormattedString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 15
    .parameter "context"
    .parameter "internalSD"

    .prologue
    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 396
    .local v9, resources:Landroid/content/res/Resources;
    const v11, 0x7f0b0167

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 397
    .local v7, remaining:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/motorola/Camera/CameraGlobalTools;->getAvailableMemory(Z)J

    move-result-wide v0

    .line 398
    .local v0, availableSpace:J
    const-wide/16 v11, 0x0

    cmp-long v11, v0, v11

    if-gez v11, :cond_0

    move-object v8, v7

    .line 422
    .end local v7           #remaining:Ljava/lang/String;
    .local v8, remaining:Ljava/lang/String;
    :goto_0
    return-object v8

    .line 402
    .end local v8           #remaining:Ljava/lang/String;
    .restart local v7       #remaining:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v11, "#0.00"

    invoke-direct {v2, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 403
    .local v2, formatter:Ljava/text/NumberFormat;
    const/4 v11, 0x3

    new-array v6, v11, [D

    fill-array-data v6, :array_0

    .line 404
    .local v6, memory:[D
    const/4 v11, 0x3

    new-array v10, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const v12, 0x7f0b0168

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const v12, 0x7f0b0169

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const v12, 0x7f0b016a

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 409
    .local v10, unit:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v11, v6

    if-ge v5, v11, :cond_1

    .line 410
    long-to-double v11, v0

    aget-wide v13, v6, v5

    cmpg-double v11, v11, v13

    if-gtz v11, :cond_2

    .line 411
    long-to-double v11, v0

    aget-wide v13, v6, v5

    div-double v3, v11, v13

    .line 412
    .local v3, freeSpace:D
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v10, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v3           #freeSpace:D
    :cond_1
    :goto_2
    move-object v8, v7

    .line 422
    .end local v7           #remaining:Ljava/lang/String;
    .restart local v8       #remaining:Ljava/lang/String;
    goto :goto_0

    .line 415
    .end local v8           #remaining:Ljava/lang/String;
    .restart local v7       #remaining:Ljava/lang/String;
    :cond_2
    array-length v11, v6

    add-int/lit8 v11, v11, -0x1

    if-ne v5, v11, :cond_4

    .line 416
    :cond_3
    long-to-double v11, v0

    aget-wide v13, v6, v5

    div-double v3, v11, v13

    .line 417
    .restart local v3       #freeSpace:D
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v10, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 418
    goto :goto_2

    .line 415
    .end local v3           #freeSpace:D
    :cond_4
    long-to-double v11, v0

    add-int/lit8 v13, v5, 0x1

    aget-wide v13, v6, v13

    cmpg-double v11, v11, v13

    if-ltz v11, :cond_3

    .line 409
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 403
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x90t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x30t 0x41t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xd0t 0x41t
    .end array-data
.end method

.method public static getImageCount(Landroid/content/Context;Z)I
    .locals 10
    .parameter "aContext"
    .parameter "internalSD"

    .prologue
    const/4 v4, 0x0

    .line 569
    const/4 v6, 0x0

    .line 570
    .local v6, count:I
    invoke-static {p1}, Lcom/motorola/Camera/CameraGlobalTools;->hasStorage(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "bucket_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    .line 573
    .local v2, IMAGE_COLUMNS:[Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    const-string v0, "/dcim/Camera"

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    .local v7, countFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 575
    .local v9, path:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BUCKET_ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 576
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 577
    .local v8, curCount:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 579
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 580
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 583
    .end local v2           #IMAGE_COLUMNS:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v7           #countFile:Ljava/io/File;
    .end local v8           #curCount:Landroid/database/Cursor;
    .end local v9           #path:Ljava/lang/String;
    :cond_0
    return v6
.end method

.method private static getLastCapturedURI(Landroid/app/Activity;)Landroid/net/Uri;
    .locals 18
    .parameter "c"

    .prologue
    .line 728
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 729
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 730
    .local v10, imageCursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 733
    .local v15, videoCursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "datetaken"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "orientation"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "mini_thumb_magic"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_SEARCH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_SEARCH_EXT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "shooting_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "datetaken DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 746
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraGlobalTools"

    const-string v2, "updateThumb i cursor creation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "datetaken"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_SEARCH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_SEARCH_EXT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "datetaken DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v15

    .line 791
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCameraGlobalTools"

    const-string v2, "updateThumb v cursor creation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_2
    const/4 v14, 0x0

    .line 794
    .local v14, lastUri:Landroid/net/Uri;
    if-eqz v10, :cond_5

    if-eqz v15, :cond_5

    .line 796
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    .line 797
    const-string v1, "MotoCameraGlobalTools"

    const-string v2, "UpdateThumbnailThread() - valid cursors"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 801
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 802
    const-string v1, "datetaken"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 803
    .local v6, dateTakenInd:I
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 806
    .local v8, displayNameIndex:I
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    const-string v1, "MotoCameraGlobalTools"

    const-string v2, "updateThumb cursor extraction"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_4
    const/4 v7, 0x0

    .line 809
    .local v7, displayID:Ljava/lang/String;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_c

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_c

    .line 810
    const/4 v14, 0x0

    .line 833
    .end local v6           #dateTakenInd:I
    .end local v7           #displayID:Ljava/lang/String;
    .end local v8           #displayNameIndex:I
    :cond_5
    :goto_1
    if-eqz v10, :cond_6

    .line 835
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 838
    :cond_6
    if-eqz v15, :cond_7

    .line 840
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 843
    :cond_7
    return-object v14

    .line 755
    .end local v14           #lastUri:Landroid/net/Uri;
    :catch_0
    move-exception v13

    .line 757
    .local v13, ioex:Landroid/database/sqlite/SQLiteDiskIOException;
    if-eqz v10, :cond_8

    .line 759
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 760
    const/4 v10, 0x0

    .line 763
    :cond_8
    if-eqz v15, :cond_9

    .line 765
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 766
    const/4 v15, 0x0

    .line 768
    :cond_9
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 769
    const-string v1, "MotoCameraGlobalTools"

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 772
    .end local v13           #ioex:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v9

    .line 774
    .local v9, ex:Ljava/lang/Exception;
    if-eqz v10, :cond_a

    .line 776
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 777
    const/4 v10, 0x0

    .line 780
    :cond_a
    if-eqz v15, :cond_b

    .line 782
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 783
    const/4 v15, 0x0

    .line 786
    :cond_b
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 787
    const-string v1, "MotoCameraGlobalTools"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 811
    .end local v9           #ex:Ljava/lang/Exception;
    .restart local v6       #dateTakenInd:I
    .restart local v7       #displayID:Ljava/lang/String;
    .restart local v8       #displayNameIndex:I
    .restart local v14       #lastUri:Landroid/net/Uri;
    :cond_c
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_d

    .line 812
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 813
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    goto :goto_1

    .line 814
    :cond_d
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_e

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_e

    .line 815
    const-string v1, "_id"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 816
    invoke-interface {v15, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 817
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    goto :goto_1

    .line 819
    :cond_e
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 820
    .local v11, imageDateTaken:J
    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 822
    .local v16, videoDateTaken:J
    cmp-long v1, v11, v16

    if-lez v1, :cond_f

    .line 823
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 824
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    goto/16 :goto_1

    .line 826
    :cond_f
    const-string v1, "_id"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 827
    invoke-interface {v15, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 828
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    goto/16 :goto_1
.end method

.method public static getOptimalPreviewSize(Ljava/util/List;DII)Landroid/hardware/Camera$Size;
    .locals 15
    .parameter
    .parameter "targetRatio"
    .parameter "dispWidth"
    .parameter "dispHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;DII)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-string v10, "MotoCameraGlobalTools"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "target ratio"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p1

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "width height "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-nez p0, :cond_1

    const/4 v5, 0x0

    .line 277
    :cond_0
    :goto_0
    return-object v5

    .line 235
    :cond_1
    const/4 v5, 0x0

    .line 236
    .local v5, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v3, 0x7fefffffffffffffL

    .line 244
    .local v3, minDiff:D
    move/from16 v0, p4

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 246
    .local v9, targetHeight:I
    if-gtz v9, :cond_2

    .line 249
    move/from16 v9, p4

    .line 253
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 254
    .local v8, size:Landroid/hardware/Camera$Size;
    iget v10, v8, Landroid/hardware/Camera$Size;->width:I

    int-to-double v10, v10

    iget v12, v8, Landroid/hardware/Camera$Size;->height:I

    int-to-double v12, v12

    div-double v6, v10, v12

    .line 255
    .local v6, ratio:D
    const-string v10, "MotoCameraGlobalTools"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ratio "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    sub-double v10, v6, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3fa999999999999aL

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_3

    .line 257
    iget v10, v8, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-double v10, v10

    cmpg-double v10, v10, v3

    if-gez v10, :cond_3

    .line 258
    move-object v5, v8

    .line 259
    iget v10, v8, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-double v3, v10

    goto :goto_1

    .line 264
    .end local v6           #ratio:D
    .end local v8           #size:Landroid/hardware/Camera$Size;
    :cond_4
    if-nez v5, :cond_7

    .line 265
    sget-boolean v10, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v10, :cond_5

    const-string v10, "MotoCameraGlobalTools"

    const-string v11, "No preview size match the aspect ratio"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_5
    const-wide v3, 0x7fefffffffffffffL

    .line 267
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 268
    .restart local v8       #size:Landroid/hardware/Camera$Size;
    iget v10, v8, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-double v10, v10

    cmpg-double v10, v10, v3

    if-gez v10, :cond_6

    .line 269
    move-object v5, v8

    .line 270
    iget v10, v8, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-double v3, v10

    goto :goto_2

    .line 274
    .end local v8           #size:Landroid/hardware/Camera$Size;
    :cond_7
    sget-boolean v10, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v10, :cond_0

    const-string v10, "MotoCameraGlobalTools"

    const-string v11, "Optimal preview size is %sx%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget v14, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getVideoBitrate(I)I
    .locals 5
    .parameter "videoWidth"

    .prologue
    const/16 v4, 0x1e0

    const/16 v3, 0x160

    const/16 v2, 0x140

    .line 427
    const v0, 0x33450

    .line 428
    .local v0, bitrate_setting:I
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->camPremium:Z

    if-eqz v1, :cond_5

    .line 429
    invoke-static {}, Lcom/motorola/Camera/CameraGlobalType;->getVideoEncoder()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 456
    :cond_0
    :goto_0
    invoke-static {}, Lcom/motorola/Camera/CameraGlobalType;->getAudioEncoder()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 477
    :goto_1
    return v0

    .line 434
    :pswitch_0
    if-lt p0, v4, :cond_1

    .line 435
    const v0, 0x668a0

    goto :goto_0

    .line 437
    :cond_1
    if-lt p0, v3, :cond_2

    .line 439
    const v0, 0x4e200

    goto :goto_0

    .line 440
    :cond_2
    if-lt p0, v2, :cond_0

    .line 441
    const v0, 0x4e200

    goto :goto_0

    .line 445
    :pswitch_1
    if-lt p0, v4, :cond_3

    .line 446
    const v0, 0x1e8480

    goto :goto_0

    .line 447
    :cond_3
    if-lt p0, v3, :cond_4

    .line 448
    const v0, 0x57e40

    goto :goto_0

    .line 449
    :cond_4
    if-lt p0, v2, :cond_0

    .line 450
    const v0, 0x4e200

    goto :goto_0

    .line 458
    :pswitch_2
    add-int/lit16 v0, v0, 0x3200

    .line 460
    goto :goto_1

    .line 462
    :pswitch_3
    add-int/lit16 v0, v0, 0x5dc0

    .line 464
    goto :goto_1

    .line 470
    :cond_5
    if-lt p0, v3, :cond_6

    .line 471
    const v0, 0x4e200

    goto :goto_1

    .line 472
    :cond_6
    if-lt p0, v2, :cond_7

    .line 473
    const v0, 0x445c0

    goto :goto_1

    .line 475
    :cond_7
    const v0, 0x30d40

    goto :goto_1

    .line 429
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 456
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static hasStorage(Z)Z
    .locals 3
    .parameter "internalSD"

    .prologue
    const/4 v1, 0x1

    .line 199
    sget-boolean v2, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-nez v2, :cond_0

    .line 201
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, state:Ljava/lang/String;
    :goto_0
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    :goto_1
    return v1

    .line 205
    .end local v0           #state:Ljava/lang/String;
    :cond_0
    if-ne p0, v1, :cond_1

    .line 206
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #state:Ljava/lang/String;
    goto :goto_0

    .line 208
    .end local v0           #state:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/motorola/Camera/EnvironmentUtil/EnvironmentUtil;->getExternalAltStorageDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/storage/MotoEnvironment;->getExternalStorageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #state:Ljava/lang/String;
    goto :goto_0

    .line 217
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isFlashAdjustable(I)I
    .locals 2
    .parameter "scene"

    .prologue
    .line 599
    const/4 v0, 0x2

    .line 601
    .local v0, flashAdjustAble:I
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance()Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 602
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_2

    .line 605
    :cond_0
    const/4 v0, 0x0

    .line 610
    :cond_1
    :goto_0
    return v0

    .line 606
    :cond_2
    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    .line 607
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isWidescreenSelected(Ljava/lang/String;)Z
    .locals 7
    .parameter "currentRes"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 297
    const-string v3, "x"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, temp:[Ljava/lang/String;
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-double v3, v3

    aget-object v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v3, v5

    const-wide v5, 0x3ffc71c720000000L

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3fa999999999999aL

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 302
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static launchGallery(Landroid/app/Activity;)Z
    .locals 9
    .parameter "activity"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    if-nez p0, :cond_0

    .line 166
    :goto_0
    return v4

    .line 131
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "persist.mot.gallery2enabled"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 133
    .local v2, isGallery2Enabled:Z
    if-eqz v2, :cond_2

    .line 134
    const-string v6, "com.android.camera.action.REVIEW"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-static {p0}, Lcom/motorola/Camera/CameraGlobalTools;->getLastCapturedURI(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v3

    .line 136
    .local v3, lastUri:Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 137
    const-string v6, "MotoCameraGlobalTools"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "launchGallery lasturi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 160
    .end local v3           #lastUri:Landroid/net/Uri;
    :goto_1
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 166
    goto :goto_0

    .line 142
    :cond_2
    invoke-static {p0}, Lcom/motorola/contracts/gallery/Intent;->isGalleryAvailable(Landroid/content/Context;)Z

    move-result v6

    #if-eqz v6, :cond_3

    .line 143
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 144
    const/high16 v6, 0x400

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v6, "com.motorola.motgallery"

    const-string v7, "com.motorola.cgallery.BrowseImages"

    #invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 153
    :cond_3
    const-string v6, "TYPE"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    const-string v6, "GalleryMode"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    const-string v6, "LaunchMode"

    const-string v7, "camera"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v6, "com.motorola.gallery"

    const-string v7, "com.motorola.gallery.ExternalViewImage"

    #invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method

.method public static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 17
    .parameter "milliSeconds"
    .parameter "displayCentiSeconds"

    .prologue
    .line 638
    const-wide/16 v13, 0x3e8

    div-long v10, p0, v13

    .line 639
    .local v10, seconds:J
    const-wide/16 v13, 0x3c

    div-long v2, v10, v13

    .line 640
    .local v2, minutes:J
    const-wide/16 v13, 0x3c

    div-long v0, v2, v13

    .line 641
    .local v0, hours:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v0

    sub-long v6, v2, v13

    .line 642
    .local v6, remainderMinutes:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v2

    sub-long v8, v10, v13

    .line 644
    .local v8, remainderSeconds:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 647
    .local v12, timeStringBuilder:Ljava/lang/StringBuilder;
    const-wide/16 v13, 0x0

    cmp-long v13, v0, v13

    if-lez v13, :cond_1

    .line 648
    const-wide/16 v13, 0xa

    cmp-long v13, v0, v13

    if-gez v13, :cond_0

    .line 649
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 651
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 653
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 657
    :cond_1
    const-wide/16 v13, 0xa

    cmp-long v13, v6, v13

    if-gez v13, :cond_2

    .line 658
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 660
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 661
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 664
    const-wide/16 v13, 0xa

    cmp-long v13, v8, v13

    if-gez v13, :cond_3

    .line 665
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 667
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 670
    if-eqz p2, :cond_5

    .line 671
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 672
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v10

    sub-long v13, p0, v13

    const-wide/16 v15, 0xa

    div-long v4, v13, v15

    .line 673
    .local v4, remainderCentiSeconds:J
    const-wide/16 v13, 0xa

    cmp-long v13, v4, v13

    if-gez v13, :cond_4

    .line 674
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 676
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 679
    .end local v4           #remainderCentiSeconds:J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIII)V
    .locals 4
    .parameter "matrix"
    .parameter "mirror"
    .parameter "displayOrientation"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/high16 v3, 0x44fa

    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    .line 705
    if-eqz p1, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 707
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 710
    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 711
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 712
    return-void

    :cond_0
    move v0, v1

    .line 705
    goto :goto_0
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rectF"
    .parameter "rect"

    .prologue
    .line 688
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 689
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 690
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 691
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 692
    return-void
.end method

.method public static resetCameraTimeout(Landroid/os/Handler;)V
    .locals 3
    .parameter "handler"

    .prologue
    const/16 v2, 0x30

    .line 592
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 593
    sget v0, Lcom/motorola/Camera/CameraGlobalType;->INACTIVITY_TIMEOUT_THRESHOLD:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 594
    return-void
.end method

.method public static resetScreenTimeout(Landroid/os/Handler;)V
    .locals 3
    .parameter "handler"

    .prologue
    const/4 v2, 0x3

    .line 587
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 588
    sget-object v0, Lcom/motorola/Camera/CameraGlobalType;->SCREEN_DELAY:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 589
    return-void
.end method

.method public static setStorageState(I)V
    .locals 0
    .parameter "storageState"

    .prologue
    .line 542
    sput p0, Lcom/motorola/Camera/CameraGlobalTools;->sStorageState:I

    .line 543
    return-void
.end method
