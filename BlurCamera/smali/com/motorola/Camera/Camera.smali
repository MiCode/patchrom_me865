.class public Lcom/motorola/Camera/Camera;
.super Landroid/app/Activity;
.source "Camera.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/motorola/Camera/FocusManager$FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/Camera$CameraDialog;,
        Lcom/motorola/Camera/Camera$MotoCameraOnZoomChangeListener;,
        Lcom/motorola/Camera/Camera$MotoCameraErrorCallback;,
        Lcom/motorola/Camera/Camera$MotoEnvCallback;,
        Lcom/motorola/Camera/Camera$MotoCameraAutoFocusCallback;,
        Lcom/motorola/Camera/Camera$JpegPictureCallback;,
        Lcom/motorola/Camera/Camera$PostViewPictureCallback;,
        Lcom/motorola/Camera/Camera$BurstJpegPictureCallback;,
        Lcom/motorola/Camera/Camera$PanoramaPictureCallback;,
        Lcom/motorola/Camera/Camera$PanoramaDirectionInfoCallback;,
        Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;,
        Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;,
        Lcom/motorola/Camera/Camera$PanoramaShutterCallback;,
        Lcom/motorola/Camera/Camera$PanoramaErrorCallback;,
        Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;,
        Lcom/motorola/Camera/Camera$storageRunnable;,
        Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;,
        Lcom/motorola/Camera/Camera$storeImageRunnable;,
        Lcom/motorola/Camera/Camera$ImageCapture;,
        Lcom/motorola/Camera/Camera$MainHandler;,
        Lcom/motorola/Camera/Camera$Capturer;
    }
.end annotation


# static fields
.field private static final ACTION_IMAGE_CAPTURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE"

.field public static final ACTION_QUICK_LAUNCH_APP_FAILED:Ljava/lang/String; = "com.motorola.internal.intent.action.QUICK_LAUNCH_APP_FAILED"

.field private static final AUTOTIMER_RES_BUFFER:I = 0xa

.field private static final AUTO_FOCUS:I = 0x1

.field public static final CAMERA_TASK_FLATTENNAME:Ljava/lang/String; = "com.motorola.Camera"

.field private static final CONTINUOUS_FOCUS:I = 0x0

.field public static final EXTRA_QL_APP_NAME:Ljava/lang/String; = "com.motorola.internal.intent.extra.APP_NAME"

.field public static final EXTRA_QL_REASON:Ljava/lang/String; = "com.motorola.internal.intent.extra.REASON"

.field private static final INFINITE_FOCUS:I = 0x3

.field public static final QUICK_LAUNCH_BROADCAST:Ljava/lang/String; = "com.motorola.internal.intent.action.QUICK_LAUNCH_APP"

.field private static final ROTATOR_ORIENTATION_OFFSET:I = 0x5a

.field public static final TAG:Ljava/lang/String; = "MotoCamera"

.field public static final TAG_KPI:Ljava/lang/String; = "MotoCameraKPI"

#the value of this static final field might be set in the static constructor
.field static final mIsRotator:Z = false

.field private static mMultiShotMaxCount:I = 0x0

.field public static mMultishotUriList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static final qvga_res:Ljava/lang/String; = "320x240"

.field public static final sTempCropFilename:Ljava/lang/String; = "crop-temp"


