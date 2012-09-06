.class public Lcom/motorola/Camera/CamSetting/CommonCamSetting;
.super Ljava/lang/Object;
.source "CommonCamSetting.java"

# interfaces
.implements Lcom/motorola/Camera/CamSetting/ICamSetting;


# static fields
.field public static final BACK_CAM:I = 0x1

.field public static final EXTERNAL_MMC:I = 0x1

.field public static final FRONT_CAM:I = 0x2

.field public static final INTERNAL_MMC:I = 0x0

.field protected static final KEY_FACE_TRACKING:Ljava/lang/String; = "Face Detection"

.field protected static final KEY_IMAGE_STABILIZATION:Ljava/lang/String; = "Image Stabilization"

.field protected static final KEY_MUTE_AUDIO:Ljava/lang/String; = "Mute Audio"

.field protected static final KEY_REVIEW_TIME:Ljava/lang/String; = "Review Time"

.field protected static final KEY_SHUTTER_ANIMATION:Ljava/lang/String; = "Shutter Animation"

.field protected static final KEY_SHUTTER_TONE_SWITCH:Ljava/lang/String; = "Shutter Tone"

.field protected static final KEY_STORAGE_LOCATION:Ljava/lang/String; = "Storage Location"

.field protected static final KEY_VOLUME_KEY_SETTING:Ljava/lang/String; = "Volume Key Setting"

.field public static final NONE_CAM:I = 0x0

.field public static final SDCARD_EXT:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "CommonCamSetting"

.field protected static internalCameraSupported:Z

.field public static mFeatureDualVol:Z

.field private static mIsAudioScenesSupported:Z

.field private static sCommonCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;


# instance fields
.field private audioScenesValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected cameraLaunchedFromCamcorder:Z

.field protected currentAddress:Ljava/lang/String;

.field protected currentAppMode:I

.field protected currentAutoTimer:I

.field protected currentMode:I

.field protected currentModeV:I

.field protected isEulaShown:Z

.field protected isLocationOn:Z

.field protected isProviderEnabled:Z

.field protected isSearchingLoc:I

.field protected lastCamcorderMode:I

.field protected lastCameraMode:I

.field protected mAttrsChanged:Z

.field private mAudioScenesValues:Ljava/lang/String;

.field private mAutoTimerCaptureSupported:Z

