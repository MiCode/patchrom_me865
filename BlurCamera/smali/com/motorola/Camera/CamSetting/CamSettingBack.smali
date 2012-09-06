.class public Lcom/motorola/Camera/CamSetting/CamSettingBack;
.super Lcom/motorola/Camera/CamSetting/CamSetting;
.source "CamSettingBack.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotoCamSettingBack"

.field private static currentAudioZoom:Z

.field protected static sSelf:Lcom/motorola/Camera/CamSetting/CamSettingBack;


# instance fields
.field private AESSensorVidResolutions:Ljava/lang/String;

.field private HandShakeValue:Z

.field private currentAESResolution:Ljava/lang/String;

.field private currentBurstModeResolution:Ljava/lang/String;

.field private currentContrastValue:Ljava/lang/String;

.field private currentEffect:I

.field private currentEffectV:I

.field private currentExpValue:Ljava/lang/String;

.field private currentFlash:I

.field private currentFlashV:I

.field private currentFocusValue:Ljava/lang/String;

.field private currentISOValue:Ljava/lang/String;

.field private currentIsoValue:Ljava/lang/String;

.field private currentPanShotResolution:Ljava/lang/String;

.field private currentReslVService:Ljava/lang/String;

.field private currentSaturationValue:Ljava/lang/String;

.field private currentScene:I

.field private currentSceneV:I

.field private currentSingleShotResolution:Ljava/lang/String;

.field private currentStitchMode:Ljava/lang/String;

.field private currentVideoResolution:Ljava/lang/String;

.field private currentWhiteBalance:I

.field private currentWhiteBalanceV:I

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

.field public effectsTitle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private effectsValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
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

.field private featurePanoramaEnabled:Z

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

.field public mSDEncryptionEnabled:Z

.field private mSupportedEffects:Ljava/lang/String;

.field private mSupportedScenesList:Ljava/lang/String;

.field private mSupportedWhiteBalances:Ljava/lang/String;

.field private mVideoBitrate:I

.field private mWSResolution:Ljava/lang/String;

.field private mWideScreenDisplay:Z

.field private maxExpCompensationIndex:I

.field private maxPanResolution:Ljava/lang/String;

.field private maxPicResolution:Ljava/lang/String;

.field private minExpCompensationIndex:I

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

.field private scene_num_c:I

.field private scene_num_v:I

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

.field private torchSupported:Z

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