# instance fields
.field private ResAutoTimerDigitImg:[I

.field private autoTimerSoundId:I

.field private bGLSurfaceViewPlaying:Z

.field public errorCase:I

.field public externalPicturesRemaining:I

.field private focusViewSelected:Z

.field public internalPicturesRemaining:I

.field private mAnimationRunning:Z

.field private mAudioMgr:Landroid/media/AudioManager;

.field private mAutoFocusCallback:Lcom/motorola/Camera/Camera$MotoCameraAutoFocusCallback;

.field private mAutoTimerCount:I

.field private mAutoTimerDialog:Lcom/motorola/Camera/Camera$CameraDialog;

.field private mAutotimerCountImg:Landroid/widget/ImageView;

.field private mBlackout:Landroid/widget/ImageView;

.field private mBlackoutBackground:Landroid/graphics/drawable/Drawable;

.field private mBmpPostView:Landroid/graphics/Bitmap;

.field public mCallbacktime:J

.field private mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

.field private mCamUtil:Lcom/motorola/Camera/CameraUtility;

.field private mCameraActivityContext:Landroid/content/Context;

.field private mCameraClass:Lcom/motorola/Camera/Camera;

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraView:Lcom/motorola/Camera/View/CameraView;

.field private mCaptureMultishotEndTime:J

.field private mCaptureMultishotEndTimewithMetaData:J

.field private mCaptureMultishotTime:J

.field private mCaptureMultishotTimeMetaData:J

.field private mCaptureOnFocus:Z

.field private mCaptureOnShortPress:Z

.field private mCaptureProcessingView:Landroid/view/View;

.field public mCaptureStartTime:J

.field mConfig_PL:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field public mController:Lcom/motorola/Camera/View/Control/OnScreenController;

.field private mCurrentStitchMode:I

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mDeviceDisabled:Z

.field private mDidRegister:Z

.field private mDisplayHeight:I

.field private mDisplayOrientation:I

.field private mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

.field mEulaAgreeListener:Landroid/view/View$OnClickListener;

.field mEulaCancelListener:Landroid/view/View$OnClickListener;

.field private mFirstTimeInitialized:Z

.field private mFocus:Landroid/graphics/drawable/Drawable;

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/motorola/Camera/FocusManager;

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private mFocusValue:I

.field private mFocusView:Landroid/widget/ImageView;

.field private mFocusd:Landroid/graphics/drawable/Drawable;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mHandler:Landroid/os/Handler;

.field public mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

.field public mImageCount:I

.field private mImageResolution:Ljava/lang/String;

.field private mImageToThumbBitmap:Landroid/graphics/Bitmap;

.field private mIsFocusButtonPressed:Z

.field private mIsFocusFail:Z

.field private mIsFocusLocked:Z

.field private mIsFocused:Z

.field private mIsFocusing:Z

.field public mIsHandShakeShown:Z

.field private mIsImageCaptureIntent:Z

.field private mIsInternalSD:Z

.field public mIsRotatorClosed:Z

.field private mIsSecurelyLockedModeImageCaptureIntent:Z

.field private mIsSpeakerOn:Z

.field private mIsStitching:Z

.field private mIsStoreXmpMetaData:Z

.field private mKeepAndRestartPreview:Z

.field private mKpiS2STimer:J

.field private mKpiStartTimer:J

.field mLastOrientation:I

.field private mLatchedOrientation:I

.field private mLocUtil:Lcom/motorola/Camera/LocUtility;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLockRightSet:Z

.field private mMain:Lcom/motorola/Camera/View/CameraContentView;

.field private mMenuOpened:Z

.field private mMeteringAreaSupported:Z

.field private mMotoEnvCallback:Lcom/motorola/Camera/Camera$MotoEnvCallback;

.field private mMultiShotOrientation:I

.field private mMultiShotOrientationCCW:I

.field private mMultishotCurrentCount:I

.field private mMultishotGroupId:Ljava/lang/String;

.field private mNeedCheckStorage:Z

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPanBeepAFD:Landroid/content/res/AssetFileDescriptor;

.field private mPanBeepSound:Landroid/media/MediaPlayer;

.field private mPanoramaDirectionInfoCallback:Lcom/motorola/Camera/Camera$PanoramaDirectionInfoCallback;

.field private mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;

.field private mPanoramaMaxShot:I

.field private mPanoramaObj:Lcom/motorola/android/camera/Panorama;

.field private mPanoramaPostView:Landroid/graphics/Bitmap;

.field private mPanoramaPostviewCallback:Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;

.field private mPanoramaShotTaken:I

.field private mPanoramaShutterCallback:Lcom/motorola/Camera/Camera$PanoramaShutterCallback;

.field private mPanoramaViewfinderInfoCallback:Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

.field public mPausing:Z

.field public mPicturesRemaining:I

.field private mPostPicturePanel:Landroid/widget/LinearLayout;

.field private mPostText:Landroid/widget/TextView;

.field private mPostView:Z

.field private mPreviewHeight:F

.field private mPreviewWidth:F

.field public mPreviewing:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRender:Lcom/motorola/Camera/View/CameraShutterRender;

.field private mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

.field private volatile mRotateDialogShowing:Z

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSecondaryDialogWidth:I

.field private mShutterCallback:Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;

.field public mShutterCallbackTime:J

.field public mShutterLag:J

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStartLogger:Z

.field private mStartSensorFront:Z

.field private mStatus:I

.field private mStitchingMsgText:Landroid/widget/TextView;

.field private mStitchingProgress:Landroid/widget/ProgressBar;

.field mStorageLocationAlert:Landroid/app/AlertDialog;

.field private mStoreThread:Ljava/lang/Thread;

.field private mSupportedPictureSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceHeight:F

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:F

.field private mTestNumber:I

.field private mThumbThread:Ljava/lang/Thread;

.field private mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mThumbnailDecoded:Z

.field private mThumbnailOrientation:I

.field private mTime2Idle:J

.field private mTimerContainer:Landroid/widget/RelativeLayout;

.field private volatile mTimerContainerShowing:Z

.field mTimerListener:Landroid/view/View$OnClickListener;

.field final mUpdatePicInSvcMode:Ljava/lang/Runnable;

.field private mZoomAdjusting:Z

.field private final mZoomChangeListener:Lcom/motorola/Camera/Camera$MotoCameraOnZoomChangeListener;

.field public onScreenStatus:I

.field private pictureHeight:I

.field private picturePixelFormat:I

.field private pictureWidth:I

.field public prevFlash:I

.field private prevScene:I

.field private updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    const-string v0, "ro.hw.rotator"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/Camera/Camera;->mIsRotator:Z

    .line 181
    sput v1, Lcom/motorola/Camera/Camera;->mMultiShotMaxCount:I

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/Camera/Camera;->mMultishotUriList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 158
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsRotatorClosed:Z

    .line 165
    iput v1, p0, Lcom/motorola/Camera/Camera;->mFocusValue:I

    .line 167
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mStorageLocationAlert:Landroid/app/AlertDialog;

    .line 171
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mFirstTimeInitialized:Z

    .line 173
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mZoomAdjusting:Z

    .line 174
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    .line 176
    iput v1, p0, Lcom/motorola/Camera/Camera;->mImageCount:I

    .line 177
    iput-wide v3, p0, Lcom/motorola/Camera/Camera;->mCaptureStartTime:J

    .line 178
    iput-wide v3, p0, Lcom/motorola/Camera/Camera;->mShutterCallbackTime:J

    .line 179
    iput-wide v3, p0, Lcom/motorola/Camera/Camera;->mShutterLag:J

    .line 184
    iput-wide v3, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotEndTime:J

    .line 185
    iput-wide v3, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotTime:J

    .line 186
    iput-wide v3, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotTimeMetaData:J

    .line 187
    iput-wide v3, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotEndTimewithMetaData:J

    .line 192
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mMultishotGroupId:Ljava/lang/String;

    .line 193
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraActivityContext:Landroid/content/Context;

    .line 194
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraClass:Lcom/motorola/Camera/Camera;

    .line 197
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/Camera/Camera;->mTestNumber:I

    .line 198
    iput v6, p0, Lcom/motorola/Camera/Camera;->mMultiShotOrientation:I

    .line 199
    iput v1, p0, Lcom/motorola/Camera/Camera;->mMultiShotOrientationCCW:I

    .line 201
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    .line 202
    iput v1, p0, Lcom/motorola/Camera/Camera;->onScreenStatus:I

    .line 206
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 207
    iput v1, p0, Lcom/motorola/Camera/Camera;->prevFlash:I

    .line 208
    iput v5, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    .line 209
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mDidRegister:Z

    .line 210
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsFocusing:Z

    .line 211
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsFocused:Z

    .line 212
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mCaptureOnFocus:Z

    .line 213
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsFocusButtonPressed:Z

    .line 214
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsFocusFail:Z

    .line 215
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsFocusLocked:Z

    .line 216
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mLockRightSet:Z

    .line 217
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mCaptureOnShortPress:Z

    .line 218
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mMenuOpened:Z

    .line 222
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    .line 224
    iput v1, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    .line 226
    iput v1, p0, Lcom/motorola/Camera/Camera;->mDisplayHeight:I

    .line 227
    const/high16 v0, 0x4420

    iput v0, p0, Lcom/motorola/Camera/Camera;->mPreviewWidth:F

    .line 228
    const/high16 v0, 0x43a0

    iput v0, p0, Lcom/motorola/Camera/Camera;->mPreviewHeight:F

    .line 229
    const/high16 v0, 0x4420

    iput v0, p0, Lcom/motorola/Camera/Camera;->mSurfaceWidth:F

    .line 230
    const/high16 v0, 0x43a0

    iput v0, p0, Lcom/motorola/Camera/Camera;->mSurfaceHeight:F

    .line 232
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 233
    iput v6, p0, Lcom/motorola/Camera/Camera;->mLastOrientation:I

    .line 234
    iput v6, p0, Lcom/motorola/Camera/Camera;->mConfig_PL:I

    .line 235
    iput-boolean v5, p0, Lcom/motorola/Camera/Camera;->mKeepAndRestartPreview:Z

    .line 236
    new-instance v0, Lcom/motorola/Camera/Camera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/motorola/Camera/Camera$MainHandler;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    .line 238
    new-instance v0, Lcom/motorola/Camera/Camera$MotoCameraAutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/motorola/Camera/Camera$MotoCameraAutoFocusCallback;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mAutoFocusCallback:Lcom/motorola/Camera/Camera$MotoCameraAutoFocusCallback;

    .line 240
    new-instance v0, Lcom/motorola/Camera/Camera$MotoCameraOnZoomChangeListener;

    invoke-direct {v0, p0, v2}, Lcom/motorola/Camera/Camera$MotoCameraOnZoomChangeListener;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mZoomChangeListener:Lcom/motorola/Camera/Camera$MotoCameraOnZoomChangeListener;

    .line 243
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 245
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    .line 246
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    .line 249
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsSecurelyLockedModeImageCaptureIntent:Z

    .line 252
    new-instance v0, Lcom/motorola/Camera/Camera$PanoramaShutterCallback;

    invoke-direct {v0, p0, v2}, Lcom/motorola/Camera/Camera$PanoramaShutterCallback;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaShutterCallback:Lcom/motorola/Camera/Camera$PanoramaShutterCallback;

    .line 253
    new-instance v0, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;

    invoke-direct {v0, p0, v2}, Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaPostviewCallback:Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;

    .line 254
    new-instance v0, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;

    invoke-direct {v0, p0, v2}, Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaViewfinderInfoCallback:Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;

    .line 255
    new-instance v0, Lcom/motorola/Camera/Camera$PanoramaDirectionInfoCallback;

    invoke-direct {v0, p0, v2}, Lcom/motorola/Camera/Camera$PanoramaDirectionInfoCallback;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaDirectionInfoCallback:Lcom/motorola/Camera/Camera$PanoramaDirectionInfoCallback;

    .line 257
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsStitching:Z

    .line 262
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;

    .line 267
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    .line 268
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    .line 272
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    .line 276
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->focusViewSelected:Z

    .line 283
    iput v1, p0, Lcom/motorola/Camera/Camera;->mLatchedOrientation:I

    .line 284
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;

    .line 285
    iput v1, p0, Lcom/motorola/Camera/Camera;->mCurrentStitchMode:I

    .line 287
    iput v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    .line 288
    iput v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    .line 289
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    .line 290
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    .line 292
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mPanBeepAFD:Landroid/content/res/AssetFileDescriptor;

    .line 297
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->bGLSurfaceViewPlaying:Z

    .line 299
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mStartSensorFront:Z

    .line 301
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    .line 317
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mAnimationRunning:Z

    .line 318
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mThumbnailDecoded:Z

    .line 322
    iput v1, p0, Lcom/motorola/Camera/Camera;->mSecondaryDialogWidth:I

    .line 332
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mPostView:Z

    .line 335
    iput v1, p0, Lcom/motorola/Camera/Camera;->mMultishotCurrentCount:I

    .line 337
    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    .line 338
    iput v1, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    .line 339
    iput v1, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    .line 340
    iput-boolean v5, p0, Lcom/motorola/Camera/Camera;->mIsInternalSD:Z

    .line 341
    iput-boolean v5, p0, Lcom/motorola/Camera/Camera;->mNeedCheckStorage:Z

    .line 342
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mDeviceDisabled:Z

    .line 346
    iput-boolean v5, p0, Lcom/motorola/Camera/Camera;->mStartLogger:Z

    .line 353
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->ResAutoTimerDigitImg:[I

    .line 370
    new-instance v0, Lcom/motorola/Camera/Camera$MotoEnvCallback;

    invoke-direct {v0, p0, v2}, Lcom/motorola/Camera/Camera$MotoEnvCallback;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mMotoEnvCallback:Lcom/motorola/Camera/Camera$MotoEnvCallback;

    .line 371
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsHandShakeShown:Z

    .line 5728
    new-instance v0, Lcom/motorola/Camera/Camera$4;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camera$4;-><init>(Lcom/motorola/Camera/Camera;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mUpdatePicInSvcMode:Ljava/lang/Runnable;

    .line 6039
    new-instance v0, Lcom/motorola/Camera/Camera$5;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camera$5;-><init>(Lcom/motorola/Camera/Camera;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 7396
    new-instance v0, Lcom/motorola/Camera/Camera$6;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camera$6;-><init>(Lcom/motorola/Camera/Camera;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mTimerListener:Landroid/view/View$OnClickListener;

    .line 7457
    new-instance v0, Lcom/motorola/Camera/Camera$7;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camera$7;-><init>(Lcom/motorola/Camera/Camera;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mEulaAgreeListener:Landroid/view/View$OnClickListener;

    .line 7473
    new-instance v0, Lcom/motorola/Camera/Camera$8;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/Camera$8;-><init>(Lcom/motorola/Camera/Camera;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mEulaCancelListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$10000()I
    .locals 1

    .prologue
    .line 144
    sget v0, Lcom/motorola/Camera/Camera;->mMultiShotMaxCount:I

    return v0
.end method

.method static synthetic access$10200(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsFocusLocked:Z

    return v0
.end method

.method static synthetic access$10202(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mIsFocusLocked:Z

    return p1
.end method

.method static synthetic access$10300(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mPostView:Z

    return v0
.end method

.method static synthetic access$10302(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mPostView:Z

    return p1
.end method

.method static synthetic access$10400(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->showStorageToast()V

    return-void
.end method

.method static synthetic access$10600(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaPostView:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$10602(Lcom/motorola/Camera/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mPanoramaPostView:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$10700(Lcom/motorola/Camera/Camera;)Lcom/motorola/android/camera/Panorama$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    return-object v0
.end method

.method static synthetic access$10702(Lcom/motorola/Camera/Camera;Lcom/motorola/android/camera/Panorama$Parameters;)Lcom/motorola/android/camera/Panorama$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    return-object p1
.end method

.method static synthetic access$10800(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPreview()V

    return-void
.end method

.method static synthetic access$10900(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->disableUIAfterStopPreview()V

    return-void
.end method

.method static synthetic access$1100(Lcom/motorola/Camera/Camera;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/motorola/Camera/Camera;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/motorola/Camera/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$11100(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    return-object v0
.end method

.method static synthetic access$11102(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;)Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    return-object p1
.end method

.method static synthetic access$11200(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPostText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11300(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mKeepAndRestartPreview:Z

    return v0
.end method

.method static synthetic access$11400(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->clearFocus()V

    return-void
.end method

.method static synthetic access$11500(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraClass:Lcom/motorola/Camera/Camera;

    return-object v0
.end method

.method static synthetic access$11600(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsStoreXmpMetaData:Z

    return v0
.end method

.method static synthetic access$11700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/CameraShutterRender;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mRender:Lcom/motorola/Camera/View/CameraShutterRender;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->pictureWidth:I

    return v0
.end method

.method static synthetic access$11900(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->pictureHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsSpeakerOn:Z

    return v0
.end method

.method static synthetic access$12000(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->picturePixelFormat:I

    return v0
.end method

.method static synthetic access$1202(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mIsSpeakerOn:Z

    return p1
.end method

.method static synthetic access$12100(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updatePicInUi()V

    return-void
.end method

.method static synthetic access$12200(Lcom/motorola/Camera/Camera;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->createThumbnailForJpegCallback([B)V

    return-void
.end method

.method static synthetic access$12300(Lcom/motorola/Camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/motorola/Camera/Camera;->mKpiS2STimer:J

    return-wide v0
.end method

.method static synthetic access$12400(Lcom/motorola/Camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mImageResolution:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->setFocusModeParameters()V

    return-void
.end method

.method static synthetic access$12600(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->checkExternalSDCardFirstTime()V

    return-void
.end method

.method static synthetic access$12702(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mNeedCheckStorage:Z

    return p1
.end method

.method static synthetic access$12800(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->checkStorage()V

    return-void
.end method

.method static synthetic access$12900(Lcom/motorola/Camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->enableAutoTimerCapture(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/motorola/Camera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->restartPreview(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    return v0
.end method

.method static synthetic access$1402(Lcom/motorola/Camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    return p1
.end method

.method static synthetic access$1500(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mCaptureOnFocus:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->toggleCamera()V

    return-void
.end method

.method static synthetic access$1700(Lcom/motorola/Camera/Camera;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateFocusIndicator()V

    return-void
.end method

.method static synthetic access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/motorola/Camera/Camera;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/motorola/Camera/Camera;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/motorola/Camera/Camera;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/motorola/Camera/Camera;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsStitching:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mIsStitching:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    return v0
.end method

.method static synthetic access$2402(Lcom/motorola/Camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    return p1
.end method

.method static synthetic access$2408(Lcom/motorola/Camera/Camera;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    return v0
.end method

.method static synthetic access$2500(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->closeCamera()V

    return-void
.end method

.method static synthetic access$2600(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->enableSingleShot()V

    return-void
.end method

.method static synthetic access$2700(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateRemainCount()V

    return-void
.end method

.method static synthetic access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/LocUtility;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/motorola/Camera/Camera;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mThumbThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/motorola/Camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mThumbThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/motorola/Camera/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/CameraView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mAnimationRunning:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mAnimationRunning:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailDecoded:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mThumbnailDecoded:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/motorola/Camera/Camera;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/View/PanoramaIndicatorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isMultishotMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mMultishotCurrentCount:I

    return v0
.end method

.method static synthetic access$3902(Lcom/motorola/Camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/motorola/Camera/Camera;->mMultishotCurrentCount:I

    return p1
.end method

.method static synthetic access$3904(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mMultishotCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/Camera/Camera;->mMultishotCurrentCount:I

    return v0
.end method

.method static synthetic access$4000(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPanoramaCapture()V

    return-void
.end method

.method static synthetic access$4100(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/FocusManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/motorola/Camera/Camera;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    return v0
.end method

.method static synthetic access$4302(Lcom/motorola/Camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    return p1
.end method

.method static synthetic access$4400(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startShutterAnim()V

    return-void
.end method

.method static synthetic access$4500(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopShutterAnim()V

    return-void
.end method

.method static synthetic access$4602(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mZoomAdjusting:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/motorola/Camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->zoomTo(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/motorola/Camera/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/motorola/Camera/Camera;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/motorola/Camera/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$5000(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    return v0
.end method

.method static synthetic access$5002(Lcom/motorola/Camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    return p1
.end method

.method static synthetic access$5100(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->disableMultishot()V

    return-void
.end method

.method static synthetic access$5200(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->launchCamcorder()V

    return-void
.end method

.method static synthetic access$5300(Lcom/motorola/Camera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->enablePanorama(Z)V

    return-void
.end method

.method static synthetic access$5400(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mCurrentStitchMode:I

    return v0
.end method

.method static synthetic access$5402(Lcom/motorola/Camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/motorola/Camera/Camera;->mCurrentStitchMode:I

    return p1
.end method

.method static synthetic access$5500(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$5600(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->enableMultiShot()V

    return-void
.end method

.method static synthetic access$5700(Lcom/motorola/Camera/Camera;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/motorola/Camera/Camera;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$5900(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->setCameraParameters()V

    return-void
.end method

.method static synthetic access$6000(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateScenesEffects()V

    return-void
.end method

.method static synthetic access$6100(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startDevice()V

    return-void
.end method

.method static synthetic access$6200(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CameraUtility;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/motorola/Camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotEndTime:J

    return-wide v0
.end method

.method static synthetic access$6302(Lcom/motorola/Camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotEndTime:J

    return-wide p1
.end method

.method static synthetic access$6400(Lcom/motorola/Camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotTime:J

    return-wide v0
.end method

.method static synthetic access$6402(Lcom/motorola/Camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotTime:J

    return-wide p1
.end method

.method static synthetic access$6500(Lcom/motorola/Camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotEndTimewithMetaData:J

    return-wide v0
.end method

.method static synthetic access$6502(Lcom/motorola/Camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotEndTimewithMetaData:J

    return-wide p1
.end method

.method static synthetic access$6600(Lcom/motorola/Camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotTimeMetaData:J

    return-wide v0
.end method

.method static synthetic access$6602(Lcom/motorola/Camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/motorola/Camera/Camera;->mCaptureMultishotTimeMetaData:J

    return-wide p1
.end method

.method static synthetic access$6700(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mTestNumber:I

    return v0
.end method

.method static synthetic access$6708(Lcom/motorola/Camera/Camera;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mTestNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/motorola/Camera/Camera;->mTestNumber:I

    return v0
.end method

.method static synthetic access$6800(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->enableHDR()V

    return-void
.end method

.method static synthetic access$6900(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->enableWDR()V

    return-void
.end method

.method static synthetic access$7000(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mTimerContainerShowing:Z

    return v0
.end method

.method static synthetic access$7002(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mTimerContainerShowing:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->initAutoTimerModeButtons()V

    return-void
.end method

.method static synthetic access$7200(Lcom/motorola/Camera/Camera;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$7400(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsInternalSD:Z

    return v0
.end method

.method static synthetic access$7402(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mIsInternalSD:Z

    return p1
.end method

.method static synthetic access$7500(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mAutoTimerCount:I

    return v0
.end method

.method static synthetic access$7502(Lcom/motorola/Camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/motorola/Camera/Camera;->mAutoTimerCount:I

    return p1
.end method

.method static synthetic access$7508(Lcom/motorola/Camera/Camera;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mAutoTimerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/motorola/Camera/Camera;->mAutoTimerCount:I

    return v0
.end method

.method static synthetic access$7600(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->autoTimerSoundId:I

    return v0
.end method

.method static synthetic access$7700(Lcom/motorola/Camera/Camera;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/motorola/Camera/Camera;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->ResAutoTimerDigitImg:[I

    return-object v0
.end method

.method static synthetic access$7900(Lcom/motorola/Camera/Camera;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/motorola/Camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->checkAndSnap(I)V

    return-void
.end method

.method static synthetic access$8100(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/RotateDialogController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object v0
.end method

.method static synthetic access$8102(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    return-object p1
.end method

.method static synthetic access$8200(Lcom/motorola/Camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mRotateDialogShowing:Z

    return v0
.end method

.method static synthetic access$8202(Lcom/motorola/Camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/motorola/Camera/Camera;->mRotateDialogShowing:Z

    return p1
.end method

.method static synthetic access$8300(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->dismissToast()V

    return-void
.end method

.method static synthetic access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mBmpPostView:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$8502(Lcom/motorola/Camera/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mBmpPostView:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$8600(Lcom/motorola/Camera/Camera;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mStoreThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$8602(Lcom/motorola/Camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mStoreThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$8700(Lcom/motorola/Camera/Camera;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/motorola/Camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->initPostPanel()V

    return-void
.end method

.method static synthetic access$8900(Lcom/motorola/Camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mMultishotGroupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8902(Lcom/motorola/Camera/Camera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mMultishotGroupId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/motorola/Camera/Camera;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/motorola/Camera/Camera;->startDevice(ZZ)V

    return-void
.end method

.method static synthetic access$9000(Lcom/motorola/Camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->setGroupIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9100(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mMultiShotOrientation:I

    return v0
.end method

.method static synthetic access$9102(Lcom/motorola/Camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/motorola/Camera/Camera;->mMultiShotOrientation:I

    return p1
.end method

.method static synthetic access$9200(Lcom/motorola/Camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/motorola/Camera/Camera;->mMultiShotOrientationCCW:I

    return v0
.end method

.method static synthetic access$9202(Lcom/motorola/Camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/motorola/Camera/Camera;->mMultiShotOrientationCCW:I

    return p1
.end method

.method static synthetic access$9300(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mShutterCallback:Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;

    return-object v0
.end method

.method static synthetic access$9302(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;)Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mShutterCallback:Lcom/motorola/Camera/Camera$MotoCameraShutterCallback;

    return-object p1
.end method

.method static synthetic access$9500(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera$PanoramaShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaShutterCallback:Lcom/motorola/Camera/Camera$PanoramaShutterCallback;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaPostviewCallback:Lcom/motorola/Camera/Camera$PanoramaPostviewCallback;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaViewfinderInfoCallback:Lcom/motorola/Camera/Camera$PanoramaViewfinderInfoCallback;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/Camera$PanoramaDirectionInfoCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaDirectionInfoCallback:Lcom/motorola/Camera/Camera$PanoramaDirectionInfoCallback;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/motorola/Camera/Camera;)Lcom/motorola/android/camera/Panorama;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    return-object v0
.end method

.method private cancelPanoramaCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2711
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "cancelPanoramaCapture() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->updatePanoramaCaptureStatus(Z)V

    .line 2714
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    if-eqz v0, :cond_1

    .line 2715
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    invoke-virtual {v0}, Lcom/motorola/android/camera/Panorama;->cancelCapture()V

    .line 2717
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->setRecordButton(Z)V

    .line 2718
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsStitching:Z

    .line 2720
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamera"

    const-string v1, "cancelPanoramaCapture() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    :cond_2
    return-void
.end method

.method private cancelPhoto()Z
    .locals 2

    .prologue
    .line 6420
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6421
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6422
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->setResult(I)V

    .line 6423
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->finish()V

    .line 6424
    const/4 v0, 0x1

    return v0
.end method

.method private changeZoom(Ljava/lang/Boolean;)V
    .locals 6
    .parameter "zoom"

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x1

    .line 7242
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsFocusing:Z

    if-eq v5, v1, :cond_0

    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsFocused:Z

    if-eq v5, v1, :cond_0

    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsFocusButtonPressed:Z

    if-ne v5, v1, :cond_1

    .line 7244
    :cond_0
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Focus is in progress, mIsFocusing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/Camera/Camera;->mIsFocusing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mIsFocused = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/Camera/Camera;->mIsFocused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mIsFocusButtonPressed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/Camera/Camera;->mIsFocusButtonPressed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7247
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->onScreenCaptureUp()V

    .line 7250
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v1

    if-nez v1, :cond_3

    .line 7287
    :cond_2
    :goto_0
    return-void

    .line 7253
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v1, v4}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 7255
    iget v1, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v1, v5, :cond_2

    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mZoomAdjusting:Z

    if-nez v1, :cond_2

    .line 7257
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 7259
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v2

    .line 7260
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v0

    .line 7261
    .local v0, zoomValue:I
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    .line 7262
    const-string v1, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CURRENT ZOOM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7264
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v5, :cond_7

    .line 7265
    sget v1, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    if-ge v0, v1, :cond_5

    .line 7266
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mZoomAdjusting:Z

    .line 7267
    sget v1, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_STEP:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/motorola/Camera/Camera;->zoomTo(I)V

    .line 7268
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    sget v3, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_STEP:I

    add-int/2addr v3, v0

    sget v4, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setZoomNum(I)V

    .line 7281
    :cond_5
    :goto_1
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    if-nez v1, :cond_6

    .line 7282
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mZoomAdjusting:Z

    .line 7284
    :cond_6
    monitor-exit v2

    goto :goto_0

    .end local v0           #zoomValue:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7274
    .restart local v0       #zoomValue:I
    :cond_7
    if-lez v0, :cond_5

    .line 7275
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mZoomAdjusting:Z

    .line 7276
    sget v1, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_STEP:I

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Lcom/motorola/Camera/Camera;->zoomTo(I)V

    .line 7277
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    sget v3, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_STEP:I

    sub-int v3, v0, v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setZoomNum(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private checkAndSnap(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 2945
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "checkAndSnap() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraKPI"

    const-string v1, "checkAndSnap enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2949
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startAutoTimer()V

    .line 2959
    :cond_2
    :goto_0
    return-void

    .line 2953
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/Camera/Camera;->mKpiS2STimer:J

    .line 2955
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v0}, Lcom/motorola/Camera/FocusManager;->doSnap()V

    .line 2957
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCamera"

    const-string v1, "checkAndSnap() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    :cond_4
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCameraKPI"

    const-string v1, "checkAndSnap exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkExternalSDCardFirstTime()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6109
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsSecurelyLockedModeImageCaptureIntent:Z

    if-eqz v1, :cond_1

    .line 6110
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1, v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSDPlug(Z)V

    .line 6130
    :cond_0
    :goto_0
    return-void

    .line 6114
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/motorola/Camera/CameraGlobalTools;->calculatePicturesRemaining(Ljava/lang/String;Z)I

    move-result v0

    .line 6116
    .local v0, externalPicturesRemaining:I
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkExternalSDCardFirstTime() - externalRem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6118
    :cond_2
    if-ltz v0, :cond_0

    .line 6119
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSDPlug(Z)V

    .line 6124
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsInternalSD:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 6125
    iput-boolean v5, p0, Lcom/motorola/Camera/Camera;->mNeedCheckStorage:Z

    .line 6126
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentStorageLocation(I)V

    .line 6127
    iput v0, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    .line 6128
    iput-boolean v4, p0, Lcom/motorola/Camera/Camera;->mIsInternalSD:Z

    goto :goto_0
.end method

.method private checkStorage()V
    .locals 2

    .prologue
    .line 6134
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "checkStorage() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6136
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mNeedCheckStorage:Z

    if-eqz v0, :cond_1

    .line 6137
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateRemainCount()V

    .line 6139
    :cond_1
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamera"

    const-string v1, "checkStorage() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6140
    :cond_2
    return-void
.end method

.method private clearFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2858
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2859
    const-string v0, "MotoCamera"

    const-string v1, "clearFocus() Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraKPI"

    const-string v1, "clearFocus enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/motorola/Camera/Camera;->mFocusValue:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/motorola/Camera/Camera;->mFocusValue:I

    if-nez v0, :cond_4

    .line 2865
    :cond_2
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCamera"

    const-string v1, "Camera Device clearFocus start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 2867
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCamera"

    const-string v1, "Camera Device clearFocus done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2870
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsFocusing:Z

    .line 2871
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mCaptureOnFocus:Z

    .line 2872
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mCaptureOnShortPress:Z

    .line 2873
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsFocused:Z

    .line 2874
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsFocusButtonPressed:Z

    .line 2875
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsFocusFail:Z

    .line 2877
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_5

    const-string v0, "MotoCameraKPI"

    const-string v1, "clearFocus exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    :cond_5
    return-void
.end method

.method private clearMessageQueue()V
    .locals 2

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2070
    return-void
.end method

.method private closeCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2228
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v2, "closeCamera() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    if-eqz v1, :cond_1

    .line 2233
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    invoke-virtual {v1, v3}, Lcom/motorola/android/camera/Panorama;->setErrorCallback(Lcom/motorola/android/camera/Panorama$ErrorCallback;)V

    .line 2234
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    invoke-virtual {v1}, Lcom/motorola/android/camera/Panorama;->release()V

    .line 2235
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 2237
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2245
    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    .line 2246
    iput-object v3, p0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    .line 2248
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_8

    .line 2251
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 2253
    const-string v1, "MotoCamera"

    const-string v2, "closeCamera - mCameraDevice.stopPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    :cond_2
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v1, :cond_3

    .line 2256
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 2258
    :cond_3
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    .line 2259
    const-string v1, "MotoCamera"

    const-string v2, "closeCamera - mCameraDevice.stopPreview returned"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    :cond_4
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2265
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setEnvDetectCallback(Landroid/hardware/Camera$EnvDetectCallback;)V

    .line 2266
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideHandshake(ZZ)V

    .line 2268
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 2270
    :cond_5
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_6

    const-string v1, "MotoCameraKPI"

    const-string v2, "closeCamera before device.release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    :cond_6
    invoke-static {}, Lcom/motorola/Camera/CameraHolder;->instance()Lcom/motorola/Camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CameraHolder;->release()V

    .line 2272
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_7

    const-string v1, "MotoCameraKPI"

    const-string v2, "closeCamera after device.release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    :cond_7
    iput-object v3, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    .line 2276
    iput-boolean v4, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    .line 2277
    iput-boolean v4, p0, Lcom/motorola/Camera/Camera;->mIsFocused:Z

    .line 2278
    iput-boolean v4, p0, Lcom/motorola/Camera/Camera;->mIsFocusing:Z

    .line 2279
    iput-boolean v4, p0, Lcom/motorola/Camera/Camera;->mIsFocusFail:Z

    .line 2280
    iput-boolean v4, p0, Lcom/motorola/Camera/Camera;->mIsFocusButtonPressed:Z

    .line 2284
    :cond_8
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->resetZoom()V

    .line 2286
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_9

    const-string v1, "MotoCamera"

    const-string v2, "closeCamera() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    :cond_9
    return-void

    .line 2239
    :catch_0
    move-exception v0

    .line 2241
    .local v0, e:Ljava/io/IOException;
    const-string v1, "MotoCamera"

    const-string v2, "closeCamera : reconnect failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private createThumbnailForJpegCallback([B)V
    .locals 8
    .parameter "jpegData"

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 5744
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5745
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iput v7, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 5747
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPicResolution()Ljava/lang/String;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5749
    .local v1, pictureSize:[Ljava/lang/String;
    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current picture width is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5750
    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit16 v2, v3, 0x100

    .line 5751
    .local v2, sampleSize:I
    if-lt v2, v7, :cond_2

    const/16 v2, 0x10

    .line 5755
    :goto_0
    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sampleSize is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5756
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 5758
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 5759
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5760
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 5762
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;

    .line 5766
    :cond_1
    array-length v3, p1

    invoke-static {p1, v6, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;

    .line 5767
    return-void

    .line 5752
    :cond_2
    const/16 v3, 0x8

    if-lt v2, v3, :cond_3

    const/16 v2, 0x8

    goto :goto_0

    .line 5753
    :cond_3
    const/4 v3, 0x4

    if-lt v2, v3, :cond_4

    const/4 v2, 0x4

    goto :goto_0

    .line 5754
    :cond_4
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private disableCurrentMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2768
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->resetFilter()V

    .line 2770
    packed-switch p1, :pswitch_data_0

    .line 2791
    :goto_0
    :pswitch_0
    return-void

    .line 2774
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->disableMultishot()V

    goto :goto_0

    .line 2777
    :pswitch_2
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->disablePanorama()V

    goto :goto_0

    .line 2780
    :pswitch_3
    const-string v0, "MotoCamera"

    const-string v1, "Disabling FAST MOTION MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2783
    :pswitch_4
    const-string v0, "MotoCamera"

    const-string v1, "Disabling SLOW MOTION MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2786
    :pswitch_5
    const-string v0, "MotoCamera"

    const-string v1, "Disabling NORMAL VIDEO MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2770
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private disableMultishot()V
    .locals 3

    .prologue
    .line 2794
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 2800
    :goto_0
    return-void

    .line 2798
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->setBurstCaptureCount(Landroid/hardware/Camera$Parameters;I)V

    .line 2799
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method private disablePanorama()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2484
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    if-eqz v1, :cond_0

    .line 2486
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    invoke-virtual {v1, v2}, Lcom/motorola/android/camera/Panorama;->setErrorCallback(Lcom/motorola/android/camera/Panorama$ErrorCallback;)V

    .line 2487
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    invoke-virtual {v1}, Lcom/motorola/android/camera/Panorama;->release()V

    .line 2489
    :cond_0
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    .line 2490
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    .line 2491
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v2, "disablePanorama() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2496
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2504
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCamera"

    const-string v2, "disablePanorama() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    :cond_2
    return-void

    .line 2498
    :catch_0
    move-exception v0

    .line 2500
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MotoCamera"

    const-string v2, "disablePanorama : reconnect failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->closeCamera()V

    goto :goto_0
.end method

.method private disableUIAfterStopPreview()V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureResourceClickable(Z)V

    .line 552
    :cond_0
    return-void
.end method

.method private dismissToast()V
    .locals 1

    .prologue
    .line 3743
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->dismissToast(Z)V

    .line 3744
    return-void
.end method

.method private dismissToast(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 3747
    const v1, 0x7f0d00bb

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3749
    .local v0, v:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 3750
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3751
    if-eqz p1, :cond_0

    const v1, 0x7f04000e

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3753
    :cond_0
    return-void
.end method

.method private enableAutoTimerCapture(I)V
    .locals 3
    .parameter "timer"

    .prologue
    const/4 v2, 0x5

    .line 2447
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->onAutoTimerItemSelected()V

    .line 2448
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentAutoTimer(I)V

    .line 2450
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2451
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadSliderData()V

    .line 2452
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 2479
    :goto_0
    return-void

    .line 2453
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2454
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->disableCurrentMode(I)V

    .line 2456
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2457
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget v1, p0, Lcom/motorola/Camera/Camera;->prevScene:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentScene(I)V

    .line 2459
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2461
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget v1, p0, Lcom/motorola/Camera/Camera;->prevFlash:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentFlash(I)V

    .line 2464
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 2465
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadSliderData()V

    .line 2468
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 2471
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startDevice()V

    .line 2472
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2473
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateRemainCount()V

    goto :goto_0

    .line 2475
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 2476
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadSliderData()V

    .line 2477
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    goto :goto_0
.end method

.method private enableHDR()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 2326
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "enableHDR() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->disableCurrentMode(I)V

    .line 2330
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 2332
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/Camera;->prevScene:I

    .line 2334
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 2336
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/Camera;->prevFlash:I

    .line 2339
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 2341
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2342
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentScene(I)V

    .line 2343
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2344
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentFlash(I)V

    .line 2346
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 2349
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startDevice()V

    .line 2350
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2351
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 2352
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateRemainCount()V

    .line 2353
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    const-string v0, "MotoCamera"

    const-string v1, "enableHDR() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    :cond_7
    return-void
.end method

.method private enableMultiShot()V
    .locals 4

    .prologue
    const/4 v2, 0x5

    .line 2393
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "enableMultiShot() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v1

    .line 2396
    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 2398
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/Camera;->prevScene:I

    .line 2401
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 2403
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/Camera;->prevFlash:I

    .line 2407
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->disableCurrentMode(I)V

    .line 2409
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 2413
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/CameraApp;

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraActivityContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCameraClass:Lcom/motorola/Camera/Camera;

    invoke-virtual {v0, v2, v3}, Lcom/motorola/Camera/CameraApp;->getStoreImageUtility(Landroid/content/Context;Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/StoreImageUtility;

    .line 2416
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2418
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/CameraUtility;->setFlash(Landroid/hardware/Camera$Parameters;)V

    .line 2420
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2422
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 2423
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2424
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 2426
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateRemainCount()V

    .line 2429
    iget v0, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    sget v1, Lcom/motorola/Camera/Camera;->mMultiShotMaxCount:I

    if-ge v0, v1, :cond_6

    .line 2431
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->showStorageToast()V

    .line 2435
    :cond_6
    sget-object v0, Lcom/motorola/Camera/Camera;->mMultishotUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2436
    sget-object v0, Lcom/motorola/Camera/Camera;->mMultishotUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 2440
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startDevice()V

    .line 2441
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateFocusIndicator()V

    .line 2443
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    const-string v0, "MotoCamera"

    const-string v1, "enableMultiShot() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    :cond_7
    return-void

    .line 2420
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private enablePanorama(Z)V
    .locals 18
    .parameter "restartPreview"

    .prologue
    .line 2510
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->PANORAMA_TYPE_SWEEP:Z

    .line 2511
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 2707
    :cond_0
    :goto_0
    return-void

    .line 2514
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 2515
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2516
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCamera"

    const-string v2, "enablePanorama() - Service Mode; Panorama unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    :cond_2
    monitor-exit v17

    goto :goto_0

    .line 2704
    :catchall_0
    move-exception v1

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2520
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    if-nez v1, :cond_4

    .line 2522
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->PANORAMA_TYPE_SWEEP:Z

    if-nez v1, :cond_11

    .line 2523
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-static {v1}, Lcom/motorola/android/camera/Panorama;->init(Landroid/hardware/Camera;)Lcom/motorola/android/camera/Panorama;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    .line 2528
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    invoke-virtual {v1}, Lcom/motorola/android/camera/Panorama;->getParameters()Lcom/motorola/android/camera/Panorama$Parameters;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    .line 2529
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    new-instance v2, Lcom/motorola/Camera/Camera$PanoramaErrorCallback;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/motorola/Camera/Camera$PanoramaErrorCallback;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    invoke-virtual {v1, v2}, Lcom/motorola/android/camera/Panorama;->setErrorCallback(Lcom/motorola/android/camera/Panorama$ErrorCallback;)V

    .line 2532
    :cond_4
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePanorama() - Enter ; mParameters_pan is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v1

    if-nez v1, :cond_a

    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->camPremium:Z

    if-eqz v1, :cond_a

    .line 2537
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    if-nez v1, :cond_7

    .line 2539
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/motorola/Camera/Camera;->prevScene:I

    .line 2542
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    if-nez v1, :cond_9

    .line 2544
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/motorola/Camera/Camera;->prevFlash:I

    .line 2547
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/motorola/Camera/Camera;->disableCurrentMode(I)V

    .line 2550
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v1

    if-eqz v1, :cond_c

    .line 2553
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_b

    .line 2554
    const-string v1, "MotoCamera"

    const-string v2, "enablePanorama() - Reset zoom since entering panoramic mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->resetZoom()V

    .line 2557
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_c

    .line 2559
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2560
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2566
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 2568
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 2570
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CameraUtility;->setFlash(Landroid/hardware/Camera$Parameters;)V

    .line 2574
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 2577
    const-string v15, "auto-detection"

    .line 2581
    .local v15, stitchMode:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentPanResDimension()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/motorola/Camera/CameraGlobalTools;->calculatePicturesRemaining(Ljava/lang/String;Z)I

    move-result v14

    .line 2586
    .local v14, remainCount:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    if-eqz v1, :cond_e

    .line 2587
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    invoke-virtual {v1}, Lcom/motorola/android/camera/Panorama$Parameters;->getMaxShotNumber()I

    move-result v14

    .line 2589
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    invoke-virtual {v1}, Lcom/motorola/android/camera/Panorama$Parameters;->getMaxShotNumber()I

    move-result v1

    if-le v14, v1, :cond_e

    .line 2591
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    invoke-virtual {v1}, Lcom/motorola/android/camera/Panorama$Parameters;->getMaxShotNumber()I

    move-result v14

    .line 2594
    :cond_e
    move-object/from16 v0, p0

    iput v14, v0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    .line 2595
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2599
    :try_start_2
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;

    .line 2600
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_f

    .line 2602
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/Camera;->mPanBeepAFD:Landroid/content/res/AssetFileDescriptor;

    .line 2603
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera;->mPanBeepAFD:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera;->mPanBeepAFD:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camera;->mPanBeepAFD:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 2605
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2606
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 2607
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mPanBeepSound:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/motorola/Camera/Camera$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/motorola/Camera/Camera$3;-><init>(Lcom/motorola/Camera/Camera;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2624
    :cond_f
    :goto_2
    const/4 v1, 0x1

    if-ge v14, v1, :cond_12

    .line 2625
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->showStorageToast()V

    .line 2626
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->enableSingleShot()V

    .line 2704
    :cond_10
    :goto_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2706
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v2, "enablePanorama() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2526
    .end local v14           #remainCount:I
    .end local v15           #stitchMode:Ljava/lang/String;
    :cond_11
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    const-string v2, "sweep"

    invoke-static {v1, v2}, Lcom/motorola/android/camera/Panorama;->init(Landroid/hardware/Camera;Ljava/lang/String;)Lcom/motorola/android/camera/Panorama;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    goto/16 :goto_1

    .line 2619
    .restart local v14       #remainCount:I
    .restart local v15       #stitchMode:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 2621
    .local v8, ex:Ljava/io/IOException;
    const-string v1, "MotoCamera"

    const-string v2, "enablePanorama() - failed to load audio for pan beep"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2630
    .end local v8           #ex:Ljava/io/IOException;
    :cond_12
    const/4 v11, 0x0

    .line 2631
    .local v11, panRes:Ljava/lang/String;
    const-string v1, "ro.media.panorama.defres"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2632
    const-string v13, "2048x1536"

    .line 2634
    .local v13, pictureSize:Ljava/lang/String;
    if-eqz v11, :cond_14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14

    const-string v1, "2048x1536"

    invoke-virtual {v11, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_14

    .line 2636
    const-string v1, "x"

    invoke-virtual {v11, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2637
    .local v16, temp:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    .local v9, i:I
    :goto_4
    if-ltz v9, :cond_14

    .line 2639
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_13

    .line 2641
    move-object v13, v11

    .line 2637
    :cond_13
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 2645
    .end local v9           #i:I
    .end local v16           #temp:[Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1, v13}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setMaxPanResDimension(Ljava/lang/String;)V

    .line 2646
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1, v13}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentPanResDimension(Ljava/lang/String;)V

    .line 2648
    const-string v1, "x"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2650
    .restart local v16       #temp:[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->updateRemainCount()V

    .line 2652
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_15

    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePanorama, stitchMode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", maxShotNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    invoke-virtual {v1, v15}, Lcom/motorola/android/camera/Panorama$Parameters;->setPanoramaMode(Ljava/lang/String;)V

    .line 2656
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    invoke-virtual {v1, v2}, Lcom/motorola/android/camera/Panorama$Parameters;->setShotNumber(I)V

    .line 2657
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->PANORAMA_TYPE_SWEEP:Z

    if-nez v1, :cond_16

    .line 2658
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v16, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/android/camera/Panorama$Parameters;->setPanoramaResolution(II)V

    .line 2676
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v16, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/android/camera/Panorama$Parameters;->setPanoramaResolution(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2680
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    invoke-virtual {v1, v2}, Lcom/motorola/android/camera/Panorama;->setParameters(Lcom/motorola/android/camera/Panorama$Parameters;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 2691
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2692
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 2695
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x24

    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    .line 2696
    .local v10, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2699
    if-eqz p1, :cond_10

    .line 2700
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->startDevice()V

    .line 2701
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->updateFocusIndicator()V

    goto/16 :goto_3

    .line 2661
    .end local v10           #msg:Landroid/os/Message;
    :cond_16
    const/4 v12, 0x0

    .line 2662
    .local v12, panVFRes:Ljava/lang/String;
    const-string v1, "ro.media.panorama.frameres"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2663
    if-eqz v12, :cond_17

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_17

    const-string v1, "640x480"

    invoke-virtual {v12, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_17

    .line 2665
    const-string v1, "x"

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2666
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v16, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/android/camera/Panorama$Parameters;->setPanoramaResolution(II)V

    goto/16 :goto_5

    .line 2670
    :cond_17
    const-string v12, "640x480"

    .line 2671
    const-string v1, "x"

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 2672
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera;->mParameters_pan:Lcom/motorola/android/camera/Panorama$Parameters;

    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v16, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/android/camera/Panorama$Parameters;->setPanoramaResolution(II)V

    goto/16 :goto_5

    .line 2682
    .end local v12           #panVFRes:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 2684
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "MotoCamera"

    const-string v2, "enterPanoramaMode() - failed to set panoramic parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    const v1, 0x7f0b006c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    .line 2687
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->enableSingleShot()V

    .line 2688
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method private enableSingleShot()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 2291
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->disableCurrentMode(I)V

    .line 2293
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2296
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget v1, p0, Lcom/motorola/Camera/Camera;->prevScene:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentScene(I)V

    .line 2299
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2304
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget v1, p0, Lcom/motorola/Camera/Camera;->prevFlash:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentFlash(I)V

    .line 2307
    :cond_1
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 2308
    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentFlash Value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 2313
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 2316
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startDevice()V

    .line 2317
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateFocusIndicator()V

    .line 2318
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2319
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 2320
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateRemainCount()V

    .line 2322
    return-void
.end method

.method private enableWDR()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 2358
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "enableWDR() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->disableCurrentMode(I)V

    .line 2362
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 2364
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/Camera;->prevScene:I

    .line 2366
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 2368
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/Camera;->prevFlash:I

    .line 2372
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 2374
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2375
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentScene(I)V

    .line 2377
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2378
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentFlash(I)V

    .line 2381
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 2384
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startDevice()V

    .line 2385
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 2386
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 2387
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateRemainCount()V

    .line 2389
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    const-string v0, "MotoCamera"

    const-string v1, "enableWDR() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    :cond_7
    return-void
.end method

.method private getMinPictureResolution()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x280

    .line 596
    const/4 v3, 0x0

    .line 597
    .local v3, res:Ljava/lang/String;
    iget-object v5, p0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 599
    iget-object v5, p0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 600
    .local v0, firstSize:Landroid/hardware/Camera$Size;
    iget-object v5, p0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    iget-object v6, p0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 601
    .local v2, lastSize:Landroid/hardware/Camera$Size;
    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    if-ge v5, v6, :cond_3

    .line 602
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 603
    iget-object v5, p0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 604
    .local v4, size:Landroid/hardware/Camera$Size;
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    if-lt v5, v7, :cond_2

    .line 605
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 620
    .end local v4           #size:Landroid/hardware/Camera$Size;
    :cond_0
    :goto_1
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_1

    const-string v5, "MotoCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " The min picture resolution that is greater than or equal to VGA : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    .end local v0           #firstSize:Landroid/hardware/Camera$Size;
    .end local v1           #i:I
    .end local v2           #lastSize:Landroid/hardware/Camera$Size;
    :cond_1
    return-object v3

    .line 602
    .restart local v0       #firstSize:Landroid/hardware/Camera$Size;
    .restart local v1       #i:I
    .restart local v2       #lastSize:Landroid/hardware/Camera$Size;
    .restart local v4       #size:Landroid/hardware/Camera$Size;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    .end local v1           #i:I
    .end local v4           #size:Landroid/hardware/Camera$Size;
    :cond_3
    iget-object v5, p0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_0

    .line 612
    iget-object v5, p0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 613
    .restart local v4       #size:Landroid/hardware/Camera$Size;
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    if-lt v5, v7, :cond_4

    .line 614
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 615
    goto :goto_1

    .line 611
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method private getResolutionFromIntent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 7175
    const/4 v1, 0x0

    .line 7177
    .local v1, resolution:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 7178
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v2, "output"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7181
    if-nez v1, :cond_0

    .line 7184
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v1

    .line 7185
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResolutionFromIntent: sent via URI, use max resolution "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7207
    :cond_0
    :goto_0
    return-object v1

    .line 7190
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7194
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->getMinPictureResolution()Ljava/lang/String;

    move-result-object v1

    .line 7204
    :goto_1
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResolutionFromIntent: sent image via intent, use min resolution "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7201
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private initAutoTimerModeButtons()V
    .locals 4

    .prologue
    .line 7441
    const v3, 0x7f0d0005

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 7442
    .local v1, autotimer3sBtn:Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 7443
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mTimerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7446
    :cond_0
    const v3, 0x7f0d0006

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 7447
    .local v2, autotimer5sBtn:Landroid/widget/Button;
    if-eqz v2, :cond_1

    .line 7448
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mTimerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7451
    :cond_1
    const v3, 0x7f0d0007

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 7452
    .local v0, autotimer10sBtn:Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 7453
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mTimerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7455
    :cond_2
    return-void
.end method

.method private initPostPanel()V
    .locals 4

    .prologue
    .line 2073
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2092
    :goto_0
    return-void

    .line 2076
    :cond_0
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2077
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0x7f030021

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/Camera/View/CameraContentView;

    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    .line 2080
    const v2, 0x7f0d004b

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    .line 2081
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 2083
    const/4 v1, 0x0

    .line 2084
    .local v1, rl:Landroid/widget/RelativeLayout;
    const v2, 0x7f0d004d

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #rl:Landroid/widget/RelativeLayout;
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2085
    .restart local v1       #rl:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2087
    const v2, 0x7f0d004c

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #rl:Landroid/widget/RelativeLayout;
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2088
    .restart local v1       #rl:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2090
    const v2, 0x7f0d004e

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #rl:Landroid/widget/RelativeLayout;
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2091
    .restart local v1       #rl:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initShutterView()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/16 v1, 0x8

    .line 1537
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 1538
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/16 v5, 0x10

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 1540
    new-instance v0, Lcom/motorola/Camera/View/CameraShutterRender;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/CameraShutterRender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mRender:Lcom/motorola/Camera/View/CameraShutterRender;

    .line 1541
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mRender:Lcom/motorola/Camera/View/CameraShutterRender;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/CameraShutterRender;->SetCallBackHandle(Landroid/os/Handler;)V

    .line 1542
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mRender:Lcom/motorola/Camera/View/CameraShutterRender;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 1545
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setZOrderOnTop(Z)V

    .line 1546
    const v0, 0x7f0d0040

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CameraContentView;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    .line 1547
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/CameraContentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1551
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1552
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 1553
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 1477
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "initViews() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :cond_0
    const v0, 0x7f0d0042

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;

    .line 1483
    const v0, 0x7f0d0046

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    .line 1484
    const v0, 0x7f0d0045

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/FocusView;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    .line 1487
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->setupFocusViews()V

    .line 1491
    const v0, 0x7f0d0047

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mPostText:Landroid/widget/TextView;

    .line 1492
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPostText:Landroid/widget/TextView;

    const v1, 0x7f0b0048

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1493
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPostText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1494
    const v0, 0x7f0d0044

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    .line 1497
    const v0, 0x7f0d0048

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    .line 1498
    const v0, 0x7f0d0049

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    .line 1499
    const v0, 0x7f0d0043

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/PanoramaIndicatorView;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;

    .line 1502
    const v0, 0x7f0d004a

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;

    .line 1503
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v1, "initViews() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :cond_1
    return-void
.end method

.method private initializeFirstTime()V
    .locals 2

    .prologue
    .line 1401
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "initializeFirstTime() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_2

    .line 1448
    :cond_1
    :goto_0
    return-void

    .line 1410
    :cond_2
    new-instance v0, Lcom/motorola/Camera/Camera$2;

    invoke-direct {v0, p0, p0}, Lcom/motorola/Camera/Camera$2;-><init>(Lcom/motorola/Camera/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 1421
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 1424
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    .line 1425
    new-instance v0, Lcom/motorola/Camera/LocUtility;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    invoke-direct {v0, p0, v1}, Lcom/motorola/Camera/LocUtility;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    .line 1427
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    .line 1430
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->initViews()V

    .line 1433
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->checkStorage()V

    .line 1436
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->installIntentFilter()V

    .line 1439
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->disableCurrentMode(I)V

    .line 1441
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 1445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->mFirstTimeInitialized:Z

    .line 1447
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v1, "initializeFirstTime() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initializeSecondTime()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 1590
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "initializeSecondTime() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 1595
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v6

    .line 1598
    .local v6, locOn:Z
    if-ne v6, v4, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    if-eqz v0, :cond_1

    .line 1600
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/LocUtility;->startReceivingLocationUpdates(Landroid/os/Handler;)V

    .line 1603
    :cond_1
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->installIntentFilter()V

    .line 1605
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1606
    .local v4, mirror:Z
    :goto_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;

    iget v5, p0, Lcom/motorola/Camera/Camera;->mDisplayOrientation:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/Camera/FocusManager;->initialize(Lcom/motorola/Camera/FocusManager$FocusListener;Lcom/motorola/Camera/View/FocusView;Landroid/view/View;ZI)V

    .line 1607
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/FocusManager;->initializeFocusTone(Landroid/content/res/AssetFileDescriptor;)V

    .line 1609
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->checkStorage()V

    .line 1611
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamera"

    const-string v1, "initializeSecondTime() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    :cond_2
    return-void

    .line 1605
    .end local v4           #mirror:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private installIntentFilter()V
    .locals 3

    .prologue
    .line 1452
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v2, "installIntentFilter() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mDidRegister:Z

    if-eqz v1, :cond_2

    .line 1455
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v2, "Already registered Filters , so returning..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :cond_1
    :goto_0
    return-void

    .line 1459
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1460
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1461
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1462
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1463
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1464
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1465
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1466
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1467
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/Camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1470
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mDidRegister:Z

    .line 1472
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v2, "installIntentFilter() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 1341
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1342
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isMultishotMode()Z
    .locals 2

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPanoramaMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2060
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPickIntent()Z
    .locals 2

    .prologue
    .line 6023
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6024
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSecurelyLockedModeImageCaptureIntent()Z
    .locals 3

    .prologue
    .line 1346
    const/4 v0, 0x0

    .line 1347
    .local v0, isSecurelyLocked:Z
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 1348
    .local v1, keyguardMgr:Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 1349
    return v0
.end method

.method private isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, supportedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2853
    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWebtopMode()Z
    .locals 2

    .prologue
    .line 2095
    new-instance v0, Lcom/motorola/webtop/WebtopManager;

    invoke-direct {v0, p0}, Lcom/motorola/webtop/WebtopManager;-><init>(Landroid/content/Context;)V

    .line 2096
    .local v0, wtm:Lcom/motorola/webtop/WebtopManager;
    invoke-virtual {v0}, Lcom/motorola/webtop/WebtopManager;->isWebtopMode()Z

    move-result v1

    return v1
.end method

.method private launchCamcorder()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6967
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 6968
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 6970
    const v2, 0x7f0b0005

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    .line 6972
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureClusterCameraMode(I)V

    .line 6973
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 6975
    const-string v2, "MotoCamera"

    const-string v3, "launchCamcorder() - In call, cancelling launch of Camcorder"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6991
    :cond_0
    :goto_0
    return-void

    .line 6980
    :cond_1
    invoke-static {}, Lcom/motorola/Camera/CameraHolder;->instance()Lcom/motorola/Camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/Camera/CameraHolder;->keep()V

    .line 6981
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/motorola/Camera/Camcorder;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6982
    .local v1, videoCamera:Landroid/content/Intent;
    const/high16 v4, 0x400

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6983
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->camPremium:Z

    if-eqz v4, :cond_2

    const-string v4, "Camtype"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6986
    :goto_1
    const-string v4, "CameraSensor"

    iget-object v5, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_2
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6987
    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 6988
    const/high16 v2, 0x10a

    const v3, 0x10a0001

    invoke-virtual {p0, v2, v3}, Lcom/motorola/Camera/Camera;->overridePendingTransition(II)V

    .line 6990
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->finish()V

    goto :goto_0

    .line 6984
    :cond_2
    const-string v4, "Camtype"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    move v2, v3

    .line 6986
    goto :goto_2
.end method

.method private openCamera()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 425
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCameraKPI"

    const-string v3, "openCamera enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 430
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 431
    iput-boolean v4, p0, Lcom/motorola/Camera/Camera;->mDeviceDisabled:Z

    .line 471
    :cond_1
    :goto_0
    return-void

    .line 435
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 437
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCaptureProcessingView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 441
    :cond_3
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_6

    .line 442
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_4

    .line 443
    const-string v2, "MotoCamera"

    const-string v3, "openCamera() - mCameraDevice = null, opening"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_4
    :try_start_0
    iget-boolean v2, p0, Lcom/motorola/Camera/Camera;->mStartSensorFront:Z

    if-eqz v2, :cond_7

    .line 448
    invoke-static {}, Lcom/motorola/Camera/CameraHolder;->instance()Lcom/motorola/Camera/CameraHolder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CameraHolder;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    .line 449
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSpecificCamSetting(I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_1
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    const-string v2, "MotoCameraKPI"

    const-string v3, "openCamera opened"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_5
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_6

    const-string v2, "MotoCamera"

    const-string v3, "openCamera() - mCameraDevice opened"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_6
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    new-instance v3, Lcom/motorola/Camera/Camera$MotoCameraErrorCallback;

    invoke-direct {v3, p0, v6}, Lcom/motorola/Camera/Camera$MotoCameraErrorCallback;-><init>(Lcom/motorola/Camera/Camera;Lcom/motorola/Camera/Camera$1;)V

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 466
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 467
    iput-boolean v5, p0, Lcom/motorola/Camera/Camera;->mZoomAdjusting:Z

    .line 468
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mZoomChangeListener:Lcom/motorola/Camera/Camera$MotoCameraOnZoomChangeListener;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto :goto_0

    .line 451
    :cond_7
    :try_start_1
    invoke-static {}, Lcom/motorola/Camera/CameraHolder;->instance()Lcom/motorola/Camera/CameraHolder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CameraHolder;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    .line 452
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSpecificCamSetting(I)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 454
    :catch_0
    move-exception v1

    .line 455
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v2, "MotoCamera"

    const-string v3, "openCamera() - failed to open camera"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x38

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private postAfterKeep(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 6995
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->mKeepAndRestartPreview:Z

    .line 6996
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6997
    return-void
.end method

.method private removeShutterView()V
    .locals 2

    .prologue
    .line 1556
    const v0, 0x7f0d0040

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CameraContentView;

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    .line 1557
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/CameraContentView;->removeView(Landroid/view/View;)V

    .line 1560
    :cond_0
    return-void
.end method

.method private resetZoom()V
    .locals 2

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setDefaultZoomValue()V

    .line 1620
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_1

    .line 1621
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateZoom(I)V

    .line 1623
    :cond_1
    return-void
.end method

.method private restartPreview(Z)V
    .locals 5
    .parameter "setParams"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 555
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartPreview() - openCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPostText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 558
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCaptureCluster()V

    .line 561
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->startDevice(Z)V

    .line 562
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v1

    .line 563
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isMultishotMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 564
    sget-object v0, Lcom/motorola/Camera/Camera;->mMultishotUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 565
    sget-object v0, Lcom/motorola/Camera/Camera;->mMultishotUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 570
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mAnimationRunning:Z

    if-nez v0, :cond_3

    .line 577
    iput v3, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    .line 579
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 581
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->enableAllControls(Z)V

    .line 584
    :cond_2
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCamera"

    const-string v1, "KPI capture stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateZoom(I)V

    .line 588
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 589
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 590
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateRemainCount()V

    .line 591
    return-void

    .line 566
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->enablePanorama(Z)V

    goto :goto_0

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private selectPhoto()Z
    .locals 27

    .prologue
    .line 6181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    monitor-enter v4

    .line 6182
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    invoke-virtual {v3}, Lcom/motorola/Camera/Camera$ImageCapture;->getLastCaptureUri()Landroid/net/Uri;

    move-result-object v17

    .line 6183
    .local v17, lastUri:Landroid/net/Uri;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6185
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectPhoto uri is "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6187
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/Camera$ImageCapture;->setDone(Z)V

    .line 6189
    if-nez v17, :cond_2

    .line 6191
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/Camera;->setResult(I)V

    .line 6192
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->finish()V

    .line 6193
    const/4 v3, 0x1

    .line 6416
    :cond_1
    :goto_0
    return v3

    .line 6183
    .end local v17           #lastUri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 6196
    .restart local v17       #lastUri:Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    .line 6198
    .local v2, bitmap:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 6199
    .local v10, cropValue:Ljava/lang/String;
    const/16 v24, 0x0

    .line 6201
    .local v24, saveUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    .line 6202
    .local v18, myExtras:Landroid/os/Bundle;
    if-eqz v18, :cond_3

    .line 6204
    const-string v3, "output"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v24

    .end local v24           #saveUri:Landroid/net/Uri;
    check-cast v24, Landroid/net/Uri;

    .line 6205
    .restart local v24       #saveUri:Landroid/net/Uri;
    const-string v3, "crop"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6206
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_3

    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectPhoto myExtras :  saveUri "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", cropValue "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6209
    :cond_3
    if-nez v10, :cond_16

    .line 6217
    if-eqz v24, :cond_b

    .line 6220
    const/16 v16, 0x0

    .line 6221
    .local v16, inputStream:Ljava/io/InputStream;
    const/16 v21, 0x0

    .line 6226
    .local v21, outputStream:Ljava/io/OutputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v16

    .line 6227
    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectPhoto - inputStream.available() "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v21

    .line 6229
    if-nez v21, :cond_5

    .line 6231
    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectPhoto - save to uri "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6232
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/Camera;->setResult(I)V

    .line 6233
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 6234
    const/4 v3, 0x1

    .line 6249
    if-eqz v16, :cond_4

    .line 6251
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 6256
    :cond_4
    :goto_1
    if-eqz v21, :cond_1

    .line 6258
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 6259
    :catch_0
    move-exception v15

    .line 6260
    .local v15, ex:Ljava/io/IOException;
    const-string v4, "MotoCamera"

    const-string v8, "selectPhoto - IOException Ignore close exception for outputStream"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6252
    .end local v15           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v15

    .line 6253
    .restart local v15       #ex:Ljava/io/IOException;
    const-string v4, "MotoCamera"

    const-string v8, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6236
    .end local v15           #ex:Ljava/io/IOException;
    :cond_5
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v11, v3, [B

    .line 6237
    .local v11, data:[B
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    .line 6238
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V

    .line 6239
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 6240
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 6249
    if-eqz v16, :cond_6

    .line 6251
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 6256
    :cond_6
    :goto_2
    if-eqz v21, :cond_7

    .line 6258
    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 6265
    :cond_7
    :goto_3
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/Camera;->setResult(I)V

    .line 6266
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->finish()V

    .line 6416
    .end local v11           #data:[B
    .end local v16           #inputStream:Ljava/io/InputStream;
    .end local v21           #outputStream:Ljava/io/OutputStream;
    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 6252
    .restart local v11       #data:[B
    .restart local v16       #inputStream:Ljava/io/InputStream;
    .restart local v21       #outputStream:Ljava/io/OutputStream;
    :catch_2
    move-exception v15

    .line 6253
    .restart local v15       #ex:Ljava/io/IOException;
    const-string v3, "MotoCamera"

    const-string v4, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 6259
    .end local v15           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v15

    .line 6260
    .restart local v15       #ex:Ljava/io/IOException;
    const-string v3, "MotoCamera"

    const-string v4, "selectPhoto - IOException Ignore close exception for outputStream"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 6242
    .end local v11           #data:[B
    .end local v15           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v15

    .line 6243
    .restart local v15       #ex:Ljava/io/IOException;
    :try_start_8
    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectPhoto - IOException save to uri "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6244
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/Camera;->setResult(I)V

    .line 6245
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->finish()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 6246
    const/4 v3, 0x1

    .line 6249
    if-eqz v16, :cond_8

    .line 6251
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 6256
    :cond_8
    :goto_5
    if-eqz v21, :cond_1

    .line 6258
    :try_start_a
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    .line 6259
    :catch_5
    move-exception v15

    .line 6260
    const-string v4, "MotoCamera"

    const-string v8, "selectPhoto - IOException Ignore close exception for outputStream"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6252
    :catch_6
    move-exception v15

    .line 6253
    const-string v4, "MotoCamera"

    const-string v8, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 6249
    .end local v15           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    if-eqz v16, :cond_9

    .line 6251
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 6256
    :cond_9
    :goto_6
    if-eqz v21, :cond_a

    .line 6258
    :try_start_c
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 6261
    :cond_a
    :goto_7
    throw v3

    .line 6252
    :catch_7
    move-exception v15

    .line 6253
    .restart local v15       #ex:Ljava/io/IOException;
    const-string v4, "MotoCamera"

    const-string v8, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 6259
    .end local v15           #ex:Ljava/io/IOException;
    :catch_8
    move-exception v15

    .line 6260
    .restart local v15       #ex:Ljava/io/IOException;
    const-string v4, "MotoCamera"

    const-string v8, "selectPhoto - IOException Ignore close exception for outputStream"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 6272
    .end local v15           #ex:Ljava/io/IOException;
    .end local v16           #inputStream:Ljava/io/InputStream;
    .end local v21           #outputStream:Ljava/io/OutputStream;
    :cond_b
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    move-result-object v2

    .line 6281
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_c

    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectPhoto returning bitmap to app w="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " h="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6284
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/Camera;->mLastOrientation:I

    move/from16 v20, v0

    .line 6286
    .local v20, orientation:I
    invoke-static/range {v20 .. v20}, Lcom/motorola/Camera/ImageManager;->roundOrientation(I)I

    move-result v20

    .line 6288
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_d

    .line 6289
    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ImageCapture:storeImage - orientation is : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6292
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/motorola/Camera/Camera;->mIsRotatorClosed:Z

    if-eqz v3, :cond_e

    .line 6293
    add-int/lit8 v20, v20, 0x5a

    .line 6296
    :cond_e
    const/16 v3, 0x10e

    move/from16 v0, v20

    if-ne v0, v3, :cond_13

    const/16 v20, 0x0

    .line 6299
    :goto_8
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 6300
    .local v7, bmpRotMtx:Landroid/graphics/Matrix;
    move/from16 v0, v20

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 6302
    const/16 v23, 0x0

    .line 6303
    .local v23, retBmp:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_11

    .line 6305
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 6306
    .local v5, width:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 6307
    .local v6, height:I
    mul-int v3, v5, v6

    const v4, 0x12c00

    if-le v3, v4, :cond_14

    .line 6308
    const/16 v13, 0x140

    .line 6309
    .local v13, dstWidth:I
    const/16 v12, 0xf0

    .line 6310
    .local v12, dstHeight:I
    if-ge v5, v6, :cond_f

    .line 6312
    const/16 v13, 0xf0

    .line 6313
    const/16 v12, 0x140

    .line 6315
    :cond_f
    int-to-float v3, v13

    int-to-float v4, v5

    div-float/2addr v3, v4

    int-to-float v4, v12

    int-to-float v8, v6

    div-float/2addr v4, v8

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 6316
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_10

    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectPhoto scaling scalew="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int v8, v13, v5

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " scaleh="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int v8, v12, v6

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6317
    :cond_10
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 6327
    .end local v5           #width:I
    .end local v6           #height:I
    .end local v12           #dstHeight:I
    .end local v13           #dstWidth:I
    :cond_11
    :goto_9
    if-eqz v23, :cond_15

    .line 6328
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_12

    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectPhoto return bitmap: w="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " h="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6329
    :cond_12
    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    const-string v8, "inline-data"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "data"

    move-object/from16 v0, v23

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/motorola/Camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 6335
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->finish()V

    goto/16 :goto_4

    .line 6274
    .end local v7           #bmpRotMtx:Landroid/graphics/Matrix;
    .end local v20           #orientation:I
    .end local v23           #retBmp:Landroid/graphics/Bitmap;
    :catch_9
    move-exception v14

    .line 6275
    .local v14, e:Ljava/io/IOException;
    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectPhoto - IOException read from uri "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6276
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/Camera;->setResult(I)V

    .line 6277
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->finish()V

    .line 6278
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 6297
    .end local v14           #e:Ljava/io/IOException;
    .restart local v20       #orientation:I
    :cond_13
    add-int/lit8 v20, v20, 0x5a

    goto/16 :goto_8

    .line 6321
    .restart local v5       #width:I
    .restart local v6       #height:I
    .restart local v7       #bmpRotMtx:Landroid/graphics/Matrix;
    .restart local v23       #retBmp:Landroid/graphics/Bitmap;
    :cond_14
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v23

    goto :goto_9

    .line 6331
    .end local v5           #width:I
    .end local v6           #height:I
    :cond_15
    const-string v3, "MotoCamera"

    const-string v4, "selectPhoto ERROR: bitmap too big"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6332
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/Camera;->setResult(I)V

    goto :goto_a

    .line 6343
    .end local v7           #bmpRotMtx:Landroid/graphics/Matrix;
    .end local v20           #orientation:I
    .end local v23           #retBmp:Landroid/graphics/Bitmap;
    :cond_16
    const/16 v26, 0x0

    .line 6344
    .local v26, tempUri:Landroid/net/Uri;
    const/16 v25, 0x0

    .line 6345
    .local v25, tempStream:Ljava/io/FileOutputStream;
    const/16 v16, 0x0

    .line 6350
    .restart local v16       #inputStream:Ljava/io/InputStream;
    :try_start_e
    const-string v3, "crop-temp"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f

    move-result-object v22

    .line 6353
    .local v22, path:Ljava/io/File;
    :try_start_f
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f

    .line 6359
    :goto_b
    :try_start_10
    const-string v3, "crop-temp"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/motorola/Camera/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v25

    .line 6361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v16

    .line 6362
    const-string v3, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectPhoto - inputStream.available() "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6363
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v11, v3, [B

    .line 6364
    .restart local v11       #data:[B
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/io/InputStream;->read([B)I

    .line 6365
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/io/FileOutputStream;->write([B)V

    .line 6366
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 6368
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V

    .line 6369
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    move-result-object v26

    .line 6379
    if-eqz v16, :cond_17

    .line 6381
    :try_start_11
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    .line 6386
    :cond_17
    :goto_c
    if-eqz v25, :cond_18

    .line 6388
    :try_start_12
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_13

    .line 6395
    :cond_18
    :goto_d
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 6396
    .local v19, newExtras:Landroid/os/Bundle;
    const-string v3, "circle"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 6397
    const-string v3, "circleCrop"

    const-string v4, "true"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6398
    :cond_19
    if-eqz v24, :cond_1e

    .line 6399
    const-string v3, "output"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6403
    :goto_e
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 6409
    .local v9, cropIntent:Landroid/content/Intent;
    const-string v3, "com.android.camera.action.CROP"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6410
    const-string v3, "image/jpeg"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 6411
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 6413
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v3}, Lcom/motorola/Camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_4

    .line 6355
    .end local v9           #cropIntent:Landroid/content/Intent;
    .end local v11           #data:[B
    .end local v19           #newExtras:Landroid/os/Bundle;
    :catch_a
    move-exception v14

    .line 6357
    .local v14, e:Ljava/lang/SecurityException;
    :try_start_13
    const-string v3, "MotoCamera"

    const-string v4, "Security exception deleting file!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    goto/16 :goto_b

    .line 6370
    .end local v14           #e:Ljava/lang/SecurityException;
    .end local v22           #path:Ljava/io/File;
    :catch_b
    move-exception v15

    .line 6371
    .local v15, ex:Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    :try_start_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/Camera;->setResult(I)V

    .line 6372
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->finish()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 6373
    const/4 v3, 0x1

    .line 6379
    if-eqz v16, :cond_1a

    .line 6381
    :try_start_15
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    .line 6386
    .end local v15           #ex:Ljava/io/FileNotFoundException;
    :cond_1a
    :goto_f
    if-eqz v25, :cond_1

    .line 6388
    :try_start_16
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c

    goto/16 :goto_0

    .line 6389
    :catch_c
    move-exception v4

    goto/16 :goto_0

    .line 6382
    .restart local v11       #data:[B
    .restart local v22       #path:Ljava/io/File;
    :catch_d
    move-exception v15

    .line 6383
    .local v15, ex:Ljava/io/IOException;
    const-string v3, "MotoCamera"

    const-string v4, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 6382
    .end local v11           #data:[B
    .end local v22           #path:Ljava/io/File;
    .local v15, ex:Ljava/io/FileNotFoundException;
    :catch_e
    move-exception v15

    .line 6383
    .local v15, ex:Ljava/io/IOException;
    const-string v4, "MotoCamera"

    const-string v8, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 6374
    .end local v15           #ex:Ljava/io/IOException;
    :catch_f
    move-exception v15

    .line 6375
    .restart local v15       #ex:Ljava/io/IOException;
    const/4 v3, 0x0

    :try_start_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/Camera;->setResult(I)V

    .line 6376
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->finish()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 6377
    const/4 v3, 0x1

    .line 6379
    if-eqz v16, :cond_1b

    .line 6381
    :try_start_18
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_11

    .line 6386
    :cond_1b
    :goto_10
    if-eqz v25, :cond_1

    .line 6388
    :try_start_19
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_10

    goto/16 :goto_0

    .line 6389
    :catch_10
    move-exception v4

    goto/16 :goto_0

    .line 6382
    :catch_11
    move-exception v15

    .line 6383
    const-string v4, "MotoCamera"

    const-string v8, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 6379
    .end local v15           #ex:Ljava/io/IOException;
    :catchall_2
    move-exception v3

    if-eqz v16, :cond_1c

    .line 6381
    :try_start_1a
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_12

    .line 6386
    :cond_1c
    :goto_11
    if-eqz v25, :cond_1d

    .line 6388
    :try_start_1b
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_14

    .line 6391
    :cond_1d
    :goto_12
    throw v3

    .line 6382
    :catch_12
    move-exception v15

    .line 6383
    .restart local v15       #ex:Ljava/io/IOException;
    const-string v4, "MotoCamera"

    const-string v8, "selectPhoto - IOException Ignore close exception for inputStream"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 6401
    .end local v15           #ex:Ljava/io/IOException;
    .restart local v11       #data:[B
    .restart local v19       #newExtras:Landroid/os/Bundle;
    .restart local v22       #path:Ljava/io/File;
    :cond_1e
    const-string v3, "return-data"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_e

    .line 6389
    .end local v19           #newExtras:Landroid/os/Bundle;
    :catch_13
    move-exception v3

    goto/16 :goto_d

    .end local v11           #data:[B
    .end local v22           #path:Ljava/io/File;
    :catch_14
    move-exception v4

    goto :goto_12
.end method

.method private setCameraParameters()V
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->setCameraParameters(Z)V

    .line 628
    return-void
.end method

.method private setCameraParameters(Z)V
    .locals 42
    .parameter "resetZoom"

    .prologue
    .line 636
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_0

    const-string v36, "MotoCamera"

    const-string v37, "setCameraParameters() - Enter"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_0
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_1

    const-string v36, "MotoCameraKPI"

    const-string v37, "setCamParam enter"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v36, v0

    if-nez v36, :cond_3

    .line 639
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_2

    const-string v36, "MotoCamera"

    const-string v37, "setCameraParameters() - camera device is null"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_2
    :goto_0
    return-void

    .line 644
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 645
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_4

    const-string v36, "MotoCameraKPI"

    const-string v37, "setCamParam getCustomParam"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_4
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_5

    const-string v36, "MotoCamera"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Back Camera:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    if-nez v36, :cond_6

    .line 650
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_2

    .line 651
    const-string v36, "MotoCamera"

    const-string v37, "setCameraParameters() - mParameters is NULL!!!!! Exiting);"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 656
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v37, v0

    monitor-enter v37

    .line 660
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v38, v0

    const-string v36, "persist.sys.mot.encrypt.mmc"

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v36

    const/16 v39, 0x1

    move/from16 v0, v36

    move/from16 v1, v39

    if-ne v0, v1, :cond_13

    const/16 v36, 0x1

    :goto_1
    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCamcorderAESProps(Z)V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v36

    if-eqz v36, :cond_14

    sget-boolean v31, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadBackParams:Z

    .line 664
    .local v31, shouldReadHAL:Z
    :goto_2
    if-nez v31, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxPicResolution()Ljava/lang/String;

    move-result-object v36

    if-nez v36, :cond_a

    .line 666
    :cond_7
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_8

    const-string v36, "MotoCameraKPI"

    const-string v38, "setCamParam read hal"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->getCameraCapabilities(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 668
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_9

    const-string v36, "MotoCameraKPI"

    const-string v38, "setCamParam getCameraCapabilities"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v36

    if-eqz v36, :cond_15

    .line 670
    const/16 v36, 0x0

    sput-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadBackParams:Z

    .line 675
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/FocusManager;->initializeParameters(Landroid/hardware/Camera$Parameters;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadAutoDetectValues()V

    .line 677
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_b

    const-string v36, "MotoCameraKPI"

    const-string v38, "setCamParam loadAutoDetectValues"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v36

    sput v36, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v36

    sput-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v36

    if-eqz v36, :cond_c

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mZoomChangeListener:Lcom/motorola/Camera/Camera$MotoCameraOnZoomChangeListener;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 687
    :cond_c
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_d

    .line 688
    const-string v36, "MotoCamera"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "setCameraParameters() - max zoom is "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sget v39, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const-string v36, "MotoCamera"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "setCameraParameters() - SmoothZoomSupported is "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sget-boolean v39, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_d
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_e

    const-string v36, "MotoCameraKPI"

    const-string v38, "setCamParam zoom setup"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v19

    .line 696
    .local v19, mode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    .line 698
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/Camera;->mIsImageCaptureIntent:Z

    move/from16 v36, v0

    if-eqz v36, :cond_f

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->getResolutionFromIntent()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setServiceModeResolution(Ljava/lang/String;)V

    .line 702
    :cond_f
    if-eqz v19, :cond_10

    const/16 v36, 0x5

    move/from16 v0, v19

    move/from16 v1, v36

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v36

    const/16 v38, 0x1

    move/from16 v0, v36

    move/from16 v1, v38

    if-eq v0, v1, :cond_10

    const/16 v36, 0x6

    move/from16 v0, v19

    move/from16 v1, v36

    if-eq v0, v1, :cond_10

    const/16 v36, 0x4

    move/from16 v0, v19

    move/from16 v1, v36

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v36

    if-nez v36, :cond_11

    .line 709
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v24

    .line 710
    .local v24, pictureSize:Ljava/lang/String;
    if-nez v24, :cond_16

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v39

    add-int/lit8 v39, v39, -0x1

    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mSupportedPictureSizes:Ljava/util/List;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v40

    add-int/lit8 v40, v40, -0x1

    move-object/from16 v0, v36

    move/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v36

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v36, v0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 724
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/Camera;->mImageResolution:Ljava/lang/String;

    .line 726
    .end local v24           #pictureSize:Ljava/lang/String;
    :cond_11
    const/16 v36, 0x1

    move/from16 v0, v19

    move/from16 v1, v36

    if-ne v0, v1, :cond_12

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentPanResDimension()Ljava/lang/String;

    move-result-object v24

    .line 730
    .restart local v24       #pictureSize:Ljava/lang/String;
    const-string v36, "x"

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v35

    .line 731
    .local v35, temp:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const/16 v38, 0x0

    aget-object v38, v35, v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    const/16 v39, 0x1

    aget-object v39, v35, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, v36

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentPanResDimension()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/Camera;->mImageResolution:Ljava/lang/String;

    .line 735
    .end local v24           #pictureSize:Ljava/lang/String;
    .end local v35           #temp:[Ljava/lang/String;
    :cond_12
    const/16 v36, 0x2

    move/from16 v0, v19

    move/from16 v1, v36

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isMultishotEnable()Z

    move-result v36

    if-eqz v36, :cond_1c

    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    const v38, 0x7f090007

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 745
    .local v5, appmaxcount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v38, "mot-burst-picture-count-values"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 747
    .local v34, supportedmotburstpicturecountlist:Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v6, asupportedmotburstcounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v33, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v36, 0x2c

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 749
    .local v33, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface/range {v33 .. v34}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 750
    invoke-interface/range {v33 .. v33}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_17

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 751
    .local v29, s:Ljava/lang/String;
    new-instance v36, Ljava/lang/Integer;

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1037
    .end local v5           #appmaxcount:I
    .end local v6           #asupportedmotburstcounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #mode:I
    .end local v29           #s:Ljava/lang/String;
    .end local v31           #shouldReadHAL:Z
    .end local v33           #splitter:Landroid/text/TextUtils$StringSplitter;
    .end local v34           #supportedmotburstpicturecountlist:Ljava/lang/String;
    :catchall_0
    move-exception v36

    monitor-exit v37
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v36

    .line 660
    :cond_13
    const/16 v36, 0x0

    goto/16 :goto_1

    .line 663
    :cond_14
    :try_start_1
    sget-boolean v31, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadFrontParams:Z

    goto/16 :goto_2

    .line 672
    .restart local v31       #shouldReadHAL:Z
    :cond_15
    const/16 v36, 0x0

    sput-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadFrontParams:Z

    goto/16 :goto_3

    .line 720
    .restart local v19       #mode:I
    .restart local v24       #pictureSize:Ljava/lang/String;
    :cond_16
    const-string v36, "x"

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v35

    .line 721
    .restart local v35       #temp:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const/16 v38, 0x0

    aget-object v38, v35, v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    const/16 v39, 0x1

    aget-object v39, v35, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, v36

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto/16 :goto_4

    .line 753
    .end local v24           #pictureSize:Ljava/lang/String;
    .end local v35           #temp:[Ljava/lang/String;
    .restart local v5       #appmaxcount:I
    .restart local v6       #asupportedmotburstcounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v33       #splitter:Landroid/text/TextUtils$StringSplitter;
    .restart local v34       #supportedmotburstpicturecountlist:Ljava/lang/String;
    :cond_17
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v36

    if-nez v36, :cond_19

    .line 756
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_18
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    .line 757
    .local v29, s:Ljava/lang/Integer;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v36

    if-gt v0, v5, :cond_18

    .line 758
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v36

    sput v36, Lcom/motorola/Camera/Camera;->mMultiShotMaxCount:I

    goto :goto_6

    .line 762
    .end local v29           #s:Ljava/lang/Integer;
    :cond_19
    const/16 v36, 0x0

    sput v36, Lcom/motorola/Camera/Camera;->mMultiShotMaxCount:I

    .line 765
    :cond_1a
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 766
    const/4 v6, 0x0

    .line 768
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_1b

    .line 769
    const-string v36, "MotoCamera"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "mMultiShotMaxCount set to = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sget v39, Lcom/motorola/Camera/Camera;->mMultiShotMaxCount:I

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v38, v0

    sget v39, Lcom/motorola/Camera/Camera;->mMultiShotMaxCount:I

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->setBurstCaptureCount(Landroid/hardware/Camera$Parameters;I)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v36

    if-eqz v36, :cond_1c

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPicResolution()Ljava/lang/String;

    move-result-object v36

    const-string v38, "x"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 775
    .local v7, burstModeSize:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const/16 v38, 0x0

    aget-object v38, v7, v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    const/16 v39, 0x1

    aget-object v39, v7, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, v36

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 780
    .end local v5           #appmaxcount:I
    .end local v6           #asupportedmotburstcounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7           #burstModeSize:[Ljava/lang/String;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v33           #splitter:Landroid/text/TextUtils$StringSplitter;
    .end local v34           #supportedmotburstpicturecountlist:Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v32

    .line 781
    .local v32, size:Landroid/hardware/Camera$Size;
    move-object/from16 v0, v32

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v36, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/motorola/Camera/Camera;->setJpegThumbnailSize(II)V

    .line 783
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 784
    .local v9, dm:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 786
    const-string v36, "ro.media.camerapreview.reg"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 787
    .local v25, pr:Ljava/lang/String;
    const-string v36, "ro.media.camerapreview.wide"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 789
    .local v27, pw:Ljava/lang/String;
    const/16 v36, 0x1

    move/from16 v0, v19

    move/from16 v1, v36

    if-ne v0, v1, :cond_33

    .line 791
    const/16 v22, 0x0

    .line 792
    .local v22, panVFRes:Ljava/lang/String;
    const/16 v35, 0x0

    .line 793
    .restart local v35       #temp:[Ljava/lang/String;
    const-string v36, "ro.media.panorama.frameres"

    invoke-static/range {v36 .. v36}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 794
    if-eqz v22, :cond_32

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v36

    if-lez v36, :cond_32

    const-string v36, "640x480"

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v36

    if-eqz v36, :cond_32

    .line 796
    const-string v36, "x"

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v35

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const/16 v38, 0x0

    aget-object v38, v35, v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    const/16 v39, 0x1

    aget-object v39, v35, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, v36

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 853
    .end local v22           #panVFRes:Ljava/lang/String;
    .end local v35           #temp:[Ljava/lang/String;
    :cond_1d
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v26

    .line 854
    .local v26, previewSize:Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;

    move-object/from16 v36, v0

    if-eqz v36, :cond_1e

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;

    move-object/from16 v36, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v38, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v39, v0

    move-object/from16 v0, v36

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/CameraView;->setAspectRatio(II)V

    .line 859
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/motorola/Camera/Camera;->mIsImageCaptureIntent:Z

    move/from16 v36, v0

    if-eqz v36, :cond_37

    .line 863
    sget-object v20, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 864
    .local v20, model:Ljava/lang/String;
    if-eqz v20, :cond_1f

    const-string v36, "XT889"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_1f

    const-string v36, "MT887"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_1f

    const-string v36, "XT885"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_1f

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    sget-object v38, Lcom/motorola/Camera/CameraGlobalType;->MMS_VIDEO_CAPTURE_FRAMERATE:Ljava/lang/Integer;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 902
    .end local v20           #model:Ljava/lang/String;
    :cond_1f
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const/16 v38, 0x5f

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v36

    move-object/from16 v0, v36

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/Camera/Camera;->pictureWidth:I

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v36

    move-object/from16 v0, v36

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/Camera/Camera;->pictureHeight:I

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/Camera/Camera;->picturePixelFormat:I

    .line 910
    if-nez v19, :cond_3c

    .line 913
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_20

    const-string v36, "MotoCamera"

    const-string v38, "Setting mode to high-quality: zsl"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v38, "mode"

    const-string v39, "high-quality-zsl"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v36

    const/16 v38, 0x7

    move/from16 v0, v36

    move/from16 v1, v38

    if-ne v0, v1, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v36

    if-eqz v36, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v36

    const/16 v38, 0x5

    move/from16 v0, v36

    move/from16 v1, v38

    if-ne v0, v1, :cond_3e

    .line 926
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v38, "mot-image-stabilization-mode"

    const-string v39, "on"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    :goto_a
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->SHOW_ISO_SETTING:Z

    if-eqz v36, :cond_22

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v38, "mot-picture-iso"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentIsoValue()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->setCameraMode(Landroid/hardware/Camera$Parameters;I)V

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedWhiteBalancesValues()Ljava/util/List;

    move-result-object v36

    if-eqz v36, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v36

    if-eqz v36, :cond_23

    .line 943
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->updateWhiteBalances()V

    .line 946
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v30

    .line 947
    .local v30, sceneMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v36

    if-eqz v36, :cond_24

    .line 949
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v36

    if-eqz v36, :cond_3f

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v36

    const-string v38, "landscape"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_24

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v38, "landscape"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 973
    :cond_24
    :goto_b
    const/16 v36, 0x6

    move/from16 v0, v30

    move/from16 v1, v36

    if-eq v0, v1, :cond_25

    const/16 v36, 0x7

    move/from16 v0, v30

    move/from16 v1, v36

    if-ne v0, v1, :cond_44

    .line 975
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v38, v0

    const-string v39, "off"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->setFlash(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 985
    :cond_26
    :goto_c
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_27

    const-string v36, "MotoCameraKPI"

    const-string v38, "setCamParam flast set"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v36

    if-eqz v36, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v36

    if-lez v36, :cond_28

    .line 990
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->updateEffects()V

    .line 993
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v36

    const-string v38, "auto"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_46

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mMotoEnvCallback:Lcom/motorola/Camera/Camera$MotoEnvCallback;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setEnvDetectCallback(Landroid/hardware/Camera$EnvDetectCallback;)V

    .line 1002
    :cond_29
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v36

    if-nez v36, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v36

    if-eqz v36, :cond_2b

    .line 1003
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentExpValue()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1004
    .local v13, expIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 1007
    .end local v13           #expIndex:I
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->updateConSatISO()V

    .line 1009
    if-eqz p1, :cond_2c

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const/16 v38, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1013
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v36

    if-eqz v36, :cond_47

    const-string v11, "on"

    .line 1015
    .local v11, env:Ljava/lang/String;
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v38, "mot-env-event-mode-values"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1016
    .local v12, envValues:Ljava/lang/String;
    if-eqz v12, :cond_2d

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v36

    const/16 v38, 0x1

    move/from16 v0, v36

    move/from16 v1, v38

    if-le v0, v1, :cond_2d

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v38, "mot-env-event-mode"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v11}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const-string v36, "MotoCamera"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "mot-env-enent-mode supported , values can be "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1022
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_2e

    const-string v36, "MotoCameraKPI"

    const-string v38, "setCamParam setCustomParams"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedWhiteBalancesValues()Ljava/util/List;

    move-result-object v36

    if-eqz v36, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v36

    if-nez v36, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentWhiteBalance()I

    move-result v36

    if-eqz v36, :cond_2f

    .line 1031
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->updateWhiteBalances()V

    .line 1033
    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->setFocusModeParameters()V

    .line 1034
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_30

    const-string v36, "MotoCamera"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "setCameraParameters focus set"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_30
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_31

    const-string v36, "MotoCameraKPI"

    const-string v38, "setCamParam getCustomParams"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_31
    monitor-exit v37
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1039
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_2

    const-string v36, "MotoCamera"

    const-string v37, "setCameraParameters() - Exit"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 801
    .end local v11           #env:Ljava/lang/String;
    .end local v12           #envValues:Ljava/lang/String;
    .end local v26           #previewSize:Landroid/hardware/Camera$Size;
    .end local v30           #sceneMode:I
    .restart local v22       #panVFRes:Ljava/lang/String;
    .restart local v35       #temp:[Ljava/lang/String;
    :cond_32
    :try_start_2
    const-string v22, "640x480"

    .line 802
    const-string v36, "x"

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v35

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const/16 v38, 0x0

    aget-object v38, v35, v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    const/16 v39, 0x1

    aget-object v39, v35, v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, v36

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    goto/16 :goto_7

    .line 807
    .end local v22           #panVFRes:Ljava/lang/String;
    .end local v35           #temp:[Ljava/lang/String;
    :cond_33
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v36

    if-eqz v36, :cond_35

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v36

    if-eqz v36, :cond_35

    .line 810
    :try_start_3
    move-object/from16 v0, v32

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v36, v36, v38

    const v38, 0x3fab851f

    cmpl-float v36, v36, v38

    if-lez v36, :cond_34

    .line 812
    const-string v36, "x"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    const/16 v38, 0x0

    aget-object v36, v36, v38

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 813
    .local v28, pwidth:I
    const-string v36, "x"

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    const/16 v38, 0x1

    aget-object v36, v36, v38

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v23

    .line 827
    .local v23, pheight:I
    :goto_f
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v28

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 828
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/Camera/Camera;->mPreviewWidth:F

    .line 829
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/Camera/Camera;->mPreviewHeight:F

    .line 830
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_1d

    const-string v36, "MotoCamera"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Preview set from Camera media Profiles pw: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "pr: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_7

    .line 817
    .end local v23           #pheight:I
    .end local v28           #pwidth:I
    :cond_34
    :try_start_5
    const-string v36, "x"

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    const/16 v38, 0x0

    aget-object v36, v36, v38

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 818
    .restart local v28       #pwidth:I
    const-string v36, "x"

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    const/16 v38, 0x1

    aget-object v36, v36, v38

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v23

    .restart local v23       #pheight:I
    goto :goto_f

    .line 822
    .end local v23           #pheight:I
    .end local v28           #pwidth:I
    :catch_0
    move-exception v10

    .line 823
    .local v10, e:Ljava/lang/NumberFormatException;
    const/16 v28, 0x280

    .line 824
    .restart local v28       #pwidth:I
    const/16 v23, 0x1e0

    .restart local v23       #pheight:I
    goto/16 :goto_f

    .line 836
    .end local v10           #e:Ljava/lang/NumberFormatException;
    .end local v23           #pheight:I
    .end local v28           #pwidth:I
    :cond_35
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 837
    .local v8, display:Landroid/view/Display;
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_36

    const-string v36, "MotoCamera"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "setCameraParameters() - Display size is "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "x"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_36
    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/Camera/Camera;->mDisplayHeight:I

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->getSortedList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v17

    .line 844
    .local v17, lv:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, v32

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v38, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v40, v0

    div-double v38, v38, v40

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v36

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v40

    move-object/from16 v0, v17

    move-wide/from16 v1, v38

    move/from16 v3, v36

    move/from16 v4, v40

    invoke-static {v0, v1, v2, v3, v4}, Lcom/motorola/Camera/CameraGlobalTools;->getOptimalPreviewSize(Ljava/util/List;DII)Landroid/hardware/Camera$Size;

    move-result-object v21

    .line 845
    .local v21, optimalSize:Landroid/hardware/Camera$Size;
    if-eqz v21, :cond_1d

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v38, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v39, v0

    move-object/from16 v0, v36

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 848
    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/Camera/Camera;->mPreviewWidth:F

    .line 849
    move-object/from16 v0, v21

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/Camera/Camera;->mPreviewHeight:F

    goto/16 :goto_7

    .line 870
    .end local v8           #display:Landroid/view/Display;
    .end local v17           #lv:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v21           #optimalSize:Landroid/hardware/Camera$Size;
    .restart local v26       #previewSize:Landroid/hardware/Camera$Size;
    :cond_37
    const/16 v18, 0x0

    .line 872
    .local v18, maxFrameRate:I
    const-string v36, "ro.media.capture.prevfps"

    const/16 v38, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 873
    if-eqz v18, :cond_38

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 876
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_1f

    const-string v36, "MotoCamera"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "setCameraParameters() - from system property maxFrameRate is "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 881
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v15

    .line 883
    .local v15, frameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v15, :cond_1f

    .line 885
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_39
    :goto_10
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_3a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 887
    .local v14, frameRate:I
    move/from16 v0, v18

    if-le v14, v0, :cond_39

    const/16 v36, 0x1e

    move/from16 v0, v36

    if-gt v14, v0, :cond_39

    .line 889
    move/from16 v18, v14

    goto :goto_10

    .line 893
    .end local v14           #frameRate:I
    :cond_3a
    if-eqz v18, :cond_3b

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 895
    :cond_3b
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_1f

    const-string v36, "MotoCamera"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "setCameraParameters() - maxFrameRate is "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 918
    .end local v15           #frameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #maxFrameRate:I
    :cond_3c
    sget-boolean v36, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v36, :cond_3d

    const-string v36, "MotoCamera"

    const-string v38, "Setting mode to high-quality: nonzsl"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v38, "mode"

    const-string v39, "high-quality"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 929
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v38, "mot-image-stabilization-mode"

    const-string v39, "off"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 953
    .restart local v30       #sceneMode:I
    :cond_3f
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/Camera;->isMultishotMode()Z

    move-result v36

    if-nez v36, :cond_40

    const/16 v36, 0x6

    move/from16 v0, v19

    move/from16 v1, v36

    if-eq v0, v1, :cond_40

    const/16 v36, 0x4

    move/from16 v0, v19

    move/from16 v1, v36

    if-ne v0, v1, :cond_41

    .line 956
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v38, "auto"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 958
    :cond_41
    sget-object v36, Lcom/motorola/Camera/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v36, v0

    move/from16 v0, v30

    move/from16 v1, v36

    if-ge v0, v1, :cond_24

    .line 959
    const/16 v36, 0x6

    move/from16 v0, v30

    move/from16 v1, v36

    if-ne v0, v1, :cond_42

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v38, "auto"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFocusModes()Ljava/lang/String;

    move-result-object v36

    const-string v38, "macro"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v36

    if-eqz v36, :cond_24

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v38, "macro"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 964
    :cond_42
    const/16 v36, 0x7

    move/from16 v0, v30

    move/from16 v1, v36

    if-ne v0, v1, :cond_43

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    const-string v38, "auto"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 967
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v36, v0

    sget-object v38, Lcom/motorola/Camera/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    aget-object v38, v38, v30

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 976
    :cond_44
    const/16 v36, 0x4

    move/from16 v0, v30

    move/from16 v1, v36

    if-ne v0, v1, :cond_45

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v38, v0

    const-string v39, "on"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->setFlash(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 978
    :cond_45
    const/16 v36, 0x3

    move/from16 v0, v30

    move/from16 v1, v36

    if-eq v0, v1, :cond_26

    const/16 v36, 0x2

    move/from16 v0, v30

    move/from16 v1, v36

    if-eq v0, v1, :cond_26

    const/16 v36, 0x5

    move/from16 v0, v30

    move/from16 v1, v36

    if-eq v0, v1, :cond_26

    const/16 v36, 0x4

    move/from16 v0, v30

    move/from16 v1, v36

    if-eq v0, v1, :cond_26

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v38, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CameraUtility;->setFlash(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_c

    .line 996
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v36, v0

    const/16 v38, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setEnvDetectCallback(Landroid/hardware/Camera$EnvDetectCallback;)V

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v36, v0

    if-eqz v36, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    move-object/from16 v36, v0

    const/16 v38, 0x0

    const/16 v39, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideHandshake(ZZ)V

    goto/16 :goto_d

    .line 1013
    :cond_47
    const-string v11, "off"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_e
.end method

.method private setFocusModeParameters()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1043
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "auto"

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/motorola/Camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->mFocusAreaSupported:Z

    .line 1044
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_6

    :goto_1
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mMeteringAreaSupported:Z

    .line 1046
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v1}, Lcom/motorola/Camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1049
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v1}, Lcom/motorola/Camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mMotoEnvCallback:Lcom/motorola/Camera/Camera$MotoEnvCallback;

    iget-boolean v0, v0, Lcom/motorola/Camera/Camera$MotoEnvCallback;->mLowLight:Z

    if-nez v0, :cond_7

    .line 1057
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 1058
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v1}, Lcom/motorola/Camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1063
    :goto_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_2

    .line 1064
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v0}, Lcom/motorola/Camera/FocusManager;->shouldShowCafStatus()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1065
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCafStatus(Z)V

    .line 1070
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/FocusManager;->setFocusParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1072
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_3

    .line 1073
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1075
    :cond_3
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    .line 1076
    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusModeParameters focus set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 1043
    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 1044
    goto/16 :goto_1

    .line 1060
    :cond_7
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    goto :goto_2

    .line 1067
    :cond_8
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideCafStatus(Z)V

    goto :goto_3
.end method

.method private setGroupIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7296
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setJpegThumbnailSize(II)V
    .locals 17
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1081
    move/from16 v0, p1

    int-to-double v13, v0

    move/from16 v0, p2

    int-to-double v15, v0

    div-double v2, v13, v15

    .line 1082
    .local v2, currentAspectRatio:D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v12

    .line 1083
    .local v12, supportedThumbnailSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v12, :cond_3

    .line 1084
    const/4 v1, 0x0

    .line 1085
    .local v1, closestSize:Landroid/hardware/Camera$Size;
    const-wide v6, 0x7fefffffffffffffL

    .line 1086
    .local v6, diff:D
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    .line 1087
    .local v11, supportedSize:Landroid/hardware/Camera$Size;
    iget v13, v11, Landroid/hardware/Camera$Size;->width:I

    int-to-double v13, v13

    iget v15, v11, Landroid/hardware/Camera$Size;->height:I

    int-to-double v15, v15

    div-double v9, v13, v15

    .line 1088
    .local v9, supportedAspectRatio:D
    sub-double v13, v9, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 1089
    .local v4, currentDiff:D
    cmpg-double v13, v4, v6

    if-gtz v13, :cond_0

    .line 1090
    move-object v1, v11

    .line 1091
    move-wide v6, v4

    goto :goto_0

    .line 1095
    .end local v4           #currentDiff:D
    .end local v9           #supportedAspectRatio:D
    .end local v11           #supportedSize:Landroid/hardware/Camera$Size;
    :cond_1
    if-eqz v1, :cond_3

    .line 1096
    sget-boolean v13, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v13, :cond_2

    const-string v13, "MotoCamera"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Setting the Jpeg Thumbnail size as \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " x "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v14, v1, Landroid/hardware/Camera$Size;->width:I

    iget v15, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v13, v14, v15}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 1100
    .end local v1           #closestSize:Landroid/hardware/Camera$Size;
    .end local v6           #diff:D
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private setOrientationIndicator(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 1353
    const v0, 0x7f0d002d

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/RotateImageView;->setDegree(I)V

    .line 1355
    const v0, 0x7f0d002e

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/RotateImageView;->setDegree(I)V

    .line 1357
    const v0, 0x7f0d002f

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/RotateImageView;->setDegree(I)V

    .line 1359
    const v0, 0x7f0d0031

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/RotateImageView;->setDegree(I)V

    .line 1361
    const v0, 0x7f0d0032

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/RotateImageView;->setDegree(I)V

    .line 1363
    const v0, 0x7f0d0033

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/RotateImageView;->setDegree(I)V

    .line 1365
    return-void
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 1104
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v2, "setPreviewDisplay() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v2, "setPreviewDisplay() - calling mCameraDevice.setPreviewDisplay()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCamera"

    const-string v2, "setPreviewDisplay() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_2
    return-void

    .line 1111
    :catch_0
    move-exception v0

    .line 1113
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "MotoCamera"

    const-string v2, "error setting preview display, closing camera"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->closeCamera()V

    .line 1115
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private setupDevice()V
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->setupDevice(Z)V

    .line 475
    return-void
.end method

.method private setupDevice(Z)V
    .locals 3
    .parameter "resetZoom"

    .prologue
    .line 478
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraKPI"

    const-string v1, "setupDevice enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPreview()V

    .line 480
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->disableUIAfterStopPreview()V

    .line 481
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraKPI"

    const-string v1, "setupDevice preview stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_1
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->setCameraParameters(Z)V

    .line 483
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCameraKPI"

    const-string v1, "setupDevice cam params set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadSliderData()V

    .line 485
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCameraKPI"

    const-string v1, "setupDevice slider loaded "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_5

    .line 489
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->setCameraDisplayOrientation(ILandroid/hardware/Camera;)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/Camera;->mDisplayOrientation:I

    .line 493
    :goto_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 499
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 500
    return-void

    .line 491
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraUtility;->setCameraDisplayOrientation(ILandroid/hardware/Camera;)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/Camera;->mDisplayOrientation:I

    goto :goto_0
.end method

.method private setupFocusViews()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/16 v1, 0x8

    .line 1508
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isDynamicFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1509
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1510
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/FocusView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/FocusView;->initFocusView()Z

    .line 1513
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/FocusView;->resetFocusArea()V

    .line 1515
    iget v0, p0, Lcom/motorola/Camera/Camera;->mFocusValue:I

    if-ne v0, v2, :cond_3

    .line 1516
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 1521
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->updateFocusIndicator()V

    .line 1532
    :cond_2
    :goto_1
    return-void

    .line 1518
    :cond_3
    iget v0, p0, Lcom/motorola/Camera/Camera;->mFocusValue:I

    if-nez v0, :cond_1

    .line 1519
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    goto :goto_0

    .line 1522
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1523
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 1524
    iget v0, p0, Lcom/motorola/Camera/Camera;->mFocusValue:I

    if-ne v0, v2, :cond_2

    .line 1525
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1528
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 1529
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private showStorageToast()V
    .locals 3

    .prologue
    .line 5145
    const/4 v0, 0x0

    .line 5147
    .local v0, noStorageText:Ljava/lang/String;
    iget v1, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 5149
    const v1, 0x7f0b0011

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5159
    :goto_0
    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    .line 5160
    return-void

    .line 5154
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsInternalSD:Z

    if-nez v1, :cond_1

    .line 5155
    const v1, 0x7f0b0012

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5157
    :cond_1
    const v1, 0x7f0b0013

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 5163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;I)V

    .line 5164
    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 6
    .parameter "text"
    .parameter "duration"

    .prologue
    const/16 v5, 0x8a

    .line 5167
    if-nez p1, :cond_0

    .line 5181
    :goto_0
    return-void

    .line 5170
    :cond_0
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 5174
    const v2, 0x7f0d00bb

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/widget/RotateLayout;

    .line 5175
    .local v1, v:Lcom/motorola/Camera/widget/RotateLayout;
    const v2, 0x7f0d00bc

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5176
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5177
    const/16 v2, 0x10e

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->setOrientation(I)V

    .line 5178
    const v2, 0x7f04000d

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5179
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->setVisibility(I)V

    .line 5180
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private showUIAfterPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 533
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->rightSetFadeIn()V

    .line 535
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureResourceClickable(Z)V

    .line 536
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    sget v1, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->setZoomBarMax(I)V

    .line 538
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showZoomControlSet()V

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideZoomControlSet(Z)V

    goto :goto_0
.end method

.method private startAutoTimer()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v2, 0x3f80

    const/4 v4, 0x0

    .line 2964
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/Camera/Camera;->autoTimerSoundId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2965
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    .line 2966
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060002

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/Camera;->autoTimerSoundId:I

    .line 2968
    :cond_1
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    const/16 v0, 0xa

    if-ge v7, v0, :cond_2

    .line 2969
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->ResAutoTimerDigitImg:[I

    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07003e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    const-string v5, "drawable"

    const-string v6, "com.motorola.Camera"

    invoke-virtual {v1, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v7

    .line 2968
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2972
    :cond_2
    const/16 v0, 0x8

    iput v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    .line 2973
    iput v8, p0, Lcom/motorola/Camera/Camera;->mAutoTimerCount:I

    .line 2974
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideCaptureCluster()V

    .line 2975
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->ResAutoTimerDigitImg:[I

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAutoTimer()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2976
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2977
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterToneOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2978
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/motorola/Camera/Camera;->autoTimerSoundId:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2980
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x50

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2982
    return-void
.end method

.method private startDevice()V
    .locals 2

    .prologue
    .line 402
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/motorola/Camera/Camera;->startDevice(ZZ)V

    .line 403
    return-void
.end method

.method private startDevice(Z)V
    .locals 1
    .parameter "setParams"

    .prologue
    .line 406
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/motorola/Camera/Camera;->startDevice(ZZ)V

    .line 407
    return-void
.end method

.method private startDevice(ZZ)V
    .locals 2
    .parameter "setParams"
    .parameter "resetZoom"

    .prologue
    .line 410
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraKPI"

    const-string v1, "startDevice enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    if-eqz p1, :cond_4

    .line 412
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->openCamera()V

    .line 413
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraKPI"

    const-string v1, "startDevice camera opened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_3

    .line 422
    :cond_2
    :goto_0
    return-void

    .line 415
    :cond_3
    invoke-direct {p0, p2}, Lcom/motorola/Camera/Camera;->setupDevice(Z)V

    .line 416
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCameraKPI"

    const-string v1, "startDevice device setup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_4
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startPreview()V

    .line 419
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_5

    const-string v0, "MotoCameraKPI"

    const-string v1, "startDevice preview started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_5
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->showUIAfterPreview()V

    .line 421
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCameraKPI"

    const-string v1, "startDevice UI shown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 3

    .prologue
    .line 503
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v2, "startPreview() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCameraKPI"

    const-string v2, "startPreview enter "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_6

    .line 509
    :try_start_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 510
    const-string v1, "MotoCamera"

    const-string v2, "startPreview() - calling mCameraDevice.startPreview()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 513
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCameraKPI"

    const-string v2, "startPreview done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    .line 515
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    const-string v1, "MotoCamera"

    const-string v2, "startPreview() - mCameraDevice start preview done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_4
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v1}, Lcom/motorola/Camera/FocusManager;->onPreviewStarted()V

    .line 518
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v1}, Lcom/motorola/Camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v1}, Lcom/motorola/Camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "continuous-picture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 520
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->cancelAutoFocus()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :cond_6
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_7

    const-string v1, "MotoCamera"

    const-string v2, "startPreview() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_7
    return-void

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "MotoCamera"

    const-string v2, "startPreview() - failed to start preview"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    .line 526
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private startShutterAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1563
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isMultishotMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1574
    :cond_0
    :goto_0
    return-void

    .line 1564
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->bGLSurfaceViewPlaying:Z

    if-nez v0, :cond_0

    .line 1565
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setZOrderOnTop(Z)V

    .line 1566
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 1567
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->bGLSurfaceViewPlaying:Z

    .line 1568
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mRender:Lcom/motorola/Camera/View/CameraShutterRender;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/CameraShutterRender;->SetRunning(Z)V

    .line 1570
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 1571
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 1572
    const-string v0, "MotoCamera"

    const-string v1, "startShutterAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopPanoramaCapture()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2724
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v2, "stopPanoramaCapture() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->updatePanoramaCaptureStatus(Z)V

    .line 2727
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPreview()V

    .line 2728
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->disableUIAfterStopPreview()V

    .line 2730
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mPausing:Z

    if-nez v1, :cond_2

    .line 2732
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v2, "start timeout timer for PANORAMA_PICTURE_CALLBACK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2738
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    if-eqz v1, :cond_3

    .line 2739
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaObj:Lcom/motorola/android/camera/Panorama;

    invoke-virtual {v1}, Lcom/motorola/android/camera/Panorama;->stopCapture()V

    .line 2741
    :cond_3
    iget v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    iput v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    .line 2742
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->reset()V

    .line 2743
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaIndicator:Lcom/motorola/Camera/View/PanoramaIndicatorView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/PanoramaIndicatorView;->setVisibility(I)V

    .line 2744
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideControllerPanel(Z)V

    .line 2745
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->changeCaptureResource(I)V

    .line 2746
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mPausing:Z

    if-nez v1, :cond_5

    .line 2748
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    .line 2749
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020100

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2755
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2756
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2757
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2758
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2761
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsStitching:Z

    .line 2763
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_6

    const-string v1, "MotoCamera"

    const-string v2, "stopPanoramaCapture() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    :cond_6
    return-void

    .line 2750
    :catch_0
    move-exception v0

    .line 2751
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/Camera/Camera;->mBlackoutBackground:Landroid/graphics/drawable/Drawable;

    .line 2752
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method private stopPreview()V
    .locals 2

    .prologue
    .line 2213
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "stopPreview() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_2

    .line 2216
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 2217
    const-string v0, "MotoCamera"

    const-string v1, "stopPreview() - we are previewing and need to stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 2222
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    .line 2223
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCamera"

    const-string v1, "stopPreview() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    :cond_3
    return-void
.end method

.method private stopShutterAnim()V
    .locals 2

    .prologue
    .line 1577
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isMultishotMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1585
    :cond_0
    :goto_0
    return-void

    .line 1578
    :cond_1
    const-string v0, "MotoCamera"

    const-string v1, "w20919 stopShutterAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 1581
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 1582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->bGLSurfaceViewPlaying:Z

    .line 1583
    const-string v0, "MotoCamera"

    const-string v1, "w20919 openGL pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private toggleCamera()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3755
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsFocusing:Z

    .line 3757
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v2

    .line 3758
    const/4 v3, 0x0

    :try_start_0
    iput v3, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    .line 3760
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPreview()V

    .line 3761
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->disableUIAfterStopPreview()V

    .line 3763
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 3764
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3765
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->cancelPanoramaCapture()V

    .line 3769
    :cond_0
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/motorola/Camera/Camera;->disableCurrentMode(I)V

    .line 3770
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 3772
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideHandshake(ZZ)V

    .line 3773
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->closeCamera()V

    .line 3776
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->toggleCamSetting()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3777
    monitor-exit v2

    .line 3808
    :goto_0
    return-void

    .line 3779
    :cond_1
    iget-boolean v3, p0, Lcom/motorola/Camera/Camera;->mStartSensorFront:Z

    if-nez v3, :cond_4

    :goto_1
    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->mStartSensorFront:Z

    .line 3780
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamera"

    const-string v1, "Camera settings toggled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3782
    :cond_2
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startDevice()V

    .line 3784
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_5

    .line 3785
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCamera"

    const-string v1, "toggleCamera() - startPreview failed, just return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3787
    monitor-exit v2

    goto :goto_0

    .line 3806
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v0, v1

    .line 3779
    goto :goto_1

    .line 3791
    :cond_5
    :try_start_1
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->setupFocusViews()V

    .line 3793
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mDidRegister:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->installIntentFilter()V

    .line 3795
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v3, 0x7f06

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/FocusManager;->initializeFocusTone(Landroid/content/res/AssetFileDescriptor;)V

    .line 3796
    :cond_7
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->checkStorage()V

    .line 3797
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    sget v1, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->setZoomBarMax(I)V

    .line 3798
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 3799
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showRightSet()V

    .line 3800
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 3801
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 3802
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->setDialogStatus(I)V

    .line 3803
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateSwitchCameraUI(Z)V

    .line 3805
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    .line 3806
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private updateFocusIndicator()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v4, 0x1

    .line 2882
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "updateFocusIndicator() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isDynamicFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2886
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2887
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v1, "updateFocusIndicator() - DYNAMIC_REGION_FOCUS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2888
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    if-nez v0, :cond_3

    .line 2889
    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDrawFocusView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    :cond_2
    :goto_0
    return-void

    .line 2892
    :cond_3
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-gt v0, v4, :cond_4

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInfiniteFocus()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-ne v0, v4, :cond_6

    .line 2895
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, v5}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 2941
    :cond_5
    :goto_1
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamera"

    const-string v1, "updateFocusIndicator() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2897
    :cond_6
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_7

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in updateFocusIndicator, mDrawFocusView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    :cond_7
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_8

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in updateFocusIndicator, mIsFocused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsFocused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " focusViewSelected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/Camera;->focusViewSelected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    :cond_8
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_9

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in updateFocusIndicator, mIsFocusFail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsFocusFail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    :cond_9
    iget v0, p0, Lcom/motorola/Camera/Camera;->mFocusValue:I

    if-eq v0, v4, :cond_a

    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsFocusButtonPressed:Z

    if-eqz v0, :cond_5

    .line 2902
    :cond_a
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 2903
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsFocused:Z

    iget-boolean v2, p0, Lcom/motorola/Camera/Camera;->focusViewSelected:Z

    iget-boolean v3, p0, Lcom/motorola/Camera/Camera;->mIsFocusFail:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/Camera/View/FocusView;->updateFocusArea(ZZZ)Z

    goto/16 :goto_1

    .line 2907
    :cond_b
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2909
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 2910
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v1

    .line 2911
    :try_start_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_c

    .line 2912
    const-string v0, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFocusIndicator() - AUTOFOCUS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsFocused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/Camera/Camera;->mIsFocused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    :cond_c
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    if-nez v0, :cond_d

    .line 2914
    const-string v0, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFocusView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    monitor-exit v1

    goto/16 :goto_0

    .line 2934
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2918
    :cond_d
    :try_start_1
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-gt v0, v4, :cond_e

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInfiniteFocus()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-ne v0, v4, :cond_f

    .line 2921
    :cond_e
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2934
    :goto_2
    monitor-exit v1

    goto/16 :goto_1

    .line 2923
    :cond_f
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsFocused:Z

    if-eqz v0, :cond_11

    .line 2924
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusd:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_10

    .line 2925
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02004d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusd:Landroid/graphics/drawable/Drawable;

    .line 2926
    :cond_10
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mFocusd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2932
    :goto_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 2928
    :cond_11
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocus:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_12

    .line 2929
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020050

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mFocus:Landroid/graphics/drawable/Drawable;

    .line 2930
    :cond_12
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mFocus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 2937
    :cond_13
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_14

    const-string v0, "MotoCamera"

    const-string v1, "updateFocusIndicator() - FIXED FOCUS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    :cond_14
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2939
    :cond_15
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private updatePicInUi()V
    .locals 5

    .prologue
    .line 5737
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 5738
    const-string v1, "MotoCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showPicsStill - thumb is null - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5739
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mImageToThumbBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/CameraView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/CameraView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/CameraView;->getLeft()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->showPicsStill(Landroid/graphics/Bitmap;III)V

    .line 5741
    return-void

    .line 5738
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateRemainCount()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 7001
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamera"

    const-string v3, "updateRemainCount() - Enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7002
    :cond_0
    iput-boolean v4, p0, Lcom/motorola/Camera/Camera;->mNeedCheckStorage:Z

    .line 7003
    const/4 v0, 0x0

    .line 7004
    .local v0, errorMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v3

    .line 7007
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 7008
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentPanResDimension()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/motorola/Camera/CameraGlobalTools;->calculatePicturesRemaining(Ljava/lang/String;Z)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    .line 7012
    :goto_0
    sget-boolean v2, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-eqz v2, :cond_1d

    .line 7014
    const/4 v2, 0x4

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    .line 7016
    iget-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsInternalSD:Z

    if-eqz v2, :cond_11

    .line 7017
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/motorola/Camera/CameraGlobalTools;->calculatePicturesRemaining(Ljava/lang/String;Z)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    .line 7018
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRemainCount internalPicturesRemaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7019
    :cond_1
    iget v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    iput v2, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    .line 7020
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/motorola/Camera/CameraGlobalTools;->calculatePicturesRemaining(Ljava/lang/String;Z)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    .line 7021
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_2

    const-string v2, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRemainCount externalPicturesRemaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7023
    :cond_2
    iget v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    if-eq v2, v7, :cond_3

    iget v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    if-ge v2, v6, :cond_a

    .line 7024
    :cond_3
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->setStorageState(I)V

    .line 7028
    :goto_1
    iget v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    if-ne v2, v7, :cond_d

    .line 7030
    iget v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    if-ne v2, v7, :cond_b

    .line 7031
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0140

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7032
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    .line 7033
    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    .line 7061
    :cond_4
    :goto_2
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    const-string v2, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRemainCount() errorCase ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7115
    :cond_5
    :goto_3
    iget v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    packed-switch v2, :pswitch_data_0

    .line 7128
    :goto_4
    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    .line 7129
    :cond_6
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mNeedCheckStorage:Z

    .line 7141
    :cond_7
    :goto_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7143
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_8

    const-string v2, "MotoCamera"

    const-string v3, "updateRemainCount() - Exit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7144
    :cond_8
    return-void

    .line 7010
    :cond_9
    :try_start_1
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/motorola/Camera/CameraGlobalTools;->calculatePicturesRemaining(Ljava/lang/String;Z)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    goto/16 :goto_0

    .line 7141
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 7026
    :cond_a
    const/4 v2, 0x4

    :try_start_2
    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->setStorageState(I)V

    goto :goto_1

    .line 7034
    :cond_b
    iget v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    if-ge v2, v6, :cond_c

    .line 7036
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b013f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7037
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    goto :goto_2

    .line 7040
    :cond_c
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b013e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7041
    const/4 v2, 0x2

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    goto :goto_2

    .line 7044
    :cond_d
    iget v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    if-ge v2, v6, :cond_4

    .line 7046
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_e

    const-string v2, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRemainCount externalPicturesRemaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7048
    :cond_e
    iget v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    if-ne v2, v7, :cond_f

    .line 7049
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0142

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7050
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    goto/16 :goto_2

    .line 7051
    :cond_f
    iget v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    if-ge v2, v6, :cond_10

    .line 7053
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b013f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7054
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    goto/16 :goto_2

    .line 7057
    :cond_10
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b013e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7058
    const/4 v2, 0x2

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    goto/16 :goto_2

    .line 7064
    :cond_11
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/motorola/Camera/CameraGlobalTools;->calculatePicturesRemaining(Ljava/lang/String;Z)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    .line 7065
    iget v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    iput v2, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    .line 7066
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSingleShotRes()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/motorola/Camera/CameraGlobalTools;->calculatePicturesRemaining(Ljava/lang/String;Z)I

    move-result v2

    iput v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    .line 7067
    iget v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    if-eq v2, v7, :cond_12

    iget v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    if-ge v2, v6, :cond_16

    .line 7069
    :cond_12
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->setStorageState(I)V

    .line 7076
    :goto_6
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_13

    const-string v2, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "external externalPicturesRemaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7077
    :cond_13
    iget v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    if-ne v2, v7, :cond_19

    .line 7079
    iget v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    if-ne v2, v7, :cond_17

    .line 7080
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0140

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7081
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    .line 7082
    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    .line 7111
    :cond_14
    :goto_7
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_15

    const-string v2, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRemainCount() internalPicturesRemaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7112
    :cond_15
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_5

    const-string v2, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRemainCount() errorCase ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 7073
    :cond_16
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->setStorageState(I)V

    goto :goto_6

    .line 7083
    :cond_17
    iget v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    if-ge v2, v6, :cond_18

    .line 7085
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0142

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7086
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    goto :goto_7

    .line 7089
    :cond_18
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0141

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7090
    const/4 v2, 0x1

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    goto :goto_7

    .line 7093
    :cond_19
    iget v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    if-ge v2, v6, :cond_14

    .line 7095
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1a

    const-string v2, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRemainCount() internalPicturesRemaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7097
    :cond_1a
    iget v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    if-ne v2, v7, :cond_1b

    .line 7098
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b013f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7099
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    goto/16 :goto_7

    .line 7100
    :cond_1b
    iget v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    if-ge v2, v6, :cond_1c

    .line 7102
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b013f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7103
    const/4 v2, 0x0

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    goto/16 :goto_7

    .line 7106
    :cond_1c
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b013d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7107
    const/4 v2, 0x1

    iput v2, p0, Lcom/motorola/Camera/Camera;->errorCase:I

    goto/16 :goto_7

    .line 7117
    :pswitch_0
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentStorageLocation(I)V

    .line 7118
    iget v2, p0, Lcom/motorola/Camera/Camera;->internalPicturesRemaining:I

    iput v2, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    .line 7119
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsInternalSD:Z

    goto/16 :goto_4

    .line 7122
    :pswitch_1
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentStorageLocation(I)V

    .line 7123
    iget v2, p0, Lcom/motorola/Camera/Camera;->externalPicturesRemaining:I

    iput v2, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    .line 7124
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsInternalSD:Z

    goto/16 :goto_4

    .line 7133
    :cond_1d
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 7134
    .local v1, state:Ljava/lang/String;
    iget v2, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    if-ne v2, v7, :cond_1e

    const-string v2, "bad_removal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1e
    iget v2, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    if-ge v2, v6, :cond_7

    .line 7137
    :cond_1f
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->showStorageToast()V

    .line 7138
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mNeedCheckStorage:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 7115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateScenesEffects()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x7

    .line 3876
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 3877
    const-string v1, "MotoCamera"

    const-string v2, "updateScenesEffects() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3880
    :cond_0
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v2

    .line 3882
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentWhiteBalance()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3884
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->updateWhiteBalances()V

    .line 3885
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3887
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v1

    if-eqz v1, :cond_2

    .line 3889
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->updateConSatISO()V

    .line 3890
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3894
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v1

    if-ne v1, v5, :cond_9

    .line 3895
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "mot-image-stabilization-mode"

    const-string v4, "on"

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3900
    :goto_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3903
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3906
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v0

    .line 3907
    .local v0, sceneMode:I
    sget-object v1, Lcom/motorola/Camera/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 3908
    if-ne v0, v6, :cond_a

    .line 3909
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "auto"

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 3910
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "macro"

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 3918
    :cond_3
    :goto_1
    const-string v1, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScenesEffects focusmode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3919
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3921
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3923
    const-string v1, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScenesEffects focusmode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3925
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->setFocusModeParameters()V

    .line 3927
    const-string v1, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScenesEffects focusmode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3928
    const-string v1, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScenesEffects flashmode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3930
    if-eq v0, v6, :cond_4

    if-ne v0, v5, :cond_c

    .line 3932
    :cond_4
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v4, "off"

    invoke-virtual {v1, v3, v4}, Lcom/motorola/Camera/CameraUtility;->setFlash(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 3942
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->updateEffects()V

    .line 3944
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3947
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getCustomParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 3949
    const-string v1, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScenesEffects flashmode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3951
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "auto"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3952
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mMotoEnvCallback:Lcom/motorola/Camera/Camera$MotoEnvCallback;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setEnvDetectCallback(Landroid/hardware/Camera$EnvDetectCallback;)V

    .line 3959
    :goto_3
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentWhiteBalance()I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v1

    if-nez v1, :cond_6

    .line 3961
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->updateWhiteBalances()V

    .line 3962
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3964
    :cond_6
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v1

    if-nez v1, :cond_7

    .line 3966
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->updateConSatISO()V

    .line 3967
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3969
    :cond_7
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3}, Lcom/motorola/Camera/FocusManager;->setFocusParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3971
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3972
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_8

    const-string v1, "MotoCamera"

    const-string v2, "updateScenesEffects() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3973
    :cond_8
    return-void

    .line 3897
    .end local v0           #sceneMode:I
    :cond_9
    :try_start_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "mot-image-stabilization-mode"

    const-string v4, "off"

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3971
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3911
    .restart local v0       #sceneMode:I
    :cond_a
    if-ne v0, v5, :cond_b

    .line 3912
    :try_start_2
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "auto"

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3914
    :cond_b
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    sget-object v3, Lcom/motorola/Camera/CameraGlobalType;->sceneSetting:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3933
    :cond_c
    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    .line 3939
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v3}, Lcom/motorola/Camera/CameraUtility;->setFlash(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_2

    .line 3954
    :cond_d
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setEnvDetectCallback(Landroid/hardware/Camera$EnvDetectCallback;)V

    .line 3955
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideHandshake(ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method private zoomTo(I)V
    .locals 2
    .parameter "zoom"

    .prologue
    .line 7148
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7150
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    if-eqz v0, :cond_2

    .line 7152
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 7171
    :cond_0
    :goto_0
    return-void

    .line 7157
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 7158
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    goto :goto_0

    .line 7162
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7167
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 7168
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setCustomParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method


# virtual methods
.method public autoFocus()Z
    .locals 4

    .prologue
    .line 2804
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoFocus() - Enter  mIsFocusing is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/Camera;->mIsFocusing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraKPI"

    const-string v1, "autoFocus enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 2808
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mAutoFocusCallback:Lcom/motorola/Camera/Camera$MotoCameraAutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2810
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2820
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamera"

    const-string v1, "autoFocus() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    :cond_2
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCameraKPI"

    const-string v1, "autoFocus exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 2816
    :cond_4
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_5

    const-string v0, "MotoCamera"

    const-string v1, "autoFocus() - Invalid camera!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelAutoFocus()Z
    .locals 2

    .prologue
    .line 2832
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2833
    const-string v0, "MotoCamera"

    const-string v1, "cancelAutoFocus() Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraKPI"

    const-string v1, "cancelAutoFocus enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_3

    .line 2837
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamera"

    const-string v1, "Camera Device clearFocus start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 2839
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCamera"

    const-string v1, "Camera Device clearFocus done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2843
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCameraKPI"

    const-string v1, "clearFocus exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public capture()Z
    .locals 1

    .prologue
    .line 2827
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camera$ImageCapture;->onSnap()V

    .line 2828
    const/4 v0, 0x1

    return v0
.end method

.method public interruptThumbnailThread()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7214
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    if-eqz v0, :cond_3

    .line 7216
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    monitor-enter v1

    .line 7217
    :try_start_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 7218
    const-string v0, "MotoCamera"

    const-string v2, "interruptThumbnailThread"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7220
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x48

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 7221
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7222
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 7223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7228
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7229
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7234
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7235
    iput-object v3, p0, Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    .line 7237
    :cond_3
    return-void

    .line 7234
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 7231
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isPostCaptureAnimationEnabled()Z
    .locals 5

    .prologue
    .line 6029
    const/4 v1, 0x1

    .line 6031
    .local v1, enabled:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6036
    :goto_0
    return v1

    .line 6032
    :catch_0
    move-exception v0

    .line 6033
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPotCaptureAnimationEnabled() - resource not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6034
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 6145
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 6147
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    .line 6148
    const-string v4, "MotoCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult() - Enter.  requestCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : resultCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6151
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 6176
    :goto_0
    return-void

    .line 6153
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 6154
    .local v2, intent:Landroid/content/Intent;
    if-eqz p3, :cond_1

    .line 6155
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 6156
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 6157
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 6160
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p0, p2, v2}, Lcom/motorola/Camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 6162
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->finish()V

    .line 6164
    const-string v4, "crop-temp"

    invoke-virtual {p0, v4}, Lcom/motorola/Camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 6167
    .local v3, path:Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6169
    :catch_0
    move-exception v0

    .line 6171
    .local v0, e:Ljava/lang/SecurityException;
    const-string v4, "MotoCamera"

    const-string v5, "Security exception deleting file!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/16 v2, 0x8

    .line 6938
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStoreThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStoreThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6940
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStoreThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6944
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 6962
    :goto_1
    return-void

    .line 6941
    :catch_0
    move-exception v0

    .line 6942
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 6946
    .end local v0           #e:Ljava/lang/InterruptedException;
    :pswitch_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->selectPhoto()Z

    goto :goto_1

    .line 6950
    :pswitch_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6951
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->removePicsStill()V

    .line 6952
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/CameraView;->setVisibility(I)V

    .line 6953
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 6957
    :pswitch_2
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6958
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->cancelPhoto()Z

    .line 6959
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->removePicsStill()V

    goto :goto_1

    .line 6944
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d004c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/16 v5, 0x2c

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 2103
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0, p0, v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 2105
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() - hardKeyboardHidden is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() - Keyboard is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    :cond_1
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() - orientation is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v0, :cond_6

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v3, :cond_6

    sget-boolean v0, Lcom/motorola/Camera/Camera;->mIsRotator:Z

    if-eqz v0, :cond_6

    .line 2112
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2113
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    iget v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    if-ge v0, v1, :cond_3

    .line 2119
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2121
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPanoramaCapture()V

    .line 2139
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->setOrientation(I)V

    .line 2140
    :cond_4
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/motorola/Camera/Camera;->mConfig_PL:I

    .line 2142
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2144
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isWebtopMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2145
    const v0, 0x7f0b016b

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2146
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->finish()V

    .line 2148
    :cond_5
    return-void

    .line 2125
    :cond_6
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2126
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    iget v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    if-ge v0, v1, :cond_3

    .line 2132
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2134
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPanoramaCapture()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 1124
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1126
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_0

    const-string v11, "MotoCamera"

    const-string v12, "onCreate() - Enter"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_0
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_1

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate enter"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_1
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isWebtopMode()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1130
    const v11, 0x7f0b016b

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 1131
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->finish()V

    .line 1336
    :cond_2
    :goto_0
    return-void

    .line 1135
    :cond_3
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camera;->setRequestedOrientation(I)V

    .line 1138
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/motorola/Camera/Camera$1;

    invoke-direct {v11, p0}, Lcom/motorola/Camera/Camera$1;-><init>(Lcom/motorola/Camera/Camera;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1145
    .local v10, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 1147
    .local v6, intent:Landroid/content/Intent;
    if-eqz v6, :cond_4

    .line 1148
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1149
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 1150
    const-string v11, "CameraSensor"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1152
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/motorola/Camera/Camera;->mStartSensorFront:Z

    .line 1157
    .end local v0           #data:Landroid/os/Bundle;
    :cond_4
    const-string v11, "keyguard"

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/KeyguardManager;

    .line 1158
    .local v7, mKeyGuard:Landroid/app/KeyguardManager;
    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1160
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_5

    .line 1161
    const-string v11, "MotoCamera"

    const-string v12, "Device is locked"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_5
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/motorola/Camera/Camera;->mIsSecurelyLockedModeImageCaptureIntent:Z

    .line 1166
    :cond_6
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_7

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate keyguard setup"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_7
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camera;->requestWindowFeature(I)Z

    .line 1168
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x400

    invoke-virtual {v11, v12}, Landroid/view/Window;->addFlags(I)V

    .line 1170
    new-instance v11, Lcom/motorola/Camera/FocusManager;

    invoke-direct {v11}, Lcom/motorola/Camera/FocusManager;-><init>()V

    iput-object v11, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    .line 1172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/motorola/Camera/Camera;->mKpiStartTimer:J

    .line 1175
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    check-cast v11, Lcom/motorola/Camera/Camera$MainHandler;

    invoke-virtual {v11, p0}, Lcom/motorola/Camera/Camera$MainHandler;->setActivityReference(Landroid/app/Activity;)V

    .line 1179
    invoke-static {p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v11

    iput-object v11, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 1184
    iput-object p0, p0, Lcom/motorola/Camera/Camera;->mCameraActivityContext:Landroid/content/Context;

    .line 1185
    iput-object p0, p0, Lcom/motorola/Camera/Camera;->mCameraClass:Lcom/motorola/Camera/Camera;

    .line 1186
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f08001c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/motorola/Camera/Camera;->mIsStoreXmpMetaData:Z

    .line 1189
    iget-object v12, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v12

    .line 1192
    :try_start_0
    iget-boolean v11, p0, Lcom/motorola/Camera/Camera;->mStartSensorFront:Z

    if-eqz v11, :cond_14

    .line 1193
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSpecificCamSetting(I)Z

    .line 1198
    :goto_1
    const v11, 0x7f030020

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camera;->setContentView(I)V

    .line 1199
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_8

    const-string v11, "MotoCameraKPI"

    const-string v13, "onCreate content view set"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_8
    const v11, 0x7f0d0041

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/motorola/Camera/View/CameraView;

    iput-object v11, p0, Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;

    .line 1205
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;

    invoke-virtual {v11}, Lcom/motorola/Camera/View/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    .line 1206
    .local v4, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v4, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1208
    invoke-static {p0}, Lcom/motorola/Camera/CameraUtility;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CameraUtility;

    move-result-object v11

    iput-object v11, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    .line 1209
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_9

    const-string v11, "MotoCameraKPI"

    const-string v13, "onCreate cam utility created"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_9
    const-string v11, "audio"

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioManager;

    iput-object v11, p0, Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;

    .line 1214
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isImageCaptureIntent()Z

    move-result v11

    iput-boolean v11, p0, Lcom/motorola/Camera/Camera;->mIsImageCaptureIntent:Z

    .line 1215
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_a

    const-string v11, "MotoCameraKPI"

    const-string v13, "onCreate checked capture intent"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_a
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-boolean v13, p0, Lcom/motorola/Camera/Camera;->mIsSecurelyLockedModeImageCaptureIntent:Z

    invoke-virtual {v11, v13}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSecurelyLockedMode(Z)V

    .line 1219
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-object v13, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v13}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setHandler(Landroid/os/Handler;)V

    .line 1222
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v13, 0x0

    invoke-virtual {v11, p0, v13}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 1224
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-boolean v13, p0, Lcom/motorola/Camera/Camera;->mIsImageCaptureIntent:Z

    invoke-virtual {v11, v13}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setServiceMode(Z)V

    .line 1226
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_b

    const-string v11, "MotoCameraKPI"

    const-string v13, "onCreate registered receivers"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    :cond_b
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1231
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v3, :cond_15

    .line 1232
    const-string v11, "Mode"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1233
    .local v9, mode:I
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v11, v9}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 1238
    .end local v9           #mode:I
    :goto_2
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v11}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v11

    iput v11, p0, Lcom/motorola/Camera/Camera;->prevFlash:I

    .line 1239
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_c

    const-string v11, "MotoCameraKPI"

    const-string v13, "onCreate aquired extras"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_c
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1244
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_d

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate start preview thread"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_d
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 1248
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 1251
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v11, 0x7f0d0040

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/motorola/Camera/View/CameraContentView;

    iput-object v11, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    .line 1252
    iget-object v8, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    .line 1254
    .local v8, main:Lcom/motorola/Camera/View/CameraContentView;
    const v11, 0x7f03001f

    invoke-virtual {v5, v11, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .end local v8           #main:Lcom/motorola/Camera/View/CameraContentView;
    check-cast v8, Lcom/motorola/Camera/View/CameraContentView;

    .line 1255
    .restart local v8       #main:Lcom/motorola/Camera/View/CameraContentView;
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_e

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate main view inflated"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :cond_e
    const v11, 0x7f03000f

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    iput-object v11, p0, Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;

    .line 1259
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    iget-object v12, p0, Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/View/CameraContentView;->addView(Landroid/view/View;)V

    .line 1260
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1263
    const v11, 0x7f0d0026

    invoke-virtual {v8, v11}, Lcom/motorola/Camera/View/CameraContentView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;

    iput-object v11, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    .line 1264
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v11, p0}, Lcom/motorola/Camera/View/Control/OnScreenController;->setActivity(Landroid/app/Activity;)V

    .line 1269
    :try_start_1
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget-object v12, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v13, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v11, v12, v13}, Lcom/motorola/Camera/View/Control/OnScreenController;->setParams(Landroid/os/Handler;Lcom/motorola/Camera/FocusManager;)V

    .line 1270
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 1271
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    sget v12, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/View/Control/OnScreenController;->setZoomBarMax(I)V

    .line 1273
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v11

    if-nez v11, :cond_16

    .line 1274
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v11}, Lcom/motorola/Camera/View/Control/OnScreenController;->showZoomControlSet()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1293
    :goto_3
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_f

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate setup for autotimer"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :cond_f
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_10

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate waiting for startPreview thread"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_10
    :try_start_2
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_11

    const-string v11, "MotoCamera"

    const-string v12, "onCreate() - joining startPreviewThread"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_11
    invoke-virtual {v10}, Ljava/lang/Thread;->join()V

    .line 1301
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_12

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate startpreview thread returned"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1308
    :cond_12
    :goto_4
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v11, :cond_18

    .line 1310
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_13

    const-string v11, "MotoCamera"

    const-string v12, "onCreate() - startPreview failed, just return"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :cond_13
    iget-boolean v11, p0, Lcom/motorola/Camera/Camera;->mDeviceDisabled:Z

    if-eqz v11, :cond_17

    .line 1312
    const v11, 0x7f0b009b

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;I)V

    .line 1317
    :goto_5
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->finish()V

    goto/16 :goto_0

    .line 1195
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v4           #holder:Landroid/view/SurfaceHolder;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v8           #main:Lcom/motorola/Camera/View/CameraContentView;
    :cond_14
    :try_start_3
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSpecificCamSetting(I)Z

    goto/16 :goto_1

    .line 1240
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v11

    .line 1235
    .restart local v3       #extras:Landroid/os/Bundle;
    .restart local v4       #holder:Landroid/view/SurfaceHolder;
    :cond_15
    :try_start_4
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 1277
    .restart local v5       #inflater:Landroid/view/LayoutInflater;
    .restart local v8       #main:Lcom/motorola/Camera/View/CameraContentView;
    :cond_16
    :try_start_5
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideZoomControlSet(Z)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 1279
    :catch_0
    move-exception v1

    .line 1280
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v11, "MotoCamera"

    const-string v12, "onCreate() - InflateException!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1282
    const v11, 0x7f0b0096

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    .line 1284
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/Thread;->join()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1288
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->finish()V

    goto/16 :goto_0

    .line 1286
    :catch_1
    move-exception v11

    .line 1288
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->finish()V

    goto/16 :goto_0

    :catchall_1
    move-exception v11

    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->finish()V

    goto/16 :goto_0

    .line 1303
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 1305
    .local v2, exception:Ljava/lang/InterruptedException;
    const-string v11, "MotoCamera"

    const-string v12, "onCreate() - failed to join startPreviewThread"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1314
    .end local v2           #exception:Ljava/lang/InterruptedException;
    :cond_17
    const v11, 0x7f0b0097

    invoke-virtual {p0, v11}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    goto :goto_5

    .line 1322
    :cond_18
    const/4 v11, 0x1

    iput v11, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    .line 1323
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_19

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate going idle"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    :cond_19
    iget-object v11, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v11}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 1328
    const/4 v11, -0x1

    iput v11, p0, Lcom/motorola/Camera/Camera;->autoTimerSoundId:I

    .line 1329
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_1a

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate updateController finished"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :cond_1a
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_1b

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate for reset zoom default"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_1b
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_1c

    const-string v11, "MotoCamera"

    const-string v12, "onCreate() - Exit"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :cond_1c
    sget-boolean v11, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v11, :cond_2

    const-string v11, "MotoCameraKPI"

    const-string v12, "onCreate exit"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 7300
    if-nez p1, :cond_0

    .line 7301
    new-instance v0, Lcom/motorola/Camera/Camera$CameraDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/motorola/Camera/Camera$CameraDialog;-><init>(Lcom/motorola/Camera/Camera;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mAutoTimerDialog:Lcom/motorola/Camera/Camera$CameraDialog;

    .line 7302
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mAutoTimerDialog:Lcom/motorola/Camera/Camera$CameraDialog;

    .line 7305
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 389
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1986
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "onDestroy() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraKPI"

    const-string v1, "onDestroy enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    if-eqz v0, :cond_2

    .line 1991
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    invoke-virtual {v0}, Lcom/motorola/Camera/LocUtility;->stopReceivingLocationUpdates()V

    .line 1992
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    invoke-virtual {v0}, Lcom/motorola/Camera/LocUtility;->destroy()V

    .line 1993
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    .line 1996
    :cond_2
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mAudioMgr:Landroid/media/AudioManager;

    .line 1998
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_3

    .line 1999
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 2000
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 2003
    :cond_3
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsStitching:Z

    if-eqz v0, :cond_5

    .line 2004
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "MotoCamera"

    const-string v1, "onStop() - Panorama Still stitching; Cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2006
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->cancelPanoramaCapture()V

    .line 2009
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_6

    .line 2010
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/motorola/Camera/Camera;->autoTimerSoundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 2011
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 2012
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    .line 2015
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mStorageLocationAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 2016
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mStorageLocationAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2017
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mStorageLocationAlert:Landroid/app/AlertDialog;

    .line 2020
    :cond_7
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_8

    const-string v0, "MotoCameraKPI"

    const-string v1, "onDestroy before close camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    :cond_8
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->closeCamera()V

    .line 2022
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_9

    const-string v0, "MotoCameraKPI"

    const-string v1, "onDestroy after close camera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    :cond_9
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0, p0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->resetContext(Landroid/content/Context;)V

    .line 2026
    :cond_a
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 2028
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    if-eqz v0, :cond_b

    .line 2029
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    invoke-virtual {v0}, Lcom/motorola/Camera/CameraUtility;->destroy()V

    .line 2030
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mCamUtil:Lcom/motorola/Camera/CameraUtility;

    .line 2033
    :cond_b
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    .line 2034
    iput-object v2, p0, Lcom/motorola/Camera/Camera;->mMain:Lcom/motorola/Camera/View/CameraContentView;

    .line 2036
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_c

    const-string v0, "MotoCamera"

    const-string v1, "onDestroy() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2038
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_d

    const-string v0, "MotoCameraKPI"

    const-string v1, "onDestroy exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    :cond_d
    return-void
.end method

.method public onDialogCreate()V
    .locals 2

    .prologue
    .line 2051
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2052
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2053
    const-string v0, "MotoCamera"

    const-string v1, "onDialogCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->mMenuOpened:Z

    .line 2057
    return-void
.end method

.method public onDialogDismiss()V
    .locals 2

    .prologue
    .line 2042
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2043
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2044
    const-string v0, "MotoCamera"

    const-string v1, "onDialogDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->mMenuOpened:Z

    .line 2048
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/16 v5, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6496
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown() - Enter keyCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isFinshing(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->isFinishing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mstatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6498
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6722
    :goto_0
    return v0

    .line 6501
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 6502
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 6505
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 6508
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_2

    .line 6509
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 6512
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mStoreThread:Ljava/lang/Thread;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mStoreThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6514
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b002f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    move v0, v1

    .line 6515
    goto :goto_0

    .line 6518
    :cond_3
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 6722
    goto :goto_0

    .line 6521
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 6524
    :cond_4
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->OPENGL_ON:Z

    if-ne v2, v1, :cond_5

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterAnimation()Z

    move-result v2

    if-ne v2, v1, :cond_5

    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopShutterAnim()V

    .line 6526
    :cond_5
    iget v2, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v2, v6, :cond_6

    move v0, v1

    .line 6527
    goto :goto_0

    .line 6530
    :cond_6
    iget-boolean v2, p0, Lcom/motorola/Camera/Camera;->mRotateDialogShowing:Z

    if-eqz v2, :cond_7

    .line 6532
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v2, :cond_7

    .line 6534
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v2}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 6535
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 6536
    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->mRotateDialogShowing:Z

    move v0, v1

    .line 6537
    goto :goto_0

    .line 6541
    :cond_7
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->getSettingSecondaryDialog()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6543
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->closeSettingSecondaryDialog()V

    move v0, v1

    .line 6544
    goto :goto_0

    .line 6548
    :cond_8
    iget v2, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v2, v5, :cond_a

    .line 6549
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 6550
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;

    if-eqz v2, :cond_9

    .line 6551
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6553
    :cond_9
    iput v0, p0, Lcom/motorola/Camera/Camera;->mAutoTimerCount:I

    .line 6554
    iput v1, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    .line 6555
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->toggleMediaControlsVisibility()V

    move v0, v1

    .line 6556
    goto/16 :goto_0

    .line 6559
    :cond_a
    iget-boolean v2, p0, Lcom/motorola/Camera/Camera;->mTimerContainerShowing:Z

    if-eqz v2, :cond_b

    .line 6561
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6562
    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->mTimerContainerShowing:Z

    .line 6563
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    move v0, v1

    .line 6564
    goto/16 :goto_0

    .line 6567
    :cond_b
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->isPopupDialogOpen()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 6569
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v1, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->closePopupDialog(ZZ)V

    .line 6570
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->setDialogStatus(I)V

    move v0, v1

    .line 6571
    goto/16 :goto_0

    .line 6574
    :cond_c
    iget v2, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_e

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getReviewTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 6578
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_d

    .line 6580
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6583
    :cond_d
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 6584
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v1

    .line 6585
    goto/16 :goto_0

    .line 6586
    :cond_e
    iget v2, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v2, v1, :cond_f

    .line 6587
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->clearFocus()V

    .line 6588
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_f

    .line 6590
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6595
    :goto_1
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPreview()V

    .line 6596
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->disableUIAfterStopPreview()V

    .line 6598
    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    .line 6600
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentExpValue(Ljava/lang/String;)V

    .line 6601
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const-string v1, "100"

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentContrastValue(Ljava/lang/String;)V

    .line 6602
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const-string v1, "100"

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentSaturationValue(Ljava/lang/String;)V

    .line 6603
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentISOValue(Ljava/lang/String;)V

    .line 6605
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6610
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 6612
    :sswitch_1
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_10

    const-string v0, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown() - keycode_focus event.getRepeatCount() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6614
    :cond_10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_11

    move v0, v1

    goto/16 :goto_0

    .line 6615
    :cond_11
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_12

    const-string v0, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown() - keycode_focus mstatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6618
    :cond_12
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-eq v0, v6, :cond_13

    .line 6620
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideControllerPanel(Z)V

    .line 6622
    :cond_13
    iget v0, p0, Lcom/motorola/Camera/Camera;->mFocusValue:I

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsFocused:Z

    if-eqz v0, :cond_14

    .line 6623
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->onScreenCaptureDown()V

    :goto_2
    move v0, v1

    .line 6629
    goto/16 :goto_0

    .line 6626
    :cond_14
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->onScreenCaptureFocus()V

    goto :goto_2

    .line 6632
    :sswitch_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-ne v0, v7, :cond_15

    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v0, v5, :cond_15

    move v0, v1

    .line 6634
    goto/16 :goto_0

    .line 6637
    :cond_15
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v0, v1, :cond_16

    .line 6639
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->setMenuPress()V

    .line 6641
    :cond_16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    .line 6642
    goto/16 :goto_0

    .line 6644
    :cond_17
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 6647
    :sswitch_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-ne v0, v7, :cond_18

    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v0, v5, :cond_18

    move v0, v1

    .line 6649
    goto/16 :goto_0

    .line 6651
    :cond_18
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_19

    move v0, v1

    goto/16 :goto_0

    .line 6652
    :cond_19
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->onScreenCaptureDown()V

    move v0, v1

    .line 6654
    goto/16 :goto_0

    .line 6656
    :sswitch_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v0, v1, :cond_1d

    .line 6658
    iget v0, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    if-ge v0, v1, :cond_1a

    .line 6659
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->showStorageToast()V

    move v0, v1

    .line 6660
    goto/16 :goto_0

    .line 6662
    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/motorola/Camera/Camera;->mTime2Idle:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_1b

    move v0, v1

    .line 6663
    goto/16 :goto_0

    .line 6665
    :cond_1b
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideControllerPanel(Z)V

    .line 6666
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->checkAndSnap(I)V

    :cond_1c
    :goto_3
    move v0, v1

    .line 6676
    goto/16 :goto_0

    .line 6670
    :cond_1d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1c

    .line 6672
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b002f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    goto :goto_3

    .line 6678
    :sswitch_5
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVolumeKeySetting()I

    move-result v2

    if-ne v2, v1, :cond_1e

    move v0, v1

    .line 6679
    goto/16 :goto_0

    .line 6682
    :cond_1e
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v2

    if-ne v2, v7, :cond_1f

    iget v2, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v2, v5, :cond_1f

    move v0, v1

    .line 6684
    goto/16 :goto_0

    .line 6685
    :cond_1f
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v2

    if-nez v2, :cond_20

    .line 6686
    sget-boolean v2, Lcom/motorola/Camera/Camera;->mIsRotator:Z

    if-eqz v2, :cond_21

    .line 6687
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->changeZoom(Ljava/lang/Boolean;)V

    .line 6688
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateZoom(I)V

    :cond_20
    :goto_4
    move v0, v1

    .line 6696
    goto/16 :goto_0

    .line 6691
    :cond_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/Camera/Camera;->changeZoom(Ljava/lang/Boolean;)V

    .line 6692
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateZoom(I)V

    goto :goto_4

    .line 6698
    :sswitch_6
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVolumeKeySetting()I

    move-result v2

    if-ne v2, v1, :cond_22

    move v0, v1

    .line 6699
    goto/16 :goto_0

    .line 6702
    :cond_22
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v2

    if-ne v2, v7, :cond_23

    iget v2, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v2, v5, :cond_23

    move v0, v1

    .line 6704
    goto/16 :goto_0

    .line 6705
    :cond_23
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v2

    if-nez v2, :cond_24

    .line 6706
    sget-boolean v2, Lcom/motorola/Camera/Camera;->mIsRotator:Z

    if-eqz v2, :cond_25

    .line 6707
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/Camera/Camera;->changeZoom(Ljava/lang/Boolean;)V

    .line 6708
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateZoom(I)V

    :cond_24
    :goto_5
    move v0, v1

    .line 6717
    goto/16 :goto_0

    .line 6711
    :cond_25
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/Camera;->changeZoom(Ljava/lang/Boolean;)V

    .line 6712
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateZoom(I)V

    goto :goto_5

    .line 6720
    :sswitch_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 6592
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 6518
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x15 -> :sswitch_7
        0x16 -> :sswitch_7
        0x17 -> :sswitch_4
        0x18 -> :sswitch_6
        0x19 -> :sswitch_5
        0x1b -> :sswitch_3
        0x50 -> :sswitch_1
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 6429
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVolumeKeySetting()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 6430
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->onScreenCaptureFocus()V

    .line 6433
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6439
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6490
    :goto_0
    return v0

    .line 6442
    :cond_0
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 6443
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 6445
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 6447
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "MotoCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera:onKeyUp: + keyCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6449
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_2

    .line 6450
    sparse-switch p1, :sswitch_data_0

    .line 6490
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 6454
    :sswitch_0
    iget v0, p0, Lcom/motorola/Camera/Camera;->mFocusValue:I

    if-eqz v0, :cond_2

    .line 6455
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->onScreenCaptureUp()V

    goto :goto_1

    .line 6461
    :sswitch_1
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVolumeKeySetting()I

    move-result v2

    if-nez v2, :cond_3

    .line 6463
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->smoothZoomSupported:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v2, v1, :cond_2

    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mZoomAdjusting:Z

    if-eqz v1, :cond_2

    .line 6466
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6467
    iput-boolean v0, p0, Lcom/motorola/Camera/Camera;->mZoomAdjusting:Z

    goto :goto_1

    .line 6471
    :cond_3
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v2

    if-ne v2, v1, :cond_4

    iget v2, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v2, v1, :cond_4

    .line 6472
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureClusterCameraMode(I)V

    .line 6477
    :goto_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mStoreThread:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mStoreThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 6478
    goto/16 :goto_0

    .line 6474
    :cond_4
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v2, v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureClusterCameraMode(I)V

    goto :goto_2

    .line 6481
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->setStillImageCaptureInProgress(Z)V

    .line 6482
    :cond_6
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->onScreenCaptureDown()V

    move v0, v1

    .line 6484
    goto/16 :goto_0

    .line 6450
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 2987
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 2989
    const-string v0, "MotoCamera"

    const-string v1, "onLowMemory() Called!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1815
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "onPause() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCameraKPI"

    const-string v1, "onPause enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 1821
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->OPENGL_ON:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterAnimation()Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1822
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->removeShutterView()V

    .line 1826
    :cond_2
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mPausing:Z

    .line 1828
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v0}, Lcom/motorola/Camera/FocusManager;->removeMessages()V

    .line 1829
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->clearFocus()V

    .line 1830
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    const-string v0, "MotoCameraKPI"

    const-string v1, "onPause focus cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mAutoTimerDialog:Lcom/motorola/Camera/Camera$CameraDialog;

    if-eqz v0, :cond_4

    .line 1833
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mAutoTimerDialog:Lcom/motorola/Camera/Camera$CameraDialog;

    invoke-virtual {v0}, Lcom/motorola/Camera/Camera$CameraDialog;->dismiss()V

    .line 1836
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 1838
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1839
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mTimerContainerShowing:Z

    .line 1840
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 1843
    :cond_5
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mRotateDialogShowing:Z

    if-eqz v0, :cond_6

    .line 1845
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v0, :cond_6

    .line 1847
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v0}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 1848
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 1849
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mRotateDialogShowing:Z

    .line 1853
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->isPopupDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1854
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v3, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->closePopupDialog(ZZ)V

    .line 1857
    :cond_7
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->removePicsStill()V

    .line 1859
    :cond_8
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    if-eqz v0, :cond_9

    .line 1860
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    invoke-virtual {v0}, Lcom/motorola/Camera/LocUtility;->stopReceivingLocationUpdates()V

    .line 1863
    :cond_9
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    if-nez v0, :cond_b

    .line 1867
    :cond_a
    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1874
    :cond_b
    :goto_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPreview()V

    .line 1875
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->disableUIAfterStopPreview()V

    .line 1876
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_c

    const-string v0, "MotoCameraKPI"

    const-string v1, "onPause preview stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    :cond_c
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1881
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1882
    iput-object v5, p0, Lcom/motorola/Camera/Camera;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 1886
    :cond_d
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->hideSceneDialog()V

    .line 1887
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->resetFilter()V

    .line 1889
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_e

    .line 1890
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1893
    :cond_e
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v0}, Lcom/motorola/Camera/FocusManager;->cleanup()V

    .line 1894
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 1897
    iget v0, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    iget v1, p0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    if-ge v0, v1, :cond_10

    .line 1899
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_f

    const-string v0, "MotoCamera"

    const-string v1, "Camera:onPause:PanoramaMode calling stopPanoramaCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    :cond_f
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPanoramaCapture()V

    .line 1901
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureClusterCameraMode(I)V

    .line 1909
    :cond_10
    :goto_1
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mDidRegister:Z

    if-eqz v0, :cond_11

    .line 1911
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1912
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mDidRegister:Z

    .line 1915
    :cond_11
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    if-eqz v0, :cond_12

    .line 1916
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->getToolbarOpenState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setToolbarOpenStatus(Z)V

    .line 1920
    :cond_12
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1922
    invoke-direct {p0, v3}, Lcom/motorola/Camera/Camera;->dismissToast(Z)V

    .line 1923
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v1

    .line 1924
    :try_start_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1925
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->save()V

    .line 1926
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_13

    const-string v0, "MotoCameraKPI"

    const-string v2, "onPause save settings"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    :cond_13
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1929
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->interruptThumbnailThread()V

    .line 1931
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_14

    .line 1932
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1933
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    .line 1934
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mAutotimerCountImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1937
    :cond_14
    iput v3, p0, Lcom/motorola/Camera/Camera;->mAutoTimerCount:I

    .line 1941
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->clearMessageQueue()V

    .line 1943
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1945
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_15

    const-string v0, "MotoCamera"

    const-string v1, "onPause() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    :cond_15
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_16

    const-string v0, "MotoCameraKPI"

    const-string v1, "onPause exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    :cond_16
    return-void

    .line 1905
    :cond_17
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->closeCamera()V

    goto :goto_1

    .line 1928
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1869
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 396
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1627
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraKPI"

    const-string v4, "onResume enter"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1629
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mIsFocusing:Z

    .line 1630
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mIsFocusLocked:Z

    .line 1631
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mAnimationRunning:Z

    .line 1632
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mThumbnailDecoded:Z

    .line 1633
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mDeviceDisabled:Z

    .line 1634
    iput v3, p0, Lcom/motorola/Camera/Camera;->mAutoTimerCount:I

    .line 1636
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v4, "onResume() - Enter"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :cond_1
    sput-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->mShouldReadFrontParams:Z

    .line 1640
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 1642
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1643
    .local v0, currentConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/motorola/Camera/Camera;->mConfig_PL:I

    .line 1644
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    iget v4, p0, Lcom/motorola/Camera/Camera;->mConfig_PL:I

    invoke-virtual {v1, v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->setOrientation(I)V

    .line 1646
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v4

    .line 1648
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    const/4 v5, 0x0

    invoke-virtual {v1, p0, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentAppMode(Landroid/content/Context;I)V

    .line 1649
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setDefaultZoomValue()V

    .line 1650
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoCameraKPI"

    const-string v5, "onResume default zoom set"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :cond_2
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isImageCaptureIntent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsImageCaptureIntent:Z

    .line 1654
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-boolean v5, p0, Lcom/motorola/Camera/Camera;->mIsImageCaptureIntent:Z

    invoke-virtual {v1, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setServiceMode(Z)V

    .line 1656
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isSecurelyLockedModeImageCaptureIntent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsSecurelyLockedModeImageCaptureIntent:Z

    .line 1657
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-boolean v5, p0, Lcom/motorola/Camera/Camera;->mIsSecurelyLockedModeImageCaptureIntent:Z

    invoke-virtual {v1, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setSecurelyLockedMode(Z)V

    .line 1659
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    if-nez v1, :cond_3

    .line 1660
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/motorola/Camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    .line 1661
    new-instance v1, Lcom/motorola/Camera/LocUtility;

    iget-object v5, p0, Lcom/motorola/Camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    invoke-direct {v1, p0, v5}, Lcom/motorola/Camera/LocUtility;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    iput-object v1, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    .line 1663
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-object v5, p0, Lcom/motorola/Camera/Camera;->mLocUtil:Lcom/motorola/Camera/LocUtility;

    invoke-virtual {v5}, Lcom/motorola/Camera/LocUtility;->isLocationProviderEnabled()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setProviderEnabled(Z)V

    .line 1664
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1666
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mPausing:Z

    .line 1667
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mZoomAdjusting:Z

    .line 1668
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x80

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1670
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsStitching:Z

    if-eqz v1, :cond_8

    .line 1674
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    const-string v1, "MotoCamera"

    const-string v2, "----OnResume, still stitching panorama-----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    :cond_4
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1676
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1677
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1678
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1798
    :goto_0
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v2

    .line 1799
    :try_start_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPickIntent()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setServiceMode(Z)V

    .line 1800
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1803
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->interruptThumbnailThread()V

    .line 1804
    new-instance v1, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    invoke-direct {v1, p0, v7}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;-><init>(Lcom/motorola/Camera/Camera;[B)V

    iput-object v1, p0, Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    .line 1805
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    const-string v1, "MotoCameraKPI"

    const-string v2, "onResume starting updateThumbnail thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    :cond_5
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->updateThumbnailThread:Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->start()V

    .line 1808
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_6

    const-string v1, "MotoCamera"

    const-string v2, "onResume() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_6
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_7

    const-string v1, "MotoCameraKPI"

    const-string v2, "onResume exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    :cond_7
    :goto_1
    return-void

    .line 1664
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1683
    :cond_8
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPostText:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPostText:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1685
    :cond_9
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    if-eqz v1, :cond_a

    .line 1686
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1687
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mBlackout:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1689
    :cond_a
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1691
    :cond_b
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStitchingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1693
    :cond_c
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mStitchingMsgText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1694
    :cond_d
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_e

    const-string v1, "MotoCameraKPI"

    const-string v4, "onResume unused views hidden"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    :cond_e
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    if-eqz v1, :cond_f

    .line 1699
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera$ImageCapture;->clearLastData()V

    .line 1700
    iput-object v7, p0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    .line 1704
    :cond_f
    new-instance v1, Lcom/motorola/Camera/Camera$ImageCapture;

    invoke-direct {v1, p0}, Lcom/motorola/Camera/Camera$ImageCapture;-><init>(Lcom/motorola/Camera/Camera;)V

    iput-object v1, p0, Lcom/motorola/Camera/Camera;->mImageCapture:Lcom/motorola/Camera/Camera$ImageCapture;

    .line 1705
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_10

    const-string v1, "MotoCameraKPI"

    const-string v4, "onResume imageCapture created"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    :cond_10
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-nez v1, :cond_13

    .line 1710
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_11

    const-string v1, "MotoCamera"

    const-string v4, "onResume() - preview not running, call startPreview()"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :cond_11
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_12

    const-string v1, "MotoCameraKPI"

    const-string v4, "onResume need to start device"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    :cond_12
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->startDevice()V

    .line 1713
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_13

    const-string v1, "MotoCameraKPI"

    const-string v4, "onResume device started"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    :cond_13
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_16

    .line 1717
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_14

    const-string v1, "MotoCamera"

    const-string v4, "onResume() - startPreview failed, just return"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :cond_14
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mDeviceDisabled:Z

    if-eqz v1, :cond_15

    .line 1719
    const v1, 0x7f0b009b

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-virtual {p0, v1, v4}, Lcom/motorola/Camera/Camera;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    .line 1724
    :goto_2
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->finish()V

    goto/16 :goto_1

    .line 1721
    :cond_15
    const v1, 0x7f0b0097

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 1728
    :cond_16
    sget-boolean v1, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->mFeatureDualVol:Z

    if-eqz v1, :cond_17

    .line 1730
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentStorageLocation()I

    move-result v1

    if-eq v1, v2, :cond_26

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsInternalSD:Z

    .line 1731
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSDPlug()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1732
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->checkExternalSDCardFirstTime()V

    .line 1733
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_17

    const-string v1, "MotoCameraKPI"

    const-string v4, "onResume sdcard-ext checked"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :cond_17
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_18

    const-string v1, "MotoCamera"

    const-string v4, "onResume() - valid surfaceholder"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    :cond_18
    iput v2, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    .line 1742
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_19

    const-string v1, "MotoCameraKPI"

    const-string v4, "onResume cam set to idle"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :cond_19
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1a

    const-string v1, "MotoCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "w20919 onResume() - Enter 111"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    :cond_1a
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->OPENGL_ON:Z

    if-ne v1, v2, :cond_1b

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterAnimation()Z

    move-result v1

    if-ne v2, v1, :cond_1b

    .line 1748
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v1, :cond_27

    .line 1750
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->initShutterView()V

    .line 1758
    :cond_1b
    :goto_4
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mFirstTimeInitialized:Z

    if-nez v1, :cond_28

    .line 1760
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1c

    const-string v1, "MotoCamera"

    const-string v3, "onResume() - we haven\'t initialized before, call firstTimeInit()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    :cond_1c
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1d

    const-string v1, "MotoCameraKPI"

    const-string v3, "onResume before first init"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    :cond_1d
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->initializeFirstTime()V

    .line 1763
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1e

    const-string v1, "MotoCameraKPI"

    const-string v3, "onResume after first init"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    :cond_1e
    :goto_5
    iget-boolean v1, p0, Lcom/motorola/Camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->enableAllControls(Z)V

    .line 1782
    :cond_1f
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_20

    const-string v1, "MotoCameraKPI"

    const-string v3, "onResume beginning to show ui"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    :cond_20
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 1784
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_21

    const-string v1, "MotoCameraKPI"

    const-string v3, "onResume controller updated"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    :cond_21
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showRightSet()V

    .line 1786
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_22

    const-string v1, "MotoCameraKPI"

    const-string v3, "onResume right set shown"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    :cond_22
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showTopStatusSet()V

    .line 1788
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_23

    const-string v1, "MotoCameraKPI"

    const-string v3, "onResume top set shown"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    :cond_23
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 1790
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_24

    const-string v1, "MotoCameraKPI"

    const-string v3, "onResume capture control shown"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    :cond_24
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCaptureCluster()V

    .line 1792
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_25

    const-string v1, "MotoCameraKPI"

    const-string v3, "onResume capture cluster shown"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    :cond_25
    iput-boolean v2, p0, Lcom/motorola/Camera/Camera;->mNeedCheckStorage:Z

    goto/16 :goto_0

    :cond_26
    move v1, v3

    .line 1730
    goto/16 :goto_3

    .line 1754
    :cond_27
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopShutterAnim()V

    goto/16 :goto_4

    .line 1767
    :cond_28
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_29

    const-string v1, "MotoCamera"

    const-string v4, "onResume() - we have already init\'ed, call secondTimeInit()"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    :cond_29
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2a

    const-string v1, "MotoCameraKPI"

    const-string v4, "onResume before second init"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    :cond_2a
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->initializeSecondTime()V

    .line 1770
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2b

    const-string v1, "MotoCameraKPI"

    const-string v4, "onResume after second init"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    :cond_2b
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1773
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2c

    const-string v1, "MotoCamera"

    const-string v4, "On Resume(); Enable Panorama"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    :cond_2c
    invoke-direct {p0, v3}, Lcom/motorola/Camera/Camera;->enablePanorama(Z)V

    .line 1775
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1e

    const-string v1, "MotoCameraKPI"

    const-string v3, "onResume after panorama enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1800
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public onScreenCaptureDown()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 6734
    iget v4, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v4, v7, :cond_11

    .line 6736
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    const-string v4, "MotoCameraKPI"

    const-string v5, "onScreenCaptureDown capture start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6738
    :cond_0
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v4, v9, :cond_2

    .line 6829
    :cond_1
    :goto_0
    return-void

    .line 6742
    :cond_2
    iget v4, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    if-lt v4, v7, :cond_3

    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isMultishotMode()Z

    move-result v4

    if-ne v4, v7, :cond_5

    iget v4, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    sget v5, Lcom/motorola/Camera/Camera;->mMultiShotMaxCount:I

    if-ge v4, v5, :cond_5

    .line 6744
    :cond_3
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_4

    const-string v4, "MotoCamera"

    const-string v5, "onSnap() - SD Card Full"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6745
    :cond_4
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->showStorageToast()V

    .line 6746
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6747
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4, v8}, Lcom/motorola/Camera/View/Control/OnScreenController;->setCaptureClusterCameraMode(I)V

    goto :goto_0

    .line 6752
    :cond_5
    iget-boolean v4, p0, Lcom/motorola/Camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v4, :cond_7

    .line 6753
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 6754
    .local v1, myExtras:Landroid/os/Bundle;
    if-eqz v1, :cond_7

    .line 6756
    const-string v4, "output"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 6757
    .local v3, saveUri:Landroid/net/Uri;
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_6

    const-string v4, "MotoCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jqrb37 bselectPhoto myExtras :  saveUri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6758
    :cond_6
    if-eqz v3, :cond_7

    .line 6759
    const/4 v2, 0x0

    .line 6761
    .local v2, outputStream:Ljava/io/OutputStream;
    :try_start_0
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 6768
    if-eqz v2, :cond_7

    .line 6770
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6780
    .end local v1           #myExtras:Landroid/os/Bundle;
    .end local v2           #outputStream:Ljava/io/OutputStream;
    .end local v3           #saveUri:Landroid/net/Uri;
    :cond_7
    :goto_1
    iget-boolean v4, p0, Lcom/motorola/Camera/Camera;->mIsFocusButtonPressed:Z

    if-eqz v4, :cond_8

    .line 6781
    iput-boolean v7, p0, Lcom/motorola/Camera/Camera;->mCaptureOnShortPress:Z

    .line 6783
    :cond_8
    iget-boolean v4, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v4, :cond_1

    .line 6784
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_9

    const-string v4, "MotoCameraKPI"

    const-string v5, "onScreenCaptureDown before zoom"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6786
    :cond_9
    iget-boolean v4, p0, Lcom/motorola/Camera/Camera;->mZoomAdjusting:Z

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v4, :cond_a

    .line 6787
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->stopSmoothZoom()V

    .line 6788
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4, v8}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateZoom(I)V

    .line 6791
    :cond_a
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_b

    const-string v4, "MotoCameraKPI"

    const-string v5, "onScreenCaptureDown stop and update zoom"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6794
    :cond_b
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 6795
    :cond_c
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->rightSetFadeOut()V

    .line 6799
    :goto_2
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_d

    const-string v4, "MotoCameraKPI"

    const-string v5, "onScreenCaptureDown rightSetFadeOut"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6801
    :cond_d
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_e

    const-string v4, "MotoCamera"

    const-string v5, "onKeyDown() - calling checkAndSnap()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6802
    :cond_e
    const/16 v4, 0x1b

    invoke-direct {p0, v4}, Lcom/motorola/Camera/Camera;->checkAndSnap(I)V

    goto/16 :goto_0

    .line 6771
    .restart local v1       #myExtras:Landroid/os/Bundle;
    .restart local v2       #outputStream:Ljava/io/OutputStream;
    .restart local v3       #saveUri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 6772
    .local v0, ex:Ljava/io/IOException;
    const-string v4, "MotoCamera"

    const-string v5, "selectPhoto - IOException Ignore close exception for outputStream"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6762
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 6763
    .restart local v0       #ex:Ljava/io/IOException;
    const v4, 0x7f0b0014

    :try_start_2
    invoke-virtual {p0, v4}, Lcom/motorola/Camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;I)V

    .line 6764
    const-string v4, "MotoCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jqrb37 selectPhoto - IOException save to uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6768
    if-eqz v2, :cond_1

    .line 6770
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 6771
    :catch_2
    move-exception v0

    .line 6772
    const-string v4, "MotoCamera"

    const-string v5, "selectPhoto - IOException Ignore close exception for outputStream"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6768
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_f

    .line 6770
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 6773
    :cond_f
    :goto_3
    throw v4

    .line 6771
    :catch_3
    move-exception v0

    .line 6772
    .restart local v0       #ex:Ljava/io/IOException;
    const-string v5, "MotoCamera"

    const-string v6, "selectPhoto - IOException Ignore close exception for outputStream"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 6797
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #myExtras:Landroid/os/Bundle;
    .end local v2           #outputStream:Ljava/io/OutputStream;
    .end local v3           #saveUri:Landroid/net/Uri;
    :cond_10
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4, v8}, Lcom/motorola/Camera/View/Control/OnScreenController;->enableAllControls(Z)V

    goto :goto_2

    .line 6805
    :cond_11
    iget v4, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_13

    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getReviewTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_13

    .line 6808
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_12

    .line 6809
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6811
    :cond_12
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 6812
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 6814
    :cond_13
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isPanoramaMode()Z

    move-result v4

    if-eqz v4, :cond_14

    iget v4, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v4, v6, :cond_14

    iget v4, p0, Lcom/motorola/Camera/Camera;->mPanoramaShotTaken:I

    iget v5, p0, Lcom/motorola/Camera/Camera;->mPanoramaMaxShot:I

    if-ge v4, v5, :cond_14

    .line 6820
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 6822
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPanoramaCapture()V

    goto/16 :goto_0

    .line 6824
    :cond_14
    iget v4, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    .line 6826
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/motorola/Camera/Camera;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onScreenCaptureFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 6833
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v0, v1, :cond_3

    .line 6834
    iget v0, p0, Lcom/motorola/Camera/Camera;->mPicturesRemaining:I

    if-ge v0, v1, :cond_1

    .line 6835
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->showStorageToast()V

    .line 6852
    :cond_0
    :goto_0
    return-void

    .line 6839
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 6840
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 6841
    const-string v0, "MotoCamera"

    const-string v1, "onScreenCaptureFocus() - start autoFocus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6842
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v0}, Lcom/motorola/Camera/FocusManager;->onShutterDown()V

    goto :goto_0

    .line 6844
    :cond_3
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getReviewTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 6846
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 6847
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6849
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6850
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onScreenCaptureUp()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6726
    iget v0, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v0, v2, :cond_1

    .line 6727
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "onScreenCaptureUp() : Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6728
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v0}, Lcom/motorola/Camera/FocusManager;->onShutterUp()V

    .line 6729
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mCaptureOnFocus:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->showCameraCaptureControl(Z)V

    .line 6731
    :cond_1
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1370
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1372
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "onStart() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->isMultishotMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1392
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/CameraApp;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCameraActivityContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCameraClass:Lcom/motorola/Camera/Camera;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/CameraApp;->getStoreImageUtility(Landroid/content/Context;Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/StoreImageUtility;

    .line 1396
    :cond_1
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoCamera"

    const-string v1, "onStart() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1952
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

    const-string v2, "onStop() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    :cond_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCameraKPI"

    const-string v2, "onStop enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/CameraApp;

    invoke-virtual {v1, v3, v3}, Lcom/motorola/Camera/CameraApp;->getStoreImageUtility(Landroid/content/Context;Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/StoreImageUtility;

    move-result-object v0

    .line 1967
    .local v0, storeimageuitility:Lcom/motorola/Camera/StoreImageUtility;
    if-eqz v0, :cond_2

    .line 1969
    invoke-virtual {v0}, Lcom/motorola/Camera/StoreImageUtility;->clearReferences()V

    .line 1972
    :cond_2
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    .line 1973
    const-string v1, "MotoCamera"

    const-string v2, "onStop() - Clearing Multishot reference to this activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :cond_3
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    const-string v1, "MotoCamera"

    const-string v2, "onStop() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1980
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/16 v7, 0x325

    const/4 v6, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6857
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    .line 6858
    const-string v4, "MotoCamera"

    const-string v5, "Camera:onTouchEvent:touch event"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6860
    :cond_0
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v4}, Lcom/motorola/Camera/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 6861
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-static {v4}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 6862
    invoke-virtual {p0}, Lcom/motorola/Camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 6864
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 6866
    .local v1, action:I
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 6933
    :cond_1
    :goto_0
    return v2

    .line 6871
    :cond_2
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v4, :cond_3

    .line 6872
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 6874
    :cond_3
    if-nez v1, :cond_6

    .line 6876
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mPostText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v4

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-nez v4, :cond_5

    .line 6878
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 6879
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    if-nez v4, :cond_4

    .line 6880
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->initPostPanel()V

    .line 6883
    :cond_4
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 6884
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mPostPicturePanel:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6885
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mPostText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 6889
    :cond_5
    iget v4, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-eq v4, v2, :cond_1

    .line 6894
    :cond_6
    if-ne v1, v2, :cond_7

    iget-boolean v4, p0, Lcom/motorola/Camera/Camera;->mTimerContainerShowing:Z

    if-eqz v4, :cond_7

    .line 6896
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mTimerContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6897
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mTimerContainerShowing:Z

    .line 6898
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    goto :goto_0

    .line 6902
    :cond_7
    if-ne v1, v2, :cond_8

    iget-boolean v4, p0, Lcom/motorola/Camera/Camera;->mRotateDialogShowing:Z

    if-eqz v4, :cond_8

    .line 6904
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    if-eqz v4, :cond_8

    .line 6906
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;

    invoke-virtual {v4}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 6907
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 6908
    iput-boolean v3, p0, Lcom/motorola/Camera/Camera;->mRotateDialogShowing:Z

    goto :goto_0

    .line 6913
    :cond_8
    if-ne v1, v2, :cond_9

    iget v4, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v4, v2, :cond_9

    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->isPopupDialogOpen()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 6915
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4, v2, v2}, Lcom/motorola/Camera/View/Control/OnScreenController;->closePopupDialog(ZZ)V

    .line 6916
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4, v3}, Lcom/motorola/Camera/View/Control/OnScreenController;->setDialogStatus(I)V

    goto/16 :goto_0

    .line 6920
    :cond_9
    iget-object v4, p0, Lcom/motorola/Camera/Camera;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;

    invoke-virtual {v4}, Lcom/motorola/Camera/View/Control/OnScreenController;->isPopupDialogOpen()Z

    move-result v4

    if-eqz v4, :cond_a

    move v2, v3

    goto/16 :goto_0

    .line 6923
    :cond_a
    iget-boolean v4, p0, Lcom/motorola/Camera/Camera;->mFocusAreaSupported:Z

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/motorola/Camera/Camera;->mMeteringAreaSupported:Z

    if-nez v4, :cond_b

    move v2, v3

    goto/16 :goto_0

    .line 6926
    :cond_b
    iget-boolean v3, p0, Lcom/motorola/Camera/Camera;->mPreviewing:Z

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/motorola/Camera/Camera;->mStatus:I

    if-ne v3, v2, :cond_c

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_c

    .line 6927
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 6928
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6929
    .local v0, FocusMsg:Landroid/os/Message;
    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 6933
    .end local v0           #FocusMsg:Landroid/os/Message;
    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public rotateCurrentThumbnail()V
    .locals 4

    .prologue
    .line 5096
    iget v0, p0, Lcom/motorola/Camera/Camera;->mLastOrientation:I

    iput v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    .line 5101
    iget v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    invoke-static {v0}, Lcom/motorola/Camera/ImageManager;->roundOrientation(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    .line 5102
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 5103
    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateThumbnailThread - orientation is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5106
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mIsRotatorClosed:Z

    if-eqz v0, :cond_1

    .line 5107
    iget v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    add-int/lit8 v0, v0, 0x5a

    iput v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    .line 5109
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v1

    .line 5111
    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5112
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getImagerOrientation()I

    move-result v0

    iget v2, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    add-int/2addr v0, v2

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    .line 5117
    :goto_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 5118
    const-string v0, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateThumbnailThread - mLastOrientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/Camera;->mLastOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mThumbnailOrientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mCamSetting.getImagerOrientation() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getImagerOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5121
    :cond_2
    monitor-exit v1

    .line 5122
    return-void

    .line 5114
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getImagerOrientation()I

    move-result v0

    iget v2, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    sub-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I

    goto :goto_0

    .line 5121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFocusParameters()V
    .locals 0

    .prologue
    .line 2849
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->setFocusModeParameters()V

    .line 2850
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 9
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2152
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged() - Enter - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    :cond_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2189
    :cond_1
    :goto_0
    return-void

    .line 2157
    :cond_2
    iput-object p1, p0, Lcom/motorola/Camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2158
    int-to-float v0, p3

    iput v0, p0, Lcom/motorola/Camera/Camera;->mSurfaceWidth:F

    .line 2159
    int-to-float v0, p4

    iput v0, p0, Lcom/motorola/Camera/Camera;->mSurfaceHeight:F

    .line 2161
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 2164
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2166
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 2168
    invoke-direct {p0, p1}, Lcom/motorola/Camera/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 2171
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_5

    move v4, v7

    .line 2172
    .local v4, mirror:Z
    :goto_1
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mDrawFocusView:Lcom/motorola/Camera/View/FocusView;

    iget-object v3, p0, Lcom/motorola/Camera/Camera;->mCameraView:Lcom/motorola/Camera/View/CameraView;

    iget v5, p0, Lcom/motorola/Camera/Camera;->mDisplayOrientation:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/Camera/FocusManager;->initialize(Lcom/motorola/Camera/FocusManager$FocusListener;Lcom/motorola/Camera/View/FocusView;Landroid/view/View;ZI)V

    .line 2174
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mFirstTimeInitialized:Z

    if-nez v0, :cond_6

    .line 2175
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->initializeFirstTime()V

    .line 2180
    :goto_2
    iget-boolean v0, p0, Lcom/motorola/Camera/Camera;->mStartLogger:Z

    if-eqz v0, :cond_4

    .line 2182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/motorola/Camera/Camera;->mKpiStartTimer:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 2183
    .local v6, time:Ljava/lang/String;
    const-string v0, "CAM"

    const-string v1, "STP"

    new-array v2, v7, [Lcom/motorola/kpi/KpiExtraLogs;

    new-instance v3, Lcom/motorola/kpi/KpiExtraLogs;

    const-string v5, "dur"

    invoke-direct {v3, v5, v6}, Lcom/motorola/kpi/KpiExtraLogs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v8

    invoke-static {v7, v0, v1, v2}, Lcom/motorola/kpi/KpiLogger;->Prod(ILjava/lang/String;Ljava/lang/String;[Lcom/motorola/kpi/KpiExtraLogs;)V

    .line 2185
    iput-boolean v8, p0, Lcom/motorola/Camera/Camera;->mStartLogger:Z

    .line 2188
    .end local v6           #time:Ljava/lang/String;
    :cond_4
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v1, "surfaceChanged() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v4           #mirror:Z
    :cond_5
    move v4, v8

    .line 2171
    goto :goto_1

    .line 2177
    .restart local v4       #mirror:Z
    :cond_6
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->initializeSecondTime()V

    goto :goto_2
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 2193
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "surfaceCreated() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v1, "surfaceCreated() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 2202
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCamera"

    const-string v1, "surfaceDestroyed() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    :cond_0
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->stopPreview()V

    .line 2206
    invoke-direct {p0}, Lcom/motorola/Camera/Camera;->disableUIAfterStopPreview()V

    .line 2207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2209
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoCamera"

    const-string v1, "surfaceDestroyed() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    :cond_1
    return-void
.end method

.method public updateConSatISO()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 3851
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3853
    const-string v0, "MotoCamera"

    const-string v1, "in updateConSatISO, not back camera , return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3870
    :goto_0
    return-void

    .line 3857
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3859
    const-string v0, "MotoCamera"

    const-string v1, "in updateConSatISO, restore to default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3860
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "contrast"

    invoke-virtual {v0, v1, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3861
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "iso"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3862
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "saturation"

    invoke-virtual {v0, v1, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 3865
    :cond_1
    const-string v0, "MotoCamera"

    const-string v1, "in updateConSatISO, set to user last setting value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3866
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "contrast"

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentContrastValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3867
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "iso"

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentISOValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3868
    iget-object v0, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "saturation"

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSaturationValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public updateEffects()V
    .locals 4

    .prologue
    .line 3815
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentEffect()I

    move-result v0

    .line 3816
    .local v0, colorEffect:I
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCamera"

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

    .line 3817
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportEffectsValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3819
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportEffectsValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3821
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v2, "updateEffects() - ColorEffect is sent to engine"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3822
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportEffectsValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 3825
    :cond_2
    return-void
.end method

.method public updateWhiteBalances()V
    .locals 4

    .prologue
    .line 3830
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 3834
    :cond_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoCamera"

    const-string v2, "updateWhiteBalances to auto since not auto scene or multishot and panorama mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3835
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 3849
    :cond_2
    :goto_0
    return-void

    .line 3839
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentWhiteBalance()I

    move-result v0

    .line 3840
    .local v0, whiteBalance:I
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    const-string v1, "MotoCamera"

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

    .line 3841
    :cond_4
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedWhiteBalancesValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3843
    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedWhiteBalancesValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3845
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    const-string v1, "MotoCamera"

    const-string v2, "updateWhiteBalances() - WhiteBalance is sent to engine"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3846
    :cond_5
    iget-object v2, p0, Lcom/motorola/Camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedWhiteBalancesValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto :goto_0
.end method
