.class public Lcom/motorola/Camera/CamSetting/CamSettingFront;
.super Lcom/motorola/Camera/CamSetting/CamSetting;
.source "CamSettingFront.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotoCamSettingFront"

.field protected static sSelf:Lcom/motorola/Camera/CamSetting/CamSettingFront;


# instance fields
.field private AESSensorVidResolutions:Ljava/lang/String;

.field private currentAESResolution:Ljava/lang/String;

.field private currentBurstModeResolution:Ljava/lang/String;

.field private currentContrastValue:Ljava/lang/String;

.field private currentEffect:I

.field private currentEffectV:I

.field private currentExpValue:Ljava/lang/String;

.field private currentFocusValue:Ljava/lang/String;

.field private currentISOValue:Ljava/lang/String;

.field private currentIsoValue:Ljava/lang/String;

.field private currentReslVService:Ljava/lang/String;

.field private currentSaturationValue:Ljava/lang/String;

.field private currentSingleShotResolution:Ljava/lang/String;

.field private currentVideoResolution:Ljava/lang/String;

.field private currentZoom:I

.field private currentZoomV:I

.field private effectsImg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private effectsTitle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private effectsValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private featureFaceDetectionEnabled:Z

.field private featureMultishotEnabled:Z

.field private focusViewHeight:F

.field private focusViewWidth:F

.field private isHDRCapable:Z

.field private isInfiniteFocus:Z

.field private isoValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioBitrate:I

.field public mAutoFocusAvailable:Z

.field private mDynamicFocusAvailable:Z

.field private mExpCompensationStep:F

.field private mImagerOrientation:I

.field private mInScroll:Z

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSDEncryptionEnabled:Z

.field private mSupportedEffects:Ljava/lang/String;

.field private mVideoBitrate:I

.field private mWSResolution:Ljava/lang/String;

.field private mWideScreenDisplay:Z

.field private maxExpCompensationIndex:I

.field private maxPicResolution:Ljava/lang/String;

.field private minExpCompensationIndex:I

.field private minPicResolution:Ljava/lang/String;

.field private misTrackingFace:Z

.field private mode_num:I

