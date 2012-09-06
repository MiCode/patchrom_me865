.class public Lcom/motorola/Camera/Camcorder;
.super Landroid/app/Activity;
.source "Camcorder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;,
        Lcom/motorola/Camera/Camcorder$CamcorderDialog;,
        Lcom/motorola/Camera/Camcorder$MotoCameraErrorCallback;,
        Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;,
        Lcom/motorola/Camera/Camcorder$MotoCameraOnZoomChangeListener;,
        Lcom/motorola/Camera/Camcorder$JpegPictureCallback;,
        Lcom/motorola/Camera/Camcorder$MainHandler;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_THRESHOLD:I = 0x5a

.field private static final LIGHT_THRESHOLD:I = 0x0

.field public static final QUICK_LAUNCH_BROADCAST:Ljava/lang/String; = "com.motorola.internal.intent.action.QUICK_LAUNCH_APP"

.field private static final TAG:Ljava/lang/String; = "MotoCamcorder"

.field private static final WIND_NOISE:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field static final mIsRotator:Z = false

.field private static final mUseBrightnessFile:Z = false

.field private static final mUseNoiseSolution:Z = true

.field private static final sCamcorderDefaultProfile:Ljava/lang/String; = "3gp,h264,15,128000,amrnb,12200,8000,1"


# instance fields
.field private batteryLevel:I

.field private final batteryReceiver:Landroid/content/BroadcastReceiver;

.field callStateListener:Landroid/telephony/PhoneStateListener;

.field private deleteDialog:Landroid/app/AlertDialog;

.field private errorCase:I

.field private externalVideolengthRemaining:I

.field private internalVideolengthRemaining:I

.field private mAudioMgr:Landroid/media/AudioManager;

.field private mAutoBrightnessLevel:I