.field private whitebalancesImg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public whitebalancesTitle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private whitebalancesValues:Ljava/util/List;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAudioZoom:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "tx"

    .prologue
    const/high16 v0, 0x42c8

    const/4 v1, 0x0

    .line 173
    invoke-direct {p0, p1}, Lcom/motorola/Camera/CamSetting/CamSetting;-><init>(Landroid/content/Context;)V

    .line 52
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mInScroll:Z

    .line 55
    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->focusViewWidth:F

    .line 56
    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->focusViewHeight:F

    .line 61
    iput v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->scene_num_c:I

    .line 62
    iput v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->scene_num_v:I

    .line 64
    iput v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mode_num:I

    .line 84
    iput v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentZoom:I

    .line 92
    const-string v0, "left-right"

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentStitchMode:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isInfiniteFocus:Z

    .line 94
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->misTrackingFace:Z

    .line 96
    iput v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentZoomV:I

    .line 108
    const-string v0, "QVGA"

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentReslVService:Ljava/lang/String;

    .line 116
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->HandShakeValue:Z

    .line 121
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->torchSupported:Z

    .line 122
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mAutoFocusAvailable:Z

    .line 123
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mDynamicFocusAvailable:Z

    .line 137
    const v0, 0x7a1200

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mVideoBitrate:I

    .line 138
    const v0, 0x17700

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mAudioBitrate:I

    .line 155
    const-string v0, "2048x1536"

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentBurstModeResolution:Ljava/lang/String;

    .line 157
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isHDRCapable:Z

    .line 160
    iput-boolean v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSDEncryptionEnabled:Z

    .line 174
    if-eqz p1, :cond_0

    .line 176
    const-string v0, "com.motorola.Camera_preferences_back"

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mProfileFileName:Ljava/lang/String;

    .line 179
    const-string v0, "com.motorola.Camera_preferences_back"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    .line 183
    invoke-direct {p0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->load()V

    .line 184
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->loadSettingInit()V

    .line 185
    invoke-direct {p0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->loadRunTimeProperties()V

    .line 187
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CamSettingBack;
    .locals 2
    .parameter "context"

    .prologue
    .line 190
    const-class v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sput-object p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    .line 191
    :cond_0
    sget-object v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sSelf:Lcom/motorola/Camera/CamSetting/CamSettingBack;

    if-nez v0, :cond_1

    .line 192
    new-instance v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sSelf:Lcom/motorola/Camera/CamSetting/CamSettingBack;

    .line 194
    :cond_1
    sget-object v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sSelf:Lcom/motorola/Camera/CamSetting/CamSettingBack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 190
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

    .line 474
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 475
    const-string v0, "MotoCamSettingBack"

    const-string v1, "load() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "maxPicResolution"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPicResolution:Ljava/lang/String;

    .line 482
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mWSResolution"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mWSResolution:Ljava/lang/String;

    .line 485
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "maxPanResolution"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPanResolution:Ljava/lang/String;

    .line 488
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sensorVidResolutions"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorVidResolutions:Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sensorPicResolutions"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorPicResolutions:Ljava/lang/String;

    .line 492
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AESSensorVidResolutions"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->AESSensorVidResolutions:Ljava/lang/String;

    .line 495
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentSingleShotResolution"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentSingleShotResolution:Ljava/lang/String;

    .line 498
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentBurstModeResolution"

    const-string v2, "2048x1536"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentBurstModeResolution:Ljava/lang/String;

    .line 501
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentVideoResolution"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    .line 504
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentAESResolution"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentPanShotResolution"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentPanShotResolution:Ljava/lang/String;

    .line 511
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentFaceTracking"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->misTrackingFace:Z

    .line 514
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentEffect"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentEffect:I

    .line 517
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentWhiteBalance"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentWhiteBalance:I

    .line 520
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentScene"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentScene:I

    .line 522
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "isInfiniteFocus"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isInfiniteFocus:Z

    .line 525
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentAudioZoom"

    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->AUDIO_ZOOM:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAudioZoom:Z

    .line 538
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sensorFlashModes"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorFlashModes:Ljava/lang/String;

    .line 539
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sensorFocusModes"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorFocusModes:Ljava/lang/String;

    .line 540
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mImagerOrientation"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mImagerOrientation:I

    .line 543
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentFlash"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFlash:I

    .line 546
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentEffectVideo"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentEffectV:I

    .line 549
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentWhiteBalanceVideo"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentWhiteBalanceV:I

    .line 562
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentFlashVideo"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFlashV:I

    .line 564
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "sensorIsoValues"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorIsoValues:Ljava/lang/String;

    .line 568
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentIsoValue"

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentIsoValue:Ljava/lang/String;

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentFocusValue"

    const-string v2, "continuous"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFocusValue:Ljava/lang/String;

    .line 575
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentExpValue"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentExpValue:Ljava/lang/String;

    .line 577
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MinExpIndex"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->minExpCompensationIndex:I

    .line 579
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MaxExpIndex"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxExpCompensationIndex:I

    .line 581
    const-string v0, "100"

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentContrastValue:Ljava/lang/String;

    .line 582
    const-string v0, "100"

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentSaturationValue:Ljava/lang/String;

    .line 583
    const-string v0, "auto"

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentISOValue:Ljava/lang/String;

    .line 588
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "featureMultishotEnabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featureMultishotEnabled:Z

    .line 589
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "featureFaceDetectionEnabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featureFaceDetectionEnabled:Z

    .line 590
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "featurePanoramaEnabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featurePanoramaEnabled:Z

    .line 593
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "torchSupported"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->torchSupported:Z

    .line 594
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mSupportedScenesList"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedScenesList:Ljava/lang/String;

    .line 596
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mAutoFocusAvailable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mAutoFocusAvailable:Z

    .line 597
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mSupportedWhiteBalances"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedWhiteBalances:Ljava/lang/String;

    .line 598
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mSupportedEffects"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedEffects:Ljava/lang/String;

    .line 600
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "zoomSupported"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->zoomSupported:Z

    .line 603
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Video Stabilization Support"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilizationSupported:Z

    .line 605
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Video-Stabilization"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilization:Z

    .line 608
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mWideScreenDisplay"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mWideScreenDisplay:Z

    .line 610
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mImageStabilizationEnable"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mImageStabilizationEnable:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mImageStabilizationEnable:Z

    .line 612
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mWDREnable"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mWDREnable:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mWDREnable:Z

    .line 614
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mDefaultPreviewFPSMin"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMin:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMin:I

    .line 615
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mDefaultPreviewFPSMax"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMax:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMax:I

    .line 617
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 618
    const-string v0, "MotoCamSettingBack"

    const-string v1, "load() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_2
    return-void
.end method

.method private loadRunTimeProperties()V
    .locals 2

    .prologue
    .line 622
    const-string v0, "ro.media.capture.panorama"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    const-string v0, "MotoCamSettingBack"

    const-string v1, "Enable Panorama"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->setPanoramaFeatureEnable()V

    .line 629
    :cond_0
    const-string v0, "ro.camera.dynamicFocus"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->enableDynamicFocus()V

    .line 632
    :cond_1
    return-void
.end method


# virtual methods
.method public enableAutoFocus()V
    .locals 1

    .prologue
    .line 1388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mAutoFocusAvailable:Z

    .line 1389
    return-void
.end method

.method public enableDynamicFocus()V
    .locals 1

    .prologue
    .line 1395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mDynamicFocusAvailable:Z

    .line 1396
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
    .line 1384
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->expValues:Ljava/util/List;

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
    .line 1381
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isoValues:Ljava/util/List;

    return-object v0
.end method

.method public getAudioBitrate()I
    .locals 1

    .prologue
    .line 1307
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mAudioBitrate:I

    return v0
.end method

.method public getCurrentContrastValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentContrastValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentEffect()I
    .locals 2

    .prologue
    .line 951
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 953
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentEffect:I

    .line 961
    :goto_0
    return v0

    .line 955
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 957
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentEffectV:I

    goto :goto_0

    .line 961
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentExpValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentExpValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentFlash()I
    .locals 2

    .prologue
    .line 967
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 969
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFlash:I

    .line 975
    :goto_0
    return v0

    .line 971
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 973
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFlashV:I

    goto :goto_0

    .line 975
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentISOValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentISOValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentIsoValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentIsoValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPanResDimension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mIsServiceMode:Z

    if-eqz v0, :cond_0

    .line 703
    const-string v0, "1280x960"

    .line 705
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentPanShotResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentSaturationValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentSaturationValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentScene()I
    .locals 3

    .prologue
    .line 918
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 920
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentScene:I

    .line 929
    :goto_0
    return v0

    .line 922
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 925
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentSceneVideo"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 929
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentSingleShotRes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->getPicResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentVideoResDimensions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSDEncryptionEnabled:Z

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 726
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentWhiteBalance()I
    .locals 2

    .prologue
    .line 935
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 937
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentWhiteBalance:I

    .line 945
    :goto_0
    return v0

    .line 939
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 941
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentWhiteBalanceV:I

    goto :goto_0

    .line 945
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getExpCompensationStep()F
    .locals 1

    .prologue
    .line 826
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mExpCompensationStep:F

    return v0
.end method

.method public getFlashModes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorFlashModes:Ljava/lang/String;

    return-object v0
.end method

.method public getFocusModes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorFocusModes:Ljava/lang/String;

    return-object v0
.end method

.method public getFocusOption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFocusValue:Ljava/lang/String;

    return-object v0
.end method

.method public getFocusViewHeight()F
    .locals 1

    .prologue
    .line 893
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->focusViewHeight:F

    return v0
.end method

.method public getFocusViewWidth()F
    .locals 1

    .prologue
    .line 888
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->focusViewWidth:F

    return v0
.end method

.method public getImagerOrientation()I
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mImagerOrientation:I

    return v0
.end method

.method public getIsoValues()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorIsoValues:Ljava/lang/String;

    return-object v0
.end method

.method public getLastHandShake()Z
    .locals 1

    .prologue
    .line 1070
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->HandShakeValue:Z

    return v0
.end method

.method public getMaxExpCompensationIndex()I
    .locals 1

    .prologue
    .line 834
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxExpCompensationIndex:I

    return v0
.end method

.method public getMaxPanResDimension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPanResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxPanResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPanResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxPicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPicResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getMinExpCompensationIndex()I
    .locals 1

    .prologue
    .line 818
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->minExpCompensationIndex:I

    return v0
.end method

.method public getModeCount()I
    .locals 1

    .prologue
    .line 1348
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mode_num:I

    return v0
.end method

.method public getModeCountCamcorder()I
    .locals 1

    .prologue
    .line 1351
    const/4 v0, 0x0

    return v0
.end method

.method public getNormalModePicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentSingleShotResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getPicResolution()Ljava/lang/String;
    .locals 2

    .prologue
    .line 983
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mIsServiceMode:Z

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->serviceModeResolution:Ljava/lang/String;

    .line 997
    :goto_0
    return-object v0

    .line 987
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentCameraMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 990
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentBurstModeResolution:Ljava/lang/String;

    goto :goto_0

    .line 993
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentCameraMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 994
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentPanShotResolution:Ljava/lang/String;

    goto :goto_0

    .line 997
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentSingleShotResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPictureResolutionEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->pictureResolutionEntries:[Ljava/lang/CharSequence;

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
    .line 1364
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->pictureResolutionSummaries:Ljava/util/List;

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
    .line 1358
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->pictureResolutionTextIcons:Ljava/util/List;

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
    .line 1355
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->pictureResolutionValues:Ljava/util/List;

    return-object v0
.end method

.method public getSceneCountCamcorder()I
    .locals 1

    .prologue
    .line 1344
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->scene_num_v:I

    return v0
.end method

.method public getSceneCountCamera()I
    .locals 1

    .prologue
    .line 1341
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->scene_num_c:I

    return v0
.end method

.method public getSensorPicResList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorPicResolutions:Ljava/lang/String;

    return-object v0
.end method

.method public getSensorVidResList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1016
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSDEncryptionEnabled:Z

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->AESSensorVidResolutions:Ljava/lang/String;

    .line 1019
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorVidResolutions:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStitchMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentStitchMode:Ljava/lang/String;

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
    .line 1443
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsTitle:Ljava/util/List;

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
    .line 1439
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsValues:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedEffects()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedEffects:Ljava/lang/String;

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
    .line 1446
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsImg:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSupportedScenes()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1328
    const-string v0, "MotoCamSettingBack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSupportedScenesList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedScenesList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedScenesList:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedWhiteBalances()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedWhiteBalances:Ljava/lang/String;

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
    .line 1427
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->whitebalancesImg:Ljava/util/ArrayList;

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
    .line 1423
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->whitebalancesTitle:Ljava/util/List;

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
    .line 1419
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->whitebalancesValues:Ljava/util/List;

    return-object v0
.end method

.method public getVideoBitrate()I
    .locals 1

    .prologue
    .line 1299
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mVideoBitrate:I

    return v0
.end method

.method public getVideoResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1141
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mIsServiceMode:Z

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentReslVService:Ljava/lang/String;

    .line 1149
    :goto_0
    return-object v0

    .line 1145
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSDEncryptionEnabled:Z

    if-eqz v0, :cond_1

    .line 1146
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    goto :goto_0

    .line 1149
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVideoResolutionEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionEntries:[Ljava/lang/CharSequence;

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
    .line 1377
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionSummaries:Ljava/util/List;

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
    .line 1371
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionTextIcons:Ljava/util/List;

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
    .line 1368
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionValues:Ljava/util/List;

    return-object v0
.end method

.method public getWSPicResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mWSResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getZoomNum()I
    .locals 2

    .prologue
    .line 907
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 908
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentZoom:I

    .line 912
    :goto_0
    return v0

    .line 909
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 910
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentZoomV:I

    goto :goto_0

    .line 912
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getcurrentExposure()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Exposure"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getcurrentISO()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ISO equivalent senstivity"

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAudioZoomOn()Z
    .locals 3

    .prologue
    .line 1109
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->SHOW_AUDIO_ZOOM_SETTING:Z

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "currentAudioZoom"

    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->AUDIO_ZOOM:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoFocusSupported()Z
    .locals 1

    .prologue
    .line 1391
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mAutoFocusAvailable:Z

    return v0
.end method

.method public isContinuousFocusEnabled()Z
    .locals 2

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFocusValue:Ljava/lang/String;

    const-string v1, "motocaf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isContinuousFocusSupported()Z
    .locals 2

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorFocusModes:Ljava/lang/String;

    const-string v1, "motocaf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isDynamicFocusSupported()Z
    .locals 1

    .prologue
    .line 1399
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mDynamicFocusAvailable:Z

    return v0
.end method

.method public isFaceDetectionEnable()Z
    .locals 1

    .prologue
    .line 1170
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featureFaceDetectionEnabled:Z

    return v0
.end method

.method public isFaceTrackingOn()Z
    .locals 3

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "Face Detection"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isHDRSupported()Z
    .locals 1

    .prologue
    .line 1463
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isHDRCapable:Z

    return v0
.end method

.method public isInScroll()Z
    .locals 1

    .prologue
    .line 878
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mInScroll:Z

    return v0
.end method

.method public isInfiniteFocus()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1282
    iget v1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentCameraMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentCameraMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1284
    :cond_0
    const/4 v0, 0x0

    .line 1290
    :cond_1
    :goto_0
    return v0

    .line 1286
    :cond_2
    iget v1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentCameraMode:I

    if-eq v1, v0, :cond_1

    .line 1290
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isInfiniteFocus:Z

    goto :goto_0
.end method

.method public isMultishotEnable()Z
    .locals 1

    .prologue
    .line 1165
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featureMultishotEnabled:Z

    return v0
.end method

.method public isPanoramaFeatureEnable()Z
    .locals 1

    .prologue
    .line 1318
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featurePanoramaEnabled:Z

    return v0
.end method

.method public isSDEncryptionEnabled()Z
    .locals 1

    .prologue
    .line 1471
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSDEncryptionEnabled:Z

    return v0
.end method

.method public isTorchSupported()Z
    .locals 1

    .prologue
    .line 1334
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->torchSupported:Z

    return v0
.end method

.method public isWideScreenDisplay()Z
    .locals 1

    .prologue
    .line 1531
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mWideScreenDisplay:Z

    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    .prologue
    .line 1468
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->zoomSupported:Z

    return v0
.end method

.method public loadAutoDetectValues()V
    .locals 27

    .prologue
    .line 238
    sget-boolean v23, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v23, :cond_0

    .line 240
    const-string v23, "MotoCamSettingBack"

    const-string v24, "loadAutoDetectValues() - Enter"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v3, entriesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v21, valuesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    monitor-enter p0

    .line 248
    :try_start_0
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->pictureResolutionValues:Ljava/util/List;

    .line 249
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->pictureResolutionSummaries:Ljava/util/List;

    .line 250
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->pictureResolutionTextIcons:Ljava/util/List;

    .line 257
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 258
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 260
    sget-object v23, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f07001d

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 261
    .local v9, resArr:[Ljava/lang/String;
    sget-object v23, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f07001e

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 262
    .local v10, resName:[Ljava/lang/String;
    sget-object v23, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f07001f

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 264
    .local v13, resValue:[Ljava/lang/String;
    sget-object v23, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f070020

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 265
    .local v12, resTextIcons:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->getSensorPicResList()Ljava/lang/String;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 266
    .local v14, temp:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 267
    .local v7, maxResolution:Ljava/lang/String;
    const/4 v8, 0x0

    .line 268
    .local v8, maxWSResolution:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v0, v14

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v4, v0, :cond_5

    .line 270
    const/4 v5, 0x0

    .local v5, ind:I
    :goto_1
    array-length v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v5, v0, :cond_3

    .line 272
    aget-object v23, v14, v4

    aget-object v24, v9, v5

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 274
    if-nez v7, :cond_1

    aget-object v7, v9, v5

    .line 275
    :cond_1
    if-nez v8, :cond_2

    .line 277
    aget-object v23, v9, v5

    const-string v24, "x"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 278
    .local v18, tempValue:[Ljava/lang/String;
    const/16 v23, 0x0

    aget-object v23, v18, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const/16 v25, 0x1

    aget-object v25, v18, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    div-double v23, v23, v25

    const-wide v25, 0x3ff999999999999aL

    cmpl-double v23, v23, v25

    if-lez v23, :cond_2

    .line 279
    aget-object v8, v9, v5

    .line 280
    sget-boolean v23, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v23, :cond_2

    const-string v23, "MotoCamSettingBack"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "tnrf63 the maxWSResolution is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v18           #tempValue:[Ljava/lang/String;
    :cond_2
    aget-object v23, v10, v5

    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->pictureResolutionValues:Ljava/util/List;

    move-object/from16 v23, v0

    aget-object v24, v13, v5

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->pictureResolutionTextIcons:Ljava/util/List;

    move-object/from16 v23, v0

    aget-object v24, v12, v5

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 270
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 291
    .end local v5           #ind:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentSingleShotResolution:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_7

    .line 292
    if-eqz v8, :cond_a

    .line 293
    sget-boolean v23, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v23, :cond_6

    const-string v23, "MotoCamSettingBack"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "tnrf63 set default picture resolution to "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_6
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentSingleShotResolution:Ljava/lang/String;

    .line 301
    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->pictureResolutionEntries:[Ljava/lang/CharSequence;

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->pictureResolutionEntries:[Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 304
    sget-boolean v23, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v23, :cond_8

    .line 305
    const-string v23, "MotoCamSettingBack"

    const-string v24, "Notify resolution setup completed pictureresolutionImgs"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 309
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    monitor-enter p0

    .line 314
    :try_start_1
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionValues:Ljava/util/List;

    .line 315
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionSummaries:Ljava/util/List;

    .line 316
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionTextIcons:Ljava/util/List;

    .line 323
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 324
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 326
    sget-object v23, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f070018

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 327
    sget-object v23, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f070021

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 328
    sget-object v23, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f070023

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 329
    sget-object v23, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f070022

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 330
    .local v11, resSummary:[Ljava/lang/String;
    sget-object v23, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f070026

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->getSensorVidResList()Ljava/lang/String;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 333
    const/4 v4, 0x0

    :goto_3
    array-length v0, v14

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v4, v0, :cond_d

    .line 335
    const/4 v5, 0x0

    .restart local v5       #ind:I
    :goto_4
    array-length v0, v9

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v5, v0, :cond_9

    .line 337
    aget-object v23, v14, v4

    aget-object v24, v9, v5

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 339
    aget-object v23, v10, v5

    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionValues:Ljava/util/List;

    move-object/from16 v23, v0

    aget-object v24, v13, v5

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionSummaries:Ljava/util/List;

    move-object/from16 v23, v0

    aget-object v24, v11, v5

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionTextIcons:Ljava/util/List;

    move-object/from16 v23, v0

    aget-object v24, v12, v5

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 333
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 295
    .end local v5           #ind:I
    .end local v11           #resSummary:[Ljava/lang/String;
    :cond_a
    if-eqz v7, :cond_7

    .line 296
    :try_start_2
    sget-boolean v23, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v23, :cond_b

    const-string v23, "MotoCamSettingBack"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "tnrf63 set default picture resolution to "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_b
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentSingleShotResolution:Ljava/lang/String;

    goto/16 :goto_2

    .line 309
    .end local v4           #i:I
    .end local v7           #maxResolution:Ljava/lang/String;
    .end local v8           #maxWSResolution:Ljava/lang/String;
    .end local v9           #resArr:[Ljava/lang/String;
    .end local v10           #resName:[Ljava/lang/String;
    .end local v12           #resTextIcons:[Ljava/lang/String;
    .end local v13           #resValue:[Ljava/lang/String;
    .end local v14           #temp:[Ljava/lang/String;
    :catchall_0
    move-exception v23

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v23

    .line 335
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

    .line 349
    .end local v5           #ind:I
    :cond_d
    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionEntries:[Ljava/lang/CharSequence;

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->videoResolutionEntries:[Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 352
    sget-boolean v23, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v23, :cond_e

    .line 353
    const-string v23, "MotoCamSettingBack"

    const-string v24, "Notify resolution setup completed vidResolutionImgs"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 357
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 360
    sget-boolean v23, Lcom/motorola/Camera/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v23, :cond_12

    .line 362
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isoValues:Ljava/util/List;

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorIsoValues:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_11

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorIsoValues:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 365
    .local v17, tempIso:[Ljava/lang/String;
    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v4, v0, :cond_12

    .line 367
    const/4 v6, 0x0

    .local v6, indIso:I
    :goto_6
    sget-object v23, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f070045

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_f

    .line 369
    aget-object v23, v17, v4

    sget-object v24, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f070045

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    aget-object v24, v24, v6

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isoValues:Ljava/util/List;

    move-object/from16 v23, v0

    sget-object v24, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f070045

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    aget-object v24, v24, v6

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 357
    .end local v6           #indIso:I
    .end local v11           #resSummary:[Ljava/lang/String;
    .end local v17           #tempIso:[Ljava/lang/String;
    :catchall_1
    move-exception v23

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v23

    .line 367
    .restart local v6       #indIso:I
    .restart local v11       #resSummary:[Ljava/lang/String;
    .restart local v17       #tempIso:[Ljava/lang/String;
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 378
    .end local v6           #indIso:I
    .end local v17           #tempIso:[Ljava/lang/String;
    :cond_11
    const-string v23, "MotoCamSettingBack"

    const-string v24, "CamSetting: In loadAutoDetectValues -  Sensor returned null, loading the default iso values"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v6, 0x0

    .restart local v6       #indIso:I
    :goto_7
    sget-object v23, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f070045

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v6, v0, :cond_12

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isoValues:Ljava/util/List;

    move-object/from16 v23, v0

    sget-object v24, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f070045

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    aget-object v24, v24, v6

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 386
    .end local v6           #indIso:I
    :cond_12
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->expValues:Ljava/util/List;

    .line 387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->minExpCompensationIndex:I

    move/from16 v23, v0

    if-nez v23, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxExpCompensationIndex:I

    move/from16 v23, v0

    if-eqz v23, :cond_15

    .line 404
    :cond_13
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedWhiteBalances:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedWhiteBalances:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_18

    .line 406
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->whitebalancesValues:Ljava/util/List;

    .line 407
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->whitebalancesTitle:Ljava/util/List;

    .line 408
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->whitebalancesImg:Ljava/util/ArrayList;

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedWhiteBalances:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 411
    .local v19, tempWhiteBalances:[Ljava/lang/String;
    sget-object v23, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f070033

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    .line 412
    .local v22, whitebalancesArray:[Ljava/lang/String;
    sget-object v23, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f070035

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 414
    .local v20, tempWhiteBalancesImg:[Ljava/lang/String;
    const/4 v4, 0x0

    :goto_9
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v4, v0, :cond_17

    .line 417
    const/4 v5, 0x0

    .restart local v5       #ind:I
    :goto_a
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v5, v0, :cond_14

    .line 419
    aget-object v23, v22, v4

    aget-object v24, v19, v5

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->whitebalancesValues:Ljava/util/List;

    move-object/from16 v23, v0

    aget-object v24, v22, v4

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->whitebalancesImg:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    aget-object v24, v20, v4

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->whitebalancesTitle:Ljava/util/List;

    move-object/from16 v23, v0

    sget-object v24, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f070034

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    aget-object v24, v24, v4

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 399
    .end local v5           #ind:I
    .end local v19           #tempWhiteBalances:[Ljava/lang/String;
    .end local v20           #tempWhiteBalancesImg:[Ljava/lang/String;
    .end local v22           #whitebalancesArray:[Ljava/lang/String;
    :cond_15
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->expValues:Ljava/util/List;

    goto/16 :goto_8

    .line 417
    .restart local v5       #ind:I
    .restart local v19       #tempWhiteBalances:[Ljava/lang/String;
    .restart local v20       #tempWhiteBalancesImg:[Ljava/lang/String;
    .restart local v22       #whitebalancesArray:[Ljava/lang/String;
    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 429
    .end local v5           #ind:I
    :cond_17
    const-string v23, "MotoCamSettingBack"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "whitebalancesValues"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->whitebalancesValues:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v23, "MotoCamSettingBack"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "whitebalancesTitle"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->whitebalancesTitle:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .end local v19           #tempWhiteBalances:[Ljava/lang/String;
    .end local v20           #tempWhiteBalancesImg:[Ljava/lang/String;
    .end local v22           #whitebalancesArray:[Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedEffects:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedEffects:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_1c

    .line 437
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsValues:Ljava/util/List;

    .line 438
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsTitle:Ljava/util/List;

    .line 439
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsImg:Ljava/util/ArrayList;

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedEffects:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 442
    .local v15, tempEffects:[Ljava/lang/String;
    sget-object v23, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f070036

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, effectsArray:[Ljava/lang/String;
    sget-object v23, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f070038

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 445
    .local v16, tempEffectsImg:[Ljava/lang/String;
    const/4 v4, 0x0

    :goto_b
    array-length v0, v2

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v4, v0, :cond_1b

    .line 448
    const/4 v5, 0x0

    .restart local v5       #ind:I
    :goto_c
    array-length v0, v15

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v5, v0, :cond_19

    .line 450
    aget-object v23, v2, v4

    aget-object v24, v15, v5

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsValues:Ljava/util/List;

    move-object/from16 v23, v0

    aget-object v24, v2, v4

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsImg:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    aget-object v24, v16, v4

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsTitle:Ljava/util/List;

    move-object/from16 v23, v0

    sget-object v24, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mContext:Landroid/content/Context;

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f070037

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    aget-object v24, v24, v4

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 448
    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 460
    .end local v5           #ind:I
    :cond_1b
    const-string v23, "MotoCamSettingBack"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "effectsValues"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsValues:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v23, "MotoCamSettingBack"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "effectsTitle"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->effectsTitle:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v2           #effectsArray:[Ljava/lang/String;
    .end local v15           #tempEffects:[Ljava/lang/String;
    .end local v16           #tempEffectsImg:[Ljava/lang/String;
    :cond_1c
    sget-boolean v23, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v23, :cond_1d

    .line 467
    const-string v23, "MotoCamSettingBack"

    const-string v24, "loadAutoDetectValues() - Exit"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_1d
    return-void
.end method

.method public loadSettingInit()V
    .locals 5

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 204
    .local v0, i:I
    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->sceneListC:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 205
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 207
    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->sceneListC:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_0
    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->sceneListC:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->scene_num_c:I

    .line 211
    const/4 v1, 0x0

    .line 213
    .local v1, nb_scenes:I
    const/4 v1, 0x2

    .line 214
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    .line 215
    const-string v2, "MotoCamSettingBack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Droid2 video scene number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1
    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->sceneListV:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 218
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 219
    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->sceneListV:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 221
    :cond_2
    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->sceneListV:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->scene_num_v:I

    .line 224
    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->modeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 226
    const/4 v0, 0x0

    :goto_2
    const/4 v2, 0x7

    if-ge v0, v2, :cond_3

    .line 227
    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->modeList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 229
    :cond_3
    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->modeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mode_num:I

    .line 230
    return-void
.end method

.method public save()V
    .locals 3

    .prologue
    .line 637
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 638
    const-string v1, "MotoCamSettingBack"

    const-string v2, "save() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 643
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "currentEffect"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentEffect:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 644
    const-string v1, "currentWhiteBalance"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentWhiteBalance:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 645
    const-string v1, "currentScene"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentScene:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 646
    const-string v1, "isInfiniteFocus"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isInfiniteFocus:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 647
    const-string v1, "maxPicResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPicResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 648
    const-string v1, "mWSResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mWSResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 649
    const-string v1, "maxPanResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPanResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 650
    const-string v1, "sensorVidResolutions"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorVidResolutions:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 651
    const-string v1, "sensorPicResolutions"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorPicResolutions:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 652
    const-string v1, "AESSensorVidResolutions"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->AESSensorVidResolutions:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 653
    const-string v1, "currentSingleShotResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentSingleShotResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 654
    const-string v1, "currentBurstModeResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentBurstModeResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 655
    const-string v1, "currentVideoResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 656
    const-string v1, "currentAESResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 657
    const-string v1, "currentPanShotResolution"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentPanShotResolution:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 658
    const-string v1, "currentFlash"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFlash:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 659
    const-string v1, "currentEffectVideo"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentEffectV:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 660
    const-string v1, "currentWhiteBalanceVideo"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentWhiteBalanceV:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 661
    const-string v1, "currentSceneVideo"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentSceneV:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 662
    const-string v1, "currentFocusValue"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFocusValue:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 663
    const-string v1, "mImagerOrientation"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mImagerOrientation:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 666
    const-string v1, "currentAudioZoom"

    sget-boolean v2, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAudioZoom:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 667
    const-string v1, "currentFlashVideo"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFlashV:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 668
    const-string v1, "currentFaceTracking"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->misTrackingFace:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 669
    const-string v1, "sensorFlashModes"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorFlashModes:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 670
    const-string v1, "sensorFocusModes"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorFocusModes:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 673
    const-string v1, "MinExpIndex"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->minExpCompensationIndex:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 674
    const-string v1, "MaxExpIndex"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxExpCompensationIndex:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 675
    const-string v1, "featureMultishotEnabled"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featureMultishotEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 676
    const-string v1, "featureFaceDetectionEnabled"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featureFaceDetectionEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 677
    const-string v1, "featurePanoramaEnabled"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featurePanoramaEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 679
    const-string v1, "torchSupported"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->torchSupported:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 680
    const-string v1, "mSupportedScenesList"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedScenesList:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 681
    const-string v1, "mAutoFocusAvailable"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mAutoFocusAvailable:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 682
    const-string v1, "mSupportedWhiteBalances"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedWhiteBalances:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 683
    const-string v1, "mSupportedEffects"

    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedEffects:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 684
    const-string v1, "zoomSupported"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->zoomSupported:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 685
    const-string v1, "mWideScreenDisplay"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mWideScreenDisplay:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 686
    const-string v1, "mImageStabilizationEnable"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mImageStabilizationEnable:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 687
    const-string v1, "mWDREnable"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mWDREnable:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 689
    const-string v1, "mDefaultPreviewFPSMax"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMax:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 690
    const-string v1, "mDefaultPreviewFPSMin"

    iget v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mDefaultPreviewFPSMin:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 693
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 695
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 696
    const-string v1, "MotoCamSettingBack"

    const-string v2, "save() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_1
    return-void
.end method

.method public setAESSensorVidResList(Ljava/lang/String;)V
    .locals 0
    .parameter "newres"

    .prologue
    .line 1475
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->AESSensorVidResolutions:Ljava/lang/String;

    .line 1476
    return-void
.end method

.method public setAudioBitrate(I)V
    .locals 0
    .parameter "bitrate"

    .prologue
    .line 1303
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mAudioBitrate:I

    .line 1304
    return-void
.end method

.method public setAudioZoom(Z)V
    .locals 0
    .parameter "toggle"

    .prologue
    .line 1119
    sput-boolean p1, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAudioZoom:Z

    .line 1120
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->save()V

    .line 1121
    return-void
.end method

.method public setCamcorderAESProps(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1479
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSDEncryptionEnabled:Z

    .line 1480
    return-void
.end method

.method public declared-synchronized setCurrentAppMode(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 1081
    monitor-enter p0

    :try_start_0
    const-string v0, "MotoCamSettingBack"

    const-string v1, "setCurrentAppMode CamSettingBack"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-super {p0, p1, p2}, Lcom/motorola/Camera/CamSetting/CamSetting;->setCurrentAppMode(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    monitor-exit p0

    return-void

    .line 1081
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCurrentBurstModeRes(Ljava/lang/String;)V
    .locals 0
    .parameter "newRes"

    .prologue
    .line 755
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentBurstModeResolution:Ljava/lang/String;

    .line 756
    return-void
.end method

.method public setCurrentContrastValue(Ljava/lang/String;)V
    .locals 0
    .parameter "newContrastValue"

    .prologue
    .line 785
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentContrastValue:Ljava/lang/String;

    .line 786
    return-void
.end method

.method public setCurrentEffect(I)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 1234
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_1

    .line 1236
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentEffect:I

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1238
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1240
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentEffectV:I

    goto :goto_0
.end method

.method public setCurrentExpValue(Ljava/lang/String;)V
    .locals 0
    .parameter "newExp"

    .prologue
    .line 775
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentExpValue:Ljava/lang/String;

    .line 776
    return-void
.end method

.method public setCurrentFlash(I)V
    .locals 2
    .parameter "flash"

    .prologue
    .line 1254
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_1

    .line 1256
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFlash:I

    .line 1262
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1260
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFlashV:I

    goto :goto_0
.end method

.method public setCurrentFocusOption(Ljava/lang/String;)V
    .locals 0
    .parameter "focus"

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentFocusValue:Ljava/lang/String;

    .line 1404
    return-void
.end method

.method public setCurrentISOValue(Ljava/lang/String;)V
    .locals 0
    .parameter "newISOValue"

    .prologue
    .line 805
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentISOValue:Ljava/lang/String;

    .line 806
    return-void
.end method

.method public setCurrentIsoValue(Ljava/lang/String;)V
    .locals 0
    .parameter "newIso"

    .prologue
    .line 765
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentIsoValue:Ljava/lang/String;

    .line 766
    return-void
.end method

.method public setCurrentPanResDimension(Ljava/lang/String;)V
    .locals 0
    .parameter "currPanResDim"

    .prologue
    .line 709
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentPanShotResolution:Ljava/lang/String;

    .line 710
    return-void
.end method

.method public setCurrentResolution(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1523
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mWSResolution:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->setCurrentSingleShotRes(Ljava/lang/String;)V

    .line 1524
    return-void

    .line 1523
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPicResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCurrentSaturationValue(Ljava/lang/String;)V
    .locals 0
    .parameter "newSaturationValue"

    .prologue
    .line 795
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentSaturationValue:Ljava/lang/String;

    .line 796
    return-void
.end method

.method public setCurrentScene(I)V
    .locals 3
    .parameter "scene"

    .prologue
    const/4 v2, 0x1

    .line 1199
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_3

    .line 1201
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentScene:I

    .line 1202
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentScene:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentScene:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1205
    :cond_0
    iput-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isInfiniteFocus:Z

    .line 1217
    :cond_1
    :goto_0
    return-void

    .line 1209
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isInfiniteFocus:Z

    goto :goto_0

    .line 1212
    :cond_3
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-ne v0, v2, :cond_1

    .line 1214
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentSceneV:I

    .line 1215
    invoke-virtual {p0}, Lcom/motorola/Camera/CamSetting/CamSettingBack;->save()V

    goto :goto_0
.end method

.method public setCurrentSingleShotRes(Ljava/lang/String;)V
    .locals 0
    .parameter "newRes"

    .prologue
    .line 750
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentSingleShotResolution:Ljava/lang/String;

    .line 751
    return-void
.end method

.method public setCurrentStitchMode(Ljava/lang/String;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1246
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_0

    .line 1248
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentStitchMode:Ljava/lang/String;

    .line 1250
    :cond_0
    return-void
.end method

.method public setCurrentVideoRes(Ljava/lang/String;)V
    .locals 1
    .parameter "newRes"

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSDEncryptionEnabled:Z

    if-eqz v0, :cond_0

    .line 733
    invoke-static {p1}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    .line 736
    :goto_0
    return-void

    .line 735
    :cond_0
    invoke-static {p1}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCurrentWhiteBalance(I)V
    .locals 2
    .parameter "whitebalance"

    .prologue
    .line 1221
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_1

    .line 1223
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentWhiteBalance:I

    .line 1229
    :cond_0
    :goto_0
    return-void

    .line 1225
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1227
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentWhiteBalanceV:I

    goto :goto_0
.end method

.method public setDefaultAESVideoResolution()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1483
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1484
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->AESSensorVidResolutions:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1485
    .local v1, temp:[Ljava/lang/String;
    aget-object v2, v1, v4

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    .line 1486
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamSettingBack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultVideoResolution() - currentAESResolution "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    .end local v1           #temp:[Ljava/lang/String;
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCamSettingBack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The default AES video resolution set is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    :cond_1
    return-void

    .line 1489
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1490
    .local v0, currAESResDimension:Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->AESSensorVidResolutions:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1491
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->AESSensorVidResolutions:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentAESResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDefaultVideoResolution()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1498
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1499
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorVidResolutions:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1501
    .local v1, temp:[Ljava/lang/String;
    aget-object v2, v1, v4

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    .line 1502
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamSettingBack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultVideoResolution() - setCurrentVideoRes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    .end local v1           #temp:[Ljava/lang/String;
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCamSettingBack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The default Video resolution set is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :cond_1
    return-void

    .line 1505
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1506
    .local v0, currVidResDimension:Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorVidResolutions:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1507
    iget-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorVidResolutions:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentVideoResolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDefaultZoomValue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1187
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_1

    .line 1189
    iput v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentZoom:I

    .line 1195
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1193
    iput v2, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentZoomV:I

    goto :goto_0
.end method

.method public setExpCompensationStep(F)V
    .locals 0
    .parameter "expCompensationStep"

    .prologue
    .line 830
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mExpCompensationStep:F

    .line 831
    return-void
.end method

.method public setFaceDetectionEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1160
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featureFaceDetectionEnabled:Z

    .line 1161
    return-void
.end method

.method public setFaceTracking(Z)V
    .locals 3
    .parameter "toggle"

    .prologue
    .line 1130
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->misTrackingFace:Z

    .line 1131
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamSettingBack"

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

    .line 1132
    :cond_0
    return-void
.end method

.method public setFlashModes(Ljava/lang/String;)V
    .locals 0
    .parameter "modes"

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorFlashModes:Ljava/lang/String;

    .line 1056
    return-void
.end method

.method public setFocusModes(Ljava/lang/String;)V
    .locals 0
    .parameter "modes"

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorFocusModes:Ljava/lang/String;

    .line 1046
    return-void
.end method

.method public setFocusViewHeight(F)V
    .locals 0
    .parameter "val"

    .prologue
    .line 903
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->focusViewHeight:F

    .line 904
    return-void
.end method

.method public setFocusViewWidth(F)V
    .locals 0
    .parameter "val"

    .prologue
    .line 898
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->focusViewWidth:F

    .line 899
    return-void
.end method

.method public setHDRSupport(Z)V
    .locals 0
    .parameter "supported"

    .prologue
    .line 1458
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->isHDRCapable:Z

    .line 1459
    return-void
.end method

.method public setImagerOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 810
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mImagerOrientation:I

    .line 811
    return-void
.end method

.method public setInScroll(Z)V
    .locals 0
    .parameter "setting"

    .prologue
    .line 883
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mInScroll:Z

    .line 884
    return-void
.end method

.method public setIsoValues(Ljava/lang/String;)V
    .locals 0
    .parameter "isoV"

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorIsoValues:Ljava/lang/String;

    .line 1066
    return-void
.end method

.method public setLastHandShake(Z)V
    .locals 0
    .parameter "handshakevalue"

    .prologue
    .line 1075
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->HandShakeValue:Z

    .line 1076
    return-void
.end method

.method public setMaxExpCompensationIndex(I)V
    .locals 0
    .parameter "maxEI"

    .prologue
    .line 838
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxExpCompensationIndex:I

    .line 839
    return-void
.end method

.method public setMaxPanResDimension(Ljava/lang/String;)V
    .locals 0
    .parameter "maxPanResDim"

    .prologue
    .line 717
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPanResolution:Ljava/lang/String;

    .line 718
    return-void
.end method

.method public setMaxPanResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "max"

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPanResolution:Ljava/lang/String;

    .line 1094
    return-void
.end method

.method public setMaxPicResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "max"

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->maxPicResolution:Ljava/lang/String;

    .line 1005
    return-void
.end method

.method public setMaxWSPicResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "wsSize"

    .prologue
    .line 1515
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mWSResolution:Ljava/lang/String;

    .line 1516
    return-void
.end method

.method public setMinExpCompensationIndex(I)V
    .locals 0
    .parameter "minEI"

    .prologue
    .line 822
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->minExpCompensationIndex:I

    .line 823
    return-void
.end method

.method public setMultishotEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1155
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featureMultishotEnabled:Z

    .line 1156
    return-void
.end method

.method public setPanoramaFeatureEnable()V
    .locals 1

    .prologue
    .line 1314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->featurePanoramaEnabled:Z

    .line 1315
    return-void
.end method

.method public setSensorPicResList(Ljava/lang/String;)V
    .locals 0
    .parameter "picRes"

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorPicResolutions:Ljava/lang/String;

    .line 1035
    return-void
.end method

.method public setSensorVidResList(Ljava/lang/String;)V
    .locals 0
    .parameter "vidRes"

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->sensorVidResolutions:Ljava/lang/String;

    .line 1025
    return-void
.end method

.method public setSupportedEffects(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 1453
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedEffects:Ljava/lang/String;

    .line 1455
    return-void
.end method

.method public setSupportedScenes(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedScenesList:Ljava/lang/String;

    .line 1324
    return-void
.end method

.method public setSupportedWhiteBalances(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 1435
    iput-object p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mSupportedWhiteBalances:Ljava/lang/String;

    .line 1436
    return-void
.end method

.method public setTorchSupported(Z)V
    .locals 0
    .parameter "support"

    .prologue
    .line 1337
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->torchSupported:Z

    .line 1338
    return-void
.end method

.method public setVideoBitrate(I)V
    .locals 0
    .parameter "bitrate"

    .prologue
    .line 1295
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mVideoBitrate:I

    .line 1296
    return-void
.end method

.method public setVideoResolutionService(Ljava/lang/String;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 1136
    invoke-static {p1}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentReslVService:Ljava/lang/String;

    .line 1137
    return-void
.end method

.method public setVideoStabilization(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1543
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilization:Z

    .line 1544
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1545
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Video-Stabilization"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilization:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1546
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1547
    return-void
.end method

.method public setVideoStabilizationSupported(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1536
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilizationSupported:Z

    .line 1537
    iget-object v1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1538
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "Video Stabilization Support"

    iget-boolean v2, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->mVideoStabilizationSupported:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1539
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1540
    return-void
.end method

.method public setWideScreenDisplay(Z)V
    .locals 0
    .parameter "wideScreenEnable"

    .prologue
    .line 1528
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->mWideScreenDisplay:Z

    .line 1529
    return-void
.end method

.method public setZoomNum(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 1175
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    if-nez v0, :cond_1

    .line 1177
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentZoom:I

    .line 1183
    :cond_0
    :goto_0
    return-void

    .line 1179
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/CamSetting/CamSetting;->currentAppMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1181
    iput p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->currentZoomV:I

    goto :goto_0
.end method

.method public setZoomSupport(Z)V
    .locals 0
    .parameter "support"

    .prologue
    .line 1267
    iput-boolean p1, p0, Lcom/motorola/Camera/CamSetting/CamSettingBack;->zoomSupported:Z

    .line 1268
    return-void
.end method