.field private mAutoTimerImgResources:[I

.field private mAutoTimerValue:[I

.field private mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

.field protected mCamcorderZoomSupported:Z

.field protected mContext:Landroid/content/Context;

.field private mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

.field protected mCurrentTimeLapse:I

.field private mEffectsGridDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectsImgResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFastModeSupported:Z

.field private mFlashGridDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation
.end field

.field private mFlashImgResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

.field protected mHasSDPluged:Z

.field protected mIsInSecurelyLockedMode:Z

.field protected mIsServiceMode:Z

.field private mLightGridDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation
.end field

.field private mLightImgResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mPictureModesGridDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation
.end field

.field private mPictureModesImgResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPictureModesValue:[I

.field protected mPreferences:Landroid/content/SharedPreferences;

.field protected mReturnFromTag:Z

.field private mScenesGridDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation
.end field

.field private mScenesImgResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSlowModeSupported:Z

.field private mTimelapseEntries:[I

.field private mTimelapseImgResources:[I

.field private mToolbarOpenStatus:Z

.field private mVScenesGridDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation
.end field

.field private mVScenesImgResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoModesGridDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoModesImgResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoModesValue:[I

.field protected mVolumeKeySetting:I

.field private mWhiteBalanceGridDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteBalanceImgResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-static {}, Lcom/motorola/Camera/EnvironmentUtil/EnvironmentUtil;->getExternalAltStorageDirectory()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->SDCARD_EXT:Ljava/lang/String;

    .line 68
    sput-boolean v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->internalCameraSupported:Z

    .line 69
    sput-boolean v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    .line 149
    sput-boolean v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mIsAudioScenesSupported:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAttrsChanged:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->tags:Ljava/util/List;

    .line 54
    iput-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn:Z

    .line 55
    iput-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown:Z

    .line 56
    iput-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mHasSDPluged:Z

    .line 57
    iput-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCamcorderZoomSupported:Z

    .line 60
    iput v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVolumeKeySetting:I

    .line 62
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mSlowModeSupported:Z

    .line 63
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFastModeSupported:Z

    .line 65
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAutoTimerCaptureSupported:Z

    .line 66
    iput-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mToolbarOpenStatus:Z

    .line 74
    iput-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->cameraLaunchedFromCamcorder:Z

    .line 75
    iput v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->lastCameraMode:I

    .line 76
    const/16 v0, 0x8

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->lastCamcorderMode:I

    .line 78
    iput-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mReturnFromTag:Z

    .line 79
    iput-object v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAddress:Ljava/lang/String;

    .line 89
    iput v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrentTimeLapse:I

    .line 155
    iput-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isProviderEnabled:Z

    .line 157
    iput-object v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mMainHandler:Landroid/os/Handler;

    .line 180
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    .line 181
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    const-string v1, "com.motorola.Camera_preferences"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    .line 186
    :cond_0
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSetInternalStorageFeatureAvailable()V

    .line 187
    invoke-direct {p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadCommonPreferences()V

    .line 188
    invoke-direct {p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadFlexValue()I

    .line 189
    invoke-static {p1}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CamSettingBack;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    .line 190
    invoke-static {p1}, Lcom/motorola/Camera/CamSetting/CamSettingFront;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CamSettingFront;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    .line 191
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadCommonRunTimeProperties()V

    .line 192
    return-void
.end method

.method public static droidDisableFunctions()V
    .locals 2

    .prologue
    .line 1125
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->SHOW_AUDIO_ZOOM_SETTING:Z

    .line 1126
    const-string v0, "CommonCamSetting"

    const-string v1, "Droid2 disabel the Droid2 720p"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    .locals 2

    .prologue
    .line 169
    const-class v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->sCommonCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    .locals 2
    .parameter "context"

    .prologue
    .line 160
    const-class v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->sCommonCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->sCommonCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 163
    :cond_0
    sget-object v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->sCommonCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSetInternalStorageFeatureAvailable()V
    .locals 3

    .prologue
    .line 1065
    invoke-static {}, Lcom/motorola/Camera/EnvironmentUtil/EnvironmentUtil;->getExternalAltStorageDirectory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/mnt/usbdisk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1066
    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    .line 1068
    :cond_0
    const-string v0, "CommonCamSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dual Volume Available? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    return-void
.end method

.method public static isDriod2()Z
    .locals 5

    .prologue
    .line 1114
    const/4 v1, 0x0

    .line 1115
    .local v1, misDroid2:Z
    const-string v2, "ro.media.capture.maxres"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1116
    .local v0, highCamRes:Ljava/lang/String;
    const-string v2, "8m"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1117
    const/4 v1, 0x0

    .line 1120
    :goto_0
    const-string v2, "CommonCamSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Droid2 isDroid2 in setting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const-string v2, "CommonCamSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Droid2 isDroid2 in setting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return v1

    .line 1119
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadCommonPreferences()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 202
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 203
    const-string v3, "CommonCamSetting"

    const-string v4, "loadCommonPreferences() - Enter"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    iget-object v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "tagsNum"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 207
    .local v2, tagsNum:I
    const/4 v0, 0x0

    .line 208
    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->tags:Ljava/util/List;

    iget-object v4, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v0, v0, 0x1

    .line 213
    goto :goto_0

    .line 216
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "isLocationOn"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn:Z

    .line 219
    iget-object v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "isEulaShown"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown:Z

    .line 221
    iget-object v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "internalCameraSupported"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->internalCameraSupported:Z

    .line 223
    iget-object v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "mHasSDPluged"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mHasSDPluged:Z

    .line 225
    iget-object v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "mCamcorderZoom"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCamcorderZoomSupported:Z

    .line 226
    iget-object v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "mToolbarOpenStatus"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mToolbarOpenStatus:Z

    .line 228
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_2

    .line 229
    const-string v3, "CommonCamSetting"

    const-string v4, "loadCommonPreferences() - Exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_2
    return-void
.end method

.method private loadFlexValue()I
    .locals 14

    .prologue
    .line 240
    sget-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v12, :cond_0

    .line 241
    const-string v12, "CommonCamSetting"

    const-string v13, "loadFlexValue() - Enter"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v2, entriesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v10, valuesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v12, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 249
    .local v9, resources:Landroid/content/res/Resources;
    const v12, 0x7f080004

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->IMAGE_STABILIZATION:Z

    .line 250
    const v12, 0x7f080005

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->PANORAMA:Z

    .line 251
    const/high16 v12, 0x7f09

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sput-object v12, Lcom/motorola/Camera/CameraGlobalType;->SCREEN_DELAY:Ljava/lang/Integer;

    .line 253
    const v12, 0x7f090001

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    sput v12, Lcom/motorola/Camera/CameraGlobalType;->INACTIVITY_TIMEOUT_THRESHOLD:I

    .line 255
    const v12, 0x7f080006

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->MMS_SUPPORT_FLEX:Z

    .line 257
    const v12, 0x7f090002

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sput-object v12, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_RESOLUTION_WIDTH:Ljava/lang/Integer;

    .line 258
    const v12, 0x7f090003

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sput-object v12, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_RESOLUTION_HEIGHT:Ljava/lang/Integer;

    .line 259
    const v12, 0x7f090004

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sput-object v12, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_DURATION:Ljava/lang/Integer;

    .line 260
    const v12, 0x7f080007

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_PAUSE_RESUME:Z

    .line 261
    const v12, 0x7f080009

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->SHOW_AUDIO_ZOOM_SETTING:Z

    .line 262
    const v12, 0x7f08000b

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->REMAINING_REC_TIME:Z

    .line 264
    const v12, 0x7f08000c

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->FLASH:Z

    .line 265
    sget-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->FLASH:Z

    if-nez v12, :cond_1

    const/4 v12, 0x1

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->LED:Z

    .line 267
    :cond_1
    const v12, 0x7f08000f

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->MULTISHOT:Z

    .line 269
    const v12, 0x7f080010

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->FASTMOTION_REC:Z

    .line 270
    const v12, 0x7f080011

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->SLOWMOTION_REC:Z

    .line 272
    const v12, 0x7f080012

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->VIDEO_CAM_DELTA:Z

    .line 274
    const v12, 0x7f080013

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->ZOOMKEY_ONSCREEN:Z

    .line 275
    const v12, 0x7f080014

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->CAPTUREKEY_ONSCREEN:Z

    .line 277
    const v12, 0x7f08000d

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->SHOW_FACE_TRACK_SETTING:Z

    .line 279
    const v12, 0x7f080015

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->SHOW_ISO_SETTING:Z

    .line 282
    const v12, 0x7f080018

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->PANORAMA_TYPE_SWEEP:Z

    .line 283
    const-string v12, "ro.camcorder.mute"

    const/4 v13, 0x1

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->CAMCORDER_MUTE:Z

    .line 285
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 286
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 289
    const/4 v6, 0x0

    .line 290
    .local v6, index:I
    const v12, 0x7f070029

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v3, v0, v5

    .line 291
    .local v3, flexentry:Ljava/lang/String;
    const-string v12, "bool"

    const-string v13, "com.motorola.Camera"

    invoke-virtual {v9, v3, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 292
    const v12, 0x7f070027

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v6

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    const v12, 0x7f070028

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v6

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 290
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 297
    .end local v3           #flexentry:Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/CharSequence;

    sput-object v12, Lcom/motorola/Camera/CameraGlobalType;->reviewTimeEntries:[Ljava/lang/CharSequence;

    .line 299
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/CharSequence;

    sput-object v12, Lcom/motorola/Camera/CameraGlobalType;->reviewTimeValues:[Ljava/lang/CharSequence;

    .line 301
    sget-object v12, Lcom/motorola/Camera/CameraGlobalType;->reviewTimeEntries:[Ljava/lang/CharSequence;

    invoke-interface {v2, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 302
    sget-object v12, Lcom/motorola/Camera/CameraGlobalType;->reviewTimeValues:[Ljava/lang/CharSequence;

    invoke-interface {v10, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 335
    iget-object v12, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    const-string v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 336
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v13

    if-le v12, v13, :cond_8

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v11

    .line 337
    .local v11, width:I
    :goto_1
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v13

    if-le v12, v13, :cond_9

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 339
    .local v4, height:I
    :goto_2
    const/4 v8, 0x0

    .line 340
    .local v8, premium:Z
    const/16 v12, 0x1e0

    if-lt v11, v12, :cond_a

    const/16 v12, 0x140

    if-lt v4, v12, :cond_a

    .line 341
    const/4 v8, 0x1

    .line 342
    sget-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v12, :cond_4

    .line 343
    const-string v12, "CommonCamSetting"

    const-string v13, "loadFlexValue() - Based on display size, selecting PREMIUM camera mode"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_4
    :goto_3
    if-nez v8, :cond_5

    .line 353
    const/4 v12, 0x0

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->camPremium:Z

    .line 354
    const/4 v12, 0x0

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->camHardKeyPresent:Z

    .line 355
    const/4 v12, 0x0

    sput-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->correctVolumeKeyPlacement:Z

    .line 360
    :cond_5
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isDriod2()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->droidDisableFunctions()V

    .line 362
    :cond_6
    sget-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v12, :cond_7

    .line 363
    const-string v12, "CommonCamSetting"

    const-string v13, "loadFlexValue() - Exit"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_7
    const/4 v12, 0x1

    return v12

    .line 336
    .end local v4           #height:I
    .end local v8           #premium:Z
    .end local v11           #width:I
    :cond_8
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v11

    goto :goto_1

    .line 337
    .restart local v11       #width:I
    :cond_9
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    goto :goto_2

    .line 346
    .restart local v4       #height:I
    .restart local v8       #premium:Z
    :cond_a
    sget-boolean v12, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v12, :cond_4

    .line 347
    const-string v12, "CommonCamSetting"

    const-string v13, "loadFlexValue() - Based on display size, selecting BASIC camera mode"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public enableAutoFocus()V
    .locals 1

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->enableAutoFocus()V

    .line 1749
    return-void
.end method

.method public enableDynamicFocus()V
    .locals 1

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->enableDynamicFocus()V

    .line 1758
    return-void
.end method

.method public getAllowedExpValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getAllowedExpValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllowedISOValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getAllowedISOValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAudioBitrate()I
    .locals 1

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getAudioBitrate()I

    move-result v0

    return v0
.end method

.method public getAudioScenesValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->audioScenesValues:Ljava/util/List;

    return-object v0
.end method

.method public getAutoTimerImgEntries()[I
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAutoTimerImgResources:[I

    return-object v0
.end method

.method public getAutoTimerValueEntries()[I
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAutoTimerValue:[I

    return-object v0
.end method

.method public getCurrentAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAddress:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getCurrentAppMode()I
    .locals 1

    .prologue
    .line 747
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAppMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentAutoTimer()I
    .locals 1

    .prologue
    .line 682
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAutoTimer:I

    return v0
.end method

.method public getCurrentCameraMode()I
    .locals 2

    .prologue
    .line 671
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 672
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentMode:I

    .line 676
    :goto_0
    return v0

    .line 673
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 674
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentModeV:I

    goto :goto_0

    .line 676
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentContrastValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getCurrentContrastValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentEffect()I
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getCurrentEffect()I

    move-result v0

    return v0
.end method

.method public getCurrentExpValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getCurrentExpValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFlash()I
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getCurrentFlash()I

    move-result v0

    return v0
.end method

.method public getCurrentISOValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getCurrentISOValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentIsoValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getCurrentIsoValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPanResDimension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getCurrentPanResDimension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSaturationValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getCurrentSaturationValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScene()I
    .locals 1

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getCurrentScene()I

    move-result v0

    return v0
.end method

.method public getCurrentSingleShotRes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStorageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1094
    sget-boolean v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-nez v0, :cond_0

    .line 1096
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1105
    :goto_0
    return-object v0

    .line 1100
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageLocation()I

    move-result v0

    if-nez v0, :cond_1

    .line 1101
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1105
    :cond_1
    invoke-static {}, Lcom/motorola/Camera/EnvironmentUtil/EnvironmentUtil;->getExternalAltStorageDirectory()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentStorageLocation()I
    .locals 4

    .prologue
    .line 1081
    const/4 v0, 0x0

    .line 1084
    .local v0, result:I
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "Storage Location"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1088
    :goto_0
    return v0

    .line 1085
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCurrentTimeLapse()I
    .locals 1

    .prologue
    .line 686
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrentTimeLapse:I

    return v0
.end method

.method public getCurrentVideoResDimensions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getCurrentVideoResDimensions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWhiteBalance()I
    .locals 1

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getCurrentWhiteBalance()I

    move-result v0

    return v0
.end method

.method public getDefaultMinFPS()I
    .locals 1

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getDefaultMinFPS()I

    move-result v0

    return v0
.end method

.method public getEffectsDataEntries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mEffectsGridDataArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExpCompensationStep()F
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getExpCompensationStep()F

    move-result v0

    return v0
.end method

.method public getFlashDataEntries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1132
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFlashGridDataArray:Ljava/util/ArrayList;

    .line 1135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mLightGridDataArray:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getFlashModes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusModes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getFocusModes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusOption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getFocusOption()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusViewHeight()F
    .locals 1

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getFocusViewHeight()F

    move-result v0

    return v0
.end method

.method public getFocusViewWidth()F
    .locals 1

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getFocusViewWidth()F

    move-result v0

    return v0
.end method

.method public getImagerOrientation()I
    .locals 1

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getImagerOrientation()I

    move-result v0

    return v0
.end method

.method public getIsoValues()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getIsoValues()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastCamcorderMode()I
    .locals 1

    .prologue
    .line 984
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->lastCamcorderMode:I

    return v0
.end method

.method public getLastCameraMode()I
    .locals 1

    .prologue
    .line 974
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->lastCameraMode:I

    return v0
.end method

.method public getLastHandShake()Z
    .locals 1

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getLastHandShake()Z

    move-result v0

    return v0
.end method

.method public getLocStatus()I
    .locals 1

    .prologue
    .line 871
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isSearchingLoc:I

    return v0
.end method

.method public getMaxExpCompensationIndex()I
    .locals 1

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getMaxExpCompensationIndex()I

    move-result v0

    return v0
.end method

.method public getMaxPanResDimension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getMaxPanResDimension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxPicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinExpCompensationIndex()I
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getMinExpCompensationIndex()I

    move-result v0

    return v0
.end method

.method public getModeCount()I
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getModeCount()I

    move-result v0

    return v0
.end method

.method public getModeCountCamcorder()I
    .locals 1

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getModeCountCamcorder()I

    move-result v0

    return v0
.end method

.method public getModesDataEntries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1167
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesGridDataArray:Ljava/util/ArrayList;

    .line 1170
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesGridDataArray:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getModesValueEntries()[I
    .locals 1

    .prologue
    .line 1140
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 1141
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesValue:[I

    .line 1143
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesValue:[I

    goto :goto_0
.end method

.method public getNormalModePicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getNormalModePicResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getPicResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPictureResolutionEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getPictureResolutionEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPictureResolutionTextIcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getPictureResolutionTextIcons()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPictureResolutionValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getPictureResolutionValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPositionFromAutoTimer(I)I
    .locals 4
    .parameter "timer"

    .prologue
    .line 712
    const/4 v1, -0x1

    .line 713
    .local v1, position:I
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getAutoTimerValueEntries()[I

    move-result-object v2

    .line 715
    .local v2, timers:[I
    if-eqz p1, :cond_0

    .line 716
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 717
    aget v3, v2, v0

    if-ne p1, v3, :cond_1

    .line 718
    move v1, v0

    .line 724
    .end local v0           #index:I
    :cond_0
    return v1

    .line 716
    .restart local v0       #index:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPositionFromMode(I)I
    .locals 4
    .parameter "mode"

    .prologue
    .line 695
    const/4 v2, -0x1

    .line 696
    .local v2, position:I
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getModesValueEntries()[I

    move-result-object v1

    .line 698
    .local v1, modes:[I
    if-eqz v1, :cond_0

    .line 699
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 700
    aget v3, v1, v0

    if-ne p1, v3, :cond_1

    .line 701
    move v2, v0

    .line 707
    .end local v0           #index:I
    :cond_0
    return v2

    .line 699
    .restart local v0       #index:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPositionFromTimeLapse(I)I
    .locals 4
    .parameter "timelapseValue"

    .prologue
    .line 728
    const/4 v1, -0x1

    .line 729
    .local v1, position:I
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getTimeLapseValueEntries()[I

    move-result-object v2

    .line 731
    .local v2, values:[I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 732
    aget v3, v2, v0

    if-ne p1, v3, :cond_1

    .line 733
    move v1, v0

    .line 738
    :cond_0
    return v1

    .line 731
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getReviewTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 662
    const-string v0, "0"

    return-object v0
.end method

.method public getSDPlug()Z
    .locals 1

    .prologue
    .line 653
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mHasSDPluged:Z

    return v0
.end method

.method public getSceneCountCamcorder()I
    .locals 1

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSceneCountCamcorder()I

    move-result v0

    return v0
.end method

.method public getSceneCountCamera()I
    .locals 1

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSceneCountCamera()I

    move-result v0

    return v0
.end method

.method public getScenesDataEntries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1185
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mScenesGridDataArray:Ljava/util/ArrayList;

    .line 1188
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesGridDataArray:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getSensorPicResList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSensorPicResList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSensorVidResList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSensorVidResList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShutterAnimation()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1010
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_ANIM_MENU_ENABLED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "Shutter Animation"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getShutterToneOn()Z
    .locals 3

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Shutter Tone"

    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_ENABLED:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSpecificCamSetting(I)Lcom/motorola/Camera/CamSetting/CamSetting;
    .locals 1
    .parameter "which"

    .prologue
    .line 1902
    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1903
    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1904
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1902
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStitchMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getStitchMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportEffectsValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportEffectsValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedEffects()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedEffectsImg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportedEffectsImg()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedScenes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedWhiteBalances()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportedWhiteBalances()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedWhiteBalancesImg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportedWhiteBalancesImg()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedWhiteBalancesValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportedWhiteBalancesValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimeLapseValueEntries()[I
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mTimelapseEntries:[I

    return-object v0
.end method

.method public getTimelapseImgEntries()[I
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mTimelapseImgResources:[I

    return-object v0
.end method

.method public getToolbarOpenStatus()Z
    .locals 1

    .prologue
    .line 1927
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mToolbarOpenStatus:Z

    return v0
.end method

.method public getVideoBitrate()I
    .locals 1

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getVideoBitrate()I

    move-result v0

    return v0
.end method

.method public getVideoResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoResolutionEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getVideoResolutionEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getVideoResolutionSummaries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getVideoResolutionSummaries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVideoResolutionTextIcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getVideoResolutionTextIcons()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVideoResolutionValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getVideoResolutionValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVideoStabilization()Z
    .locals 1

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getVideoStabilization()Z

    move-result v0

    return v0
.end method

.method public getVolumeKeySetting()I
    .locals 3

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Volume Key Setting"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWSPicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1941
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getWSPicResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteBalanceDataEntries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mWhiteBalanceGridDataArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getZoomNum()I
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getZoomNum()I

    move-result v0

    return v0
.end method

.method public getcurrentExposure()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getcurrentExposure()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getcurrentISO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getcurrentISO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAudioMuted()Z
    .locals 3

    .prologue
    .line 989
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->SHOW_MUTE_AUDIO_SETTING:Z

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Mute Audio"

    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->MUTE_AUDIO:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 992
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAudioScenesSupported()Z
    .locals 1

    .prologue
    .line 1208
    sget-boolean v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mIsAudioScenesSupported:Z

    return v0
.end method

.method public isAudioZoomOn()Z
    .locals 1

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isAudioZoomOn()Z

    move-result v0

    return v0
.end method

.method public isAutoFocusSupported()Z
    .locals 1

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isAutoFocusSupported()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isBackCamera()Z
    .locals 2

    .prologue
    .line 1908
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCamcorderZoomSupported()Z
    .locals 1

    .prologue
    .line 827
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCamcorderZoomSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCameraLaunchedFromCamcorder()Z
    .locals 1

    .prologue
    .line 883
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->cameraLaunchedFromCamcorder:Z

    return v0
.end method

.method public isContinuousFocusEnabled()Z
    .locals 1

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isContinuousFocusEnabled()Z

    move-result v0

    return v0
.end method

.method public isContinuousFocusSupported()Z
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isContinuousFocusSupported()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isCurrCamInit()Z
    .locals 1

    .prologue
    .line 1912
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDualCameraSupported()Z
    .locals 1

    .prologue
    .line 1030
    sget-boolean v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->internalCameraSupported:Z

    return v0
.end method

.method public isDynamicFocusSupported()Z
    .locals 1

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isDynamicFocusSupported()Z

    move-result v0

    return v0
.end method

.method public isEulaShown()Z
    .locals 1

    .prologue
    .line 917
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown:Z

    return v0
.end method

.method public isFaceDetectionEnable()Z
    .locals 1

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isFaceDetectionEnable()Z

    move-result v0

    return v0
.end method

.method public isFaceTrackingOn()Z
    .locals 3

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Face Detection"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHDRSupported()Z
    .locals 1

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isHDRSupported()Z

    move-result v0

    return v0
.end method

.method public isImageStabilizationEnabled()Z
    .locals 1

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isImageStabilizationEnabled()Z

    move-result v0

    return v0
.end method

.method public isInScroll()Z
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isInScroll()Z

    move-result v0

    return v0
.end method

.method public isInSecurelyLockedMode()Z
    .locals 1

    .prologue
    .line 949
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mIsInSecurelyLockedMode:Z

    return v0
.end method

.method public isInServiceMode()Z
    .locals 1

    .prologue
    .line 929
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mIsServiceMode:Z

    return v0
.end method

.method public isInfiniteFocus()Z
    .locals 1

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isInfiniteFocus()Z

    move-result v0

    return v0
.end method

.method public isLocationOn()Z
    .locals 1

    .prologue
    .line 906
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn:Z

    return v0
.end method

.method public isMultishotEnable()Z
    .locals 1

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isMultishotEnable()Z

    move-result v0

    return v0
.end method

.method public isPanoramaFeatureEnable()Z
    .locals 1

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isPanoramaFeatureEnable()Z

    move-result v0

    return v0
.end method

.method public isProviderEnabled()Z
    .locals 1

    .prologue
    .line 1995
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isProviderEnabled:Z

    return v0
.end method

.method public isReturnFromTag()Z
    .locals 1

    .prologue
    .line 958
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mReturnFromTag:Z

    return v0
.end method

.method public isSDEncryptionEnabled()Z
    .locals 1

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isSDEncryptionEnabled()Z

    move-result v0

    return v0
.end method

.method public isTorchSupported()Z
    .locals 1

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isTorchSupported()Z

    move-result v0

    return v0
.end method

.method public isVideoModesSupported()Z
    .locals 1

    .prologue
    .line 839
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mSlowModeSupported:Z

    return v0
.end method

.method public isVideoStabilizationDemoSupported()Z
    .locals 1

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getVideoStabilizationDemoSupported()Z

    move-result v0

    return v0
.end method

.method public isVideoStabilizationSupported()Z
    .locals 1

    .prologue
    .line 1955
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->getVideoStabilizationSupported()Z

    move-result v0

    return v0
.end method

.method public isWDREnabled()Z
    .locals 1

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isWDREnabled()Z

    move-result v0

    return v0
.end method

.method public isWdrForVideo()Z
    .locals 1

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isWdrForVideo()Z

    move-result v0

    return v0
.end method

.method public isWideScreenDisplay()Z
    .locals 1

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isWideScreenDisplay()Z

    move-result v0

    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isZoomSupported()Z

    move-result v0

    return v0
.end method

.method public loadAutoDetectValues()V
    .locals 1

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->loadAutoDetectValues()V

    .line 1465
    return-void
.end method

.method public loadCommonRunTimeProperties()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 611
    const-string v2, "ro.media.capture.shuttertone"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, shutterToneUI:Ljava/lang/String;
    const-string v2, "ro.camera.sound.forced"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, ForceShutterTone:Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 616
    sput-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_MENU_ENABLED:Z

    .line 619
    :cond_0
    const-string v2, "ro.camcorder.zoom"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 620
    const-string v2, "CommonCamSetting"

    const-string v3, "Camcorder zoom supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-virtual {p0, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCamcorderZoomSupported(Z)V

    .line 624
    :cond_1
    const-string v2, "ro.video.slow"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSlowModeSupported(Z)V

    .line 625
    const-string v2, "ro.video.fast"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setFastModeSupported(Z)V

    .line 627
    const-string v2, "ro.camera.shutteranimation"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_ANIM_MENU_ENABLED:Z

    .line 630
    return-void
.end method

.method public loadSliderData()V
    .locals 26

    .prologue
    .line 376
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mLightImgResources:Ljava/util/List;

    .line 377
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mLightGridDataArray:Ljava/util/ArrayList;

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07004f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 380
    .local v19, titleStringData:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070050

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 381
    .local v11, imgData:[Ljava/lang/String;
    sget-boolean v21, Lcom/motorola/Camera/CameraGlobalType;->FLASH:Z

    if-eqz v21, :cond_0

    .line 382
    const/4 v9, 0x2

    .line 386
    .local v9, gridSize:I
    :goto_0
    const/4 v13, 0x0

    .local v13, ind:I
    :goto_1
    if-ge v13, v9, :cond_1

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mLightImgResources:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    aget-object v23, v11, v13

    const-string v24, "drawable"

    const-string v25, "com.motorola.Camera"

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mLightGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/motorola/Camera/DialogGridData;

    aget-object v24, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mLightImgResources:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 386
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 384
    .end local v9           #gridSize:I
    .end local v13           #ind:I
    :cond_0
    move-object/from16 v0, v19

    array-length v9, v0

    .restart local v9       #gridSize:I
    goto :goto_0

    .line 393
    .restart local v13       #ind:I
    :cond_1
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFlashImgResources:Ljava/util/List;

    .line 394
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFlashGridDataArray:Ljava/util/ArrayList;

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07004d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07004e

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 398
    move-object/from16 v0, v19

    array-length v9, v0

    .line 399
    const-string v21, "CommonCamSetting"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "gridSize"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v21, "CommonCamSetting"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "titleStringData"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v9, :cond_2

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFlashImgResources:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    aget-object v23, v11, v13

    const-string v24, "drawable"

    const-string v25, "com.motorola.Camera"

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFlashGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/motorola/Camera/DialogGridData;

    aget-object v24, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFlashImgResources:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 402
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 411
    :cond_2
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesImgResources:Ljava/util/List;

    .line 412
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesGridDataArray:Ljava/util/ArrayList;

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07003a

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07003b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070039

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v15

    .line 416
    .local v15, pictureModesValue:[I
    array-length v0, v15

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesValue:[I

    .line 418
    move-object/from16 v0, v19

    array-length v9, v0

    .line 420
    const/4 v5, 0x0

    .line 422
    .local v5, arrayIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07003d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 423
    .local v12, imgDataAutoTimer:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAutoTimerImgResources:[I

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07003c

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAutoTimerValue:[I

    .line 426
    const/4 v13, 0x0

    :goto_3
    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_3

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAutoTimerImgResources:[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    aget-object v23, v12, v13

    const-string v24, "drawable"

    const-string v25, "com.motorola.Camera"

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    aput v22, v21, v13

    .line 426
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 430
    :cond_3
    const/4 v13, 0x0

    :goto_4
    if-ge v13, v9, :cond_e

    .line 432
    aget v21, v15, v13

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->isMultishotEnable()Z

    move-result v21

    if-eqz v21, :cond_9

    :cond_4
    aget v21, v15, v13

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->isPanoramaFeatureEnable()Z

    move-result v21

    if-eqz v21, :cond_9

    :cond_5
    aget v21, v15, v13

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->isFaceDetectionEnable()Z

    move-result v21

    if-eqz v21, :cond_9

    :cond_6
    aget v21, v15, v13

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->isHDRSupported()Z

    move-result v21

    if-eqz v21, :cond_9

    :cond_7
    aget v21, v15, v13

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAutoTimerCaptureSupported:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    :cond_8
    aget v21, v15, v13

    const/16 v22, 0x6

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->isWDREnabled()Z

    move-result v21

    if-nez v21, :cond_a

    .line 430
    :cond_9
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 439
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesValue:[I

    move-object/from16 v21, v0

    aget v22, v15, v13

    aput v22, v21, v5

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesImgResources:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    aget-object v23, v11, v13

    const-string v24, "drawable"

    const-string v25, "com.motorola.Camera"

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    aget v21, v15, v13

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v21

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 443
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/motorola/Camera/DialogGridData;

    aget-object v24, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesImgResources:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 452
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 445
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAutoTimer:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPositionFromAutoTimer(I)I

    move-result v14

    .line 446
    .local v14, index:I
    if-ltz v14, :cond_d

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    new-instance v22, Lcom/motorola/Camera/DialogGridData;

    aget-object v23, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAutoTimerImgResources:[I

    move-object/from16 v24, v0

    aget v24, v24, v14

    invoke-direct/range {v22 .. v24}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_6

    .line 449
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/motorola/Camera/DialogGridData;

    aget-object v24, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPictureModesImgResources:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_6

    .line 457
    .end local v14           #index:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070041

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 458
    .local v4, array:Landroid/content/res/TypedArray;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mTimelapseImgResources:[I

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070043

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mTimelapseEntries:[I

    .line 460
    const/4 v10, 0x0

    .local v10, i:I
    :goto_7
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_f

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mTimelapseImgResources:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v10, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    aput v22, v21, v10

    .line 460
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 464
    :cond_f
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 469
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesImgResources:Ljava/util/List;

    .line 470
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesGridDataArray:Ljava/util/ArrayList;

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070040

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070044

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07003f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v20

    .line 475
    .local v20, videoModesValue:[I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesValue:[I

    .line 476
    move-object/from16 v0, v19

    array-length v9, v0

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b001d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 478
    .local v17, slowMotion:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0b001c

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 480
    .local v8, fastMotion:Ljava/lang/String;
    const/4 v5, 0x0

    .line 481
    const/4 v13, 0x0

    :goto_8
    if-ge v13, v9, :cond_16

    .line 483
    const-string v21, "CommonCamSetting"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MODE : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, v19, v13

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, v11, v13

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mSlowModeSupported:Z

    move/from16 v21, v0

    if-nez v21, :cond_10

    aget-object v21, v19, v13

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_12

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isWdrForVideo()Z

    move-result v21

    if-nez v21, :cond_11

    aget v21, v20, v13

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFastModeSupported:Z

    move/from16 v21, v0

    if-nez v21, :cond_13

    aget-object v21, v19, v13

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 481
    :cond_12
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 490
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesValue:[I

    move-object/from16 v21, v0

    aget v22, v20, v13

    aput v22, v21, v5

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesImgResources:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    aget-object v23, v11, v13

    const-string v24, "drawable"

    const-string v25, "com.motorola.Camera"

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    const-string v21, "CommonCamSetting"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MODE : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesImgResources:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    aget v21, v20, v13

    const/16 v22, 0xd

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/motorola/Camera/DialogGridData;

    aget-object v24, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesImgResources:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesImgResources:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    .line 498
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrentTimeLapse:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPositionFromTimeLapse(I)I

    move-result v16

    .line 499
    .local v16, pos:I
    if-ltz v16, :cond_15

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    new-instance v22, Lcom/motorola/Camera/DialogGridData;

    aget-object v23, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mTimelapseImgResources:[I

    move-object/from16 v24, v0

    aget v24, v24, v16

    invoke-direct/range {v22 .. v24}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 502
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVideoModesGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    new-instance v22, Lcom/motorola/Camera/DialogGridData;

    aget-object v23, v19, v13

    const v24, 0x7f0200cd

    invoke-direct/range {v22 .. v24}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 509
    .end local v16           #pos:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportedWhiteBalances()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportedWhiteBalances()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_17

    .line 512
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mWhiteBalanceGridDataArray:Ljava/util/ArrayList;

    .line 513
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mWhiteBalanceImgResources:Ljava/util/ArrayList;

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportedWhiteBalancesValues()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v9

    .line 516
    const/4 v13, 0x0

    :goto_b
    if-ge v13, v9, :cond_17

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mWhiteBalanceImgResources:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportedWhiteBalancesImg()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v24, "drawable"

    const-string v25, "com.motorola.Camera"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mWhiteBalanceGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    new-instance v24, Lcom/motorola/Camera/DialogGridData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportedWhiteBalancesTitle()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mWhiteBalanceImgResources:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 516
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 523
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_18

    .line 527
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mEffectsGridDataArray:Ljava/util/ArrayList;

    .line 528
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mEffectsImgResources:Ljava/util/ArrayList;

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportEffectsValues()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v9

    .line 531
    const/4 v13, 0x0

    :goto_c
    if-ge v13, v9, :cond_18

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mEffectsImgResources:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportedEffectsImg()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v24, "drawable"

    const-string v25, "com.motorola.Camera"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mEffectsGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    new-instance v24, Lcom/motorola/Camera/DialogGridData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/Camera/CamSetting/CamSetting;->getSupportEffectsTitle()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mEffectsImgResources:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 531
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 539
    :cond_18
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mScenesGridDataArray:Ljava/util/ArrayList;

    .line 540
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mScenesImgResources:Ljava/util/ArrayList;

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07002b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07002c

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 544
    move-object/from16 v0, v19

    array-length v9, v0

    .line 546
    const/4 v13, 0x0

    :goto_d
    if-ge v13, v9, :cond_1a

    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isImageStabilizationEnabled()Z

    move-result v21

    if-nez v21, :cond_19

    aget-object v21, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0b0118

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 546
    :goto_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 552
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mScenesImgResources:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    aget-object v23, v11, v13

    const-string v24, "drawable"

    const-string v25, "com.motorola.Camera"

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mScenesGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/motorola/Camera/DialogGridData;

    aget-object v24, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mScenesImgResources:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_e

    .line 560
    :cond_1a
    sget-boolean v21, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mIsAudioScenesSupported:Z

    if-eqz v21, :cond_1d

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAudioScenesValues:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 565
    .local v18, tempscenes:[Ljava/lang/String;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesGridDataArray:Ljava/util/ArrayList;

    .line 566
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesImgResources:Ljava/util/ArrayList;

    .line 567
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->audioScenesValues:Ljava/util/List;

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070031

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070032

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f070030

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 573
    .local v6, audioScenesArray:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v9, v0

    .line 574
    const/4 v7, 0x0

    .line 576
    .local v7, audioarrayIndex:I
    const/4 v10, 0x0

    :goto_f
    if-ge v10, v9, :cond_1e

    .line 578
    const/4 v13, 0x0

    :goto_10
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_1c

    .line 580
    aget-object v21, v6, v10

    aget-object v22, v18, v13

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->audioScenesValues:Ljava/util/List;

    move-object/from16 v21, v0

    aget-object v22, v18, v13

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesImgResources:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    aget-object v23, v11, v10

    const-string v24, "drawable"

    const-string v25, "com.motorola.Camera"

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/motorola/Camera/DialogGridData;

    aget-object v24, v19, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesImgResources:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 585
    add-int/lit8 v7, v7, 0x1

    .line 578
    :cond_1b
    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    .line 576
    :cond_1c
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 593
    .end local v6           #audioScenesArray:[Ljava/lang/String;
    .end local v7           #audioarrayIndex:I
    .end local v18           #tempscenes:[Ljava/lang/String;
    :cond_1d
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesGridDataArray:Ljava/util/ArrayList;

    .line 594
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesImgResources:Ljava/util/ArrayList;

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07002e

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f07002f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 598
    move-object/from16 v0, v19

    array-length v9, v0

    .line 600
    const/4 v13, 0x0

    :goto_11
    if-ge v13, v9, :cond_1e

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesImgResources:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    aget-object v23, v11, v13

    const-string v24, "drawable"

    const-string v25, "com.motorola.Camera"

    invoke-virtual/range {v22 .. v25}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/motorola/Camera/DialogGridData;

    aget-object v24, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVScenesImgResources:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/DialogGridData;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 600
    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    .line 607
    :cond_1e
    return-void
.end method

.method public declared-synchronized resetContext(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1822
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->resetContext(Landroid/content/Context;)V

    .line 1825
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    if-eqz v0, :cond_0

    .line 1826
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->resetContext(Landroid/content/Context;)V

    .line 1828
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    if-ne v0, p1, :cond_1

    .line 1829
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1831
    :cond_1
    monitor-exit p0

    return-void

    .line 1822
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized save()V
    .locals 3

    .prologue
    .line 1853
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAttrsChanged:Z

    .line 1854
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 1855
    const-string v1, "CommonCamSetting"

    const-string v2, "save() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1859
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "isLocationOn"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1860
    const-string v1, "isEulaShown"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1862
    const-string v1, "mHasSDPluged"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mHasSDPluged:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1863
    const-string v1, "internalCameraSupported"

    sget-boolean v2, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->internalCameraSupported:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1864
    const-string v1, "mCamcorderZoom"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCamcorderZoomSupported:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1865
    const-string v1, "mToolbarOpenStatus"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mToolbarOpenStatus:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1868
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1870
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CamSetting;->save()V

    .line 1871
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    if-eqz v1, :cond_1

    .line 1872
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CamSetting;->save()V

    .line 1874
    :cond_1
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 1875
    const-string v1, "CommonCamSetting"

    const-string v2, "save() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1877
    :cond_2
    monitor-exit p0

    return-void

    .line 1853
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setAESSensorVidResList(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setAESSensorVidResList(Ljava/lang/String;)V

    .line 1800
    return-void
.end method

.method public setAudioBitrate(I)V
    .locals 1
    .parameter "bitrate"

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setAudioBitrate(I)V

    .line 1580
    return-void
.end method

.method public setAudioScenesSupported(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1204
    sput-boolean p1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mIsAudioScenesSupported:Z

    .line 1205
    return-void
.end method

.method public setAudioZoom(Z)V
    .locals 1
    .parameter "toggle"

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setAudioZoom(Z)V

    .line 1475
    return-void
.end method

.method public setCamcorderAESProps(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCamcorderAESProps(Z)V

    .line 1796
    return-void
.end method

.method public declared-synchronized setCamcorderZoomSupported(Z)V
    .locals 1
    .parameter "camcorderZoomSupported"

    .prologue
    .line 835
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCamcorderZoomSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    monitor-exit p0

    return-void

    .line 835
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCameraLaunchFromCamcorderFlag(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 895
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->cameraLaunchedFromCamcorder:Z

    .line 896
    return-void
.end method

.method public setCurrentAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "ad"

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAddress:Ljava/lang/String;

    .line 1024
    return-void
.end method

.method public declared-synchronized setCurrentAppMode(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 1836
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    .line 1837
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    .line 1838
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mContext:Landroid/content/Context;

    const-string v1, "com.motorola.Camera_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    .line 1841
    :cond_0
    iput p2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAppMode:I

    .line 1844
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 1845
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    if-eqz v0, :cond_1

    .line 1846
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentAppMode(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1848
    :cond_1
    monitor-exit p0

    return-void

    .line 1836
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCurrentAutoTimer(I)V
    .locals 0
    .parameter "timer"

    .prologue
    .line 751
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAutoTimer:I

    .line 752
    return-void
.end method

.method public setCurrentBurstModeRes(Ljava/lang/String;)V
    .locals 1
    .parameter "newRes"

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentBurstModeRes(Ljava/lang/String;)V

    .line 1238
    return-void
.end method

.method public setCurrentContrastValue(Ljava/lang/String;)V
    .locals 1
    .parameter "newContrastValue"

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentContrastValue(Ljava/lang/String;)V

    .line 1267
    return-void
.end method

.method public setCurrentEffect(I)V
    .locals 1
    .parameter "effect"

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentEffect(I)V

    .line 1550
    return-void
.end method

.method public setCurrentExpValue(Ljava/lang/String;)V
    .locals 1
    .parameter "newExp"

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentExpValue(Ljava/lang/String;)V

    .line 1257
    return-void
.end method

.method public setCurrentFlash(I)V
    .locals 1
    .parameter "flash"

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentFlash(I)V

    .line 1320
    return-void
.end method

.method public setCurrentFocusOption(Ljava/lang/String;)V
    .locals 1
    .parameter "focus"

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentFocusOption(Ljava/lang/String;)V

    .line 1767
    return-void
.end method

.method public setCurrentISOValue(Ljava/lang/String;)V
    .locals 1
    .parameter "newISOValue"

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentISOValue(Ljava/lang/String;)V

    .line 1287
    return-void
.end method

.method public setCurrentIsoValue(Ljava/lang/String;)V
    .locals 1
    .parameter "newIso"

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentIsoValue(Ljava/lang/String;)V

    .line 1247
    return-void
.end method

.method public setCurrentMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 767
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAppMode:I

    if-nez v0, :cond_4

    .line 770
    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_3

    .line 774
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 775
    const-string v0, "CommonCamSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentModeV:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_1
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentModeV:I

    .line 800
    :goto_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 801
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    if-eqz v0, :cond_2

    .line 802
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentMode(I)V

    .line 803
    :cond_2
    return-void

    .line 781
    :cond_3
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentMode:I

    goto :goto_0

    .line 785
    :cond_4
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 787
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_5

    .line 788
    const-string v0, "CommonCamSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentModeV:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_5
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentModeV:I

    goto :goto_0

    .line 795
    :cond_6
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    .line 796
    const-string v0, "CommonCamSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentModeV:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_7
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->currentModeV:I

    goto :goto_0
.end method

.method public setCurrentPanResDimension(Ljava/lang/String;)V
    .locals 1
    .parameter "currPanResDim"

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentPanResDimension(Ljava/lang/String;)V

    .line 1700
    return-void
.end method

.method public setCurrentResolution(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentResolution(Z)V

    .line 1938
    return-void
.end method

.method public setCurrentSaturationValue(Ljava/lang/String;)V
    .locals 1
    .parameter "newSaturationValue"

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentSaturationValue(Ljava/lang/String;)V

    .line 1277
    return-void
.end method

.method public setCurrentScene(I)V
    .locals 1
    .parameter "scene"

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentScene(I)V

    .line 1545
    return-void
.end method

.method public setCurrentSingleShotRes(Ljava/lang/String;)V
    .locals 1
    .parameter "newRes"

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentSingleShotRes(Ljava/lang/String;)V

    .line 1234
    return-void
.end method

.method public setCurrentStitchMode(Ljava/lang/String;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentStitchMode(Ljava/lang/String;)V

    .line 1315
    return-void
.end method

.method public setCurrentStorageLocation(I)V
    .locals 3
    .parameter "location"

    .prologue
    .line 1073
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1074
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Storage Location"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1075
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1077
    return-void
.end method

.method public setCurrentTimeLapse(I)V
    .locals 0
    .parameter "timelapse"

    .prologue
    .line 755
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrentTimeLapse:I

    .line 756
    return-void
.end method

.method public setCurrentVideoRes(Ljava/lang/String;)V
    .locals 1
    .parameter "newRes"

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 1222
    return-void
.end method

.method public setCurrentWhiteBalance(I)V
    .locals 1
    .parameter "whitebalance"

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentWhiteBalance(I)V

    .line 1619
    return-void
.end method

.method public setDefaultAESVideoResolution()V
    .locals 1

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->setDefaultAESVideoResolution()V

    .line 1804
    return-void
.end method

.method public setDefaultFPSRange(II)V
    .locals 1
    .parameter "fpsRangeMin"
    .parameter "fpsRangeMax"

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/Camera/CamSetting/CamSetting;->setDefaultFPSRange(II)V

    .line 2011
    return-void
.end method

.method public setDefaultVideoResolution()V
    .locals 1

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->setDefaultVideoResolution()V

    .line 1808
    return-void
.end method

.method public setDefaultZoomValue()V
    .locals 1

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->setDefaultZoomValue()V

    .line 1540
    return-void
.end method

.method public setDualCameraSuport(Z)V
    .locals 0
    .parameter "support"

    .prologue
    .line 1036
    sput-boolean p1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->internalCameraSupported:Z

    .line 1037
    return-void
.end method

.method public setEulaShown(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "shown"

    .prologue
    .line 817
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAttrsChanged:Z

    .line 818
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown:Z

    .line 819
    return-void
.end method

.method public setExpCompensationStep(F)V
    .locals 1
    .parameter "expComp"

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setExpCompensationStep(F)V

    .line 1303
    return-void
.end method

.method public setFaceDetectionEnable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setFaceDetectionEnable(Z)V

    .line 1517
    return-void
.end method

.method public setFaceTracking(Z)V
    .locals 1
    .parameter "toggle"

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setFaceTracking(Z)V

    .line 1485
    return-void
.end method

.method public setFastModeSupported(Z)V
    .locals 0
    .parameter "videoModeSupported"

    .prologue
    .line 847
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFastModeSupported:Z

    .line 848
    return-void
.end method

.method public setFlashModes(Ljava/lang/String;)V
    .locals 1
    .parameter "modes"

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setFlashModes(Ljava/lang/String;)V

    .line 1435
    return-void
.end method

.method public setFocusModes(Ljava/lang/String;)V
    .locals 1
    .parameter "modes"

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setFocusModes(Ljava/lang/String;)V

    .line 1425
    return-void
.end method

.method public setFocusViewHeight(F)V
    .locals 1
    .parameter "val"

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setFocusViewHeight(F)V

    .line 1350
    return-void
.end method

.method public setFocusViewWidth(F)V
    .locals 1
    .parameter "val"

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setFocusViewWidth(F)V

    .line 1345
    return-void
.end method

.method public setHDRSupport(Z)V
    .locals 1
    .parameter "supported"

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setHDRSupport(Z)V

    .line 1783
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hdl"

    .prologue
    .line 1917
    if-eqz p1, :cond_0

    .line 1918
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mMainHandler:Landroid/os/Handler;

    .line 1919
    :cond_0
    return-void
.end method

.method public setImageStabilization(Z)V
    .locals 1
    .parameter "imageStabilizationEnable"

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setImageStabilization(Z)V

    .line 1981
    return-void
.end method

.method public setImagerOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setImagerOrientation(I)V

    .line 1812
    return-void
.end method

.method public setInScroll(Z)V
    .locals 1
    .parameter "setting"

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setInScroll(Z)V

    .line 1330
    return-void
.end method

.method public setIsoValues(Ljava/lang/String;)V
    .locals 1
    .parameter "isoV"

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setIsoValues(Ljava/lang/String;)V

    .line 1445
    return-void
.end method

.method public setLastCamcorderMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 979
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->lastCamcorderMode:I

    .line 980
    return-void
.end method

.method public setLastCameraMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 969
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->lastCameraMode:I

    .line 970
    return-void
.end method

.method public setLastHandShake(Z)V
    .locals 1
    .parameter "handshakevalue"

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setLastHandShake(Z)V

    .line 1460
    return-void
.end method

.method public setLocationOn(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "on"

    .prologue
    .line 808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAttrsChanged:Z

    .line 809
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn:Z

    .line 810
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 811
    :cond_0
    return-void
.end method

.method public setMaxExpCompensationIndex(I)V
    .locals 1
    .parameter "maxEI"

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setMaxExpCompensationIndex(I)V

    .line 1311
    return-void
.end method

.method public setMaxPanResDimension(Ljava/lang/String;)V
    .locals 1
    .parameter "maxPanResDim"

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setMaxPanResDimension(Ljava/lang/String;)V

    .line 1708
    return-void
.end method

.method public setMaxPicResolution(Ljava/lang/String;)V
    .locals 1
    .parameter "max"

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setMaxPicResolution(Ljava/lang/String;)V

    .line 1390
    return-void
.end method

.method public setMaxWSPicResolution(Ljava/lang/String;)V
    .locals 1
    .parameter "wsSize"

    .prologue
    .line 1931
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setMaxWSPicResolution(Ljava/lang/String;)V

    .line 1933
    return-void
.end method

.method public setMinExpCompensationIndex(I)V
    .locals 1
    .parameter "minEI"

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setMinExpCompensationIndex(I)V

    .line 1295
    return-void
.end method

.method public setMultishotEnable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setMultishotEnable(Z)V

    .line 1512
    return-void
.end method

.method public setPanoramaFeatureEnable()V
    .locals 1

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->setPanoramaFeatureEnable()V

    .line 1640
    return-void
.end method

.method public setProviderEnabled(Z)V
    .locals 0
    .parameter "isProviderEnabled"

    .prologue
    .line 1999
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isProviderEnabled:Z

    .line 2000
    return-void
.end method

.method public setReturnFromTag(Z)V
    .locals 0
    .parameter "setting"

    .prologue
    .line 964
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mReturnFromTag:Z

    .line 965
    return-void
.end method

.method public setSDPlug(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAttrsChanged:Z

    .line 644
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mHasSDPluged:Z

    .line 645
    return-void
.end method

.method public setSearchingLoc(I)V
    .locals 1
    .parameter "search"

    .prologue
    .line 859
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAttrsChanged:Z

    .line 860
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isSearchingLoc:I

    .line 861
    return-void
.end method

.method public setSecurelyLockedMode(Z)V
    .locals 0
    .parameter "isSecurelyLocked"

    .prologue
    .line 953
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mIsInSecurelyLockedMode:Z

    .line 954
    return-void
.end method

.method public setSensorPicResList(Ljava/lang/String;)V
    .locals 1
    .parameter "picRes"

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setSensorPicResList(Ljava/lang/String;)V

    .line 1415
    return-void
.end method

.method public setSensorVidResList(Ljava/lang/String;)V
    .locals 1
    .parameter "vidRes"

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setSensorVidResList(Ljava/lang/String;)V

    .line 1405
    return-void
.end method

.method public setServiceMode(Z)V
    .locals 1
    .parameter "setting"

    .prologue
    .line 940
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mIsServiceMode:Z

    .line 941
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setServiceMode(Z)V

    .line 942
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setServiceMode(Z)V

    .line 945
    :cond_0
    return-void
.end method

.method public setServiceModeResolution(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setServiceModeResolution(Ljava/lang/String;)V

    .line 1218
    return-void
.end method

.method public setSlowModeSupported(Z)V
    .locals 0
    .parameter "videoModesSupported"

    .prologue
    .line 843
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mSlowModeSupported:Z

    .line 844
    return-void
.end method

.method public declared-synchronized setSpecificCamSetting(I)Z
    .locals 2
    .parameter "which"

    .prologue
    const/4 v0, 0x1

    .line 1892
    monitor-enter p0

    if-ne p1, v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    :goto_0
    iput-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    .line 1894
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1895
    const/4 v0, 0x0

    .line 1897
    :cond_0
    monitor-exit p0

    return v0

    .line 1892
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSupportedAudioScenes(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mAudioScenesValues:Ljava/lang/String;

    .line 1196
    return-void
.end method

.method public setSupportedEffects(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setSupportedEffects(Ljava/lang/String;)V

    .line 1623
    return-void
.end method

.method public setSupportedScenes(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setSupportedScenes(Ljava/lang/String;)V

    .line 1590
    return-void
.end method

.method public setSupportedWhiteBalances(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setSupportedWhiteBalances(Ljava/lang/String;)V

    .line 1599
    return-void
.end method

.method public setToolbarOpenStatus(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1923
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mToolbarOpenStatus:Z

    .line 1924
    return-void
.end method

.method public setTorchSupported(Z)V
    .locals 1
    .parameter "support"

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setTorchSupported(Z)V

    .line 1655
    return-void
.end method

.method public setVideoBitrate(I)V
    .locals 1
    .parameter "bitrate"

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setVideoBitrate(I)V

    .line 1570
    return-void
.end method

.method public setVideoResolutionService(Ljava/lang/String;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setVideoResolutionService(Ljava/lang/String;)V

    .line 1490
    return-void
.end method

.method public setVideoStabilization(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setVideoStabilization(Z)V

    .line 1976
    return-void
.end method

.method public setVideoStabilizationDemoSupported(Z)V
    .locals 1
    .parameter "support"

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setVideoStabilizationDemoSupported(Z)V

    .line 1968
    return-void
.end method

.method public setVideoStabilizationSupported(Z)V
    .locals 1
    .parameter "support"

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setVideoStabilizationSupported(Z)V

    .line 1960
    return-void
.end method

.method public setVolumeKeySetting(I)V
    .locals 3
    .parameter "selection"

    .prologue
    .line 1493
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVolumeKeySetting:I

    .line 1494
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1495
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Volume Key Setting"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mVolumeKeySetting:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1496
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1497
    return-void
.end method

.method public setWDREnable(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1987
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setWDREnable(Z)V

    .line 1988
    return-void
.end method

.method public setWdrForVideo(Z)V
    .locals 1
    .parameter "wdrForVideo"

    .prologue
    .line 2006
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setWdrForVideo(Z)V

    .line 2007
    return-void
.end method

.method public setWideScreenDisplay(Z)V
    .locals 1
    .parameter "wideScreenEnable"

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setWideScreenDisplay(Z)V

    .line 1952
    return-void
.end method

.method public setZoomNum(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CamSetting;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setZoomNum(I)V

    .line 1535
    :cond_0
    return-void
.end method

.method public setZoomSupport(Z)V
    .locals 1
    .parameter "support"

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;->setZoomSupport(Z)V

    .line 1355
    return-void
.end method

.method public declared-synchronized toggleCamSetting()Z
    .locals 2

    .prologue
    .line 1883
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mBackCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    :goto_0
    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;

    .line 1885
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mCurrCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1886
    const/4 v0, 0x0

    .line 1888
    :goto_1
    monitor-exit p0

    return v0

    .line 1883
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFrontCamSetting:Lcom/motorola/Camera/CamSetting/CamSetting;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1888
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 1883
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