.field private pictureResolutionEntries:[Ljava/lang/CharSequence;

.field private pictureResolutionSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private pictureResolutionTextIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pictureResolutionValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sensorFlashModes:Ljava/lang/String;

.field private sensorFocusModes:Ljava/lang/String;

.field private sensorIsoValues:Ljava/lang/String;

.field private sensorPicResolutions:Ljava/lang/String;

.field private sensorSupportedVidResList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sensorVidResolutions:Ljava/lang/String;

.field private videoResolutionEntries:[Ljava/lang/CharSequence;

.field private videoResolutionSummaries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private videoResolutionTextIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoResolutionValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zoomSupported:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "tx"

    .prologue
    const/high16 v0, 0x42c8

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;-><init>(Landroid/content/Context;)V

    .line 47
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mInScroll:Z

    .line 50
    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->focusViewWidth:F

    .line 51
    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->focusViewHeight:F

    .line 53
    iput v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mode_num:I

    .line 73
    iput v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentZoom:I

    .line 80
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->isInfiniteFocus:Z

    .line 81
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->misTrackingFace:Z

    .line 83
    iput v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentZoomV:I

    .line 94
    const-string v0, "QVGA"

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentReslVService:Ljava/lang/String;

    .line 104
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mAutoFocusAvailable:Z

    .line 105
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mDynamicFocusAvailable:Z

    .line 114
    const-string v0, "0"

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentContrastValue:Ljava/lang/String;

    .line 115
    const-string v0, "0"

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentSaturationValue:Ljava/lang/String;

    .line 116
    const-string v0, "auto"

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentISOValue:Ljava/lang/String;

    .line 119
    const v0, 0x3d0900

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mVideoBitrate:I

    .line 120
    const v0, 0x17700

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mAudioBitrate:I

    .line 136
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->isHDRCapable:Z

    .line 141
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSDEncryptionEnabled:Z

    .line 163
    if-eqz p1, :cond_0

    .line 165
    const-string v0, "com.motorola.Camera_preferences_front"

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mProfileFileName:Ljava/lang/String;

    .line 168
    const-string v0, "com.motorola.Camera_preferences_front"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    .line 172
    invoke-direct {p0}, Lcom/motorola/Camera/CamSetting/CamSettingFront;->load()V

    .line 173
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CamSettingFront;->loadSettingInit()V

    .line 174
    invoke-direct {p0}, Lcom/motorola/Camera/CamSetting/CamSettingFront;->loadRunTimeProperties()V

    .line 179
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CamSettingFront;
    .locals 2
    .parameter "context"

    .prologue
    .line 182
    const-class v1, Lcom/motorola/Camera/CamSetting/CamSettingFront;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sput-object p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    .line 183
    :cond_0
    sget-object v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sSelf:Lcom/motorola/Camera/CamSetting/CamSettingFront;

    if-nez v0, :cond_1

    .line 184
    new-instance v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/CamSetting/CamSettingFront;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sSelf:Lcom/motorola/Camera/CamSetting/CamSettingFront;

    .line 186
    :cond_1
    sget-object v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sSelf:Lcom/motorola/Camera/CamSetting/CamSettingFront;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private load()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 407
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 408
    const-string v0, "MotoCamSettingFront"

    const-string v1, "load() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "maxPicResolution"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->maxPicResolution:Ljava/lang/String;

    .line 413
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mWSResolution"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mWSResolution:Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sensorVidResolutions"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorVidResolutions:Ljava/lang/String;

    .line 416
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sensorPicResolutions"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorPicResolutions:Ljava/lang/String;

    .line 418
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AESSensorVidResolutions"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->AESSensorVidResolutions:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentSingleShotResolution"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentSingleShotResolution:Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentBurstModeResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentSingleShotResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentBurstModeResolution:Ljava/lang/String;

    .line 427
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentVideoResolution"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentVideoResolution:Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentAESResolution"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentAESResolution:Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentFaceTracking"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->misTrackingFace:Z

    .line 436
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentEffect"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentEffect:I

    .line 439
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sensorFlashModes"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorFlashModes:Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sensorFocusModes"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorFocusModes:Ljava/lang/String;

    .line 441
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mImagerOrientation"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mImagerOrientation:I

    .line 444
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentEffectVideo"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentEffectV:I

    .line 446
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sensorIsoValues"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorIsoValues:Ljava/lang/String;

    .line 450
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentIsoValue"

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentIsoValue:Ljava/lang/String;

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentExpValue"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentExpValue:Ljava/lang/String;

    .line 455
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MinExpIndex"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->minExpCompensationIndex:I

    .line 456
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MaxExpIndex"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->maxExpCompensationIndex:I

    .line 458
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mAutoFocusAvailable"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mAutoFocusAvailable:Z

    .line 459
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mSupportedEffects"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSupportedEffects:Ljava/lang/String;

    .line 461
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "zoomSupported"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->zoomSupported:Z

    .line 464
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Video Stabilization Support"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilizationSupported:Z

    .line 466
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Video-Stabilization"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilization:Z

    .line 469
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mWideScreenDisplay"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mWideScreenDisplay:Z

    .line 473
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mImageStabilizationEnable"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mImageStabilizationEnable:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mImageStabilizationEnable:Z

    .line 475
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mWDREnable"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mWDREnable:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mWDREnable:Z

    .line 477
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentFocusValue"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentFocusValue:Ljava/lang/String;

    .line 479
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mDefaultPreviewFPSMin"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMin:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMin:I

    .line 480
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mDefaultPreviewFPSMax"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMax:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMax:I

    .line 482
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 483
    const-string v0, "MotoCamSettingFront"

    const-string v1, "load() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_2
    return-void
.end method

.method private loadRunTimeProperties()V
    .locals 0

    .prologue
    .line 488
    return-void
.end method


# virtual methods
.method public enableAutoFocus()V
    .locals 1

    .prologue
    .line 1157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mAutoFocusAvailable:Z

    .line 1159
    return-void
.end method

.method public enableDynamicFocus()V
    .locals 1

    .prologue
    .line 1169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mDynamicFocusAvailable:Z

    .line 1170
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
    .line 1154
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->expValues:Ljava/util/List;

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
    .line 1151
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->isoValues:Ljava/util/List;

    return-object v0
.end method

.method public getAudioBitrate()I
    .locals 1

    .prologue
    .line 1050
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mAudioBitrate:I

    return v0
.end method

.method public getCurrentContrastValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentContrastValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentEffect()I
    .locals 2

    .prologue
    .line 754
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 756
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentEffect:I

    .line 764
    :goto_0
    return v0

    .line 758
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 760
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentEffectV:I

    goto :goto_0

    .line 764
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentExpValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentExpValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentFlash()I
    .locals 1

    .prologue
    .line 771
    const/4 v0, -0x1

    return v0
.end method

.method public getCurrentISOValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentISOValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentIsoValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentIsoValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPanResDimension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 895
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentSaturationValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentSaturationValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentScene()I
    .locals 1

    .prologue
    .line 744
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentSingleShotRes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CamSettingFront;->getPicResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentVideoResDimensions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSDEncryptionEnabled:Z

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentAESResolution:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentVideoResolution:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentWhiteBalance()I
    .locals 1

    .prologue
    .line 749
    const/4 v0, -0x1

    return v0
.end method

.method public getExpCompensationStep()F
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mExpCompensationStep:F

    return v0
.end method

.method public getFlashModes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorFlashModes:Ljava/lang/String;

    return-object v0
.end method

.method public getFocusModes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorFocusModes:Ljava/lang/String;

    return-object v0
.end method

.method public getFocusOption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentFocusValue:Ljava/lang/String;

    return-object v0
.end method

.method public getFocusViewHeight()F
    .locals 1

    .prologue
    .line 718
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->focusViewHeight:F

    return v0
.end method

.method public getFocusViewWidth()F
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->focusViewWidth:F

    return v0
.end method

.method public getImagerOrientation()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mImagerOrientation:I

    return v0
.end method

.method public getIsoValues()Ljava/lang/String;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorIsoValues:Ljava/lang/String;

    return-object v0
.end method

.method public getLastHandShake()Z
    .locals 1

    .prologue
    .line 873
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxExpCompensationIndex()I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->maxExpCompensationIndex:I

    return v0
.end method

.method public getMaxPanResDimension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 903
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxPicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->maxPicResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getMinExpCompensationIndex()I
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->minExpCompensationIndex:I

    return v0
.end method

.method public getMinPicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->minPicResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getModeCount()I
    .locals 1

    .prologue
    .line 1104
    const/4 v0, 0x1

    return v0
.end method

.method public getModeCountCamcorder()I
    .locals 1

    .prologue
    .line 1107
    const/4 v0, 0x0

    return v0
.end method

.method public getNormalModePicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentSingleShotResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getPicResolution()Ljava/lang/String;
    .locals 2

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mIsServiceMode:Z

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->serviceModeResolution:Ljava/lang/String;

    .line 789
    :goto_0
    return-object v0

    .line 783
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentCameraMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 785
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentBurstModeResolution:Ljava/lang/String;

    goto :goto_0

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentSingleShotResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPictureResolutionEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->pictureResolutionEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPictureResolutionSummaries()Ljava/util/List;
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
    .line 1133
    const/4 v0, 0x0

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
    .line 1119
    const/4 v0, 0x0

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
    .line 1116
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->pictureResolutionValues:Ljava/util/List;

    return-object v0
.end method

.method public getSceneCountCamcorder()I
    .locals 1

    .prologue
    .line 1100
    const/4 v0, 0x1

    return v0
.end method

.method public getSceneCountCamera()I
    .locals 1

    .prologue
    .line 1097
    const/4 v0, 0x1

    return v0
.end method

.method public getSensorPicResList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorPicResolutions:Ljava/lang/String;

    return-object v0
.end method

.method public getSensorVidResList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSDEncryptionEnabled:Z

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->AESSensorVidResolutions:Ljava/lang/String;

    .line 822
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorVidResolutions:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStitchMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 912
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportEffectsTitle()Ljava/util/List;
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
    .line 1227
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsTitle:Ljava/util/ArrayList;

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
    .line 1216
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSupportedEffects()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSupportedEffects:Ljava/lang/String;

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
    .line 1230
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsImg:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSupportedScenes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1068
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedWhiteBalances()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1208
    const/4 v0, 0x0

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
    .line 1204
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedWhiteBalancesTitle()Ljava/util/List;
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
    const/4 v0, 0x0

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
    .line 1196
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoBitrate()I
    .locals 1

    .prologue
    .line 1042
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mVideoBitrate:I

    return v0
.end method

.method public getVideoResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 949
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mIsServiceMode:Z

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentReslVService:Ljava/lang/String;

    .line 954
    :goto_0
    return-object v0

    .line 951
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSDEncryptionEnabled:Z

    if-eqz v0, :cond_1

    .line 952
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentAESResolution:Ljava/lang/String;

    goto :goto_0

    .line 954
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentVideoResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVideoResolutionEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionEntries:[Ljava/lang/CharSequence;

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
    .line 1147
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionSummaries:Ljava/util/List;

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
    .line 1140
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionTextIcons:Ljava/util/List;

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
    .line 1137
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionValues:Ljava/util/List;

    return-object v0
.end method

.method public getWSPicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mWSResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getZoomNum()I
    .locals 2

    .prologue
    .line 732
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 733
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentZoom:I

    .line 737
    :goto_0
    return v0

    .line 734
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 735
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentZoomV:I

    goto :goto_0

    .line 737
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getcurrentExposure()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Exposure"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getcurrentISO()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ISO equivalent senstivity"

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAudioZoomOn()Z
    .locals 1

    .prologue
    .line 919
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoFocusSupported()Z
    .locals 1

    .prologue
    .line 1161
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mAutoFocusAvailable:Z

    return v0
.end method

.method public isContinuousFocusEnabled()Z
    .locals 1

    .prologue
    .line 1189
    const/4 v0, 0x0

    return v0
.end method

.method public isContinuousFocusSupported()Z
    .locals 1

    .prologue
    .line 1193
    const/4 v0, 0x0

    return v0
.end method

.method public isDynamicFocusSupported()Z
    .locals 1

    .prologue
    .line 1165
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mDynamicFocusAvailable:Z

    return v0
.end method

.method public isFaceDetectionEnable()Z
    .locals 1

    .prologue
    .line 1080
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->featureFaceDetectionEnabled:Z

    return v0
.end method

.method public isFaceTrackingOn()Z
    .locals 3

    .prologue
    .line 931
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Face Detection"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHDRSupported()Z
    .locals 1

    .prologue
    .line 1286
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->isHDRCapable:Z

    return v0
.end method

.method public isInScroll()Z
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mInScroll:Z

    return v0
.end method

.method public isInfiniteFocus()Z
    .locals 1

    .prologue
    .line 1034
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->isInfiniteFocus:Z

    return v0
.end method

.method public isMultishotEnable()Z
    .locals 1

    .prologue
    .line 1074
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->featureMultishotEnabled:Z

    return v0
.end method

.method public isPanoramaFeatureEnable()Z
    .locals 1

    .prologue
    .line 1086
    const/4 v0, 0x0

    return v0
.end method

.method public isSDEncryptionEnabled()Z
    .locals 1

    .prologue
    .line 1276
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSDEncryptionEnabled:Z

    return v0
.end method

.method public isTorchSupported()Z
    .locals 1

    .prologue
    .line 1090
    const/4 v0, 0x0

    return v0
.end method

.method public isWideScreenDisplay()Z
    .locals 1

    .prologue
    .line 1308
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mWideScreenDisplay:Z

    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    .prologue
    .line 1178
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->zoomSupported:Z

    return v0
.end method

.method public loadAutoDetectValues()V
    .locals 23

    .prologue
    .line 210
    sget-boolean v19, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v19, :cond_0

    .line 212
    const-string v19, "MotoCamSettingFront"

    const-string v20, "loadAutoDetectValues() - Enter"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v3, entriesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    monitor-enter p0

    .line 219
    :try_start_0
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingFront;->pictureResolutionValues:Ljava/util/List;

    .line 220
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingFront;->pictureResolutionSummaries:Ljava/util/List;

    .line 221
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingFront;->pictureResolutionTextIcons:Ljava/util/List;

    .line 223
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 224
    sget-object v19, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f070019

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 225
    .local v9, resArr:[Ljava/lang/String;
    sget-object v19, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f07001a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 226
    .local v10, resName:[Ljava/lang/String;
    sget-object v19, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f07001b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 227
    .local v13, resValue:[Ljava/lang/String;
    sget-object v19, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f07001c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 229
    .local v12, resTextIcons:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/CamSetting/CamSettingFront;->getSensorPicResList()Ljava/lang/String;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 230
    .local v14, temp:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 231
    .local v7, maxResolution:Ljava/lang/String;
    const/4 v8, 0x0

    .line 233
    .local v8, maxWSResolution:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_5

    .line 235
    const/4 v5, 0x0

    .local v5, ind:I
    :goto_1
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v5, v0, :cond_3

    .line 237
    aget-object v19, v14, v4

    aget-object v20, v9, v5

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 239
    if-nez v7, :cond_1

    aget-object v7, v9, v5

    .line 240
    :cond_1
    if-nez v8, :cond_2

    .line 242
    aget-object v19, v9, v5

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 243
    .local v18, tempValue:[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v18, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    const/16 v21, 0x1

    aget-object v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v19, v19, v21

    const-wide v21, 0x3ff999999999999aL

    cmpl-double v19, v19, v21

    if-lez v19, :cond_2

    .line 244
    aget-object v8, v9, v5

    .line 245
    sget-boolean v19, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v19, :cond_2

    const-string v19, "MotoCamSettingFront"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "tnrf63 the maxWSResolution is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v18           #tempValue:[Ljava/lang/String;
    :cond_2
    aget-object v19, v10, v5

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->pictureResolutionValues:Ljava/util/List;

    move-object/from16 v19, v0

    aget-object v20, v13, v5

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->pictureResolutionTextIcons:Ljava/util/List;

    move-object/from16 v19, v0

    aget-object v20, v12, v5

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 235
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 256
    .end local v5           #ind:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentSingleShotResolution:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    .line 257
    if-eqz v8, :cond_a

    .line 258
    sget-boolean v19, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v19, :cond_6

    const-string v19, "MotoCamSettingFront"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "tnrf63 set default picture resolution to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_6
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentSingleShotResolution:Ljava/lang/String;

    .line 266
    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingFront;->pictureResolutionEntries:[Ljava/lang/CharSequence;

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->pictureResolutionEntries:[Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 269
    sget-boolean v19, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v19, :cond_8

    .line 270
    const-string v19, "MotoCamSettingFront"

    const-string v20, "Notify resolution setup completed pictureresolutionImgs"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 274
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-enter p0

    .line 279
    :try_start_1
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionValues:Ljava/util/List;

    .line 280
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionSummaries:Ljava/util/List;

    .line 281
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionTextIcons:Ljava/util/List;

    .line 288
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 290
    sget-object v19, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f070018

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 291
    sget-object v19, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f070021

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 292
    sget-object v19, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f070023

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 293
    sget-object v19, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f070022

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 294
    .local v11, resSummary:[Ljava/lang/String;
    sget-object v19, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f070026

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/CamSetting/CamSettingFront;->getSensorVidResList()Ljava/lang/String;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 296
    const/4 v4, 0x0

    :goto_3
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_d

    .line 298
    const/4 v5, 0x0

    .restart local v5       #ind:I
    :goto_4
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v5, v0, :cond_9

    .line 300
    aget-object v19, v14, v4

    aget-object v20, v9, v5

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 302
    aget-object v19, v10, v5

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionValues:Ljava/util/List;

    move-object/from16 v19, v0

    aget-object v20, v13, v5

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionSummaries:Ljava/util/List;

    move-object/from16 v19, v0

    aget-object v20, v11, v5

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionTextIcons:Ljava/util/List;

    move-object/from16 v19, v0

    aget-object v20, v12, v5

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 296
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 260
    .end local v5           #ind:I
    .end local v11           #resSummary:[Ljava/lang/String;
    :cond_a
    if-eqz v7, :cond_7

    .line 261
    :try_start_2
    sget-boolean v19, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v19, :cond_b

    const-string v19, "MotoCamSettingFront"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "tnrf63 set default picture resolution to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_b
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentSingleShotResolution:Ljava/lang/String;

    goto/16 :goto_2

    .line 274
    .end local v4           #i:I
    .end local v7           #maxResolution:Ljava/lang/String;
    .end local v8           #maxWSResolution:Ljava/lang/String;
    .end local v9           #resArr:[Ljava/lang/String;
    .end local v10           #resName:[Ljava/lang/String;
    .end local v12           #resTextIcons:[Ljava/lang/String;
    .end local v13           #resValue:[Ljava/lang/String;
    .end local v14           #temp:[Ljava/lang/String;
    :catchall_0
    move-exception v19

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v19

    .line 298
    .restart local v4       #i:I
    .restart local v5       #ind:I
    .restart local v7       #maxResolution:Ljava/lang/String;
    .restart local v8       #maxWSResolution:Ljava/lang/String;
    .restart local v9       #resArr:[Ljava/lang/String;
    .restart local v10       #resName:[Ljava/lang/String;
    .restart local v11       #resSummary:[Ljava/lang/String;
    .restart local v12       #resTextIcons:[Ljava/lang/String;
    .restart local v13       #resValue:[Ljava/lang/String;
    .restart local v14       #temp:[Ljava/lang/String;
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 312
    .end local v5           #ind:I
    :cond_d
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionEntries:[Ljava/lang/CharSequence;

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->videoResolutionEntries:[Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 316
    sget-boolean v19, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v19, :cond_e

    .line 317
    const-string v19, "MotoCamSettingFront"

    const-string v20, "Notify resolution setup completed vidResolutionImgs"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 321
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 324
    sget-boolean v19, Lcom/motorola/Camera/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v19, :cond_12

    .line 326
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingFront;->isoValues:Ljava/util/List;

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorIsoValues:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorIsoValues:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 329
    .local v17, tempIso:[Ljava/lang/String;
    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_12

    .line 331
    const/4 v6, 0x0

    .local v6, indIso:I
    :goto_6
    sget-object v19, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f070045

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_f

    .line 333
    aget-object v19, v17, v4

    sget-object v20, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f070045

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    aget-object v20, v20, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->isoValues:Ljava/util/List;

    move-object/from16 v19, v0

    sget-object v20, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f070045

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    aget-object v20, v20, v6

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 321
    .end local v6           #indIso:I
    .end local v11           #resSummary:[Ljava/lang/String;
    .end local v17           #tempIso:[Ljava/lang/String;
    :catchall_1
    move-exception v19

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v19

    .line 331
    .restart local v6       #indIso:I
    .restart local v11       #resSummary:[Ljava/lang/String;
    .restart local v17       #tempIso:[Ljava/lang/String;
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 342
    .end local v6           #indIso:I
    .end local v17           #tempIso:[Ljava/lang/String;
    :cond_11
    const-string v19, "MotoCamSettingFront"

    const-string v20, "CamSetting: In loadAutoDetectValues -  Sensor returned null, loading the default iso values"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v6, 0x0

    .restart local v6       #indIso:I
    :goto_7
    sget-object v19, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f070045

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_12

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->isoValues:Ljava/util/List;

    move-object/from16 v19, v0

    sget-object v20, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f070045

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    aget-object v20, v20, v6

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 351
    .end local v6           #indIso:I
    :cond_12
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingFront;->expValues:Ljava/util/List;

    .line 352
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->minExpCompensationIndex:I

    move/from16 v19, v0

    if-nez v19, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->maxExpCompensationIndex:I

    move/from16 v19, v0

    if-eqz v19, :cond_15

    .line 370
    :cond_13
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSupportedEffects:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSupportedEffects:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_18

    .line 372
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsValues:Ljava/util/ArrayList;

    .line 373
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsTitle:Ljava/util/ArrayList;

    .line 374
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsImg:Ljava/util/ArrayList;

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSupportedEffects:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 376
    .local v15, tempEffects:[Ljava/lang/String;
    sget-object v19, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f070036

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, effectsArray:[Ljava/lang/String;
    sget-object v19, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f070038

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 378
    .local v16, tempEffectsImg:[Ljava/lang/String;
    const/4 v4, 0x0

    :goto_9
    array-length v0, v2

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_17

    .line 381
    const/4 v5, 0x0

    .restart local v5       #ind:I
    :goto_a
    array-length v0, v15

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v5, v0, :cond_14

    .line 383
    aget-object v19, v2, v4

    aget-object v20, v15, v5

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsValues:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    aget-object v20, v2, v4

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsImg:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    aget-object v20, v16, v4

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsTitle:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    sget-object v20, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f070037

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    aget-object v20, v20, v4

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 364
    .end local v2           #effectsArray:[Ljava/lang/String;
    .end local v5           #ind:I
    .end local v15           #tempEffects:[Ljava/lang/String;
    .end local v16           #tempEffectsImg:[Ljava/lang/String;
    :cond_15
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingFront;->expValues:Ljava/util/List;

    goto/16 :goto_8

    .line 381
    .restart local v2       #effectsArray:[Ljava/lang/String;
    .restart local v5       #ind:I
    .restart local v15       #tempEffects:[Ljava/lang/String;
    .restart local v16       #tempEffectsImg:[Ljava/lang/String;
    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 393
    .end local v5           #ind:I
    :cond_17
    const-string v19, "MotoCamSettingFront"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "effectsValues"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsValues:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const-string v19, "MotoCamSettingFront"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "effectsTitle"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->effectsTitle:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .end local v2           #effectsArray:[Ljava/lang/String;
    .end local v15           #tempEffects:[Ljava/lang/String;
    .end local v16           #tempEffectsImg:[Ljava/lang/String;
    :cond_18
    sget-boolean v19, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v19, :cond_19

    .line 400
    const-string v19, "MotoCamSettingFront"

    const-string v20, "loadAutoDetectValues() - Exit"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_19
    return-void
.end method

.method public loadSettingInit()V
    .locals 3

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 195
    .local v0, i:I
    sget-object v1, Lcom/motorola/Camera/CameraGlobalType;->modeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 197
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 198
    sget-object v1, Lcom/motorola/Camera/CameraGlobalType;->modeList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    sget-object v1, Lcom/motorola/Camera/CameraGlobalType;->modeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mode_num:I

    .line 202
    return-void
.end method

.method public save()V
    .locals 3

    .prologue
    .line 493
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 494
    const-string v1, "MotoCamSettingFront"

    const-string v2, "save() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 500
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "currentEffect"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentEffect:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 502
    const-string v1, "maxPicResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->maxPicResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 503
    const-string v1, "minPicResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->minPicResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 504
    const-string v1, "mWSResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mWSResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 505
    const-string v1, "sensorVidResolutions"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorVidResolutions:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 506
    const-string v1, "sensorPicResolutions"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorPicResolutions:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 507
    const-string v1, "AESSensorVidResolutions"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->AESSensorVidResolutions:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 508
    const-string v1, "currentSingleShotResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentSingleShotResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 509
    const-string v1, "currentBurstModeResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentBurstModeResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 510
    const-string v1, "currentVideoResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentVideoResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 511
    const-string v1, "currentAESResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentAESResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 514
    const-string v1, "currentEffectVideo"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentEffectV:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 517
    const-string v1, "currentFaceTracking"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->misTrackingFace:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 518
    const-string v1, "sensorFlashModes"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorFlashModes:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 519
    const-string v1, "sensorFocusModes"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorFocusModes:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 520
    const-string v1, "mImagerOrientation"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mImagerOrientation:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 522
    const-string v1, "currentExpValue"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentExpValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 524
    const-string v1, "mAutoFocusAvailable"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mAutoFocusAvailable:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 525
    const-string v1, "mSupportedEffects"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSupportedEffects:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 527
    const-string v1, "zoomSupported"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->zoomSupported:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 529
    const-string v1, "mWideScreenDisplay"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mWideScreenDisplay:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 530
    const-string v1, "mImageStabilizationEnable"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mImageStabilizationEnable:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 531
    const-string v1, "mWDREnable"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mWDREnable:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 532
    const-string v1, "currentFocusValue"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentFocusValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 534
    const-string v1, "mDefaultPreviewFPSMax"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMax:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 535
    const-string v1, "mDefaultPreviewFPSMin"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMin:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 538
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 540
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 541
    const-string v1, "MotoCamSettingFront"

    const-string v2, "save() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_1
    return-void
.end method

.method public setAESSensorVidResList(Ljava/lang/String;)V
    .locals 0
    .parameter "newres"

    .prologue
    .line 1236
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->AESSensorVidResolutions:Ljava/lang/String;

    .line 1237
    return-void
.end method

.method public setAudioBitrate(I)V
    .locals 0
    .parameter "bitrate"

    .prologue
    .line 1046
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mAudioBitrate:I

    .line 1047
    return-void
.end method

.method public setAudioZoom(Z)V
    .locals 0
    .parameter "toggle"

    .prologue
    .line 926
    return-void
.end method

.method public setCamcorderAESProps(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1240
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSDEncryptionEnabled:Z

    .line 1242
    return-void
.end method

.method public declared-synchronized setCurrentAppMode(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 884
    monitor-enter p0

    :try_start_0
    const-string v0, "MotoCamSettingFront"

    const-string v1, "setCurrentAppMode CamSettingFront"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-super {p0, p1, p2}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentAppMode(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    monitor-exit p0

    return-void

    .line 884
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCurrentBurstModeRes(Ljava/lang/String;)V
    .locals 0
    .parameter "newRes"

    .prologue
    .line 579
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentBurstModeResolution:Ljava/lang/String;

    .line 580
    return-void
.end method

.method public setCurrentContrastValue(Ljava/lang/String;)V
    .locals 0
    .parameter "newContrastValue"

    .prologue
    .line 609
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentContrastValue:Ljava/lang/String;

    .line 610
    return-void
.end method

.method public setCurrentEffect(I)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 1003
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_1

    .line 1005
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentEffect:I

    .line 1011
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1009
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentEffectV:I

    goto :goto_0
.end method

.method public setCurrentExpValue(Ljava/lang/String;)V
    .locals 0
    .parameter "newExp"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentExpValue:Ljava/lang/String;

    .line 600
    return-void
.end method

.method public setCurrentFlash(I)V
    .locals 0
    .parameter "flash"

    .prologue
    .line 1021
    return-void
.end method

.method public setCurrentFocusOption(Ljava/lang/String;)V
    .locals 0
    .parameter "focus"

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentFocusValue:Ljava/lang/String;

    .line 1183
    return-void
.end method

.method public setCurrentISOValue(Ljava/lang/String;)V
    .locals 0
    .parameter "newISOValue"

    .prologue
    .line 629
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentISOValue:Ljava/lang/String;

    .line 630
    return-void
.end method

.method public setCurrentIsoValue(Ljava/lang/String;)V
    .locals 0
    .parameter "newIso"

    .prologue
    .line 589
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentIsoValue:Ljava/lang/String;

    .line 590
    return-void
.end method

.method public setCurrentPanResDimension(Ljava/lang/String;)V
    .locals 0
    .parameter "currPanResDim"

    .prologue
    .line 900
    return-void
.end method

.method public setCurrentResolution(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1300
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mWSResolution:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/Camera/CamSetting/CamSettingFront;->setCurrentSingleShotRes(Ljava/lang/String;)V

    .line 1301
    return-void

    .line 1300
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->maxPicResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCurrentSaturationValue(Ljava/lang/String;)V
    .locals 0
    .parameter "newSaturationValue"

    .prologue
    .line 619
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentSaturationValue:Ljava/lang/String;

    .line 620
    return-void
.end method

.method public setCurrentScene(I)V
    .locals 0
    .parameter "scene"

    .prologue
    .line 995
    return-void
.end method

.method public setCurrentSingleShotRes(Ljava/lang/String;)V
    .locals 0
    .parameter "newRes"

    .prologue
    .line 574
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentSingleShotResolution:Ljava/lang/String;

    .line 575
    return-void
.end method

.method public setCurrentStitchMode(Ljava/lang/String;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1016
    return-void
.end method

.method public setCurrentVideoRes(Ljava/lang/String;)V
    .locals 1
    .parameter "newRes"

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSDEncryptionEnabled:Z

    if-eqz v0, :cond_0

    .line 557
    invoke-static {p1}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentAESResolution:Ljava/lang/String;

    .line 560
    :goto_0
    return-void

    .line 559
    :cond_0
    invoke-static {p1}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentVideoResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCurrentWhiteBalance(I)V
    .locals 0
    .parameter "whitebalance"

    .prologue
    .line 999
    return-void
.end method

.method public setDefaultAESVideoResolution()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1245
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentAESResolution:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1246
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->AESSensorVidResolutions:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1247
    .local v1, temp:[Ljava/lang/String;
    aget-object v2, v1, v4

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentAESResolution:Ljava/lang/String;

    .line 1256
    .end local v1           #temp:[Ljava/lang/String;
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCamSettingFront"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultVideoResolution() - currentAESResolution "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentAESResolution:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :cond_1
    return-void

    .line 1251
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentAESResolution:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1252
    .local v0, currAESResDimension:Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->AESSensorVidResolutions:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1253
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->AESSensorVidResolutions:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentAESResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDefaultVideoResolution()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1260
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentVideoResolution:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1261
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorVidResolutions:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1262
    .local v1, temp:[Ljava/lang/String;
    aget-object v2, v1, v4

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentVideoResolution:Ljava/lang/String;

    .line 1272
    .end local v1           #temp:[Ljava/lang/String;
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCamSettingFront"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultVideoResolution() - setCurrentVideoRes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentVideoResolution:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_1
    return-void

    .line 1266
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentVideoResolution:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1267
    .local v0, currVidResDimension:Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorVidResolutions:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1268
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorVidResolutions:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentVideoResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDefaultZoomValue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 983
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_1

    .line 985
    iput v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentZoom:I

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 987
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 989
    iput v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentZoomV:I

    goto :goto_0
.end method

.method public setExpCompensationStep(F)V
    .locals 0
    .parameter "expCompensationStep"

    .prologue
    .line 658
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mExpCompensationStep:F

    .line 659
    return-void
.end method

.method public setFaceDetectionEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 966
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->featureFaceDetectionEnabled:Z

    .line 967
    return-void
.end method

.method public setFaceTracking(Z)V
    .locals 3
    .parameter "toggle"

    .prologue
    .line 938
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->misTrackingFace:Z

    .line 939
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamSettingFront"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set misFaceTracking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_0
    return-void
.end method

.method public setFlashModes(Ljava/lang/String;)V
    .locals 0
    .parameter "modes"

    .prologue
    .line 858
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorFlashModes:Ljava/lang/String;

    .line 859
    return-void
.end method

.method public setFocusModes(Ljava/lang/String;)V
    .locals 0
    .parameter "modes"

    .prologue
    .line 848
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorFocusModes:Ljava/lang/String;

    .line 849
    return-void
.end method

.method public setFocusViewHeight(F)V
    .locals 0
    .parameter "val"

    .prologue
    .line 728
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->focusViewHeight:F

    .line 729
    return-void
.end method

.method public setFocusViewWidth(F)V
    .locals 0
    .parameter "val"

    .prologue
    .line 723
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->focusViewWidth:F

    .line 724
    return-void
.end method

.method public setHDRSupport(Z)V
    .locals 0
    .parameter "supported"

    .prologue
    .line 1281
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->isHDRCapable:Z

    .line 1282
    return-void
.end method

.method public setImagerOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 634
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mImagerOrientation:I

    .line 635
    return-void
.end method

.method public setInScroll(Z)V
    .locals 0
    .parameter "setting"

    .prologue
    .line 708
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mInScroll:Z

    .line 709
    return-void
.end method

.method public setIsoValues(Ljava/lang/String;)V
    .locals 0
    .parameter "isoV"

    .prologue
    .line 868
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorIsoValues:Ljava/lang/String;

    .line 869
    return-void
.end method

.method public setLastHandShake(Z)V
    .locals 0
    .parameter "handshakevalue"

    .prologue
    .line 878
    return-void
.end method

.method public setMaxExpCompensationIndex(I)V
    .locals 0
    .parameter "maxEI"

    .prologue
    .line 654
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->maxExpCompensationIndex:I

    .line 655
    return-void
.end method

.method public setMaxPanResDimension(Ljava/lang/String;)V
    .locals 0
    .parameter "maxPanResDim"

    .prologue
    .line 908
    return-void
.end method

.method public setMaxPicResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "max"

    .prologue
    .line 796
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->maxPicResolution:Ljava/lang/String;

    .line 797
    return-void
.end method

.method public setMaxWSPicResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "wsSize"

    .prologue
    .line 1290
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mWSResolution:Ljava/lang/String;

    .line 1292
    return-void
.end method

.method public setMinExpCompensationIndex(I)V
    .locals 0
    .parameter "minEI"

    .prologue
    .line 646
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->minExpCompensationIndex:I

    .line 647
    return-void
.end method

.method public setMinPicResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "max"

    .prologue
    .line 808
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->minPicResolution:Ljava/lang/String;

    .line 809
    return-void
.end method

.method public setMultishotEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 960
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->featureMultishotEnabled:Z

    .line 962
    return-void
.end method

.method public setPanoramaFeatureEnable()V
    .locals 0

    .prologue
    .line 1059
    return-void
.end method

.method public setSensorPicResList(Ljava/lang/String;)V
    .locals 0
    .parameter "picRes"

    .prologue
    .line 838
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorPicResolutions:Ljava/lang/String;

    .line 839
    return-void
.end method

.method public setSensorVidResList(Ljava/lang/String;)V
    .locals 0
    .parameter "vidRes"

    .prologue
    .line 828
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->sensorVidResolutions:Ljava/lang/String;

    .line 829
    return-void
.end method

.method public setSupportedEffects(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mSupportedEffects:Ljava/lang/String;

    .line 1224
    return-void
.end method

.method public setSupportedScenes(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 1064
    return-void
.end method

.method public setSupportedWhiteBalances(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 1212
    return-void
.end method

.method public setTorchSupported(Z)V
    .locals 0
    .parameter "support"

    .prologue
    .line 1094
    return-void
.end method

.method public setVideoBitrate(I)V
    .locals 0
    .parameter "bitrate"

    .prologue
    .line 1038
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mVideoBitrate:I

    .line 1039
    return-void
.end method

.method public setVideoResolutionService(Ljava/lang/String;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 944
    invoke-static {p1}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentReslVService:Ljava/lang/String;

    .line 945
    return-void
.end method

.method public setVideoStabilization(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1320
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilization:Z

    .line 1321
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1322
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Video-Stabilization"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilization:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1323
    return-void
.end method

.method public setVideoStabilizationSupported(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1313
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilizationSupported:Z

    .line 1314
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1315
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Video Stabilization Support"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilizationSupported:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1316
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1317
    return-void
.end method

.method public setWideScreenDisplay(Z)V
    .locals 0
    .parameter "wideScreenEnable"

    .prologue
    .line 1305
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->mWideScreenDisplay:Z

    .line 1306
    return-void
.end method

.method public setZoomNum(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 971
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_1

    .line 973
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentZoom:I

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 977
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->currentZoomV:I

    goto :goto_0
.end method

.method public setZoomSupport(Z)V
    .locals 0
    .parameter "support"

    .prologue
    .line 1174
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingFront;->zoomSupported:Z

    .line 1175
    return-void
.end method