.field private mAutoBrightnessLevels:[I

.field mBlackout:Landroid/widget/ImageView;

.field private mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

.field private mCamSettingsChanging:Z

.field private mCamcorderProfile:Landroid/media/CamcorderProfile;

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCaptureTimeLapse:Z

.field private mCodec:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mController:Lcom/motorola/Camera/View/Control/OnScreenController;

.field private mCurrentOrientation:I

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field mDidRegister:Z

.field private mElapsedTimerContainer:Landroid/widget/RelativeLayout;

.field private volatile mElapsedTimerContainerShowing:Z

.field mEulaAgreeListener:Landroid/view/View$OnClickListener;

.field mEulaCancelListener:Landroid/view/View$OnClickListener;

.field public mFailSafe:Z

.field private mFileFormat:Ljava/lang/String;

.field private mFilesize:J

.field mGalleryItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHighestLightSensorValue:I

.field private mIsInternalSD:Z

.field private mIsSecurelyLockedModeVideoCaptureIntent:Z

.field private mIsVideoCaptureIntent:Z

.field private mLastValidFileName:Ljava/lang/String;

.field private mLastValidMediaId:J

.field private mLastValidUri:Landroid/net/Uri;

.field private mLcdBacklightValues:[I

.field private mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnabled:Z

.field private mLocUtil:Lcom/motorola/Camera/LocUtility;

.field mLocationManager:Landroid/location/LocationManager;

.field private mMain:Lcom/motorola/Camera/View/CameraContentView;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderStopped:Z

.field private mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

.field private mNeedCheckStorage:Z

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field mPausing:Z

.field mPostPanel:Landroid/widget/LinearLayout;

.field private mPostText:Landroid/widget/TextView;

.field private mPowerManager:Landroid/os/IPowerManager;

.field private mPreviewing:Z

.field public mRecInitThread:Ljava/lang/Thread;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingStartTime:J

.field mResolution:Lcom/motorola/Camera/CameraGlobalType$CamSize;

.field private mResolutionInService:Lcom/motorola/Camera/CameraGlobalType$CamSize;

.field private mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

.field private volatile mRotateDialogShowing:Z

.field private mSavedBrightness:I

.field private mSavedBrightnessMode:I

.field private mSavingProgress:Landroid/widget/ProgressBar;

.field private mSavingVideo:Landroid/view/View;

.field private mSavingVideoText:Landroid/widget/TextView;

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSecondaryDialogWidth:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStatus:I

.field public mStopRecordingThread:Ljava/lang/Thread;

.field private mStorageLocationAlert:Landroid/app/AlertDialog;

.field mSurfaceHolder:Landroid/view/SurfaceHolder;

.field mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailOrientation:I

.field private mTime2Idle:J

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mTimeLimitMs:I

.field mVideoFrameBitmap:Landroid/graphics/Bitmap;

.field mVideoPreview:Lcom/motorola/Camera/View/CameraView;

.field private mVideoRemainingSecond:J

.field private mZoomAdjusting:Z

.field private final mZoomChangeListener:Lcom/motorola/Camera/Camcorder$MotoCameraOnZoomChangeListener;

.field private maxMMSSize:I

.field private mrecordingElapsedTimeSeconds:J

.field private updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

.field private final windReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/String;

    const-string v1, "com.motorola.Camera.Camcorder.WIND_NOISE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/Camera/Camcorder;->WIND_NOISE:Ljava/lang/String;

    .line 150
    const-string v0, "ro.hw.rotator"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/Camera/Camcorder;->mIsRotator:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 139
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 154
    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 155
    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->mBlackout:Landroid/widget/ImageView;

    .line 158
    iput v2, p0, Lcom/motorola/Camera/Camcorder;->mThumbnailOrientation:I

    .line 163
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/motorola/Camera/Camcorder;->mLastValidMediaId:J

    .line 167
    iput v2, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    .line 168
    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    .line 172
    iput-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mPausing:Z

    .line 173
    iput-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    .line 174
    iput-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSettingsChanging:Z

    .line 176
    new-instance v0, Lcom/motorola/Camera/Camcorder$MotoCameraOnZoomChangeListener;

    invoke-direct {v0, p0, v3}, Lcom/motorola/Camera/Camcorder$MotoCameraOnZoomChangeListener;-><init>(Lcom/motorola/Camera/Camcorder;Lcom/motorola/Camera/Camcorder$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mZoomChangeListener:Lcom/motorola/Camera/Camcorder$MotoCameraOnZoomChangeListener;

    .line 177
    new-instance v0, Lcom/motorola/Camera/MotoCamcorderProfile;

    invoke-direct {v0}, Lcom/motorola/Camera/MotoCamcorderProfile;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    .line 181
    iput-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mDidRegister:Z

    .line 187
    iput-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z

    .line 189
    iput v2, p0, Lcom/motorola/Camera/Camcorder;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 191
    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->mResolutionInService:Lcom/motorola/Camera/CameraGlobalType$CamSize;

    .line 193
    iput-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mIsSecurelyLockedModeVideoCaptureIntent:Z

    .line 197
    iput v2, p0, Lcom/motorola/Camera/Camcorder;->mTimeLimitMs:I

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mGalleryItems:Ljava/util/ArrayList;

    .line 203
    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->mLocationManager:Landroid/location/LocationManager;

    .line 205
    new-instance v0, Lcom/motorola/Camera/Camcorder$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/motorola/Camera/Camcorder$MainHandler;-><init>(Lcom/motorola/Camera/Camcorder;Lcom/motorola/Camera/Camcorder$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    .line 207
    iput-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    .line 214
    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->deleteDialog:Landroid/app/AlertDialog;

    .line 224
    iput-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mFailSafe:Z

    .line 229
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 231
    iput-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mIsInternalSD:Z

    .line 232
    iput-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mNeedCheckStorage:Z

    .line 235
    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    .line 236
    iput v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    .line 237
    iput v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    .line 240
    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;

    .line 241
    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideoText:Landroid/widget/TextView;

    .line 247
    iput v2, p0, Lcom/motorola/Camera/Camcorder;->batteryLevel:I

    .line 249
    iput v2, p0, Lcom/motorola/Camera/Camcorder;->mCurrentOrientation:I

    .line 253
    iput v2, p0, Lcom/motorola/Camera/Camcorder;->mSecondaryDialogWidth:I

    .line 1494
    new-instance v0, Lcom/motorola/Camera/Camcorder$1;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camcorder$1;-><init>(Lcom/motorola/Camera/Camcorder;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->windReceiver:Landroid/content/BroadcastReceiver;

    .line 1529
    new-instance v0, Lcom/motorola/Camera/Camcorder$2;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camcorder$2;-><init>(Lcom/motorola/Camera/Camcorder;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->batteryReceiver:Landroid/content/BroadcastReceiver;

    .line 1579
    new-instance v0, Lcom/motorola/Camera/Camcorder$3;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camcorder$3;-><init>(Lcom/motorola/Camera/Camcorder;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2699
    new-instance v0, Lcom/motorola/Camera/Camcorder$5;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camcorder$5;-><init>(Lcom/motorola/Camera/Camcorder;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->callStateListener:Landroid/telephony/PhoneStateListener;

    .line 2972
    iput-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mLightSensorEnabled:Z

    .line 2973
    iput v2, p0, Lcom/motorola/Camera/Camcorder;->mHighestLightSensorValue:I

    .line 2974
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/Camera/Camcorder;->mAutoBrightnessLevel:I

    .line 2977
    new-instance v0, Lcom/motorola/Camera/Camcorder$6;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camcorder$6;-><init>(Lcom/motorola/Camera/Camcorder;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mLightListener:Landroid/hardware/SensorEventListener;

    .line 5293
    new-instance v0, Lcom/motorola/Camera/Camcorder$12;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camcorder$12;-><init>(Lcom/motorola/Camera/Camcorder;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mEulaAgreeListener:Landroid/view/View$OnClickListener;

    .line 5309
    new-instance v0, Lcom/motorola/Camera/Camcorder$13;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camcorder$13;-><init>(Lcom/motorola/Camera/Camcorder;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mEulaCancelListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->startPreview()V

    return-void
.end method

.method static synthetic access$1100(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->updateRemainCount()V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/motorola/Camera/Camcorder;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/motorola/Camera/Camcorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/motorola/Camera/Camcorder;->mRecordingStartTime:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->updateRecordTime()V

    return-void
.end method

.method static synthetic access$1700(Lcom/motorola/Camera/Camcorder;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->toggleCamera()V

    return-void
.end method

.method static synthetic access$1900(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->videoSnapshot()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/Camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    return v0
.end method

.method static synthetic access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/Camera/Camcorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    return p1
.end method

.method static synthetic access$2100(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->dismissToast()V

    return-void
.end method

.method static synthetic access$2200(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->acquireAndShowVideoFrame()V

    return-void
.end method

.method static synthetic access$2300(Lcom/motorola/Camera/Camcorder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/motorola/Camera/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->showPostRecordingAlert()V

    return-void
.end method

.method static synthetic access$2600(Lcom/motorola/Camera/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/motorola/Camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/motorola/Camera/Camcorder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camcorder;->zoomTo(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopSmoothZoom()V

    return-void
.end method

.method static synthetic access$2900(Lcom/motorola/Camera/Camcorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    return-wide v0
.end method

.method static synthetic access$2902(Lcom/motorola/Camera/Camcorder;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/motorola/Camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mThumbnailOrientation:I

    return v0
.end method

.method static synthetic access$3000(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->startVideoRecording()V

    return-void
.end method

.method static synthetic access$302(Lcom/motorola/Camera/Camcorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/motorola/Camera/Camcorder;->mThumbnailOrientation:I

    return p1
.end method

.method static synthetic access$3100(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecordingAndDisplayDialog()V

    return-void
.end method

.method static synthetic access$3200(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->enableSlowMotion()V

    return-void
.end method

.method static synthetic access$3300(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->enableFastMotion()V

    return-void
.end method

.method static synthetic access$3400(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->enableMMSMode()V

    return-void
.end method

.method static synthetic access$3500(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->enableNormalVideoMode()V

    return-void
.end method

.method static synthetic access$3600(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->setCameraParameters()V

    return-void
.end method

.method static synthetic access$3702(Lcom/motorola/Camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/motorola/Camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mTimeBetweenTimeLapseFrameCaptureMs:I

    return v0
.end method

.method static synthetic access$3802(Lcom/motorola/Camera/Camcorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/motorola/Camera/Camcorder;->mTimeBetweenTimeLapseFrameCaptureMs:I

    return p1
.end method

.method static synthetic access$3900(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->enableWdr()V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/motorola/Camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainerShowing:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/motorola/Camera/Camcorder;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->updateTorch()V

    return-void
.end method

.method static synthetic access$4300(Lcom/motorola/Camera/Camcorder;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSavingProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/motorola/Camera/Camcorder;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideoText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/motorola/Camera/Camcorder;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/motorola/Camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/motorola/Camera/Camcorder;->mIsInternalSD:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/motorola/Camera/Camcorder;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/LocUtility;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/motorola/Camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$500(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->closeCamera()V

    return-void
.end method

.method static synthetic access$5000(Lcom/motorola/Camera/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/motorola/Camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    return p1
.end method

.method static synthetic access$5102(Lcom/motorola/Camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    return p1
.end method

.method static synthetic access$5200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/motorola/Camera/Camcorder;->WIND_NOISE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/motorola/Camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->batteryLevel:I

    return v0
.end method

.method static synthetic access$5302(Lcom/motorola/Camera/Camcorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/motorola/Camera/Camcorder;->batteryLevel:I

    return p1
.end method

.method static synthetic access$5400(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->interruptThumbnailThread()V

    return-void
.end method

.method static synthetic access$5500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/motorola/Camera/Camcorder;Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;)Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecording()V

    return-void
.end method

.method static synthetic access$5700(Lcom/motorola/Camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    return v0
.end method

.method static synthetic access$5702(Lcom/motorola/Camera/Camcorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    return p1
.end method

.method static synthetic access$5800(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->checkExternalSDCardFirstTime()V

    return-void
.end method

.method static synthetic access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/Camera/Camcorder;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->recycleVideoFrameBitmap()V

    return-void
.end method

.method static synthetic access$6100(Lcom/motorola/Camera/Camcorder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/motorola/Camera/Camcorder;->mLastValidMediaId:J

    return-wide v0
.end method

.method static synthetic access$6200(Lcom/motorola/Camera/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$6300(Lcom/motorola/Camera/Camcorder;)Landroid/os/IPowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mPowerManager:Landroid/os/IPowerManager;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/motorola/Camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mHighestLightSensorValue:I

    return v0
.end method

.method static synthetic access$6402(Lcom/motorola/Camera/Camcorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/motorola/Camera/Camcorder;->mHighestLightSensorValue:I

    return p1
.end method

.method static synthetic access$6500(Lcom/motorola/Camera/Camcorder;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camcorder;->getAutoBrightnessValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/motorola/Camera/Camcorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mAutoBrightnessLevel:I

    return v0
.end method

.method static synthetic access$6602(Lcom/motorola/Camera/Camcorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput p1, p0, Lcom/motorola/Camera/Camcorder;->mAutoBrightnessLevel:I

    return p1
.end method

.method static synthetic access$6800(Lcom/motorola/Camera/Camcorder;)Landroid/media/MediaRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$6902(Lcom/motorola/Camera/Camcorder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder;->mLastValidFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    return-void
.end method

.method static synthetic access$7000(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->registerVideo()V

    return-void
.end method

.method static synthetic access$7100(Lcom/motorola/Camera/Camcorder;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/motorola/Camera/Camcorder;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$7202(Lcom/motorola/Camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorderStopped:Z

    return p1
.end method

.method static synthetic access$7302(Lcom/motorola/Camera/Camcorder;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/motorola/Camera/Camcorder;->mNeedCheckStorage:Z

    return p1
.end method

.method static synthetic access$800(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->updateScenesEffects()V

    return-void
.end method

.method static synthetic access$900(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->initializeRecorder()V

    return-void
.end method

.method private acquireAndShowVideoFrame()V
    .locals 7

    .prologue
    const v6, 0x7f0d00c3

    const/16 v3, 0x81

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 4510
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v1, "acquireAndShowVideoFrame : Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4511
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4513
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v1, "acquireAndShowVideoFrame() - Removing show progress message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4514
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4517
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 4519
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4523
    :cond_3
    iget-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_5

    .line 4525
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCamcorder"

    const-string v1, "acquireAndShowVideoFrame : ReviewTime is Zero"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4529
    :cond_4
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->interruptThumbnailThread()V

    .line 4530
    new-instance v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, p0, v1, v2}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;-><init>(Lcom/motorola/Camera/Camcorder;Landroid/graphics/Bitmap;Z)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    .line 4531
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->start()V

    .line 4563
    :goto_0
    return-void

    .line 4536
    :cond_5
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->recycleVideoFrameBitmap()V

    .line 4538
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    const-string v0, "MotoCamcorder"

    const-string v1, "acquireAndShowVideoFrame : calling createVideoThumbnail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4540
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mLastValidFileName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    .line 4544
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->interruptThumbnailThread()V

    .line 4545
    new-instance v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, p0, v1, v5}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;-><init>(Lcom/motorola/Camera/Camcorder;Landroid/graphics/Bitmap;Z)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    .line 4546
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->start()V

    .line 4548
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    const-string v0, "MotoCamcorder"

    const-string v1, "acquireAndShowVideoFrame : createVideoThumbnail returned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4550
    :cond_7
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    .line 4552
    iget-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_8

    .line 4553
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->initVideoPostPanel()V

    .line 4557
    :cond_8
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/CameraContentView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/CameraContentView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/CameraContentView;->getLeft()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->showPicsStill(Landroid/graphics/Bitmap;III)V

    .line 4558
    invoke-virtual {p0, v6}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4559
    invoke-virtual {p0, v6}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 4562
    :cond_9
    const-string v0, "MotoCamcorder"

    const-string v1, "acquireAndShowVideoFrame : Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private calculateServiceModeTimeandSize(II)V
    .locals 6
    .parameter "audioBitrate"
    .parameter "videoBitrate"

    .prologue
    .line 3865
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamcorder"

    const-string v3, "calculateServiceModeTime() Enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3867
    :cond_0
    const/4 v1, 0x0

    .line 3882
    .local v1, seconds:I
    add-int v2, p2, p1

    shr-int/lit8 v0, v2, 0x3

    .line 3884
    .local v0, bitrate:I
    iget-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v2, :cond_1

    .line 3886
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->getFileSizeFromIntent()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/Camera/Camcorder;->mFilesize:J

    .line 3889
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    .line 3891
    const-string v2, "ro.media.camcorder.mmssize"

    const v3, 0x48800

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/motorola/Camera/Camcorder;->mFilesize:J

    .line 3895
    :cond_2
    iget-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v2, :cond_3

    .line 3897
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->getDurationFromIntent()I

    move-result v1

    .line 3900
    :cond_3
    if-lez v1, :cond_6

    .line 3902
    mul-int/lit16 v2, v1, 0x3e8

    iput v2, p0, Lcom/motorola/Camera/Camcorder;->mTimeLimitMs:I

    .line 3910
    :cond_4
    :goto_0
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateServiceModeTime() MMS Time limit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/Camera/Camcorder;->mTimeLimitMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " & file size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/motorola/Camera/Camcorder;->mFilesize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3911
    :cond_5
    return-void

    .line 3904
    :cond_6
    iget-wide v2, p0, Lcom/motorola/Camera/Camcorder;->mFilesize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 3906
    iget-wide v2, p0, Lcom/motorola/Camera/Camcorder;->mFilesize:J

    int-to-long v4, v0

    div-long/2addr v2, v4

    long-to-int v2, v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/motorola/Camera/Camcorder;->mTimeLimitMs:I

    goto :goto_0
.end method

.method private cancelRestartPreviewTimeout()V
    .locals 2

    .prologue
    .line 4323
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4324
    return-void
.end method

.method private cancelToast()V
    .locals 2

    .prologue
    .line 2769
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2770
    return-void
.end method

.method private changeBrightness()V
    .locals 4

    .prologue
    const/16 v3, 0x5a

    .line 3014
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mPowerManager:Landroid/os/IPowerManager;

    if-nez v1, :cond_0

    .line 3015
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->mPowerManager:Landroid/os/IPowerManager;

    .line 3018
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mPowerManager:Landroid/os/IPowerManager;

    if-nez v1, :cond_1

    .line 3019
    const-string v1, "MotoCamcorder"

    const-string v2, "e13386: can not find power service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    :goto_0
    return-void

    .line 3023
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/Camcorder;->mSavedBrightness:I

    .line 3025
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/Camcorder;->mSavedBrightnessMode:I

    .line 3028
    iget v1, p0, Lcom/motorola/Camera/Camcorder;->mSavedBrightnessMode:I

    if-nez v1, :cond_3

    .line 3029
    iget v1, p0, Lcom/motorola/Camera/Camcorder;->mSavedBrightness:I

    if-lt v1, v3, :cond_2

    .line 3030
    const-string v1, "MotoCamcorder"

    const-string v2, "e13386: current brightness setting is ok"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3045
    :catch_0
    move-exception v0

    .line 3046
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MotoCamcorder"

    const-string v2, "e13386: changeBrightness() fail:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3033
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mPowerManager:Landroid/os/IPowerManager;

    const/16 v2, 0x5a

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 3034
    const-string v1, "MotoCamcorder"

    const-string v2, "e13386: setBacklightBrightness succeed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3037
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3040
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mPowerManager:Landroid/os/IPowerManager;

    const/16 v2, 0x5a

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 3041
    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/Camera/Camcorder;->mHighestLightSensorValue:I

    .line 3042
    const/16 v1, 0x5a

    iput v1, p0, Lcom/motorola/Camera/Camcorder;->mAutoBrightnessLevel:I

    .line 3043
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/motorola/Camera/Camcorder;->enableLightSensor(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private checkExternalSDCardFirstTime()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 5077
    iget-boolean v5, p0, Lcom/motorola/Camera/Camcorder;->mIsSecurelyLockedModeVideoCaptureIntent:Z

    if-eqz v5, :cond_1

    .line 5078
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5, v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSDPlug(Z)V

    .line 5131
    :cond_0
    :goto_0
    return-void

    .line 5082
    :cond_1
    invoke-static {v7}, Lcom/motorola/Camera/CameraGlobalTools;->calcVideoTimeRemaining(Z)I

    move-result v3

    .line 5083
    .local v3, externalVideoRemainTime:I
    if-ltz v3, :cond_0

    .line 5084
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSDPlug(Z)V

    .line 5088
    iget-boolean v5, p0, Lcom/motorola/Camera/Camcorder;->mIsInternalSD:Z

    if-eqz v5, :cond_0

    if-lez v3, :cond_0

    .line 5090
    iput-boolean v7, p0, Lcom/motorola/Camera/Camcorder;->mNeedCheckStorage:Z

    .line 5091
    new-instance v4, Lcom/motorola/Camera/Camcorder$9;

    invoke-direct {v4, p0, v3}, Lcom/motorola/Camera/Camcorder$9;-><init>(Lcom/motorola/Camera/Camcorder;I)V

    .line 5103
    .local v4, okButtonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/motorola/Camera/Camcorder$10;

    invoke-direct {v1, p0}, Lcom/motorola/Camera/Camcorder$10;-><init>(Lcom/motorola/Camera/Camcorder;)V

    .line 5110
    .local v1, cancelButtonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/motorola/Camera/Camcorder$11;

    invoke-direct {v2, p0}, Lcom/motorola/Camera/Camcorder$11;-><init>(Lcom/motorola/Camera/Camcorder;)V

    .line 5117
    .local v2, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mStorageLocationAlert:Landroid/app/AlertDialog;

    if-eqz v5, :cond_2

    .line 5118
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mStorageLocationAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 5121
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5122
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    const v5, 0x1080027

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 5123
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0138

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5124
    const v5, 0x7f0b0139

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5125
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b013b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5126
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b013a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5127
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 5128
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/Camera/Camcorder;->mStorageLocationAlert:Landroid/app/AlertDialog;

    .line 5129
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mStorageLocationAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1338
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

    const-string v2, "cleanupEmptyFile() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1341
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1342
    .local v0, f:Ljava/io/File;
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanupEmptyFile() file length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1346
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanupEmptyFile() - Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1350
    .end local v0           #f:Ljava/io/File;
    :cond_3
    return-void
.end method

.method private clearMessageQueue()V
    .locals 2

    .prologue
    .line 3393
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3394
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3916
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v1, "closeCamera() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3918
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 3940
    :cond_1
    :goto_0
    return-void

    .line 3923
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 3924
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 3925
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 3926
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isTorchSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 3928
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "flash"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3929
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3932
    :cond_3
    invoke-static {}, Lcom/motorola/Camera/CameraHolder;->instance()Lcom/motorola/Camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CameraHolder;->release()V

    .line 3934
    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    .line 3935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    .line 3937
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->resetZoom()V

    .line 3939
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v1, "closeCamera() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createVideoPath()V
    .locals 18

    .prologue
    .line 4033
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 4035
    .local v5, dateTaken:J
    invoke-static {v5, v6}, Lcom/motorola/Camera/CameraGlobalTools;->createName(J)Ljava/lang/String;

    move-result-object v12

    .line 4036
    .local v12, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v15}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v4

    .line 4038
    .local v4, currentVideoMode:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v15}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v14

    .line 4039
    .local v14, vidResForProfile:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v15, :cond_0

    const-string v15, "QVGA"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    :cond_0
    const/16 v15, 0x9

    if-ne v4, v15, :cond_2

    .line 4041
    :cond_1
    const-string v14, "MMS"

    .line 4045
    :cond_2
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/motorola/Camera/MotoCamcorderProfile;->getOutputFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4053
    .local v1, FileName:Ljava/lang/String;
    :goto_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4055
    .local v7, displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v15}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v11

    .line 4057
    .local v11, storageDirectory:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/dcim/Camera"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4058
    .local v3, cameraDirPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4062
    .local v2, cameraDir:Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4069
    :cond_3
    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/dcim/Camera"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4071
    .local v9, filename:Ljava/lang/String;
    new-instance v13, Landroid/content/ContentValues;

    const/16 v15, 0x8

    invoke-direct {v13, v15}, Landroid/content/ContentValues;-><init>(I)V

    .line 4072
    .local v13, values:Landroid/content/ContentValues;
    const-string v15, "title"

    invoke-virtual {v13, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4073
    const-string v15, "_display_name"

    invoke-virtual {v13, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4074
    const-string v15, "datetaken"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4075
    const-string v15, "mime_type"

    const-string v16, "video/3gpp"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4076
    const-string v15, "_data"

    invoke-virtual {v13, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4077
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/motorola/Camera/MotoCamcorderProfile;->getFrameWidth(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/motorola/Camera/MotoCamcorderProfile;->getFrameHeight(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4078
    .local v10, resDimension:Ljava/lang/String;
    const-string v15, "MotoCamcorder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "resDimension"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4079
    const-string v15, "resolution"

    invoke-virtual {v13, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4081
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    .line 4082
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 4083
    sget-boolean v15, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v15, :cond_4

    const-string v15, "MotoCamcorder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "createVideoPath() - mCurrentVideoFilename : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4084
    :cond_4
    return-void

    .line 4047
    .end local v1           #FileName:Ljava/lang/String;
    .end local v2           #cameraDir:Ljava/io/File;
    .end local v3           #cameraDirPath:Ljava/lang/String;
    .end local v7           #displayName:Ljava/lang/String;
    .end local v9           #filename:Ljava/lang/String;
    .end local v10           #resDimension:Ljava/lang/String;
    .end local v11           #storageDirectory:Ljava/lang/String;
    .end local v13           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 4048
    .local v8, e:Ljava/lang/NullPointerException;
    const-string v1, ".3gp"

    .restart local v1       #FileName:Ljava/lang/String;
    goto/16 :goto_0

    .line 4064
    .end local v8           #e:Ljava/lang/NullPointerException;
    .restart local v2       #cameraDir:Ljava/io/File;
    .restart local v3       #cameraDirPath:Ljava/lang/String;
    .restart local v7       #displayName:Ljava/lang/String;
    .restart local v11       #storageDirectory:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 4066
    .local v8, e:Ljava/lang/SecurityException;
    sget-boolean v15, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v15, :cond_3

    const-string v15, "MotoCamcorder"

    const-string v16, "createVideoPath() - Failed to create camera directory"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private disableCallStateListener()V
    .locals 3

    .prologue
    .line 2732
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2733
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->callStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2734
    return-void
.end method

.method private dismissToast()V
    .locals 1

    .prologue
    .line 826
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camcorder;->dismissToast(Z)V

    .line 827
    return-void
.end method

.method private dismissToast(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 819
    const v1, 0x7f0d00bb

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 820
    .local v0, v:Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 821
    if-eqz p1, :cond_0

    const v1, 0x7f04000e

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 823
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 10
    .parameter "success"

    .prologue
    .line 4754
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 4756
    .local v5, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_c

    .line 4757
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_0

    const-string v7, "MotoCamcorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Camcorder:doReturnToCaller: success uri ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/Camera/Camcorder;->mLastValidUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4759
    :cond_0
    const/4 v4, -0x1

    .line 4761
    .local v4, resultCode:I
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mLastValidUri:Landroid/net/Uri;

    if-nez v7, :cond_2

    .line 4762
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_1

    const-string v7, "MotoCamcorder"

    const-string v8, "doReturnToCaller - mLastValidUri is null."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4763
    :cond_1
    const/4 v4, 0x0

    .line 4764
    invoke-virtual {p0, v4, v5}, Lcom/motorola/Camera/Camcorder;->setResult(ILandroid/content/Intent;)V

    .line 4766
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 4767
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    .line 4770
    :cond_2
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->getCaptureVideoUriFromIntent()Landroid/net/Uri;

    move-result-object v6

    .line 4772
    .local v6, videoUriFromIntent:Landroid/net/Uri;
    if-nez v6, :cond_4

    .line 4773
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mLastValidUri:Landroid/net/Uri;

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4821
    .end local v6           #videoUriFromIntent:Landroid/net/Uri;
    :cond_3
    :goto_0
    invoke-virtual {p0, v4, v5}, Lcom/motorola/Camera/Camcorder;->setResult(ILandroid/content/Intent;)V

    .line 4823
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 4824
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    .line 4825
    return-void

    .line 4775
    .restart local v6       #videoUriFromIntent:Landroid/net/Uri;
    :cond_4
    const/4 v2, 0x0

    .line 4776
    .local v2, inputStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 4778
    .local v3, outputStream:Ljava/io/OutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/motorola/Camera/Camcorder;->mLastValidUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 4779
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_5

    const-string v7, "MotoCamcorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doReturnToCaller - inputStream.available() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4780
    :cond_5
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 4781
    if-nez v3, :cond_7

    .line 4782
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_6

    const-string v7, "MotoCamcorder"

    const-string v8, "doReturnToCaller - outputStream is null."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4783
    :cond_6
    const/4 v4, 0x0

    .line 4784
    invoke-virtual {p0, v4, v5}, Lcom/motorola/Camera/Camcorder;->setResult(ILandroid/content/Intent;)V

    .line 4786
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 4787
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    .line 4789
    :cond_7
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v7

    new-array v0, v7, [B

    .line 4790
    .local v0, data:[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 4791
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 4792
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 4793
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 4794
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4801
    if-eqz v2, :cond_8

    .line 4803
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4808
    :cond_8
    :goto_1
    if-eqz v3, :cond_3

    .line 4810
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 4811
    :catch_0
    move-exception v1

    .line 4812
    .local v1, ex:Ljava/io/IOException;
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_3

    const-string v7, "MotoCamcorder"

    const-string v8, "doReturnToCaller - Exception Ignore close exception for outputStream"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4804
    .end local v1           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 4805
    .restart local v1       #ex:Ljava/io/IOException;
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_8

    const-string v7, "MotoCamcorder"

    const-string v8, "doReturnToCaller - Exception Ignore close exception for inputStream"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4796
    .end local v0           #data:[B
    .end local v1           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 4797
    .restart local v1       #ex:Ljava/io/IOException;
    :try_start_3
    const-string v7, "MotoCamcorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doReturnToCaller - IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " when saving to uri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4798
    const/4 v4, 0x0

    .line 4801
    if-eqz v2, :cond_9

    .line 4803
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 4808
    :cond_9
    :goto_2
    if-eqz v3, :cond_3

    .line 4810
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 4811
    :catch_3
    move-exception v1

    .line 4812
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_3

    const-string v7, "MotoCamcorder"

    const-string v8, "doReturnToCaller - Exception Ignore close exception for outputStream"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4804
    :catch_4
    move-exception v1

    .line 4805
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_9

    const-string v7, "MotoCamcorder"

    const-string v8, "doReturnToCaller - Exception Ignore close exception for inputStream"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4801
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v2, :cond_a

    .line 4803
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 4808
    :cond_a
    :goto_3
    if-eqz v3, :cond_b

    .line 4810
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 4813
    :cond_b
    :goto_4
    throw v7

    .line 4804
    :catch_5
    move-exception v1

    .line 4805
    .restart local v1       #ex:Ljava/io/IOException;
    sget-boolean v8, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v8, :cond_a

    const-string v8, "MotoCamcorder"

    const-string v9, "doReturnToCaller - Exception Ignore close exception for inputStream"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4811
    .end local v1           #ex:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 4812
    .restart local v1       #ex:Ljava/io/IOException;
    sget-boolean v8, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v8, :cond_b

    const-string v8, "MotoCamcorder"

    const-string v9, "doReturnToCaller - Exception Ignore close exception for outputStream"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4818
    .end local v1           #ex:Ljava/io/IOException;
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v3           #outputStream:Ljava/io/OutputStream;
    .end local v4           #resultCode:I
    .end local v6           #videoUriFromIntent:Landroid/net/Uri;
    :cond_c
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_d

    const-string v7, "MotoCamcorder"

    const-string v8, "Camcorder:doReturnToCaller: cancel"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4819
    :cond_d
    const/4 v4, 0x0

    .restart local v4       #resultCode:I
    goto/16 :goto_0
.end method

.method private enableCallStateListener()V
    .locals 3

    .prologue
    .line 2725
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

    const-string v2, "enableCallStateListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    :cond_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2728
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->callStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2729
    return-void
.end method

.method private enableFastMotion()V
    .locals 6

    .prologue
    .line 1052
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 1053
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v4

    .line 1054
    :try_start_0
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/16 v5, 0xb

    invoke-virtual {v3, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 1055
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSensorVidResList()Ljava/lang/String;

    move-result-object v2

    .line 1056
    .local v2, temp:Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1057
    .local v1, t:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 1059
    .local v0, newVidResolution:Ljava/lang/String;
    const-string v3, "1280x720"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1060
    const-string v0, "1280x720"

    .line 1062
    :cond_0
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3, v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 1063
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->closeCamera()V

    .line 1066
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/motorola/Camera/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    .line 1067
    return-void

    .line 1063
    .end local v0           #newVidResolution:Ljava/lang/String;
    .end local v1           #t:[Ljava/lang/String;
    .end local v2           #temp:Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private enableLightSensor(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 3075
    const-string v0, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e13386: enableLightSensor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 3077
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSensorManager:Landroid/hardware/SensorManager;

    .line 3078
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mAutoBrightnessLevels:[I

    .line 3080
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mLcdBacklightValues:[I

    .line 3083
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mAutoBrightnessLevels:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mLcdBacklightValues:[I

    if-nez v0, :cond_3

    .line 3086
    :cond_1
    const-string v0, "MotoCamcorder"

    const-string v1, "e13386: error in enableLightSensor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3101
    :cond_2
    :goto_0
    return-void

    .line 3089
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_4

    .line 3090
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mLightSensor:Landroid/hardware/Sensor;

    .line 3092
    :cond_4
    iget-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mLightSensorEnabled:Z

    if-eq v0, p1, :cond_2

    .line 3093
    iput-boolean p1, p0, Lcom/motorola/Camera/Camcorder;->mLightSensorEnabled:Z

    .line 3094
    if-eqz p1, :cond_5

    .line 3095
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 3098
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private enableMMSMode()V
    .locals 2

    .prologue
    .line 1082
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 1083
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 1084
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const-string v1, "320x240"

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 1087
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->closeCamera()V

    .line 1089
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    .line 1090
    return-void
.end method

.method private enableNormalVideoMode()V
    .locals 6

    .prologue
    .line 1094
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 1095
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v4

    .line 1096
    :try_start_0
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 1097
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSensorVidResList()Ljava/lang/String;

    move-result-object v2

    .line 1098
    .local v2, temp:Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1099
    .local v1, t:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v0, v1, v3

    .line 1100
    .local v0, newVidResolution:Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3, v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 1101
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1104
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->closeCamera()V

    .line 1106
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/motorola/Camera/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    .line 1107
    return-void

    .line 1101
    .end local v0           #newVidResolution:Ljava/lang/String;
    .end local v1           #t:[Ljava/lang/String;
    .end local v2           #temp:Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private enableSlowMotion()V
    .locals 2

    .prologue
    .line 1071
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 1072
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 1073
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const-string v1, "320x240"

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 1075
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->closeCamera()V

    .line 1077
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    .line 1078
    return-void
.end method

.method private enableWdr()V
    .locals 7

    .prologue
    .line 1110
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 1111
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v5

    .line 1112
    :try_start_0
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 1114
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSensorVidResList()Ljava/lang/String;

    move-result-object v2

    .line 1115
    .local v2, res:Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1116
    .local v3, t:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 1117
    .local v0, newVidResolution:Ljava/lang/String;
    const-string v4, "720p"

    invoke-static {v4}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1119
    .local v1, r720p:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1120
    move-object v0, v1

    .line 1122
    :cond_0
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4, v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 1123
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1125
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->closeCamera()V

    .line 1127
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/motorola/Camera/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    .line 1128
    return-void

    .line 1123
    .end local v0           #newVidResolution:Ljava/lang/String;
    .end local v1           #r720p:Ljava/lang/String;
    .end local v2           #res:Ljava/lang/String;
    .end local v3           #t:[Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private getAutoBrightnessValue(I)I
    .locals 4
    .parameter "sensorValue"

    .prologue
    .line 3106
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mAutoBrightnessLevels:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 3107
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mAutoBrightnessLevels:[I

    aget v2, v2, v1

    if-ge p1, v2, :cond_1

    .line 3111
    :cond_0
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mLcdBacklightValues:[I

    aget v2, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3115
    :goto_1
    return v2

    .line 3106
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3112
    :catch_0
    move-exception v0

    .line 3114
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MotoCamcorder"

    const-string v3, "getAutoBrightnessValue"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3115
    const/16 v2, 0x5a

    goto :goto_1
.end method

.method private getCaptureVideoUriFromIntent()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 4897
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4898
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 4900
    .local v1, myExtras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 4901
    const-string v2, "output"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 4903
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getDurationFromIntent()I
    .locals 4

    .prologue
    .line 4860
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4861
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 4863
    .local v1, seconds:I
    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4864
    const-string v2, "android.intent.extra.durationLimit"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4866
    :cond_0
    return v1
.end method

.method private getFileSizeFromIntent()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 4834
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 4835
    .local v2, intent:Landroid/content/Intent;
    const-wide/16 v0, 0x0

    .line 4838
    .local v0, filesize:J
    const-string v3, "max_recording_size"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4839
    const-string v3, "max_recording_size"

    invoke-virtual {v2, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4841
    :cond_0
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_1

    .line 4842
    const-string v3, "MotoCamcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camcorder:getFileSizeFromIntent:client set file size to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4844
    :cond_1
    const-string v3, "android.intent.extra.sizeLimit"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4845
    const-string v3, "android.intent.extra.sizeLimit"

    invoke-virtual {v2, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4847
    :cond_2
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_3

    .line 4848
    const-string v3, "MotoCamcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camcorder:getFileSizeFromIntent:client set file size to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4850
    :cond_3
    return-wide v0
.end method

.method private getResolutionFromIntent()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4876
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4877
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "320x240"

    .line 4879
    .local v1, resolution:Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSensorVidResList()Ljava/lang/String;

    move-result-object v3

    .line 4880
    .local v3, temp:Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4882
    .local v2, t:[Ljava/lang/String;
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4884
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 4886
    aget-object v1, v2, v6

    .line 4892
    :cond_0
    :goto_0
    return-object v1

    .line 4889
    :cond_1
    const-string v1, "320x240"

    goto :goto_0
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .parameter "deltaMs"

    .prologue
    .line 4027
    long-to-double v2, p1

    iget v4, p0, Lcom/motorola/Camera/Camcorder;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 4028
    .local v0, numberOfFrames:D
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/MotoCamcorderProfile;->getVideoFps(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private hidePostPanel()V
    .locals 2

    .prologue
    .line 4312
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 4313
    const-string v0, "MotoCamcorder"

    const-string v1, "Camcorder:hidePostPanel:hidePostPanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4315
    :cond_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->cancelRestartPreviewTimeout()V

    .line 4317
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mPostPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 4318
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mPostPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4319
    :cond_1
    return-void
.end method

.method private hideVideoFrame()V
    .locals 2

    .prologue
    .line 4566
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->recycleVideoFrameBitmap()V

    .line 4567
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->removePicsStill()V

    .line 4568
    const v0, 0x7f0d00c3

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4569
    return-void
.end method

.method private hideVideoFrameAndStartPreview(Z)V
    .locals 3
    .parameter "startVF"

    .prologue
    const/4 v2, 0x1

    .line 4470
    iput v2, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    .line 4471
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mPostText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4473
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->hidePostPanel()V

    .line 4474
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->hideVideoFrame()V

    .line 4476
    if-eqz p1, :cond_0

    .line 4478
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->startPreview()V

    .line 4481
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->initializeRecorder()V

    .line 4485
    :cond_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->updateRemainCount()V

    .line 4489
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 4491
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->setVisibility(I)V

    .line 4492
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 4493
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->toggleMediaControlsVisibility()V

    .line 4494
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 4495
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCaptureCluster()V

    .line 4497
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_1

    .line 4498
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isCamcorderZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4499
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showZoomControlSet()V

    .line 4506
    :cond_1
    :goto_0
    return-void

    .line 4502
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideZoomControlSet(Z)V

    goto :goto_0
.end method

.method private initVideoPostPanel()V
    .locals 5

    .prologue
    .line 2387
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2391
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03002d

    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/motorola/Camera/View/CameraContentView;

    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    .line 2394
    const v3, 0x7f0d00c4

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->mPostPanel:Landroid/widget/LinearLayout;

    .line 2396
    const v3, 0x7f0d00c6

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 2397
    .local v2, rl:Landroid/widget/RelativeLayout;
    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2399
    const v3, 0x7f0d00c7

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #rl:Landroid/widget/RelativeLayout;
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 2400
    .restart local v2       #rl:Landroid/widget/RelativeLayout;
    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2402
    const v3, 0x7f0d00c5

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #rl:Landroid/widget/RelativeLayout;
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 2403
    .restart local v2       #rl:Landroid/widget/RelativeLayout;
    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2405
    const v3, 0x7f0d00c3

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2406
    .local v0, button:Landroid/widget/ImageView;
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2407
    return-void
.end method

.method private declared-synchronized initializeRecorder()V
    .locals 20

    .prologue
    .line 1132
    monitor-enter p0

    :try_start_0
    sget-boolean v14, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v14, :cond_0

    const-string v14, "MotoCamcorder"

    const-string v15, "initializeRecorder() - Enter"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    .line 1136
    .local v12, state:Ljava/lang/String;
    const-string v14, "bad_removal"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1138
    const-string v14, "MotoCamcorder"

    const-string v15, "initializeRecorder() - bad removal of SD card, skip setting up recorder"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1297
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1143
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mPausing:Z

    if-nez v14, :cond_1

    .line 1147
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mIsInternalSD:Z

    invoke-static {v14}, Lcom/motorola/Camera/CameraGlobalTools;->hasStorage(Z)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1152
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->createVideoPath()V

    .line 1154
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    if-nez v14, :cond_4

    .line 1155
    sget-boolean v14, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v14, :cond_3

    const-string v14, "MotoCamcorder"

    const-string v15, "initializeRecorder() - Could not create videofile"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x38

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1132
    .end local v12           #state:Ljava/lang/String;
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 1160
    .restart local v12       #state:Ljava/lang/String;
    :cond_4
    const/4 v14, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorderStopped:Z

    .line 1162
    sget-boolean v14, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v14, :cond_5

    const-string v14, "MotoCamcorder"

    const-string v15, "initializeRecorder() - Creating new MediaRecorder"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_5
    new-instance v14, Landroid/media/MediaRecorder;

    invoke-direct {v14}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1165
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v14}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v4

    .line 1166
    .local v4, currentVideoMode:I
    const/16 v14, 0xb

    if-ne v4, v14, :cond_11

    .line 1168
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14}, Landroid/hardware/Camera;->lock()V

    .line 1169
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    .line 1170
    .local v10, params:Landroid/hardware/Camera$Parameters;
    const-string v14, "video-mode"

    sget-object v15, Lcom/motorola/Camera/CameraGlobalType;->videoModeSetting:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-virtual {v10, v14, v15}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14, v10}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14}, Landroid/hardware/Camera;->unlock()V

    .line 1191
    .end local v10           #params:Landroid/hardware/Camera$Parameters;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1194
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v14}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAudioMuted()Z

    move-result v6

    .line 1197
    .local v6, isMuteAudioOn:Z
    if-nez v6, :cond_7

    const/16 v14, 0xc

    if-eq v4, v14, :cond_7

    const/16 v14, 0xb

    if-eq v4, v14, :cond_7

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z

    if-nez v14, :cond_7

    .line 1199
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1201
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1203
    const/4 v13, 0x0

    .line 1204
    .local v13, videoResforProfile:Ljava/lang/String;
    const/16 v14, 0x9

    if-eq v4, v14, :cond_8

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v14, :cond_14

    .line 1205
    :cond_8
    const-string v13, "MMS"

    .line 1211
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/MotoCamcorderProfile;->getProfile(Ljava/lang/String;)Landroid/media/CamcorderProfile;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1213
    sget-boolean v14, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v14, :cond_9

    .line 1214
    const-string v14, "MotoCamcorder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "videoResforProfile:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v14, :cond_a

    const-string v14, "QVGA"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    :cond_a
    const/16 v14, 0x9

    if-ne v4, v14, :cond_c

    .line 1218
    :cond_b
    const-string v13, "MMS"

    .line 1223
    :cond_c
    if-nez v6, :cond_d

    const/16 v14, 0xc

    if-eq v4, v14, :cond_d

    const/16 v14, 0xb

    if-eq v4, v14, :cond_d

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v14, :cond_d

    .line 1232
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    invoke-virtual {v14, v13}, Lcom/motorola/Camera/MotoCamcorderProfile;->getAudioSamplingRate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v11

    .line 1240
    .local v11, samplingRate:I
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v14}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAudioScenesSupported()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->readChannelsforAudioScenes()I

    move-result v8

    .line 1241
    .local v8, numChannelsforAudioScenes:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    invoke-virtual {v14, v13}, Lcom/motorola/Camera/MotoCamcorderProfile;->getAudioChannels(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1242
    .local v9, numChannelsfromProfile:I
    if-lt v9, v8, :cond_17

    move v7, v8

    .line 1244
    .local v7, numChannels:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/motorola/Camera/MotoCamcorderProfile;->getAudioBitrate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v14, v7}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 1246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v14, v11}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 1250
    .end local v7           #numChannels:I
    .end local v8           #numChannelsforAudioScenes:I
    .end local v9           #numChannelsfromProfile:I
    .end local v11           #samplingRate:I
    :cond_d
    const-string v14, "MotoCamcorder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "initializeRecorder() - set output file = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 1254
    const-wide/32 v2, 0x79999999

    .line 1256
    .local v2, MAX_ENCODED_FILE_SIZE:J
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-nez v14, :cond_e

    const/16 v14, 0x9

    if-ne v4, v14, :cond_19

    .line 1258
    :cond_e
    const-string v14, "MotoCamcorder"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "InitializeRecorder mTimeLimitMs"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/Camcorder;->mTimeLimitMs:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    move-object/from16 v0, p0

    iget v14, v0, Lcom/motorola/Camera/Camcorder;->mTimeLimitMs:I

    if-lez v14, :cond_f

    .line 1261
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/Camcorder;->mTimeLimitMs:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1263
    :cond_f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mFilesize:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v14, v16, v18

    if-lez v14, :cond_18

    .line 1264
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mFilesize:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 1272
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z

    if-eqz v14, :cond_10

    .line 1273
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v16, 0x408f400000000000L

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/Camcorder;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1274
    :cond_10
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1275
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v15}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1280
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v14}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1288
    :goto_7
    :try_start_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v14}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v14

    if-eqz v14, :cond_1a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v15, 0x6

    if-ne v14, v15, :cond_1a

    .line 1295
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureResourceClickable(Z)V

    .line 1296
    sget-boolean v14, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v14, :cond_1

    const-string v14, "MotoCamcorder"

    const-string v15, "initializeRecorder() - Exit"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1174
    .end local v2           #MAX_ENCODED_FILE_SIZE:J
    .end local v6           #isMuteAudioOn:Z
    .end local v13           #videoResforProfile:Ljava/lang/String;
    :cond_11
    const/16 v14, 0xc

    if-ne v4, v14, :cond_12

    .line 1176
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14}, Landroid/hardware/Camera;->lock()V

    .line 1177
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    .line 1178
    .restart local v10       #params:Landroid/hardware/Camera$Parameters;
    const-string v14, "video-mode"

    sget-object v15, Lcom/motorola/Camera/CameraGlobalType;->videoModeSetting:[Ljava/lang/String;

    const/16 v16, 0x2

    aget-object v15, v15, v16

    invoke-virtual {v10, v14, v15}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14, v10}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1180
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14}, Landroid/hardware/Camera;->unlock()V

    goto/16 :goto_1

    .line 1182
    .end local v10           #params:Landroid/hardware/Camera$Parameters;
    :cond_12
    const/16 v14, 0x8

    if-eq v4, v14, :cond_13

    const/16 v14, 0x9

    if-eq v4, v14, :cond_13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z

    if-eqz v14, :cond_6

    .line 1184
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14}, Landroid/hardware/Camera;->lock()V

    .line 1185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    .line 1186
    .restart local v10       #params:Landroid/hardware/Camera$Parameters;
    const-string v14, "video-mode"

    sget-object v15, Lcom/motorola/Camera/CameraGlobalType;->videoModeSetting:[Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v10, v14, v15}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14, v10}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v14}, Landroid/hardware/Camera;->unlock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 1207
    .end local v10           #params:Landroid/hardware/Camera$Parameters;
    .restart local v6       #isMuteAudioOn:Z
    .restart local v13       #videoResforProfile:Ljava/lang/String;
    :cond_14
    :try_start_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v14}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 1234
    :catch_0
    move-exception v5

    .line 1235
    .local v5, e:Ljava/lang/NullPointerException;
    sget-boolean v14, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v14, :cond_15

    const-string v14, "MotoCamcorder"

    const-string v16, "initializeRecorder() - Camcorder Profile not set. Defaulting sampling rate"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :cond_15
    sget-object v14, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_AUDIO_SAMPLINGRATE:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .restart local v11       #samplingRate:I
    goto/16 :goto_3

    .line 1240
    .end local v5           #e:Ljava/lang/NullPointerException;
    :cond_16
    const/4 v8, 0x2

    goto/16 :goto_4

    .restart local v8       #numChannelsforAudioScenes:I
    .restart local v9       #numChannelsfromProfile:I
    :cond_17
    move v7, v9

    .line 1242
    goto/16 :goto_5

    .line 1266
    .end local v8           #numChannelsforAudioScenes:I
    .end local v9           #numChannelsfromProfile:I
    .end local v11           #samplingRate:I
    .restart local v2       #MAX_ENCODED_FILE_SIZE:J
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide/32 v16, 0x79999999

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    goto/16 :goto_6

    .line 1274
    .end local v2           #MAX_ENCODED_FILE_SIZE:J
    .end local v6           #isMuteAudioOn:Z
    .end local v13           #videoResforProfile:Ljava/lang/String;
    :catchall_1
    move-exception v14

    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1270
    .restart local v2       #MAX_ENCODED_FILE_SIZE:J
    .restart local v6       #isMuteAudioOn:Z
    .restart local v13       #videoResforProfile:Ljava/lang/String;
    :cond_19
    :try_start_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide/32 v16, 0x79999999

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_6

    .line 1282
    :catch_1
    move-exception v5

    .line 1284
    .local v5, e:Ljava/io/IOException;
    :try_start_c
    const-string v14, "MotoCamcorder"

    const-string v15, "initializeRecorder() - prepare failed"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x39

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 1293
    .end local v5           #e:Ljava/io/IOException;
    :cond_1a
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/motorola/Camera/Camcorder;->mStatus:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_8
.end method

.method private interruptThumbnailThread()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4714
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    if-eqz v0, :cond_3

    .line 4716
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    monitor-enter v1

    .line 4717
    :try_start_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 4718
    const-string v0, "MotoCamcorder"

    const-string v2, "interruptThumbnailThread"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4720
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x48

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4721
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4722
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4723
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4728
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4729
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4734
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4735
    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    .line 4737
    :cond_3
    return-void

    .line 4734
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 4731
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isPostPanelVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4327
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 4328
    const-string v1, "MotoCamcorder"

    const-string v2, "Camcorder:isPostPanelVisible:isPostPanelVisible"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4330
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mPostPanel:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    .line 4333
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mPostPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSecurelyLockedModeVideoCaptureIntent()Z
    .locals 3

    .prologue
    .line 4747
    const/4 v0, 0x0

    .line 4748
    .local v0, isSecurelyLocked:Z
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 4749
    .local v1, keyguardMgr:Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 4750
    return v0
.end method

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 4742
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4743
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isWebtopMode()Z
    .locals 2

    .prologue
    .line 3397
    new-instance v0, Lcom/motorola/webtop/WebtopManager;

    invoke-direct {v0, p0}, Lcom/motorola/webtop/WebtopManager;-><init>(Landroid/content/Context;)V

    .line 3398
    .local v0, wtm:Lcom/motorola/webtop/WebtopManager;
    invoke-virtual {v0}, Lcom/motorola/webtop/WebtopManager;->isWebtopMode()Z

    move-result v1

    return v1
.end method

.method private readChannelsforAudioScenes()I
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 1301
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v7, :cond_0

    .line 1302
    const-string v7, "audio"

    invoke-virtual {p0, v7}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    .line 1305
    :cond_0
    const/4 v4, 0x2

    .line 1306
    .local v4, numChannels:I
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v1

    .line 1308
    .local v1, currenscene:I
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getAudioScenesValues()Ljava/util/List;

    move-result-object v0

    .line 1310
    .local v0, AudioScenesValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_1

    const-string v7, "MotoCamcorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AudioSceneValues"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :cond_1
    iget-object v8, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "Channels"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1314
    .local v5, param:Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1316
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1318
    .local v6, temp:[Ljava/lang/String;
    if-eqz v6, :cond_2

    array-length v7, v6

    if-le v7, v11, :cond_2

    .line 1319
    const/4 v3, -0x1

    .line 1321
    .local v3, n:I
    const/4 v7, 0x1

    :try_start_0
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1327
    if-eq v3, v10, :cond_2

    move v4, v3

    .line 1332
    .end local v3           #n:I
    .end local v6           #temp:[Ljava/lang/String;
    :cond_2
    :goto_0
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_3

    const-string v7, "MotoCamcorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Num of Channels from AudioScene"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_3
    return v4

    .line 1322
    .restart local v3       #n:I
    .restart local v6       #temp:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1323
    .local v2, e:Ljava/lang/NumberFormatException;
    :try_start_1
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_4

    const-string v7, "MotoCamcorder"

    const-string v8, "get audio channel number failed!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_4
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1325
    const/4 v3, -0x1

    .line 1327
    if-eq v3, v10, :cond_2

    move v4, v3

    goto :goto_0

    .end local v2           #e:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v7

    if-eq v3, v10, :cond_5

    move v4, v3

    :cond_5
    throw v7
.end method

.method private recycleVideoFrameBitmap()V
    .locals 2

    .prologue
    .line 4572
    const-string v0, "MotoCamcorder"

    const-string v1, "recycleVideoFrameBitmap : Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4573
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 4574
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    monitor-enter v1

    .line 4575
    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4576
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    .line 4580
    :cond_1
    const-string v0, "MotoCamcorder"

    const-string v1, "recycleVideoFrameBitmap : Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4581
    return-void

    .line 4576
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private registerVideo()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 3944
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_0

    const-string v7, "MotoCamcorder"

    const-string v8, "registerVideo() - Enter"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    :cond_0
    const-string v7, "content://media/external/video/media"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 3948
    .local v5, videoTable:Landroid/net/Uri;
    if-nez v5, :cond_2

    .line 3949
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    const-string v6, "MotoCamcorder"

    const-string v7, "registerVideo() - videoTable == null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4022
    :cond_1
    :goto_0
    return-void

    .line 3953
    :cond_2
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    if-eqz v7, :cond_c

    .line 3959
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mLastValidFileName:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3960
    .local v3, f:Ljava/io/File;
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "_size"

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3968
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/motorola/Camera/Camcorder;->mRecordingStartTime:J

    sub-long v0, v7, v9

    .line 3969
    .local v0, duration:J
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-lez v7, :cond_a

    .line 3970
    iget-boolean v7, p0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z

    if-eqz v7, :cond_3

    .line 3971
    invoke-direct {p0, v0, v1}, Lcom/motorola/Camera/Camcorder;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    .line 3973
    :cond_3
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3979
    :goto_1
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    invoke-virtual {v7}, Lcom/motorola/Camera/LocUtility;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 3980
    .local v4, loc:Landroid/location/Location;
    :goto_2
    if-eqz v4, :cond_5

    .line 3982
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_4

    const-string v7, "MotoCamcorder"

    const-string v8, "registerVideo() - adding resolution, duration, lat, long"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3984
    :cond_4
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "latitude"

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3985
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "longitude"

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 3996
    :cond_5
    :try_start_1
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_6

    const-string v7, "MotoCamcorder"

    const-string v8, "registerVideo() - Trying to insert..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4000
    :cond_6
    if-eqz v5, :cond_7

    .line 4002
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "no_thumb"

    const-string v9, "true"

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 4005
    :cond_7
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/Camera/Camcorder;->mLastValidUri:Landroid/net/Uri;

    .line 4008
    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mLastValidUri:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/motorola/Camera/Camcorder;->mLastValidMediaId:J

    .line 4009
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_8

    const-string v7, "MotoCamcorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " last media id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/motorola/Camera/Camcorder;->mLastValidMediaId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4017
    :cond_8
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_9

    const-string v7, "MotoCamcorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current video URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/Camera/Camcorder;->mLastValidUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4019
    :cond_9
    iput-object v6, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 4021
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    const-string v6, "MotoCamcorder"

    const-string v7, "registerVideo() - Exit"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3962
    .end local v0           #duration:J
    .end local v3           #f:Ljava/io/File;
    .end local v4           #loc:Landroid/location/Location;
    :catch_0
    move-exception v2

    .line 3964
    .local v2, e:Ljava/lang/Exception;
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    const-string v6, "MotoCamcorder"

    const-string v7, "registerVideo() - Failed to create mLastValidFileName"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3975
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #duration:J
    .restart local v3       #f:Ljava/io/File;
    :cond_a
    const-string v7, "MotoCamcorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Video duration <= 0 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    move-object v4, v6

    .line 3979
    goto/16 :goto_2

    .line 3990
    .end local v0           #duration:J
    .end local v3           #f:Ljava/io/File;
    :cond_c
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    const-string v6, "MotoCamcorder"

    const-string v7, "mCurrentVideoValues == null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4011
    .restart local v0       #duration:J
    .restart local v3       #f:Ljava/io/File;
    .restart local v4       #loc:Landroid/location/Location;
    :catch_1
    move-exception v2

    .line 4013
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "MotoCamcorder"

    const-string v7, "registerVideo() - mContentResolver.insert failed, returning from function"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private releaseMediaRecorder()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1354
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamcorder"

    const-string v3, "releaseMediaRecorder() - Enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_0
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1360
    :try_start_0
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCamcorder"

    const-string v3, "releaseMediaRecorder() - Waiting for MediaRecorder to init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1366
    iput-object v4, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    .line 1370
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1372
    :try_start_1
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_3

    const-string v2, "MotoCamcorder"

    const-string v3, "releaseMediaRecorder() - Waiting for MediaRecorder to stop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    :cond_3
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1381
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1383
    :try_start_2
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    const-string v2, "MotoCamcorder"

    const-string v3, "releaseMediaRecorder() - Waiting for MediaRecorder to stop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    :cond_5
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1392
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_9

    .line 1394
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_7

    .line 1395
    const-string v2, "MotoCamcorder"

    const-string v3, "Media recorder is not null!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :cond_7
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 1399
    .local v1, state:Ljava/lang/String;
    const-string v2, "bad_removal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1401
    const-string v2, "MotoCamcorder"

    const-string v3, "releaseMediaRecorder() - Not called in bad removal state of media, ok to call empty file cleanup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->cleanupEmptyFile()V

    .line 1409
    :goto_3
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorderStopped:Z

    .line 1410
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureResourceClickable(Z)V

    .line 1411
    :cond_8
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    .line 1412
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 1413
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1414
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1420
    .end local v1           #state:Ljava/lang/String;
    :cond_9
    :goto_4
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_a

    const-string v2, "MotoCamcorder"

    const-string v3, "releaseMediaRecorder() - Exit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_a
    return-void

    .line 1362
    :catch_0
    move-exception v0

    .line 1363
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_b

    const-string v2, "MotoCamcorder"

    const-string v3, "thread join interrupted for mRecInitThread thread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_b
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1366
    iput-object v4, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iput-object v4, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    throw v2

    .line 1375
    :catch_1
    move-exception v0

    .line 1376
    .restart local v0       #e:Ljava/lang/InterruptedException;
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_c

    const-string v2, "MotoCamcorder"

    const-string v3, "thread join interrupted for mStopRecording thread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :cond_c
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 1386
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 1387
    .restart local v0       #e:Ljava/lang/InterruptedException;
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_d

    const-string v2, "MotoCamcorder"

    const-string v3, "thread join interrupted for mStopRecording thread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :cond_d
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 1406
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #state:Ljava/lang/String;
    :cond_e
    const-string v2, "MotoCamcorder"

    const-string v3, "releaseMediaRecorder() - Bad removal of media, skipping file cleanup"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1415
    :catch_3
    move-exception v0

    .line 1416
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "MotoCamcorder"

    const-string v3, "releaseMediaRecorder() - reset failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private resetZoom()V
    .locals 2

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setDefaultZoomValue()V

    .line 1487
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_1

    .line 1488
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateZoom(I)V

    .line 1490
    :cond_1
    return-void
.end method

.method private resetZoomDefault()V
    .locals 2

    .prologue
    .line 2379
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 2380
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2381
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2384
    :cond_0
    return-void
.end method

.method private restoreBrightness()V
    .locals 4

    .prologue
    .line 3054
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mPowerManager:Landroid/os/IPowerManager;

    if-nez v1, :cond_1

    .line 3072
    :cond_0
    :goto_0
    return-void

    .line 3058
    :cond_1
    :try_start_0
    iget v1, p0, Lcom/motorola/Camera/Camcorder;->mSavedBrightnessMode:I

    if-nez v1, :cond_2

    .line 3059
    iget v1, p0, Lcom/motorola/Camera/Camcorder;->mSavedBrightness:I

    const/16 v2, 0x5a

    if-ge v1, v2, :cond_0

    .line 3062
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mPowerManager:Landroid/os/IPowerManager;

    iget v2, p0, Lcom/motorola/Camera/Camcorder;->mSavedBrightness:I

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3069
    :catch_0
    move-exception v0

    .line 3070
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MotoCamcorder"

    const-string v2, "e13386: restoreBrightness() fail:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3065
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lcom/motorola/Camera/Camcorder;->enableLightSensor(Z)V

    .line 3066
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    iget v3, p0, Lcom/motorola/Camera/Camcorder;->mSavedBrightnessMode:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setCameraParameters()V
    .locals 29

    .prologue
    .line 3600
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_0

    const-string v24, "MotoCamcorder"

    const-string v25, "setCameraParameters() - Enter"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3602
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v4

    .line 3604
    .local v4, currentVideoMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 3607
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v26, v0

    const-string v24, "persist.sys.mot.encrypt.mmc"

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v24

    const/16 v27, 0x1

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_1c

    const/16 v24, 0x1

    :goto_0
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCamcorderAESProps(Z)V

    .line 3610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v24

    if-eqz v24, :cond_1d

    sget-boolean v16, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadBackParams:Z

    .line 3611
    .local v16, shouldReadHAL:Z
    :goto_1
    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_2

    .line 3613
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/motorola/Camera/CameraUtility;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CameraUtility;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->getCameraCapabilities(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 3615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v24

    if-eqz v24, :cond_1e

    .line 3616
    const/16 v24, 0x0

    sput-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadBackParams:Z

    .line 3622
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v24

    sput v24, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    .line 3623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v24

    sput-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    .line 3625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFocusModes()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_3

    .line 3626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFocusModes()Ljava/lang/String;

    move-result-object v24

    const-string v26, "continuous-video"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 3627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "continuous-video"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 3632
    :cond_3
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_4

    .line 3633
    const-string v24, "MotoCamcorder"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setCameraParameters() - max zoom is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget v27, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    const-string v24, "MotoCamcorder"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setCameraParameters() - SmoothZoomSupported is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-boolean v27, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "mode"

    const-string v27, "video-mode"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3641
    sget-object v24, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_AUDIO_BITRATE:Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3642
    .local v3, audioBitrate:I
    sget-object v24, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_BITRATE:Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v21

    .line 3644
    .local v21, videoBitrate:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v24, v0

    const-string v26, "default"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getAudioBitrate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v24, v0

    const-string v26, "default"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getVideoBitrate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 3646
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/Camera/Camcorder;->mFailSafe:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3658
    :cond_5
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadAutoDetectValues()V

    .line 3660
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 3662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->getResolutionFromIntent()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setVideoResolutionService(Ljava/lang/String;)V

    .line 3665
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v23

    .line 3668
    .local v23, videoResolution:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v24

    const/16 v26, 0xc

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_21

    .line 3670
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_7

    const-string v24, "MotoCamcorder"

    const-string v26, "setCameraParameters() - setting our resolution to 320x240"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3671
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mVideoPreview:Lcom/motorola/Camera/View/CameraView;

    move-object/from16 v24, v0

    const/16 v26, 0x140

    const/16 v27, 0xf0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/CameraView;->setAspectRatio(II)V

    .line 3672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const/16 v26, 0x140

    const/16 v27, 0xf0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 3673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "video-size"

    const-string v27, "320x240"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    const-string v26, "320x240"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 3709
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v24

    const/16 v26, 0xa

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isWdrForVideo()Z

    move-result v24

    if-eqz v24, :cond_27

    .line 3710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "mot-wdr-video-mode"

    const-string v27, "on"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3723
    :goto_5
    :try_start_3
    const-string v20, ""

    .line 3724
    .local v20, vidResforProfile:Ljava/lang/String;
    if-nez v23, :cond_28

    .line 3725
    const-string v20, "default"

    .line 3730
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    const-string v24, "QVGA"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_9

    :cond_8
    const/16 v24, 0x9

    move/from16 v0, v24

    if-ne v4, v0, :cond_a

    .line 3732
    :cond_9
    const-string v20, "MMS"

    .line 3735
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAudioMuted()Z

    move-result v24

    if-nez v24, :cond_b

    const/16 v24, 0xc

    move/from16 v0, v24

    if-eq v4, v0, :cond_b

    const/16 v24, 0xb

    move/from16 v0, v24

    if-ne v4, v0, :cond_29

    :cond_b
    const/4 v3, 0x0

    .line 3740
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getVideoBitrate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 3742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v12

    .line 3743
    .local v12, range:Ljava/util/List;,"Ljava/util/List<[I>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getVideoFps(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 3744
    .local v22, videoFPS:Ljava/lang/Integer;
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 3745
    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<[I>;"
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 3747
    .local v19, tempRange:[I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getDefaultMinFPS()I

    move-result v26

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_2a

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 3748
    .local v11, minFPS:I
    :goto_8
    const/4 v10, 0x0

    .line 3750
    .local v10, maxFPS:I
    :cond_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_d

    .line 3752
    const-string v24, "MotoCamcorder"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Preview FPS rangeinloop"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    aget v27, v19, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "-"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x1

    aget v27, v19, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .end local v19           #tempRange:[I
    check-cast v19, [I

    .line 3755
    .restart local v19       #tempRange:[I
    const/16 v24, 0x0

    aget v24, v19, v24

    move/from16 v0, v24

    if-ne v11, v0, :cond_c

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v26, 0x1

    aget v26, v19, v26

    move/from16 v0, v24

    move/from16 v1, v26

    if-gt v0, v1, :cond_c

    .line 3756
    const/16 v24, 0x1

    aget v10, v19, v24

    .line 3761
    :cond_d
    const-string v24, "MotoCamcorder"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Preview FPS range"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "-"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11, v10}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 3764
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_e

    .line 3765
    const-string v24, "MotoCamcorder"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " video resolution: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " video bitrate: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " audio nitrate: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " video fps: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getVideoFps(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3773
    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<[I>;"
    .end local v10           #maxFPS:I
    .end local v11           #minFPS:I
    .end local v12           #range:Ljava/util/List;,"Ljava/util/List<[I>;"
    .end local v19           #tempRange:[I
    .end local v20           #vidResforProfile:Ljava/lang/String;
    .end local v22           #videoFPS:Ljava/lang/Integer;
    :cond_e
    :goto_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setAudioBitrate(I)V

    .line 3774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setVideoBitrate(I)V

    .line 3775
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    move/from16 v24, v0

    if-nez v24, :cond_f

    const/16 v24, 0x9

    move/from16 v0, v24

    if-ne v4, v0, :cond_10

    .line 3777
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v3, v1}, Lcom/motorola/Camera/Camcorder;->calculateServiceModeTimeandSize(II)V

    .line 3780
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedWhiteBalancesValues()Ljava/util/List;

    move-result-object v24

    if-nez v24, :cond_2b

    .line 3782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "auto"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 3788
    :goto_a
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v24, :cond_11

    .line 3790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "mot-picture-iso"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentIsoValue()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3794
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v24

    if-nez v24, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v24

    if-eqz v24, :cond_13

    .line 3795
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentExpValue()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3796
    .local v7, expIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 3799
    .end local v7           #expIndex:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v24

    if-eqz v24, :cond_14

    .line 3801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "contrast"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentContrastValue()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "iso"

    const-string v27, "auto"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "saturation"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSaturationValue()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3806
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isTorchSupported()Z

    move-result v24

    if-eqz v24, :cond_15

    .line 3808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v24

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_2c

    .line 3809
    const-string v24, "MotoCamcorder"

    const-string v26, "turning torch On"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "flash-mode"

    const-string v27, "torch"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3819
    :cond_15
    :goto_b
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->camPremium:Z

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_18

    .line 3821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v15

    .line 3822
    .local v15, sceneMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAudioScenesSupported()Z

    move-result v24

    if-nez v24, :cond_16

    .line 3823
    sget-object v24, Lcom/motorola/Camera/CameraGlobalType;->sceneSettingV:[Ljava/lang/String;

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v15, v0, :cond_16

    .line 3824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v24

    sget-object v26, Lcom/motorola/Camera/CameraGlobalType;->sceneSettingV:[Ljava/lang/String;

    aget-object v26, v26, v15

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_16

    .line 3825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    sget-object v26, Lcom/motorola/Camera/CameraGlobalType;->sceneSettingV:[Ljava/lang/String;

    aget-object v26, v26, v15

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 3827
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v13

    .line 3830
    .local v13, s4:Landroid/hardware/Camera$Size;
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_17

    const-string v24, "MotoCamcorder"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "4 - initializeRecorder() - Setting Video Size to {"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v13, Landroid/hardware/Camera$Size;->width:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v13, Landroid/hardware/Camera$Size;->height:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "}"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3835
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v14

    .line 3838
    .local v14, s5:Landroid/hardware/Camera$Size;
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_18

    const-string v24, "MotoCamcorder"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "5 - initializeRecorder() - Setting Video Size to {"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v14, Landroid/hardware/Camera$Size;->width:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget v0, v14, Landroid/hardware/Camera$Size;->height:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "}"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3844
    .end local v13           #s4:Landroid/hardware/Camera$Size;
    .end local v14           #s5:Landroid/hardware/Camera$Size;
    .end local v15           #sceneMode:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_19

    .line 3846
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->updateEffects()V

    .line 3848
    :cond_19
    monitor-exit v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v24

    if-nez v24, :cond_1a

    .line 3851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v25, "mot-video-scaling-readout"

    const-string v26, "off"

    invoke-virtual/range {v24 .. v26}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3855
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->setVideoStabilization()V

    .line 3857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    const/16 v25, 0x5a

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 3859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3861
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_1b

    const-string v24, "MotoCamcorder"

    const-string v25, "setCameraParameters() - Exit"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3862
    :cond_1b
    return-void

    .line 3607
    .end local v3           #audioBitrate:I
    .end local v16           #shouldReadHAL:Z
    .end local v21           #videoBitrate:I
    .end local v23           #videoResolution:Ljava/lang/String;
    :cond_1c
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 3610
    :cond_1d
    :try_start_5
    sget-boolean v16, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadFrontParams:Z

    goto/16 :goto_1

    .line 3618
    .restart local v16       #shouldReadHAL:Z
    :cond_1e
    const/16 v24, 0x0

    sput-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadFrontParams:Z

    goto/16 :goto_2

    .line 3848
    .end local v16           #shouldReadHAL:Z
    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v24

    .line 3648
    .restart local v3       #audioBitrate:I
    .restart local v16       #shouldReadHAL:Z
    .restart local v21       #videoBitrate:I
    :catch_0
    move-exception v6

    .line 3650
    .local v6, e:Ljava/lang/NullPointerException;
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/Camcorder;->mFailSafe:Z

    move/from16 v24, v0

    if-nez v24, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v26, 0x70

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3651
    :cond_1f
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/motorola/Camera/Camcorder;->mFailSafe:Z

    .line 3652
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_20

    const-string v24, "MotoCamcorder"

    const-string v26, "Camacorder setup data missing. Defaulting to MMS video mode. BIG PROBLEM!!!"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    const-string v26, "320x240"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSensorVidResList(Ljava/lang/String;)V

    .line 3654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    const-string v26, "320x240"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setAESSensorVidResList(Ljava/lang/String;)V

    .line 3655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    const-string v26, "320x240"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 3656
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_5

    const-string v24, "MotoCamcorder"

    const-string v26, "setCurrentVideoRes = 320x240"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 3676
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v23       #videoResolution:Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v24

    const/16 v26, 0x9

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_23

    .line 3678
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_22

    const-string v24, "MotoCamcorder"

    const-string v26, "setCameraParameters() - setting our resolution to 320x240"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mVideoPreview:Lcom/motorola/Camera/View/CameraView;

    move-object/from16 v24, v0

    const/16 v26, 0x140

    const/16 v27, 0xf0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/CameraView;->setAspectRatio(II)V

    .line 3680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const/16 v26, 0x140

    const/16 v27, 0xf0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 3681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "video-size"

    const-string v27, "320x240"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    const-string v26, "320x240"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3685
    :cond_23
    if-nez v23, :cond_25

    .line 3688
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 3689
    .local v5, display:Landroid/view/Display;
    invoke-static/range {p0 .. p0}, Lcom/motorola/Camera/CameraUtility;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CameraUtility;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->getSortedListBasedOnLandscapeOrientation(Ljava/util/List;I)Ljava/util/List;

    move-result-object v9

    .line 3692
    .local v9, lv:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_24

    const-string v24, "MotoCamcorder"

    const-string v26, "setCameraParameters() - setting our resolution to max"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3693
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mVideoPreview:Lcom/motorola/Camera/View/CameraView;

    move-object/from16 v26, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v27, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v24, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/CameraView;->setAspectRatio(II)V

    .line 3694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v27, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v24, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 3695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v26, v0

    const-string v27, "video-size"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v28, "x"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3701
    .end local v5           #display:Landroid/view/Display;
    .end local v9           #lv:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_25
    sget-boolean v24, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v24, :cond_26

    const-string v24, "MotoCamcorder"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setCameraParameters() - setting our resolution to "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3702
    :cond_26
    invoke-static/range {v23 .. v23}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3703
    .local v18, temp:Ljava/lang/String;
    const-string v24, "x"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 3704
    .local v17, t:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mVideoPreview:Lcom/motorola/Camera/View/CameraView;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    aget-object v26, v17, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    const/16 v27, 0x1

    aget-object v27, v17, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/CameraView;->setAspectRatio(II)V

    .line 3705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    aget-object v26, v17, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    const/16 v27, 0x1

    aget-object v27, v17, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 3706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "video-size"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v28, 0x0

    aget-object v28, v17, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "x"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x1

    aget-object v28, v17, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3713
    .end local v17           #t:[Ljava/lang/String;
    .end local v18           #temp:Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "mot-wdr-video-mode"

    const-string v27, "off"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5

    .line 3727
    .restart local v20       #vidResforProfile:Ljava/lang/String;
    :cond_28
    move-object/from16 v20, v23

    goto/16 :goto_6

    .line 3735
    :cond_29
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mMotoCamcorderProfile:Lcom/motorola/Camera/MotoCamcorderProfile;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/MotoCamcorderProfile;->getAudioBitrate(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto/16 :goto_7

    .line 3747
    .restart local v8       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<[I>;"
    .restart local v12       #range:Ljava/util/List;,"Ljava/util/List<[I>;"
    .restart local v19       #tempRange:[I
    .restart local v22       #videoFPS:Ljava/lang/Integer;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getDefaultMinFPS()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1

    move-result v11

    goto/16 :goto_8

    .line 3768
    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<[I>;"
    .end local v12           #range:Ljava/util/List;,"Ljava/util/List<[I>;"
    .end local v19           #tempRange:[I
    .end local v20           #vidResforProfile:Ljava/lang/String;
    .end local v22           #videoFPS:Ljava/lang/Integer;
    :catch_1
    move-exception v6

    .line 3769
    .restart local v6       #e:Ljava/lang/NullPointerException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    sget-object v26, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_FRAMERATE:Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto/16 :goto_9

    .line 3785
    .end local v6           #e:Ljava/lang/NullPointerException;
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->updateWhiteBalances()V

    goto/16 :goto_a

    .line 3812
    :cond_2c
    const-string v24, "MotoCamcorder"

    const-string v26, " turning torch Off"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v24, v0

    const-string v26, "flash-mode"

    const-string v27, "off"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_b
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 3580
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

    const-string v2, "setPreviewDisplay() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3594
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamcorder"

    const-string v2, "setPreviewDisplay() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    :cond_1
    :goto_0
    return-void

    .line 3586
    :catch_0
    move-exception v0

    .line 3588
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "MotoCamcorder"

    const-string v2, "setPreviewDisplay() -Failed to set Preview Display; Closing Camera"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->closeCamera()V

    .line 3590
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setVideoStabilization()V
    .locals 2

    .prologue
    .line 5134
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5135
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoStabilization()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 5137
    :cond_0
    return-void
.end method

.method private showPostRecordingAlert()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 4293
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 4294
    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:showPostRecordingAlert:showPostRecordingAlert"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4296
    :cond_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->cancelRestartPreviewTimeout()V

    .line 4299
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getReviewTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    .line 4300
    .local v0, reviewTime:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 4302
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mPostText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4303
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 4307
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getReviewTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4308
    return-void
.end method

.method private showStorageToast()V
    .locals 4

    .prologue
    .line 2687
    const/4 v0, 0x0

    .line 2688
    .local v0, noStorageText:Ljava/lang/String;
    iget-wide v2, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    long-to-int v1, v2

    .line 2689
    .local v1, remaining:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2690
    const v2, 0x7f0b0011

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2696
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    .line 2697
    return-void

    .line 2691
    :cond_1
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 2692
    const v2, 0x7f0b0012

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 6
    .parameter "text"

    .prologue
    const/16 v5, 0x8a

    .line 2752
    if-nez p1, :cond_0

    .line 2766
    :goto_0
    return-void

    .line 2755
    :cond_0
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2759
    const v2, 0x7f0d00bb

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/widget/RotateLayout;

    .line 2760
    .local v1, v:Lcom/motorola/Camera/widget/RotateLayout;
    const v2, 0x7f0d00bc

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2761
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2762
    const/16 v2, 0x10e

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->setOrientation(I)V

    .line 2763
    const v2, 0x7f04000d

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2764
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->setVisibility(I)V

    .line 2765
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 2
    .parameter "msg"
    .parameter "duration"

    .prologue
    .line 2740
    const/4 v0, 0x0

    .line 2741
    .local v0, ts:Landroid/widget/Toast;
    if-nez p2, :cond_0

    .line 2742
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2747
    :goto_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2748
    return-void

    .line 2745
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    goto :goto_0
.end method

.method private startPreview()V
    .locals 10

    .prologue
    const/16 v9, 0x38

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3490
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    const-string v4, "MotoCamcorder"

    const-string v5, "startPreview() - Enter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    :cond_0
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v4, :cond_2

    .line 3494
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_1

    const-string v4, "MotoCamcorder"

    const-string v5, "startPreview() - mCameraDevice = null, opening"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3499
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3500
    invoke-static {}, Lcom/motorola/Camera/CameraHolder;->instance()Lcom/motorola/Camera/CameraHolder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/motorola/Camera/CameraHolder;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3514
    :cond_2
    :goto_0
    iget-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    if-eqz v4, :cond_5

    .line 3576
    :cond_3
    :goto_1
    return-void

    .line 3502
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/motorola/Camera/CameraHolder;->instance()Lcom/motorola/Camera/CameraHolder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/motorola/Camera/CameraHolder;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3505
    :catch_0
    move-exception v0

    .line 3507
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "MotoCamcorder"

    const-string v5, "startPreview() - failed to open camera"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 3517
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_5
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v4, :cond_7

    .line 3518
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->lock()V

    .line 3520
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    new-instance v5, Lcom/motorola/Camera/Camcorder$MotoCameraErrorCallback;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/motorola/Camera/Camcorder$MotoCameraErrorCallback;-><init>(Lcom/motorola/Camera/Camcorder;Lcom/motorola/Camera/Camcorder$1;)V

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 3523
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v5, 0x5a

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 3525
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3527
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mZoomChangeListener:Lcom/motorola/Camera/Camcorder$MotoCameraOnZoomChangeListener;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 3530
    :cond_6
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v4}, Lcom/motorola/Camera/Camcorder;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 3532
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v4

    if-nez v4, :cond_9

    .line 3533
    invoke-static {p0}, Lcom/motorola/Camera/CameraUtility;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CameraUtility;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4, v8, v5}, Lcom/motorola/Camera/CameraUtility;->setCameraDisplayOrientation(ILandroid/hardware/Camera;)I

    .line 3537
    :goto_2
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->setCameraParameters()V

    .line 3538
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadSliderData()V

    .line 3541
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 3542
    .local v2, params:Landroid/hardware/Camera$Parameters;
    const-string v4, "video-mode"

    sget-object v5, Lcom/motorola/Camera/CameraGlobalType;->videoModeSetting:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3543
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3547
    :try_start_2
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V

    .line 3548
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 3572
    .end local v2           #params:Landroid/hardware/Camera$Parameters;
    :cond_7
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v4, :cond_8

    .line 3573
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->unlock()V

    .line 3575
    :cond_8
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_3

    const-string v4, "MotoCamcorder"

    const-string v5, "startPreview() - Exit"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3535
    :cond_9
    invoke-static {p0}, Lcom/motorola/Camera/CameraUtility;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CameraUtility;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4, v7, v5}, Lcom/motorola/Camera/CameraUtility;->setCameraDisplayOrientation(ILandroid/hardware/Camera;)I

    goto :goto_2

    .line 3550
    .restart local v2       #params:Landroid/hardware/Camera$Parameters;
    :catch_1
    move-exception v1

    .line 3552
    .local v1, ex:Ljava/lang/Throwable;
    const-string v4, "MotoCamcorder"

    const-string v5, "startPreview() - failed to start preview"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3557
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "mot-camera-sdm-disabled"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3559
    .local v3, sdmStatus:Ljava/lang/String;
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->closeCamera()V

    .line 3560
    if-eqz v3, :cond_a

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3561
    const-string v4, "MotoCamcorder"

    const-string v5, "startPreview() - sdm enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 3566
    :cond_a
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method

.method private startStopRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3124
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    if-ne v0, v4, :cond_2

    .line 3126
    iget-wide v0, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 3128
    const v0, 0x7f0b0094

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    .line 3146
    :cond_0
    :goto_0
    return-void

    .line 3132
    :cond_1
    sput-boolean v4, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureInProgress:Z

    .line 3133
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->rightSetFadeOut()V

    .line 3134
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->startVideoRecording()V

    goto :goto_0

    .line 3137
    :cond_2
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 3139
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureInProgress:Z

    .line 3140
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecordingAndDisplayDialog()V

    goto :goto_0

    .line 3142
    :cond_3
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 3144
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private startVideoRecording()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4110
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    const-string v4, "MotoCamcorder"

    const-string v5, "startVideoRecording() - Enter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4112
    :cond_0
    iget-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    if-eqz v4, :cond_1

    .line 4114
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v4, :cond_1

    .line 4116
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v4}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 4117
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 4118
    iput-boolean v8, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    .line 4122
    :cond_1
    iget-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainerShowing:Z

    if-eqz v4, :cond_2

    .line 4124
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4125
    iput-boolean v8, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainerShowing:Z

    .line 4126
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 4129
    :cond_2
    iget v4, p0, Lcom/motorola/Camera/Camcorder;->batteryLevel:I

    const/4 v5, 0x5

    if-gt v4, v5, :cond_5

    .line 4131
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_3

    const-string v4, "MotoCamcorder"

    const-string v5, "CAN NOT start recording due to Low Battery!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4132
    :cond_3
    const v4, 0x7f0b0160

    invoke-virtual {p0, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    .line 4133
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4, v8}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordButton(Z)V

    .line 4271
    :cond_4
    :goto_0
    return-void

    .line 4137
    :cond_5
    iget v4, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    if-ne v4, v9, :cond_d

    .line 4140
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideSceneDialog()V

    .line 4142
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isCamcorderZoomSupported()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4144
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->showZoomControlSet()V

    .line 4147
    :cond_6
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideRightSet()V

    .line 4153
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAudioScenesSupported()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4154
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->setAudioSceneParameter()V

    .line 4157
    :cond_7
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->updateCodecAndFileFormatFromIntent()V

    .line 4159
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v4, :cond_8

    .line 4161
    const-string v4, "MotoCamcorder"

    const-string v5, "startVideoRecording() - Media recorder was never initialized... Trying to init now"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4163
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 4166
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->initializeRecorder()V

    .line 4171
    :cond_8
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4174
    :try_start_0
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_9

    const-string v4, "MotoCamcorder"

    const-string v5, "startVideoRecording() - Waiting for recorder to initialize"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4175
    :cond_9
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4183
    :cond_a
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 4184
    .local v2, mContext:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.music.musicservicecommand"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4185
    .local v1, i:Landroid/content/Intent;
    const-string v4, "command"

    const-string v5, "pause"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4186
    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4191
    :try_start_1
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterToneOn()Z

    move-result v4

    if-nez v4, :cond_c

    .line 4193
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v4, :cond_b

    .line 4194
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    .line 4197
    :cond_b
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 4200
    :cond_c
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 4201
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 4202
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->start()V

    .line 4207
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorderStopped:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4231
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAudioZoomOn()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 4232
    const-string v4, "MicZoomON"

    invoke-virtual {p0, v4}, Lcom/motorola/Camera/Camcorder;->setAudioZoomParameter(Ljava/lang/String;)V

    .line 4238
    :goto_2
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v3

    .line 4245
    .local v3, mCurrentScenes:I
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4, v9}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordButton(Z)V

    .line 4246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/motorola/Camera/Camcorder;->mRecordingStartTime:J

    .line 4248
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4, v8, v9}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideResolutionTextIcon(ZZ)V

    .line 4249
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->showVStabImage()V

    .line 4250
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 4251
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget-wide v5, p0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordingTime(JI)V

    .line 4252
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4, v9}, Lcom/motorola/Camera/View/Control/OnScreenController;->showRecordingTime(Z)V

    .line 4255
    iput v10, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    .line 4256
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 4257
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x29

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4260
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #mContext:Landroid/content/Context;
    .end local v3           #mCurrentScenes:I
    :cond_d
    iput-boolean v8, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    .line 4261
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v4, :cond_e

    .line 4263
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 4264
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v4, :cond_e

    .line 4265
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 4266
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 4270
    :cond_e
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_4

    const-string v4, "MotoCamcorder"

    const-string v5, "startVideoRecording() - Exit"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4176
    :catch_0
    move-exception v0

    .line 4177
    .local v0, e:Ljava/lang/InterruptedException;
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_f

    const-string v4, "MotoCamcorder"

    const-string v5, "thread join interrupted for mRecInitThread thread"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4178
    :cond_f
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 4210
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #i:Landroid/content/Intent;
    .restart local v2       #mContext:Landroid/content/Context;
    :catch_1
    move-exception v0

    .line 4212
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v4, "MotoCamcorder"

    const-string v5, "startVideoRecording() - Could not start media recorder for IllegalStateException. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4213
    const v4, 0x7f0b016d

    invoke-virtual {p0, v4}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    .line 4214
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateControllerinSoundRecord()V

    goto/16 :goto_0

    .line 4217
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 4219
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "MotoCamcorder"

    const-string v5, "startVideoRecording() - Could not start media recorder. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4220
    iput v8, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    .line 4222
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 4223
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 4235
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_10
    const-string v4, "MicZoomOFF"

    invoke-virtual {p0, v4}, Lcom/motorola/Camera/Camcorder;->setAudioZoomParameter(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private stopSmoothZoom()V
    .locals 4

    .prologue
    .line 830
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Zoom adjusting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_0
    iget v1, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    :cond_1
    iget-boolean v1, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    if-eqz v1, :cond_6

    .line 833
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 835
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->lock()V

    .line 842
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Previewing: + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_3
    iget-boolean v1, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    if-eqz v1, :cond_4

    .line 845
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopSmoothZoom()V

    .line 847
    :cond_4
    iget-boolean v1, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorderStopped:Z

    if-eqz v1, :cond_5

    .line 848
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->unlock()V

    .line 850
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    .line 852
    :cond_6
    return-void

    .line 836
    :catch_0
    move-exception v0

    .line 837
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopVideoRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4338
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 4339
    const-string v0, "MotoCamcorder"

    const-string v1, "stopVideoRecording() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4341
    const-string v0, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopVideoRecording() - mMediaRecorder :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4342
    const-string v0, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopVideoRecording() - mStatus :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4352
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_4

    .line 4354
    :cond_1
    invoke-virtual {p0, v3}, Lcom/motorola/Camera/Camcorder;->camcordermuteonoff(Z)V

    .line 4356
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamcorder"

    const-string v1, "stopVideoRecording() - starting mStopRecordingThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4358
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/motorola/Camera/Camcorder$7;

    invoke-direct {v1, p0}, Lcom/motorola/Camera/Camcorder$7;-><init>(Lcom/motorola/Camera/Camcorder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    .line 4399
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4400
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4401
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordButton(Z)V

    .line 4402
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideCaptureCluster()V

    .line 4404
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isSDEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4406
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/motorola/Camera/Camcorder$8;

    invoke-direct {v1, p0}, Lcom/motorola/Camera/Camcorder$8;-><init>(Lcom/motorola/Camera/Camcorder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4462
    :cond_3
    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    .line 4465
    :cond_4
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_5

    const-string v0, "MotoCamcorder"

    const-string v1, "stopVideoRecording() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4466
    :cond_5
    return-void
.end method

.method private stopVideoRecordingAndDisplayDialog()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 4275
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v1, "Camcorder:stopVideoRecordingAndDisplayDialog:stopVideoRecordingAndDisplayDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4276
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 4279
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v4, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideLocationTags(ZZ)V

    .line 4280
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v4, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideResolutionTextIcon(ZZ)V

    .line 4282
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideVStabImage()V

    .line 4283
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->setShowRemainTime(Z)V

    .line 4284
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget-wide v1, p0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordingTime(JI)V

    .line 4285
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 4286
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideZoomControlSet(Z)V

    .line 4287
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecording()V

    .line 4289
    :cond_1
    return-void
.end method

.method private toggleCamera()V
    .locals 9

    .prologue
    const/16 v8, 0x34

    const/4 v7, 0x0

    .line 978
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 982
    :try_start_0
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    const-string v4, "MotoCamcorder"

    const-string v5, "toggleCamera() - Waiting for recording to stop"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_0
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4, v7}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureResourceClickable(Z)V

    .line 991
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 992
    iput v7, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    .line 994
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->closeCamera()V

    .line 997
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->toggleCamSetting()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1048
    :goto_1
    return-void

    .line 984
    :catch_0
    move-exception v0

    .line 985
    .local v0, e:Ljava/lang/InterruptedException;
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_2

    const-string v4, "MotoCamcorder"

    const-string v5, "thread join interrupted for mStopRecording thread"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1000
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_4

    const-string v4, "MotoCamcorder"

    const-string v5, "Came settings toggled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_4
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v5

    .line 1005
    :try_start_1
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 1006
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z

    .line 1007
    const/4 v4, 0x0

    iput v4, p0, Lcom/motorola/Camera/Camcorder;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 1008
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentTimeLapse(I)V

    .line 1009
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1010
    iput-boolean v7, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    .line 1013
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mVideoPreview:Lcom/motorola/Camera/View/CameraView;

    invoke-virtual {v4, v7}, Lcom/motorola/Camera/View/CameraView;->setVisibility(I)V

    .line 1015
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->startPreview()V

    .line 1016
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v4, :cond_6

    .line 1017
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_5

    const-string v4, "MotoCamcorder"

    const-string v5, "toggleCamera() - startPreview failed, just return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_5
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x38

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1009
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1024
    :cond_6
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v5

    .line 1027
    :try_start_3
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1029
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSensorVidResList()Ljava/lang/String;

    move-result-object v3

    .line 1030
    .local v3, temp:Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1031
    .local v2, t:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v1, v2, v4

    .line 1032
    .local v1, newVidResolution:Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 1034
    .end local v1           #newVidResolution:Ljava/lang/String;
    .end local v2           #t:[Ljava/lang/String;
    .end local v3           #temp:Ljava/lang/String;
    :cond_7
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1035
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v4, :cond_8

    .line 1036
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1037
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1039
    :cond_8
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    sget v5, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual {v4, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->setZoomBarMax(I)V

    .line 1041
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 1042
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 1043
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->showZoomControlSet()V

    .line 1044
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4, v7}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordButton(Z)V

    .line 1045
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4, v7}, Lcom/motorola/Camera/View/Control/OnScreenController;->setDialogStatus(I)V

    .line 1046
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->updateRemainCount()V

    .line 1047
    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateSwitchCameraUI(Z)V

    goto/16 :goto_1

    .line 1034
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4
.end method

.method private updateCodecAndFileFormatFromIntent()V
    .locals 4

    .prologue
    .line 4908
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4909
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Codec"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4911
    const-string v1, "Codec"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    .line 4912
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 4913
    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camcorder:updateCodecAndFileFormatFromIntent:client set codec, codec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4914
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    const-string v2, "AMR/MPEG4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    const-string v2, "AAC/MPEG4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    const-string v2, "QCELP/MPEG4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4928
    :cond_1
    :goto_0
    const-string v1, "File.Format"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4929
    const-string v1, "File.Format"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->mFileFormat:Ljava/lang/String;

    .line 4930
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 4931
    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camcorder:updateCodecAndFileFormatFromIntent:client set file format, file format ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mFileFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4934
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    const-string v2, "3gp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    const-string v2, "mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    const-string v2, "3g2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4951
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    const-string v2, "QCELP/MPEG4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4952
    const-string v1, "3g2"

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->mFileFormat:Ljava/lang/String;

    .line 4955
    :cond_4
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    .line 4956
    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camcorder:updateCodecAndFileFormatFromIntent:final:codec ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " file format ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mFileFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4957
    :cond_5
    return-void

    .line 4918
    :cond_6
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_7

    .line 4919
    const-string v1, "MotoCamcorder"

    const-string v2, "Camcorder:updateCodecAndFileFormatFromIntent:client not set a valid codec, use default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4920
    :cond_7
    const-string v1, "AMR/MPEG4"

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    goto/16 :goto_0

    .line 4923
    :cond_8
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_9

    .line 4924
    const-string v1, "MotoCamcorder"

    const-string v2, "Camcorder:updateCodecAndFileFormatFromIntent:client not set codec, use default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4925
    :cond_9
    const-string v1, "AMR/MPEG4"

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCodec:Ljava/lang/String;

    goto/16 :goto_0

    .line 4938
    :cond_a
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_b

    .line 4939
    const-string v1, "MotoCamcorder"

    const-string v2, "Camcorder:updateCodecAndFileFormatFromIntent:client not set a valid codec, use default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4941
    :cond_b
    const-string v1, "3gp"

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->mFileFormat:Ljava/lang/String;

    goto :goto_1

    .line 4944
    :cond_c
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_d

    .line 4945
    const-string v1, "MotoCamcorder"

    const-string v2, "Camcorder:updateCodecAndFileFormatFromIntent:client not set file format, use default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4947
    :cond_d
    const-string v1, "3gp"

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->mFileFormat:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateRecordTime()V
    .locals 22

    .prologue
    .line 4963
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 4964
    .local v11, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mRecordingStartTime:J

    move-wide/from16 v18, v0

    sub-long v9, v11, v18

    .line 4965
    .local v9, delta:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v8

    .line 4966
    .local v8, currentVideoMode:I
    const-wide/16 v13, 0x0

    .line 4968
    .local v13, remainseconds:J
    const-string v17, ""

    .line 4970
    .local v17, text:Ljava/lang/String;
    const-wide/16 v3, 0x258

    .line 4971
    .local v3, EncryptionEnabledTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v3

    if-lez v18, :cond_0

    move-wide v5, v3

    .line 4973
    .local v5, Encryptionmodemax:J
    :goto_0
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    .line 4975
    .local v15, serviceModeMaxSeconds:J
    const/16 v18, 0xc

    move/from16 v0, v18

    if-ne v8, v0, :cond_3

    .line 4977
    sget-object v18, Lcom/motorola/Camera/CameraGlobalType;->VIDEO_CAPTURE_SLOW_MOTION_FRAMERATE:Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sget-object v19, Lcom/motorola/Camera/CameraGlobalType;->VIDEO_CAPTURE_FRAMERATE:Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    div-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v18, v18, v9

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 4978
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 4979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isSDEncryptionEnabled()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 4980
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v18, v0

    sub-long v13, v5, v18

    .line 4983
    :goto_1
    const-wide/16 v18, 0x1e

    cmp-long v18, v13, v18

    if-gtz v18, :cond_2

    const/high16 v7, -0x1

    .line 5032
    .local v7, color:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/Camera/View/Control/OnScreenController;->showRemainTime()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 5033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14, v7}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordingTime(JI)V

    .line 5043
    :goto_3
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-gtz v18, :cond_13

    .line 5045
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecordingAndDisplayDialog()V

    .line 5055
    :goto_4
    return-void

    .line 4971
    .end local v5           #Encryptionmodemax:J
    .end local v7           #color:I
    .end local v15           #serviceModeMaxSeconds:J
    :cond_0
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    goto :goto_0

    .line 4982
    .restart local v5       #Encryptionmodemax:J
    .restart local v15       #serviceModeMaxSeconds:J
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v20, v0

    sub-long v13, v18, v20

    goto :goto_1

    .line 4983
    :cond_2
    const/4 v7, -0x1

    goto :goto_2

    .line 4985
    :cond_3
    const/16 v18, 0xb

    move/from16 v0, v18

    if-ne v8, v0, :cond_6

    .line 4988
    const-wide/16 v18, 0x4

    div-long v18, v9, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 4989
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 4990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isSDEncryptionEnabled()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 4991
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v18, v0

    sub-long v13, v5, v18

    .line 4994
    :goto_5
    const-wide/16 v18, 0x3

    cmp-long v18, v13, v18

    if-gtz v18, :cond_5

    const/high16 v7, -0x1

    .restart local v7       #color:I
    :goto_6
    goto :goto_2

    .line 4993
    .end local v7           #color:I
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v20, v0

    sub-long v13, v18, v20

    goto :goto_5

    .line 4994
    :cond_5
    const/4 v7, -0x1

    goto :goto_6

    .line 4996
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    const/16 v18, 0x9

    move/from16 v0, v18

    if-ne v8, v0, :cond_b

    .line 4998
    :cond_7
    const-wide/16 v18, 0x3e8

    div-long v18, v9, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 4999
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/Camcorder;->mTimeLimitMs:I

    move/from16 v18, v0

    if-lez v18, :cond_8

    .line 5000
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/Camcorder;->mTimeLimitMs:I

    move/from16 v20, v0

    move/from16 v0, v20

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-lez v18, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/Camcorder;->mTimeLimitMs:I

    move/from16 v18, v0

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v15, v0

    .line 5002
    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v18, v0

    sub-long v13, v15, v18

    .line 5003
    const-wide/16 v18, 0xa

    cmp-long v18, v13, v18

    if-gtz v18, :cond_a

    const/high16 v7, -0x1

    .restart local v7       #color:I
    :goto_8
    goto/16 :goto_2

    .line 5000
    .end local v7           #color:I
    :cond_9
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    goto :goto_7

    .line 5003
    :cond_a
    const/4 v7, -0x1

    goto :goto_8

    .line 5006
    :cond_b
    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v8, v0, :cond_e

    .line 5008
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/motorola/Camera/Camcorder;->getTimeLapseVideoLength(J)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 5009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isSDEncryptionEnabled()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 5010
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v18, v0

    sub-long v13, v5, v18

    .line 5017
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/motorola/Camera/Camcorder;->getTimeLapseVideoLength(J)J

    move-result-wide v18

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/motorola/Camera/CameraGlobalTools;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v17

    .line 5019
    const-wide/16 v18, 0xa

    cmp-long v18, v13, v18

    if-gtz v18, :cond_d

    const/high16 v7, -0x1

    .restart local v7       #color:I
    :goto_a
    goto/16 :goto_2

    .line 5012
    .end local v7           #color:I
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v20, v0

    sub-long v13, v18, v20

    goto :goto_9

    .line 5019
    :cond_d
    const/4 v7, -0x1

    goto :goto_a

    .line 5023
    :cond_e
    const-wide/16 v18, 0x3e8

    div-long v18, v9, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    .line 5024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isSDEncryptionEnabled()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 5025
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v18, v0

    sub-long v13, v5, v18

    .line 5028
    :goto_b
    const-wide/16 v18, 0xa

    cmp-long v18, v13, v18

    if-gtz v18, :cond_10

    const/high16 v7, -0x1

    .restart local v7       #color:I
    :goto_c
    goto/16 :goto_2

    .line 5027
    .end local v7           #color:I
    :cond_f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v20, v0

    sub-long v13, v18, v20

    goto :goto_b

    .line 5028
    :cond_10
    const/4 v7, -0x1

    goto :goto_c

    .line 5035
    .restart local v7       #color:I
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 5036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordingTime(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 5038
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/motorola/Camera/Camcorder;->mrecordingElapsedTimeSeconds:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2, v7}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordingTime(JI)V

    goto/16 :goto_3

    .line 5049
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z

    move/from16 v18, v0

    if-nez v18, :cond_14

    .line 5050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x29

    const-wide/16 v20, 0x3e8

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 5052
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/Camcorder;->mTimeBetweenTimeLapseFrameCaptureMs:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4
.end method

.method private updateRemainCount()V
    .locals 9

    .prologue
    const v8, 0x7f0b0145

    const/4 v4, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4586
    const/4 v1, 0x0

    .line 4587
    .local v1, errorMessage:Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v6}, Lcom/motorola/Camera/View/Control/OnScreenController;->showRecordingTime(Z)V

    .line 4589
    sget-boolean v2, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-eqz v2, :cond_14

    .line 4591
    invoke-static {v5}, Lcom/motorola/Camera/CameraGlobalTools;->calcVideoTimeRemaining(Z)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    .line 4592
    invoke-static {v6}, Lcom/motorola/Camera/CameraGlobalTools;->calcVideoTimeRemaining(Z)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    .line 4594
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    if-eq v2, v7, :cond_0

    iget v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    if-ge v2, v5, :cond_3

    .line 4596
    :cond_0
    invoke-static {v5}, Lcom/motorola/Camera/CameraGlobalTools;->setStorageState(I)V

    .line 4607
    :goto_0
    const/4 v2, 0x4

    iput v2, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    .line 4609
    iget-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mIsInternalSD:Z

    if-eqz v2, :cond_b

    .line 4610
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    .line 4611
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    if-ne v2, v7, :cond_8

    .line 4613
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    if-ne v2, v7, :cond_6

    .line 4614
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0146

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4615
    iput v6, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    .line 4616
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    .line 4683
    :cond_1
    :goto_1
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    packed-switch v2, :pswitch_data_0

    .line 4702
    :goto_2
    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    .line 4708
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    .line 4709
    .local v0, currentVideoMode:I
    return-void

    .line 4598
    .end local v0           #currentVideoMode:I
    :cond_3
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    if-eq v2, v7, :cond_4

    iget v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    if-ge v2, v5, :cond_5

    .line 4600
    :cond_4
    invoke-static {v4}, Lcom/motorola/Camera/CameraGlobalTools;->setStorageState(I)V

    goto :goto_0

    .line 4604
    :cond_5
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->setStorageState(I)V

    goto :goto_0

    .line 4617
    :cond_6
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    if-ge v2, v5, :cond_7

    .line 4619
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4620
    iput v6, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    goto :goto_1

    .line 4623
    :cond_7
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0144

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4624
    iput v4, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    goto :goto_1

    .line 4627
    :cond_8
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    if-ge v2, v5, :cond_1

    .line 4629
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    if-ne v2, v7, :cond_9

    .line 4630
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0148

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4631
    iput v6, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    goto :goto_1

    .line 4632
    :cond_9
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    if-ge v2, v5, :cond_a

    .line 4634
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4635
    iput v6, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    goto :goto_1

    .line 4638
    :cond_a
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0144

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4639
    iput v4, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    goto :goto_1

    .line 4643
    :cond_b
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    .line 4644
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_c

    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "external externalVideolengthRemaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4645
    :cond_c
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    if-ne v2, v7, :cond_11

    .line 4648
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    if-ne v2, v7, :cond_f

    .line 4649
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0146

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4650
    iput v6, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    .line 4651
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    .line 4678
    :cond_d
    :goto_4
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_e

    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "internalVideolengthRemaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4679
    :cond_e
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "errorCase ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4652
    :cond_f
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    if-ge v2, v5, :cond_10

    .line 4654
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0148

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4655
    iput v6, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    goto :goto_4

    .line 4658
    :cond_10
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0147

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4659
    iput v5, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    goto :goto_4

    .line 4662
    :cond_11
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    if-ge v2, v5, :cond_d

    .line 4664
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_12

    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "external internalPicturesRemaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4666
    :cond_12
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    if-eq v2, v7, :cond_d

    .line 4668
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    if-ge v2, v5, :cond_13

    .line 4670
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4671
    iput v6, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    goto/16 :goto_4

    .line 4674
    :cond_13
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0143

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4675
    iput v5, p0, Lcom/motorola/Camera/Camcorder;->errorCase:I

    goto/16 :goto_4

    .line 4685
    :pswitch_0
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2, v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentStorageLocation(I)V

    .line 4686
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->internalVideolengthRemaining:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    .line 4687
    iput-boolean v5, p0, Lcom/motorola/Camera/Camcorder;->mIsInternalSD:Z

    .line 4689
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 4690
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->initializeRecorder()V

    goto/16 :goto_2

    .line 4693
    :pswitch_1
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentStorageLocation(I)V

    .line 4694
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->externalVideolengthRemaining:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    .line 4695
    iput-boolean v6, p0, Lcom/motorola/Camera/Camcorder;->mIsInternalSD:Z

    .line 4697
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 4698
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->initializeRecorder()V

    goto/16 :goto_2

    .line 4706
    :cond_14
    invoke-static {v5}, Lcom/motorola/Camera/CameraGlobalTools;->calcVideoTimeRemaining(Z)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    goto/16 :goto_3

    .line 4683
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateScenesEffects()V
    .locals 3

    .prologue
    .line 1429
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

    const-string v2, "updateScenesEffects() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v0

    .line 1433
    .local v0, sceneMode:I
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAudioScenesSupported()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1434
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->sceneSettingV:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1436
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v2, Lcom/motorola/Camera/CameraGlobalType;->sceneSettingV:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 1438
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1441
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1444
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->updateEffects()V

    .line 1445
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1447
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCamcorder"

    const-string v2, "updateScenesEffects() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_3
    return-void
.end method

.method private updateTorch()V
    .locals 3

    .prologue
    .line 956
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isTorchSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 958
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 959
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 960
    const-string v0, "MotoCamcorder"

    const-string v1, "updateTorch() turning torch On"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "flash-mode"

    const-string v2, "torch"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    :goto_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 967
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 968
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 973
    :goto_1
    return-void

    .line 963
    :cond_0
    const-string v0, "MotoCamcorder"

    const-string v1, "updateTorch() turning torch Off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "flash-mode"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 970
    :cond_1
    const-string v0, "MotoCamcorder"

    const-string v1, "Torch not enabled, cannot change value!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private videoSnapshot()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 858
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v6, :cond_1

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    iget-boolean v6, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorderStopped:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/motorola/Camera/Camcorder;->mPausing:Z

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    if-eqz v6, :cond_3

    .line 864
    :cond_2
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_0

    const-string v6, "MotoCamcorder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "in videoSnapshot return, mZoomAdjusting is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 870
    :cond_3
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 871
    .local v3, recordLocation:Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    invoke-virtual {v6}, Lcom/motorola/Camera/LocUtility;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    .line 875
    .local v2, loc:Landroid/location/Location;
    :cond_4
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 877
    if-eqz v2, :cond_5

    .line 878
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 879
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 881
    invoke-virtual {v2}, Landroid/location/Location;->hasAltitude()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 882
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 892
    :goto_1
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 893
    .local v4, utcTimeSeconds:J
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v4, v5}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 897
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "gps-processing-method"

    const-string v8, "Unknown"

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "mot-gps-map-datum"

    const-string v8, "Unknown"

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    .end local v4           #utcTimeSeconds:J
    :cond_5
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 904
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_6

    const-string v6, "MotoCamcorder"

    const-string v7, "stopping smooth zoom before capture"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_6
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopSmoothZoom()V

    .line 906
    const v6, 0x7f0d00bd

    invoke-virtual {p0, v6}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 907
    .local v1, fl:Landroid/widget/FrameLayout;
    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 908
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v6, v10}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideZoomControlSet(Z)V

    .line 911
    :try_start_0
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/motorola/Camera/View/Control/OnScreenController;->enableVideoSnapshotButton(Z)V

    .line 912
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    .line 913
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lcom/motorola/Camera/Camcorder$JpegPictureCallback;

    invoke-direct {v10, p0, v2}, Lcom/motorola/Camera/Camcorder$JpegPictureCallback;-><init>(Lcom/motorola/Camera/Camcorder;Landroid/location/Location;)V

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 914
    :catch_0
    move-exception v0

    .line 915
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_7

    const-string v6, "MotoCamcorder"

    const-string v7, "videoSnapshot() : take picture failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_7
    iput-boolean v11, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    .line 917
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v6, v11}, Lcom/motorola/Camera/View/Control/OnScreenController;->enableVideoSnapshotButton(Z)V

    .line 918
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v6}, Lcom/motorola/Camera/View/Control/OnScreenController;->showZoomControlSet()V

    .line 919
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 887
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #fl:Landroid/widget/FrameLayout;
    :cond_8
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto/16 :goto_1
.end method

.method private zoomTo(I)V
    .locals 3
    .parameter "zoom"

    .prologue
    .line 4088
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4106
    :cond_0
    :goto_0
    return-void

    .line 4091
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mRecInitThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4094
    :cond_2
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    if-eqz v0, :cond_0

    .line 4095
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSmoothZoom() - zoom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4096
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 4097
    iget-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    if-eqz v0, :cond_4

    .line 4098
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 4099
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    .line 4102
    :cond_4
    iget-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorderStopped:Z

    if-eqz v0, :cond_5

    .line 4103
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 4104
    :cond_5
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v1, "startSmoothZoom() exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method camcordermuteonoff(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 5058
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 5059
    const-string v0, "MotoCamcorder"

    const-string v1, "camcordermuteonoff:called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5061
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 5063
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    .line 5066
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 5067
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    const-string v1, "MUTE"

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 5073
    :cond_2
    :goto_0
    return-void

    .line 5069
    :cond_3
    if-nez p1, :cond_2

    .line 5071
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    const-string v1, "MUTE"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public launchCamera()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1745
    invoke-static {}, Lcom/motorola/Camera/CameraHolder;->instance()Lcom/motorola/Camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/Camera/CameraHolder;->keep()V

    .line 1746
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/motorola/Camera/Camera;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1747
    .local v0, picCamera:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1750
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->camPremium:Z

    if-eqz v2, :cond_0

    const-string v2, "Camtype"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1752
    :goto_0
    const-string v2, "CameraSensor"

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1753
    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camcorder;->startActivity(Landroid/content/Intent;)V

    .line 1755
    const/high16 v1, 0x10a

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/motorola/Camera/Camcorder;->overridePendingTransition(II)V

    .line 1756
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    .line 1757
    return-void

    .line 1751
    :cond_0
    const-string v2, "Camtype"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1752
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public launchCameraInMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1761
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/motorola/Camera/Camera;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1763
    .local v0, picCamera:Landroid/content/Intent;
    const/high16 v3, 0x1021

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1766
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->camPremium:Z

    if-eqz v3, :cond_0

    const-string v3, "Camtype"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1769
    :goto_0
    const-string v3, "CameraSensor"

    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1770
    const-string v1, "Mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1771
    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camcorder;->startActivity(Landroid/content/Intent;)V

    .line 1772
    invoke-virtual {p0, v2, v2}, Lcom/motorola/Camera/Camcorder;->overridePendingTransition(II)V

    .line 1773
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    .line 1774
    invoke-virtual {p0, v2, v2}, Lcom/motorola/Camera/Camcorder;->overridePendingTransition(II)V

    .line 1775
    return-void

    .line 1767
    :cond_0
    const-string v3, "Camtype"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1769
    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 2559
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2624
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2563
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mLastValidUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2564
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "LaunchMode"

    const-string v3, "camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2567
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camcorder;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2569
    :catch_0
    move-exception v0

    .line 2571
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const v2, 0x7f0b0070

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    .line 2573
    const-string v2, "MotoCamcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camcorder:onClick:Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mLastValidUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2581
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_2
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    .line 2582
    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:onClick:!!! enter retake !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    :cond_1
    iget-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v2, :cond_0

    .line 2584
    iget-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    if-nez v2, :cond_3

    .line 2585
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_2

    .line 2586
    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:onClick:!!! enter retake - is intent mode !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2592
    :cond_3
    invoke-direct {p0, v4}, Lcom/motorola/Camera/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    goto :goto_0

    .line 2599
    :pswitch_3
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_4

    .line 2600
    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:onClick:!!! enter attach !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    :cond_4
    iget-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v2, :cond_0

    .line 2602
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    .line 2603
    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:onClick:!!! enter attach - is intent mode!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    :cond_5
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/motorola/Camera/Camcorder;->doReturnToCaller(Z)V

    goto/16 :goto_0

    .line 2612
    :pswitch_4
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_6

    .line 2613
    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:onClick:!!! enter cancel !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    :cond_6
    iget-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v2, :cond_7

    .line 2616
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_7

    .line 2617
    const-string v2, "MotoCamcorder"

    const-string v3, "Camcorder:onClick:!!! enter cancel , is intent mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    :cond_7
    invoke-direct {p0, v4}, Lcom/motorola/Camera/Camcorder;->doReturnToCaller(Z)V

    goto/16 :goto_0

    .line 2559
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00c3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/16 v2, 0x34

    .line 3405
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 3408
    :cond_0
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3410
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v1, "onConfigurationChanged() - Restart Preview if the orientation has changed to landscape"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    :cond_1
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 3412
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->startPreview()V

    .line 3413
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3414
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3417
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->setOrientation(I)V

    .line 3418
    :cond_3
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/motorola/Camera/Camcorder;->mCurrentOrientation:I

    .line 3420
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3422
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->isWebtopMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3423
    const v0, 0x7f0b016c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3424
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    .line 3426
    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    .line 2181
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2183
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_0

    const-string v11, "MotoCamcorder"

    const-string v12, "onCreate() - Enter"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    :cond_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->isWebtopMode()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2186
    const v11, 0x7f0b016c

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 2187
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    .line 2376
    :cond_1
    :goto_0
    return-void

    .line 2191
    :cond_2
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camcorder;->setRequestedOrientation(I)V

    .line 2193
    const-string v11, "keyguard"

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/KeyguardManager;

    .line 2194
    .local v8, mKeyGuard:Landroid/app/KeyguardManager;
    invoke-virtual {v8}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2196
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_3

    .line 2197
    const-string v11, "MotoCamcorder"

    const-string v12, "Device is locked"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    :cond_3
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/motorola/Camera/Camcorder;->mIsSecurelyLockedModeVideoCaptureIntent:Z

    .line 2203
    :cond_4
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    check-cast v11, Lcom/motorola/Camera/Camcorder$MainHandler;

    invoke-virtual {v11, p0}, Lcom/motorola/Camera/Camcorder$MainHandler;->setActivityReference(Landroid/app/Activity;)V

    .line 2207
    invoke-static {p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v11

    iput-object v11, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 2210
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 2212
    .local v6, intent:Landroid/content/Intent;
    if-eqz v6, :cond_b

    .line 2213
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2214
    .local v1, data:Landroid/os/Bundle;
    if-eqz v1, :cond_a

    .line 2215
    const-string v11, "CameraSensor"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2216
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSpecificCamSetting(I)Z

    .line 2228
    .end local v1           #data:Landroid/os/Bundle;
    :goto_1
    const v11, 0x7f03002c

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camcorder;->setContentView(I)V

    .line 2231
    const v11, 0x7f0d0041

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/motorola/Camera/View/CameraView;

    iput-object v11, p0, Lcom/motorola/Camera/Camcorder;->mVideoPreview:Lcom/motorola/Camera/View/CameraView;

    .line 2234
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v12, 0x1

    invoke-virtual {v11, p0, v12}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 2235
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z

    .line 2236
    const/4 v11, 0x0

    iput v11, p0, Lcom/motorola/Camera/Camcorder;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 2237
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentTimeLapse(I)V

    .line 2239
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->isVideoCaptureIntent()Z

    move-result v11

    iput-boolean v11, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    .line 2240
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-boolean v12, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setServiceMode(Z)V

    .line 2242
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->isSecurelyLockedModeVideoCaptureIntent()Z

    move-result v11

    iput-boolean v11, p0, Lcom/motorola/Camera/Camcorder;->mIsSecurelyLockedModeVideoCaptureIntent:Z

    .line 2243
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-boolean v12, p0, Lcom/motorola/Camera/Camcorder;->mIsSecurelyLockedModeVideoCaptureIntent:Z

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSecurelyLockedMode(Z)V

    .line 2247
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/motorola/Camera/Camcorder$4;

    invoke-direct {v11, p0}, Lcom/motorola/Camera/Camcorder$4;-><init>(Lcom/motorola/Camera/Camcorder;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2253
    .local v10, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 2256
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iput-object v11, p0, Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    .line 2259
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mVideoPreview:Lcom/motorola/Camera/View/CameraView;

    invoke-virtual {v11}, Lcom/motorola/Camera/View/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    .line 2260
    .local v4, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v4, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2263
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 2265
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_5

    const-string v11, "MotoCamcorder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onCreate() - mIsVideoCaptureIntent is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 2272
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v11, 0x7f0d0040

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/motorola/Camera/View/CameraContentView;

    iput-object v11, p0, Lcom/motorola/Camera/Camcorder;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    .line 2273
    iget-object v9, p0, Lcom/motorola/Camera/Camcorder;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    .line 2275
    .local v9, main:Lcom/motorola/Camera/View/CameraContentView;
    const/4 v11, 0x1

    iput v11, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    .line 2276
    const-string v11, "MotoCamcorder"

    const-string v12, "onCreate about to inflate controller"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v11

    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/SaveHelper;->setContext(Landroid/content/Context;)V

    .line 2280
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/Camera/SaveHelper;->startService()V

    .line 2284
    const v11, 0x7f03001f

    :try_start_0
    invoke-virtual {v5, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/motorola/Camera/View/CameraContentView;

    move-object v9, v0

    .line 2285
    const v11, 0x7f0d0026

    invoke-virtual {v9, v11}, Lcom/motorola/Camera/View/CameraContentView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    iput-object v11, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    .line 2287
    const v11, 0x7f030011

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    iput-object v11, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;

    .line 2289
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    iget-object v12, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/View/CameraContentView;->addView(Landroid/view/View;)V

    .line 2290
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2312
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v11, p0}, Lcom/motorola/Camera/View/Control/OnScreenController;->setActivity(Landroid/app/Activity;)V

    .line 2315
    const v11, 0x7f0d0044

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/motorola/Camera/Camcorder;->mBlackout:Landroid/widget/ImageView;

    .line 2316
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mBlackout:Landroid/widget/ImageView;

    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v13, -0x100

    invoke-direct {v12, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2317
    const v11, 0x7f0d0047

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/motorola/Camera/Camcorder;->mPostText:Landroid/widget/TextView;

    .line 2319
    const v11, 0x7f0d00c0

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;

    .line 2320
    const v11, 0x7f0d00c2

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideoText:Landroid/widget/TextView;

    .line 2321
    const v11, 0x7f0d00c1

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ProgressBar;

    iput-object v11, p0, Lcom/motorola/Camera/Camcorder;->mSavingProgress:Landroid/widget/ProgressBar;

    .line 2324
    const-string v11, "location"

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/location/LocationManager;

    iput-object v11, p0, Lcom/motorola/Camera/Camcorder;->mLocationManager:Landroid/location/LocationManager;

    .line 2325
    new-instance v11, Lcom/motorola/Camera/LocUtility;

    iget-object v12, p0, Lcom/motorola/Camera/Camcorder;->mLocationManager:Landroid/location/LocationManager;

    invoke-direct {v11, p0, v12}, Lcom/motorola/Camera/LocUtility;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    iput-object v11, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    .line 2327
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v11}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v7

    .line 2329
    .local v7, locOn:Z
    const/4 v11, 0x1

    if-ne v7, v11, :cond_6

    .line 2331
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    iget-object v12, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/LocUtility;->startReceivingLocationUpdates(Landroid/os/Handler;)V

    .line 2336
    :cond_6
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget-object v12, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/motorola/Camera/View/Control/OnScreenController;->setParams(Landroid/os/Handler;Lcom/motorola/Camera/FocusManager;)V

    .line 2337
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2338
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    sget v12, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/View/Control/OnScreenController;->setZoomBarMax(I)V

    .line 2340
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v11}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isCamcorderZoomSupported()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 2341
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v11}, Lcom/motorola/Camera/View/Control/OnScreenController;->showZoomControlSet()V

    .line 2347
    :goto_2
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_7

    const-string v11, "MotoCamcorder"

    const-string v12, "About to join startpreview thread"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    :cond_7
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2357
    :goto_3
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v11, :cond_d

    .line 2359
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_8

    const-string v11, "MotoCamcorder"

    const-string v12, "onCreate() - startPreview failed, just return"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    :cond_8
    const v11, 0x7f0b0097

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    .line 2362
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 2363
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 2218
    .end local v4           #holder:Landroid/view/SurfaceHolder;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v7           #locOn:Z
    .end local v9           #main:Lcom/motorola/Camera/View/CameraContentView;
    .end local v10           #startPreviewThread:Ljava/lang/Thread;
    .restart local v1       #data:Landroid/os/Bundle;
    :cond_9
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSpecificCamSetting(I)Z

    goto/16 :goto_1

    .line 2221
    :cond_a
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSpecificCamSetting(I)Z

    goto/16 :goto_1

    .line 2224
    .end local v1           #data:Landroid/os/Bundle;
    :cond_b
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSpecificCamSetting(I)Z

    goto/16 :goto_1

    .line 2292
    .restart local v4       #holder:Landroid/view/SurfaceHolder;
    .restart local v5       #inflater:Landroid/view/LayoutInflater;
    .restart local v9       #main:Lcom/motorola/Camera/View/CameraContentView;
    .restart local v10       #startPreviewThread:Ljava/lang/Thread;
    :catch_0
    move-exception v2

    .line 2295
    .local v2, e:Landroid/view/InflateException;
    const-string v11, "MotoCamcorder"

    const-string v12, "onCreate() - InflateException!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    invoke-virtual {v2}, Landroid/view/InflateException;->printStackTrace()V

    .line 2297
    const v11, 0x7f0b0096

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    .line 2301
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2306
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 2307
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 2303
    :catch_1
    move-exception v11

    .line 2306
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 2307
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 2306
    :catchall_0
    move-exception v11

    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 2307
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 2344
    .end local v2           #e:Landroid/view/InflateException;
    .restart local v7       #locOn:Z
    :cond_c
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideZoomControlSet(Z)V

    goto/16 :goto_2

    .line 2353
    :catch_2
    move-exception v3

    .line 2354
    .local v3, ex:Ljava/lang/InterruptedException;
    const-string v11, "MotoCamcorder"

    const-string v12, "onCreate() - failed to join preview thread, ignoring..."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2368
    .end local v3           #ex:Ljava/lang/InterruptedException;
    :cond_d
    const/16 v11, 0x64

    iput v11, p0, Lcom/motorola/Camera/Camcorder;->batteryLevel:I

    .line 2372
    iget-object v11, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v11}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 2374
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->resetZoomDefault()V

    .line 2375
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_1

    const-string v11, "MotoCamcorder"

    const-string v12, "onCreate() - Exit"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 5155
    if-nez p1, :cond_0

    .line 5156
    new-instance v0, Lcom/motorola/Camera/Camcorder$CamcorderDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/motorola/Camera/Camcorder$CamcorderDialog;-><init>(Lcom/motorola/Camera/Camcorder;Landroid/content/Context;I)V

    .line 5160
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1784
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1785
    const-string v0, "MotoCamcorder"

    const-string v1, "onCreateOptionsMenu() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1791
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2934
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2936
    const-string v0, "MotoCamcorder"

    const-string v1, "onDestroy() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    if-eqz v0, :cond_1

    .line 2940
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    invoke-virtual {v0}, Lcom/motorola/Camera/LocUtility;->stopReceivingLocationUpdates()V

    .line 2941
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    invoke-virtual {v0}, Lcom/motorola/Camera/LocUtility;->destroy()V

    .line 2942
    iput-object v2, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    .line 2945
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0, p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->resetContext(Landroid/content/Context;)V

    .line 2946
    :cond_2
    iput-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 2948
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mStorageLocationAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 2949
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mStorageLocationAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2950
    iput-object v2, p0, Lcom/motorola/Camera/Camcorder;->mStorageLocationAlert:Landroid/app/AlertDialog;

    .line 2953
    :cond_3
    iput-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    .line 2954
    iput-object v2, p0, Lcom/motorola/Camera/Camcorder;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    .line 2956
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2957
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 2662
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError() callback from  MediaRecorder Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 2664
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v1, "onError() stopVideo recording and release mediarecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2667
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecording()V

    .line 2669
    :cond_2
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 2672
    :cond_3
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 2676
    const/16 v0, 0x320

    if-ne p2, v0, :cond_2

    .line 2677
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v1, "Got Info callback from  MediaRecorder MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    :cond_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecordingAndDisplayDialog()V

    .line 2684
    :cond_1
    :goto_0
    return-void

    .line 2679
    :cond_2
    const/16 v0, 0x321

    if-ne p2, v0, :cond_1

    .line 2681
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCamcorder"

    const-string v1, "Got Info callback from  MediaRecorder MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    :cond_3
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecordingAndDisplayDialog()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 3152
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoCamcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyDown: + keyCode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    :cond_0
    iget v3, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 3328
    :cond_1
    :goto_0
    return v2

    .line 3161
    :cond_2
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_3

    .line 3162
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 3165
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 3326
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 3169
    :sswitch_0
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->getSettingSecondaryDialog()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3171
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->closeSettingSecondaryDialog()V

    goto :goto_0

    .line 3175
    :cond_4
    iget-boolean v3, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    if-eqz v3, :cond_5

    .line 3177
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v3, :cond_5

    .line 3179
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v3}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 3180
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 3181
    iput-boolean v7, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    goto :goto_0

    .line 3186
    :cond_5
    iget-boolean v3, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainerShowing:Z

    if-eqz v3, :cond_6

    .line 3188
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3189
    iput-boolean v7, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainerShowing:Z

    .line 3190
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    goto :goto_0

    .line 3194
    :cond_6
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->isPopupDialogOpen()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3196
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3, v2, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->closePopupDialog(ZZ)V

    .line 3197
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3, v7}, Lcom/motorola/Camera/View/Control/OnScreenController;->setDialogStatus(I)V

    goto :goto_0

    .line 3201
    :cond_7
    iget v3, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_a

    .line 3203
    iget-boolean v3, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-nez v3, :cond_8

    .line 3205
    invoke-direct {p0, v2}, Lcom/motorola/Camera/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    goto :goto_0

    .line 3209
    :cond_8
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->getCaptureVideoUriFromIntent()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_9

    .line 3212
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mLastValidFileName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3215
    .local v1, f:Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3223
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/motorola/Camera/Camcorder;->mLastValidUri:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3228
    .end local v1           #f:Ljava/io/File;
    :cond_9
    :goto_2
    invoke-direct {p0, v7}, Lcom/motorola/Camera/Camcorder;->doReturnToCaller(Z)V

    goto/16 :goto_0

    .line 3217
    .restart local v1       #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 3219
    .local v0, e:Ljava/lang/SecurityException;
    const-string v3, "MotoCamcorder"

    const-string v4, "Security exception deleting file!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3224
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 3225
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MotoCamcorder"

    const-string v4, "Camcorder:onClick Back: file Delete failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3234
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #f:Ljava/io/File;
    :cond_a
    iget v3, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    if-ne v3, v2, :cond_b

    .line 3235
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_b

    .line 3237
    :try_start_2
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3242
    :goto_3
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 3243
    iput-boolean v7, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    .line 3244
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentExpValue(Ljava/lang/String;)V

    .line 3253
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 3255
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 3257
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->startStopRecording()V

    goto/16 :goto_0

    .line 3261
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 3262
    iget v3, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    if-ne v3, v2, :cond_d

    .line 3263
    iget-wide v3, p0, Lcom/motorola/Camera/Camcorder;->mVideoRemainingSecond:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_c

    .line 3264
    const v3, 0x7f0b0094

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3266
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/motorola/Camera/Camcorder;->mTime2Idle:J

    add-long/2addr v5, v8

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 3270
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->rightSetFadeOut()V

    .line 3271
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 3272
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->startVideoRecording()V

    goto/16 :goto_0

    .line 3274
    :cond_d
    iget v3, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    if-ne v3, v6, :cond_1

    .line 3275
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/motorola/Camera/Camcorder;->mRecordingStartTime:J

    add-long/2addr v5, v8

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 3279
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecordingAndDisplayDialog()V

    goto/16 :goto_0

    .line 3287
    :sswitch_3
    iget v3, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    if-ne v3, v2, :cond_e

    .line 3289
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->setMenuPress()V

    .line 3291
    :cond_e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3294
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 3296
    :sswitch_4
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVolumeKeySetting()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 3299
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3301
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isCamcorderZoomSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3302
    const-string v3, "MotoCamcorder"

    const-string v4, "onKey Volume down -- zoom out"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3303
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3308
    :sswitch_5
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVolumeKeySetting()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 3313
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3315
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isCamcorderZoomSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3316
    const-string v3, "MotoCamcorder"

    const-string v4, "onKey Volume up -- zoom int"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3323
    :sswitch_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 3239
    :catch_2
    move-exception v2

    goto/16 :goto_3

    .line 3165
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x15 -> :sswitch_6
        0x16 -> :sswitch_6
        0x17 -> :sswitch_2
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0x1b -> :sswitch_1
        0x52 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3333
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 3334
    const-string v0, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp: + keyCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 3336
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/Camera/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 3337
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 3338
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3339
    packed-switch p1, :pswitch_data_0

    .line 3354
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 3343
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVolumeKeySetting()I

    move-result v0

    if-nez v0, :cond_3

    .line 3344
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isCamcorderZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    if-nez v0, :cond_2

    .line 3345
    const-string v0, "MotoCamcorder"

    const-string v1, "onKey up -- stop zoom"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3351
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3349
    :cond_3
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->startStopRecording()V

    goto :goto_1

    .line 3339
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 8

    .prologue
    const/16 v7, 0x16

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 2781
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamcorder"

    const-string v3, "onPause() - Enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    :cond_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->restoreBrightness()V

    .line 2784
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2787
    iput-boolean v6, p0, Lcom/motorola/Camera/Camcorder;->mPausing:Z

    .line 2789
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    .line 2791
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2792
    iput-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainerShowing:Z

    .line 2793
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 2796
    :cond_1
    iget-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    if-eqz v2, :cond_2

    .line 2798
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v2, :cond_2

    .line 2800
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v2}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 2801
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 2802
    iput-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    .line 2815
    :cond_2
    iget-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    if-eqz v2, :cond_3

    .line 2817
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v2, :cond_3

    .line 2819
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v2}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 2820
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 2821
    iput-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    .line 2826
    :cond_3
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->isPopupDialogOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2827
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v4, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->closePopupDialog(ZZ)V

    .line 2831
    :cond_4
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    if-eqz v2, :cond_5

    .line 2833
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    invoke-virtual {v2}, Lcom/motorola/Camera/LocUtility;->stopReceivingLocationUpdates()V

    .line 2837
    :cond_5
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    if-ne v2, v5, :cond_6

    .line 2839
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecording()V

    .line 2844
    :cond_6
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2847
    :try_start_0
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_7

    const-string v2, "MotoCamcorder"

    const-string v3, "onPause() - Waiting for recording to stop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    :cond_7
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2855
    :cond_8
    :goto_0
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    .line 2857
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mSavingVideo:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2860
    :cond_9
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2861
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_a

    .line 2862
    const-string v2, "MotoCamcorder"

    const-string v3, "onPause(): Pending DISPLAY_VIDEO_POSTVIEW"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    :cond_a
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2864
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 2866
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 2867
    .local v0, broadUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 2879
    .end local v0           #broadUri:Landroid/net/Uri;
    :cond_b
    :goto_1
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_c

    const-string v2, "MotoCamcorder"

    const-string v3, "onPause() mVideoCaptureInProgress set false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    :cond_c
    sput-boolean v4, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureInProgress:Z

    .line 2883
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V

    .line 2884
    iget v2, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_d

    .line 2885
    iput v6, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    .line 2889
    :cond_d
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->closeCamera()V

    .line 2892
    iget-boolean v2, p0, Lcom/motorola/Camera/Camcorder;->mDidRegister:Z

    if-eqz v2, :cond_e

    .line 2894
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camcorder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2895
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->windReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camcorder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2896
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camcorder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2897
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->disableCallStateListener()V

    .line 2898
    iput-boolean v4, p0, Lcom/motorola/Camera/Camcorder;->mDidRegister:Z

    .line 2901
    :cond_e
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2902
    invoke-direct {p0, v4}, Lcom/motorola/Camera/Camcorder;->dismissToast(Z)V

    .line 2905
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->deleteDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2907
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 2908
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/Camera/Camcorder;->deleteDialog:Landroid/app/AlertDialog;

    .line 2911
    :cond_f
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideSceneDialog()V

    .line 2913
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->resetFilter()V

    .line 2914
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v2, :cond_10

    .line 2916
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->getToolbarOpenState()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setToolbarOpenStatus(Z)V

    .line 2920
    :cond_10
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v2

    if-nez v2, :cond_11

    .line 2921
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->save()V

    .line 2924
    :cond_11
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->interruptThumbnailThread()V

    .line 2926
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->clearMessageQueue()V

    .line 2928
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_12

    const-string v2, "MotoCamcorder"

    const-string v3, "onPause() - Exit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    :cond_12
    return-void

    .line 2849
    :catch_0
    move-exception v1

    .line 2850
    .local v1, e:Ljava/lang/InterruptedException;
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_13

    const-string v2, "MotoCamcorder"

    const-string v3, "thread join interrupted for mStopRecording thread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    :cond_13
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 2871
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_14
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_b

    .line 2872
    const-string v2, "MotoCamcorder"

    const-string v3, "onPause: video path is null, will not send the URI to scanner "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2875
    :cond_15
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2876
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_16

    const-string v2, "MotoCamcorder"

    const-string v3, "onPause() hideVideoFrameAndStartPreview"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    :cond_16
    invoke-direct {p0, v4}, Lcom/motorola/Camera/Camcorder;->hideVideoFrameAndStartPreview(Z)V

    goto/16 :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1796
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1798
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1799
    const-string v0, "MotoCamcorder"

    const-string v1, "onPrepareOptionsMenu() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 12

    .prologue
    const v11, 0x7f0b0005

    const/16 v10, 0x80

    const/16 v9, 0x34

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2419
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2421
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_0

    const-string v5, "MotoCamcorder"

    const-string v8, "onResume() - Enter"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    :cond_0
    sput-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadFrontParams:Z

    .line 2424
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5, p0, v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 2426
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2427
    .local v1, currentConfig:Landroid/content/res/Configuration;
    iget v5, v1, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/motorola/Camera/Camcorder;->mCurrentOrientation:I

    .line 2428
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget v8, p0, Lcom/motorola/Camera/Camcorder;->mCurrentOrientation:I

    invoke-virtual {v5, v8}, Lcom/motorola/Camera/View/Control/OnScreenController;->setOrientation(I)V

    .line 2432
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 2433
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_4

    .line 2435
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2436
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v6}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;I)V

    .line 2440
    :goto_0
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_1

    .line 2441
    const-string v5, "MotoCamcorder"

    const-string v6, "onResume() - In call, cancelling launch of Camcorder"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    :cond_1
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 2445
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    .line 2556
    :cond_2
    :goto_1
    return-void

    .line 2438
    :cond_3
    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 2450
    :cond_4
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mVideoPreview:Lcom/motorola/Camera/View/CameraView;

    invoke-virtual {v5, v7}, Lcom/motorola/Camera/View/CameraView;->setVisibility(I)V

    .line 2452
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setDefaultZoomValue()V

    .line 2454
    iput-boolean v7, p0, Lcom/motorola/Camera/Camcorder;->mPausing:Z

    .line 2455
    iput-boolean v7, p0, Lcom/motorola/Camera/Camcorder;->mZoomAdjusting:Z

    .line 2456
    iput-boolean v7, p0, Lcom/motorola/Camera/Camcorder;->mCamSettingsChanging:Z

    .line 2457
    iput-boolean v6, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorderStopped:Z

    .line 2459
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->addFlags(I)V

    .line 2462
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v5}, Lcom/motorola/Camera/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 2463
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v5}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 2464
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/Window;->addFlags(I)V

    .line 2467
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2469
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2470
    const-string v5, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2471
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2472
    const-string v5, "file"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2473
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/motorola/Camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2475
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v5, Lcom/motorola/Camera/Camcorder;->WIND_NOISE:Ljava/lang/String;

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2476
    .local v0, WindIntent:Landroid/content/IntentFilter;
    sget-object v5, Lcom/motorola/Camera/Camcorder;->WIND_NOISE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2477
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->windReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/motorola/Camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2478
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2479
    .local v3, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2480
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->batteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/motorola/Camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2482
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->enableCallStateListener()V

    .line 2484
    iput-boolean v6, p0, Lcom/motorola/Camera/Camcorder;->mDidRegister:Z

    .line 2487
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->isVideoCaptureIntent()Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setServiceMode(Z)V

    .line 2488
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->isSecurelyLockedModeVideoCaptureIntent()Z

    move-result v8

    invoke-virtual {v5, v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSecurelyLockedMode(Z)V

    .line 2490
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v5

    if-ne v6, v5, :cond_5

    .line 2491
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    iget-object v8, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Lcom/motorola/Camera/LocUtility;->startReceivingLocationUpdates(Landroid/os/Handler;)V

    .line 2495
    :cond_5
    iget-boolean v5, p0, Lcom/motorola/Camera/Camcorder;->mPreviewing:Z

    if-nez v5, :cond_6

    .line 2497
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->startPreview()V

    .line 2500
    :cond_6
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v5, :cond_8

    .line 2501
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_7

    const-string v5, "MotoCamcorder"

    const-string v6, "onResume() - startPreview failed, just return"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    :cond_7
    const v5, 0x7f0b0097

    invoke-virtual {p0, v5}, Lcom/motorola/Camera/Camcorder;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/motorola/Camera/Camcorder;->showToast(Ljava/lang/String;)V

    .line 2504
    invoke-static {}, Lcom/motorola/Camera/SaveHelper;->getInstance()Lcom/motorola/Camera/SaveHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/Camera/SaveHelper;->stopService()V

    .line 2505
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->finish()V

    goto/16 :goto_1

    .line 2509
    :cond_8
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v5, :cond_9

    .line 2511
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 2512
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2515
    :cond_9
    sget-boolean v5, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-eqz v5, :cond_a

    .line 2517
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageLocation()I

    move-result v5

    if-eq v5, v6, :cond_d

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/motorola/Camera/Camcorder;->mIsInternalSD:Z

    .line 2518
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSDPlug()Z

    move-result v5

    if-nez v5, :cond_a

    .line 2519
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->checkExternalSDCardFirstTime()V

    .line 2523
    :cond_a
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_b

    const-string v5, "MotoCamcorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onResume() - mStatus is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    :cond_b
    iget v5, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v8, 0x6

    if-eq v5, v8, :cond_c

    .line 2527
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->updateRemainCount()V

    .line 2529
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 2530
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v5, v6}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2531
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v5, v7}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordButton(Z)V

    .line 2532
    iget-object v8, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget-boolean v5, p0, Lcom/motorola/Camera/Camcorder;->mMediaRecorderStopped:Z

    if-nez v5, :cond_e

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureResourceClickable(Z)V

    .line 2533
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideVStabImage()V

    .line 2534
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 2535
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCaptureCluster()V

    .line 2536
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    sget v8, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual {v5, v8}, Lcom/motorola/Camera/View/Control/OnScreenController;->setZoomBarMax(I)V

    .line 2538
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v5, :cond_c

    .line 2539
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isCamcorderZoomSupported()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2540
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->showZoomControlSet()V

    .line 2550
    :cond_c
    :goto_4
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->interruptThumbnailThread()V

    .line 2551
    new-instance v5, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6, v7}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;-><init>(Lcom/motorola/Camera/Camcorder;Landroid/graphics/Bitmap;Z)V

    iput-object v5, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    .line 2552
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    invoke-virtual {v5}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->start()V

    .line 2554
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->changeBrightness()V

    .line 2555
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_2

    const-string v5, "MotoCamcorder"

    const-string v6, "onResume() - Exit"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    move v5, v7

    .line 2517
    goto/16 :goto_2

    :cond_e
    move v5, v7

    .line 2532
    goto :goto_3

    .line 2543
    :cond_f
    iget-object v5, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v5, v6}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideZoomControlSet(Z)V

    goto :goto_4
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 1779
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 2413
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2414
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 2775
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2776
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 3359
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

    const-string v2, "Camcorder:onTouchEvent:START"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3360
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/motorola/Camera/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 3361
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 3362
    invoke-virtual {p0}, Lcom/motorola/Camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 3364
    iget-boolean v1, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    if-eqz v1, :cond_1

    .line 3366
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v1, :cond_1

    .line 3368
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v1}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 3369
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 3370
    iput-boolean v3, p0, Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z

    .line 3389
    :goto_0
    return v0

    .line 3375
    :cond_1
    iget-boolean v1, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainerShowing:Z

    if-eqz v1, :cond_2

    .line 3377
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3378
    iput-boolean v3, p0, Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainerShowing:Z

    .line 3379
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    goto :goto_0

    .line 3383
    :cond_2
    iget v1, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    if-ne v1, v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 3385
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->toggleMediaControlsVisibility()V

    goto :goto_0

    .line 3389
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 5141
    if-eqz p1, :cond_0

    .line 5142
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->isSecurelyLockedModeVideoCaptureIntent()Z

    move-result v0

    .line 5143
    .local v0, newLockMode:Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/motorola/Camera/Camcorder;->mIsSecurelyLockedModeVideoCaptureIntent:Z

    if-eq v1, v0, :cond_0

    .line 5144
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v2

    .line 5145
    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mIsSecurelyLockedModeVideoCaptureIntent:Z

    .line 5146
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-boolean v3, p0, Lcom/motorola/Camera/Camcorder;->mIsSecurelyLockedModeVideoCaptureIntent:Z

    invoke-virtual {v1, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSecurelyLockedMode(Z)V

    .line 5147
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5148
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->interruptThumbnailThread()V

    .line 5149
    new-instance v1, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;-><init>(Lcom/motorola/Camera/Camcorder;Landroid/graphics/Bitmap;Z)V

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    .line 5150
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->updateThumbnailThread:Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->start()V

    .line 5153
    .end local v0           #newLockMode:Z
    :cond_0
    return-void

    .line 5147
    .restart local v0       #newLockMode:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setAudioSceneParameter()V
    .locals 6

    .prologue
    .line 1702
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoCamcorder"

    const-string v4, "setAudioSceneParameter() - Enter"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    :cond_0
    const-string v2, "motoVideoRecAudioSceneConfig"

    .line 1705
    .local v2, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v3, :cond_1

    .line 1706
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    .line 1709
    :cond_1
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v1

    .line 1710
    .local v1, currentScene:I
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getAudioScenesValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1712
    .local v0, currentAudioScene:Ljava/lang/String;
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_2

    const-string v3, "MotoCamcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioSceneValues"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    :cond_2
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/motorola/Camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-nez v3, :cond_3

    .line 1717
    iget-object v3, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1718
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_3

    const-string v3, "MotoCamcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Audio Scene Modes : Updating.. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    :cond_3
    return-void
.end method

.method public setAudioZoomParameter(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 1673
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

    const-string v2, "setAudioZoomParameter() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :cond_0
    const-string v0, "motoVideoRecAudioSceneConfig"

    .line 1676
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v1, :cond_1

    .line 1677
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    .line 1680
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v1, :cond_2

    .line 1681
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mAudioMgr:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1682
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioZoomParameter Mode : Updating.. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_2
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCamcorder"

    const-string v2, "setAudioZoomParameter() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    :cond_3
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/16 v3, 0x34

    .line 3430
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged() - Enter ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3433
    const-string v0, "MotoCamcorder"

    const-string v1, "surfaceChanged() - getSurface() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    :cond_1
    :goto_0
    return-void

    .line 3437
    :cond_2
    iget-boolean v0, p0, Lcom/motorola/Camera/Camcorder;->mPausing:Z

    if-nez v0, :cond_1

    .line 3441
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_3

    .line 3443
    const-string v0, "MotoCamcorder"

    const-string v1, "surfaceChanged() - mCameraDevice == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3447
    :cond_3
    iget v0, p0, Lcom/motorola/Camera/Camcorder;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 3448
    invoke-direct {p0}, Lcom/motorola/Camera/Camcorder;->stopVideoRecording()V

    .line 3450
    :cond_4
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3451
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 3453
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_5

    .line 3454
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 3456
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camcorder;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 3459
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_6

    .line 3460
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 3464
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3465
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3467
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v1, "surfaceChanged() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 3472
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v1, "surfaceCreated() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3474
    :cond_0
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 3476
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v1, "surfaceCreated() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 3481
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamcorder"

    const-string v1, "surfaceDestroyed() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3483
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 3485
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamcorder"

    const-string v1, "surfaceDestroyed() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    :cond_1
    return-void
.end method

.method public updateAudioZoom()V
    .locals 5

    .prologue
    .line 1688
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v1

    int-to-float v0, v1

    .line 1690
    .local v0, curZoom:F
    float-to-double v1, v0

    const-wide/high16 v3, 0x4008

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 1691
    const-string v1, "MicZoom4"

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camcorder;->setAudioZoomParameter(Ljava/lang/String;)V

    .line 1699
    :goto_0
    return-void

    .line 1692
    :cond_0
    float-to-double v1, v0

    const-wide/high16 v3, 0x4000

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 1693
    const-string v1, "MicZoom3"

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camcorder;->setAudioZoomParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1694
    :cond_1
    float-to-double v1, v0

    const-wide/high16 v3, 0x3ff0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 1695
    const-string v1, "MicZoom2"

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camcorder;->setAudioZoomParameter(Ljava/lang/String;)V

    goto :goto_0

    .line 1697
    :cond_2
    const-string v1, "MicZoom1"

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camcorder;->setAudioZoomParameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateEffects()V
    .locals 4

    .prologue
    .line 1470
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentEffect()I

    move-result v0

    .line 1471
    .local v0, colorEffect:I
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEffects() - ColorEffect is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportEffectsValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1474
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportEffectsValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1476
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamcorder"

    const-string v2, "updateEffects() - ColorEffect is sent to engine"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportEffectsValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 1480
    :cond_2
    return-void
.end method

.method public updateWhiteBalances()V
    .locals 4

    .prologue
    .line 1452
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentWhiteBalance()I

    move-result v0

    .line 1453
    .local v0, whiteBalance:I
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWhiteBalances() - WhiteBalance is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedWhiteBalancesValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1456
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedWhiteBalancesValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1458
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamcorder"

    const-string v2, "updateWhiteBalances() - WhiteBalance is sent to engine"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedWhiteBalancesValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1462
    :cond_2
    return-void
.end method
