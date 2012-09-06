.class public Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;
.super Lcom/motorola/Camera/View/Control/OnScreenController;
.source "OnScreenControllerOpengl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/motorola/Camera/DialogCallbackInterface;
.implements Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$18;,
        Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$ViewAnimationHandler;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS:I = 0x6

.field private static final CLICK_TOUCH_THRESHOLD:I = 0x14

.field private static final DIALOG_HEIGHT_PADDING:I = 0x18

.field private static final DIALOG_MARGIN_PADDING:I = 0xe

.field public static final DefaultTimeout:I = 0x1388

.field private static final EFFECTS:I = 0x2

.field private static final FLASH:I = 0x3

.field private static final MODE:I = 0x4

.field public static final MSG_REQUESTRENDER:I = 0x3

.field public static final MSG_SCENECLICKED:I = 0x2

.field public static final MSG_SCENESCLOSED:I = 0x1

.field public static final MSG_SCENESELECTED:I = 0x0

.field private static final NOSETTING:I = 0x0

.field private static final SCENES:I = 0x1

.field private static final SETTINGS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MotoOnScreenControllerOpenGL"

.field private static final TAG1:Ljava/lang/String; = "MyMotoOnScreenControllerOpenGL"

.field public static final TAG_KPI:Ljava/lang/String; = "MotoCameraKPI"

.field private static final USER_THRESHOLD:I = 0xa

.field private static final WHITEBALANCE:I = 0x7

.field private static final ZOOMBAR_UPPER_PADDING:I = 0x50

.field private static final ZOOM_BAR_TOLERANCE:I = 0x14

.field private static mFilteredResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public static mVideoCaptureInProgress:Z


# instance fields
.field protected frameParams:Landroid/view/WindowManager$LayoutParams;

.field private mActivity:Landroid/app/Activity;

.field private mBrightnessButton:Landroid/widget/ImageView;

.field private mBtnBottom:I

.field private mBtnHeight:I

.field private mBtnLeft:I

.field private mBtnRight:I

.field private mBtnTop:I

.field private mBtnWidth:I

.field private mCAFStatus:Landroid/widget/ImageView;

.field private mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

.field private mClickTouchThreshold:I

.field private mCurrentEffect:I

.field private mCurrentFlash:I

.field private mCurrentMode:I

.field private mCurrentOrientation:I

.field private mCurrentScenes:I

.field private mCurrentWhiteBalance:I

.field private mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

.field private mDialog:Lcom/motorola/Camera/DialogSettingsView;

.field private mDialogCloseInProgress:Z

.field private mDialogHeightPadding:I

.field private mDialogMarginPadding:I

.field private mEffectsButton:Landroid/widget/ImageView;

.field private mFlashButton:Landroid/widget/ImageView;

.field private mFlashSet:Landroid/view/View;

.field private mFocusManager:Lcom/motorola/Camera/FocusManager;

.field private mFocusView:Lcom/motorola/Camera/View/FocusView;

.field private mGridDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/Camera/DialogGridData;",
            ">;"
        }
    .end annotation
.end field

.field private mHandShakeViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

.field private mHandshake:Landroid/widget/ImageView;

.field private mHandshakeViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

.field private mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

.field mImageCaptureMode:Ljava/lang/Boolean;

.field private mLastBrightnessProgress:I

.field private mLastContrastProgress:I

.field private mLastProgress:I

.field private mLastSaturationProgress:I

.field private mLocationTagsView:Landroid/widget/TextView;

.field private mLocationTagsViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

.field private mLocationTagsViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

.field private mLockRightSet:Z

.field private mModesButton:Landroid/widget/ImageView;

.field private mNewThumbAnimationImage:Landroid/widget/ImageView;

.field private mNub:Landroid/widget/LinearLayout;

.field private mOldChildView:Landroid/view/View;

.field private mOnScreenMenuShowing:Z

.field private mPanCapturing:Z

.field private mPrevButtonClicked:I

.field private mProgressBar:Lcom/motorola/Camera/DialogProgressBar;

.field private mProgressSettingView:Lcom/motorola/Camera/ProgressSettingView;

.field private mRecording:Z

.field private mResolutionImgViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

.field private mResolutionImgViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

.field private mScale:F

.field private mScaleAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mScenesButton:Landroid/widget/ImageView;

.field mScreen:Landroid/widget/RelativeLayout;

.field private volatile mSecondaryDialogType:Z

.field private volatile mSettingSecondaryDialog:Z

.field private mSettingsButton:Landroid/widget/ImageView;

.field mSliderContainer:Landroid/widget/RelativeLayout;

.field private mSliderContainerBottom:I

.field private mSliderContainerHeight:I

.field private mSliderContainerLeft:I

.field private mSliderContainerRight:I

.field private mSliderContainerTop:I

.field private mSliderContainerWidth:I

.field private mSlidingDrawerClosed:Z

.field private mStatus:I

.field private mStatusResolutionTextIcon:Landroid/widget/TextView;

.field private mStillImageCaptureInProgress:Z

.field private mThumbnailAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

.field private mThumbnailAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

.field private mThumbnailAnimationPostShotListener:Landroid/view/animation/Animation$AnimationListener;

.field private mThumbnailImageView:Landroid/widget/ImageButton;

.field private mToolBarButtonClicked:Z

.field private mToolbarAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

.field private mToolbarAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

.field private mToolbarDialogAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mToolbarFaded:Z

.field private mToolbarHandle:Landroid/widget/ImageView;

.field private mToolbarHideAnimationInProgress:Z

.field private mToolbarShowAnimationInProgress:Z

.field private mTransitionBetweenDialogs:Z

.field private mTransitionDialogFadeInListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTranslateIn:Landroid/view/animation/AnimationSet;

.field private mTranslateOut:Landroid/view/animation/AnimationSet;

.field private mUserThreshold:I

.field private mVStabImage:Landroid/widget/ImageView;

.field private mVideoCaptureStopping:Z

.field private mViewGroup:Landroid/view/ViewGroup;

.field private mWhiteBalanceButton:Landroid/widget/ImageView;

.field protected mWindowManager:Landroid/view/WindowManager;

.field private mX:F

.field private mY:F

.field private mZoomBarTolerance:I

.field private mZoomBarUpperPadding:I

.field private mZoombarAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

.field private mZoombarAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

.field private thumbAnimation:Landroid/view/animation/AnimationSet;

.field private trayDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFilteredResources:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 241
    invoke-direct {p0, p1}, Lcom/motorola/Camera/View/Control/OnScreenController;-><init>(Landroid/content/Context;)V

    .line 116
    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 123
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLockRightSet:Z

    .line 126
    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    .line 146
    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSlidingDrawerClosed:Z

    .line 192
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 206
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPanCapturing:Z

    .line 215
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureStopping:Z

    .line 222
    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentOrientation:I

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->thumbAnimation:Landroid/view/animation/AnimationSet;

    .line 310
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$1;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$1;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationPostShotListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1202
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$2;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$2;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTransitionDialogFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2268
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$4;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$4;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoombarAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2316
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$5;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$5;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoombarAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2371
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$6;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$6;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2419
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$7;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$7;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2448
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$8;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$8;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScaleAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2523
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$9;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$9;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2574
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$10;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$10;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2613
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$11;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$11;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mResolutionImgViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2651
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$12;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$12;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mResolutionImgViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2948
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarDialogAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3878
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$14;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$14;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3924
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$15;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$15;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4246
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$16;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$16;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshakeViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4275
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$17;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$17;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandShakeViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 242
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    .line 243
    invoke-static {p1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/motorola/Camera/View/Control/OnScreenController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 123
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLockRightSet:Z

    .line 126
    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    .line 146
    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSlidingDrawerClosed:Z

    .line 192
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 206
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPanCapturing:Z

    .line 215
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureStopping:Z

    .line 222
    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentOrientation:I

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->thumbAnimation:Landroid/view/animation/AnimationSet;

    .line 310
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$1;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$1;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationPostShotListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1202
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$2;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$2;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTransitionDialogFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2268
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$4;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$4;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoombarAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2316
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$5;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$5;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoombarAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2371
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$6;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$6;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2419
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$7;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$7;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2448
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$8;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$8;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScaleAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2523
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$9;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$9;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2574
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$10;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$10;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2613
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$11;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$11;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mResolutionImgViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2651
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$12;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$12;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mResolutionImgViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2948
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarDialogAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3878
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$14;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$14;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3924
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$15;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$15;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4246
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$16;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$16;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshakeViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4275
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$17;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$17;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandShakeViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 236
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    .line 237
    invoke-static {p1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/Camera/View/Control/OnScreenController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 123
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLockRightSet:Z

    .line 126
    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    .line 146
    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSlidingDrawerClosed:Z

    .line 192
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 206
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPanCapturing:Z

    .line 215
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureStopping:Z

    .line 222
    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentOrientation:I

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->thumbAnimation:Landroid/view/animation/AnimationSet;

    .line 310
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$1;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$1;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationPostShotListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1202
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$2;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$2;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTransitionDialogFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2268
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$4;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$4;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoombarAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2316
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$5;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$5;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoombarAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2371
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$6;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$6;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2419
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$7;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$7;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2448
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$8;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$8;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScaleAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2523
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$9;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$9;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2574
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$10;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$10;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2613
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$11;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$11;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mResolutionImgViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2651
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$12;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$12;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mResolutionImgViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 2948
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$13;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarDialogAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3878
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$14;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$14;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3924
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$15;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$15;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4246
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$16;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$16;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshakeViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4275
    new-instance v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$17;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$17;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandShakeViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    .line 230
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    .line 231
    invoke-static {p1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance(Landroid/content/Context;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNewThumbAnimationImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNewThumbAnimationImage:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolBarButtonClicked:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolBarButtonClicked:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    return p1
.end method

.method static synthetic access$1202(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    return p1
.end method

.method static synthetic access$1302(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarFaded:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Lcom/motorola/Camera/CustomSlidingDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarHideAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarShowAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Lcom/motorola/Camera/widget/ZoomControlBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$602(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->thumbAnimation:Landroid/view/animation/AnimationSet;

    return-object p1
.end method

.method static synthetic access$700(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogCloseInProgress:Z

    return p1
.end method

.method private getLayoutData(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 3085
    const v1, 0x7f0d002c

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNub:Landroid/widget/LinearLayout;

    .line 3088
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNub:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v2}, Lcom/motorola/Camera/CustomSlidingDrawer;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnLeft:I

    .line 3089
    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnRight:I

    .line 3090
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNub:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v2}, Lcom/motorola/Camera/CustomSlidingDrawer;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnTop:I

    .line 3091
    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnTop:I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnBottom:I

    .line 3092
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnWidth:I

    .line 3093
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnHeight:I

    .line 3094
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 3095
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBtnLeft:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mBtnRight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnRight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mBtnWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mBtnTop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnTop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mBtnBottom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnBottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mBtnHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerWidth:I

    .line 3101
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerLeft:I

    .line 3102
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerRight:I

    .line 3103
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerHeight:I

    .line 3104
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerTop:I

    .line 3105
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v1

    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerBottom:I

    .line 3106
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 3107
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSliderContainerLeft:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  :mSliderContainerRight"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerRight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mSliderContainerWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mSliderContainerHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mSliderContainerTop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerTop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mSliderContainerBottom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerBottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    :cond_1
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 3115
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "myDrawerWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v3}, Lcom/motorola/Camera/CustomSlidingDrawer;->getCompleteWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  :myDrawerHeight"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v3}, Lcom/motorola/Camera/CustomSlidingDrawer;->getCompleteHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    :cond_2
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    .line 3122
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen_left:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  :screen_right"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  screen_width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  screen_height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  screen_bottom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  screen_top:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    :cond_3
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 3131
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    .line 3132
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureClusterLeft:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/motorola/Camera/View/CaptureCluster;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  :captureClusterRight"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/motorola/Camera/View/CaptureCluster;->getRight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  :captureClusterTop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/motorola/Camera/View/CaptureCluster;->getTop()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    :cond_4
    return-void
.end method

.method private initForMode()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1408
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 1409
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v4, "initForMode() - Enter"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :cond_0
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 1412
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v1

    if-nez v1, :cond_3

    .line 1415
    if-eqz v0, :cond_1

    .line 1416
    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/CaptureCluster;->setCameraMode(I)V

    .line 1426
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->enableCamcorderSwitch(Z)V

    .line 1429
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v1

    if-nez v1, :cond_5

    :goto_2
    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/CaptureCluster;->enableVideoSnapshot(Z)V

    .line 1431
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 1432
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scenes effects mode app:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "initForMode() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :cond_2
    return-void

    .line 1418
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1421
    if-eqz v0, :cond_1

    .line 1422
    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/CaptureCluster;->setCameraMode(I)V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 1426
    goto :goto_1

    :cond_5
    move v2, v3

    .line 1429
    goto :goto_2
.end method

.method private positionDialog(Landroid/view/View;Landroid/view/View;III)V
    .locals 0
    .parameter "v"
    .parameter "childView"
    .parameter "passedWidth"
    .parameter "passedHeight"
    .parameter "viewElements"

    .prologue
    .line 3403
    invoke-direct/range {p0 .. p5}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewLand(Landroid/view/View;Landroid/view/View;III)V

    .line 3404
    return-void
.end method

.method private positionViewLand(Landroid/view/View;Landroid/view/View;III)V
    .locals 10
    .parameter "v"
    .parameter "childView"
    .parameter "passedWidth"
    .parameter "passedHeight"
    .parameter "viewElements"

    .prologue
    .line 3153
    const v7, 0x7f0d000b

    invoke-virtual {p0, v7}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/Camera/View/CaptureCluster;

    .line 3154
    .local v2, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    sub-int v0, v7, v8

    .line 3155
    .local v0, availableHeight:I
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v8

    invoke-virtual {v2}, Lcom/motorola/Camera/View/CaptureCluster;->getRight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    div-int/lit8 v8, v8, 0x2

    sub-int v1, v7, v8

    .line 3158
    .local v1, availableWidth:I
    if-le v0, p4, :cond_0

    .line 3160
    move v0, p4

    .line 3164
    :cond_0
    if-gt p4, v0, :cond_1

    .line 3166
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    add-int/2addr v7, p3

    if-le v1, v7, :cond_1

    .line 3168
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    add-int v1, p3, v7

    .line 3172
    :cond_1
    const-string v7, "MyMotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "availableWidth:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  availableHeight:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_2

    .line 3174
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "availableHeight:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "availableWidth:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    :cond_2
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3184
    .local v5, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnLeft:I

    iget v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int v3, v7, v8

    .line 3185
    .local v3, center_button:I
    move v4, v3

    .line 3186
    .local v4, left_screen_to_center_button:I
    invoke-virtual {v2}, Lcom/motorola/Camera/View/CaptureCluster;->getLeft()I

    move-result v7

    sub-int v6, v7, v3

    .line 3188
    .local v6, right_screen_to_center_button:I
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_3

    .line 3189
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "left_screen_to_center_button:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  :right_screen_to_center_button"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    :cond_3
    div-int/lit8 v7, v1, 0x2

    if-le v4, v7, :cond_7

    div-int/lit8 v7, v1, 0x2

    if-le v6, v7, :cond_7

    .line 3197
    div-int/lit8 v7, v1, 0x2

    sub-int v7, v4, v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 3199
    if-gez p5, :cond_5

    .line 3201
    const v7, 0x7f0200dc

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3211
    :goto_0
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_4

    .line 3212
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Good case:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v7

    if-le v7, v0, :cond_d

    .line 3259
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v7

    sub-int/2addr v7, v0

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3266
    :goto_2
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3267
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7, p2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3268
    return-void

    .line 3203
    :cond_5
    const/4 v7, 0x3

    if-le p5, v7, :cond_6

    .line 3205
    const v7, 0x7f0200dc

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 3209
    :cond_6
    const v7, 0x7f0200dc

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 3215
    :cond_7
    div-int/lit8 v7, v1, 0x2

    if-ge v4, v7, :cond_a

    .line 3217
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnLeft:I

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 3218
    if-gez p5, :cond_8

    .line 3220
    const v7, 0x7f0200dd

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3230
    :goto_3
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_4

    .line 3231
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Left case:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3222
    :cond_8
    const/4 v7, 0x3

    if-le p5, v7, :cond_9

    .line 3224
    const v7, 0x7f0200dd

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 3228
    :cond_9
    const v7, 0x7f0200dd

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 3235
    :cond_a
    div-int/lit8 v7, v1, 0x2

    if-ge v6, v7, :cond_4

    .line 3237
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnRight:I

    sub-int/2addr v7, v1

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 3238
    if-gez p5, :cond_b

    .line 3240
    const v7, 0x7f0200de

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3250
    :goto_4
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_4

    .line 3251
    const-string v7, "MotoOnScreenControllerOpenGL"

    const-string v8, "Right case"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3242
    :cond_b
    const/4 v7, 0x3

    if-le p5, v7, :cond_c

    .line 3244
    const v7, 0x7f0200dc

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 3248
    :cond_c
    const v7, 0x7f0200de

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    .line 3263
    :cond_d
    const/4 v7, 0x0

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2
.end method

.method private positionViewPort(Landroid/view/View;Landroid/view/View;III)V
    .locals 10
    .parameter "v"
    .parameter "childView"
    .parameter "passedWidth"
    .parameter "passedHeight"
    .parameter "viewElements"

    .prologue
    .line 3286
    const v7, 0x7f0d000b

    invoke-virtual {p0, v7}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/motorola/Camera/View/CaptureCluster;

    .line 3288
    .local v3, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    div-int/lit8 v8, v8, 0x2

    sub-int v1, v7, v8

    .line 3289
    .local v1, availableWidth:I
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v8

    sub-int v0, v7, v8

    .line 3292
    .local v0, availableHeight:I
    if-le v0, p4, :cond_0

    .line 3294
    move v0, p4

    .line 3298
    :cond_0
    if-gt p4, v0, :cond_1

    .line 3300
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    add-int/2addr v7, p3

    if-le v1, v7, :cond_1

    .line 3302
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    add-int v1, p3, v7

    .line 3306
    :cond_1
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_2

    .line 3307
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "availableHeight:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "availableWidth:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    :cond_2
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3318
    .local v5, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnTop:I

    iget v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnHeight:I

    div-int/lit8 v8, v8, 0x2

    add-int v4, v7, v8

    .line 3319
    .local v4, center_button:I
    move v6, v4

    .line 3320
    .local v6, top_screen_to_center_button:I
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    invoke-virtual {v3}, Lcom/motorola/Camera/View/CaptureCluster;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v2, v7, v4

    .line 3322
    .local v2, bottom_screen_to_center_button:I
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_3

    .line 3323
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "top_screen_to_center_button:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  :bottom_screen_to_center_button"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    :cond_3
    div-int/lit8 v7, v0, 0x2

    if-le v6, v7, :cond_7

    div-int/lit8 v7, v0, 0x2

    if-le v2, v7, :cond_7

    .line 3331
    div-int/lit8 v7, v0, 0x2

    sub-int v7, v6, v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3333
    if-gez p5, :cond_5

    .line 3335
    const v7, 0x7f0200dc

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3345
    :goto_0
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_4

    .line 3346
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Good case:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 3390
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3391
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7, p2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3396
    const/high16 v7, 0x42b4

    invoke-virtual {p2, v7}, Landroid/view/View;->setRotation(F)V

    .line 3398
    sub-int v7, v0, v1

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 3399
    return-void

    .line 3337
    :cond_5
    const/4 v7, 0x3

    if-le p5, v7, :cond_6

    .line 3339
    const v7, 0x7f0200dc

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 3343
    :cond_6
    const v7, 0x7f0200dc

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 3349
    :cond_7
    div-int/lit8 v7, v0, 0x2

    if-ge v6, v7, :cond_a

    .line 3351
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnTop:I

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3352
    if-gez p5, :cond_8

    .line 3353
    const v7, 0x7f0200dd

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3362
    :goto_2
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_4

    .line 3363
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "top case:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3355
    :cond_8
    const/4 v7, 0x3

    if-le p5, v7, :cond_9

    .line 3356
    const v7, 0x7f0200dd

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 3359
    :cond_9
    const v7, 0x7f0200dd

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 3367
    :cond_a
    div-int/lit8 v7, v0, 0x2

    if-ge v2, v7, :cond_4

    .line 3369
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnBottom:I

    sub-int/2addr v7, v0

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3370
    if-gez p5, :cond_b

    .line 3372
    const v7, 0x7f0200de

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3382
    :goto_3
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_4

    .line 3383
    const-string v7, "MotoOnScreenControllerOpenGL"

    const-string v8, "Bottom case"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3374
    :cond_b
    const/4 v7, 0x3

    if-le p5, v7, :cond_c

    .line 3376
    const v7, 0x7f0200dc

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 3380
    :cond_c
    const v7, 0x7f0200de

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method private processOnClick(Landroid/view/View;)V
    .locals 57
    .parameter "v"

    .prologue
    .line 503
    const/4 v13, 0x0

    .line 504
    .local v13, DialogView:Landroid/view/View;
    const/16 v30, 0x0

    .line 506
    .local v30, numElements:I
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_0

    .line 508
    const-string v5, "MotoOnScreenControllerOpenGL"

    const-string v6, "processOnClick enter"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v49

    .line 513
    .local v49, display:Landroid/view/Display;
    invoke-virtual/range {v49 .. v49}, Landroid/view/Display;->getRotation()I

    move-result v54

    .line 516
    .local v54, rotation:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    const/high16 v6, -0x8000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v56

    .line 517
    .local v56, widthMeasureSpec:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    const/high16 v6, -0x8000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v53

    .line 518
    .local v53, heightMeasureSpec:I
    const/4 v15, 0x0

    .line 519
    .local v15, DialogViewHeight:I
    const/4 v14, 0x0

    .line 520
    .local v14, DialogViewWidth:I
    const/4 v10, -0x1

    .line 522
    .local v10, selectedPosition:I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mRecording:Z

    if-eqz v5, :cond_3

    .line 524
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mRecording:Z

    if-eqz v5, :cond_2

    .line 526
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolBarButtonClicked:Z

    .line 1200
    :cond_2
    :goto_0
    return-void

    .line 531
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-static {v5}, Lcom/motorola/Camera/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-static {v5}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 534
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1134
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-eqz v5, :cond_b

    .line 1136
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTransitionBetweenDialogs:Z

    if-nez v5, :cond_4

    .line 1138
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideZoomControlSet(Z)V

    .line 1141
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    if-eqz v5, :cond_5

    .line 1143
    const/16 v50, 0x0

    .line 1144
    .local v50, flag1:Z
    const/16 v51, 0x0

    .line 1145
    .local v51, flag2:Z
    const/16 v52, 0x0

    .line 1147
    .local v52, flag3:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_62

    .line 1149
    const/16 v52, 0x1

    .line 1161
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v51

    move/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideThumbnail(ZZZ)V

    .line 1164
    .end local v50           #flag1:Z
    .end local v51           #flag2:Z
    .end local v52           #flag3:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    .line 1166
    const/16 v50, 0x0

    .line 1167
    .restart local v50       #flag1:Z
    const/16 v51, 0x0

    .line 1169
    .restart local v51       #flag2:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_6

    .line 1171
    const/16 v50, 0x1

    .line 1173
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideLocationTags(ZZ)V

    .line 1176
    .end local v50           #flag1:Z
    .end local v51           #flag2:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    if-eqz v5, :cond_9

    .line 1177
    const/16 v50, 0x0

    .line 1178
    .restart local v50       #flag1:Z
    const/16 v51, 0x0

    .line 1180
    .restart local v51       #flag2:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_8

    .line 1181
    const/16 v50, 0x1

    .line 1183
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideResolutionTextIcon(ZZ)V

    .line 1186
    .end local v50           #flag1:Z
    .end local v51           #flag2:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_a

    .line 1187
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideHandshake(ZZ)V

    .line 1190
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_b

    .line 1191
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideCafStatus(Z)V

    .line 1194
    :cond_b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolBarButtonClicked:Z

    .line 1196
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_2

    .line 1198
    const-string v5, "MotoOnScreenControllerOpenGL"

    const-string v6, "processOnClick exit"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 539
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 544
    :pswitch_2
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_c

    .line 545
    const-string v5, "MotoOnScreenControllerOpenGL"

    const-string v6, "Settings button clicked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 550
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0x76

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 551
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showcontrollerElements()V

    .line 552
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 553
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_1

    .line 557
    :cond_d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_14

    .line 558
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingsButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getLayoutData(Landroid/view/View;)V

    .line 560
    new-instance v4, Lcom/motorola/Camera/DialogSettingsView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    const v9, 0x7f0b0008

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentOrientation:I

    move-object/from16 v8, p0

    invoke-direct/range {v4 .. v12}, Lcom/motorola/Camera/DialogSettingsView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/ArrayList;Lcom/motorola/Camera/DialogCallbackInterface;Ljava/lang/String;ILandroid/app/Activity;I)V

    .line 563
    .local v4, effectsview:Lcom/motorola/Camera/DialogSettingsView;
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    .line 564
    invoke-virtual {v4}, Lcom/motorola/Camera/DialogSettingsView;->getView()Landroid/view/View;

    move-result-object v13

    .line 565
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    .line 567
    move/from16 v0, v56

    move/from16 v1, v53

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 568
    invoke-virtual {v4}, Lcom/motorola/Camera/DialogSettingsView;->getChildWidth()I

    move-result v14

    .line 569
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 571
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_e

    .line 572
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DialogViewHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DialogViewWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_e
    if-eqz v54, :cond_f

    const/4 v5, 0x2

    move/from16 v0, v54

    if-ne v0, v5, :cond_12

    .line 578
    :cond_f
    const/16 v16, 0x5

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {v11 .. v16}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewPort(Landroid/view/View;Landroid/view/View;III)V

    .line 585
    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-nez v5, :cond_11

    .line 587
    if-eqz v54, :cond_10

    const/4 v5, 0x2

    move/from16 v0, v54

    if-ne v0, v5, :cond_13

    .line 589
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationPortFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    .line 597
    :cond_11
    :goto_4
    const/4 v5, 0x5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 598
    const v5, 0x7f0d002d

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_1

    .line 582
    :cond_12
    const/16 v16, 0x5

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {v11 .. v16}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewLand(Landroid/view/View;Landroid/view/View;III)V

    goto :goto_3

    .line 593
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationLandFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    goto :goto_4

    .line 602
    .end local v4           #effectsview:Lcom/motorola/Camera/DialogSettingsView;
    :cond_14
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 603
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_1

    .line 607
    :pswitch_3
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_15

    .line 608
    const-string v5, "MotoOnScreenControllerOpenGL"

    const-string v6, "White Balance button clicked ################################"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v5

    if-nez v5, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v5

    if-nez v5, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_18

    .line 615
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0x320

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 618
    :cond_18
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_21

    .line 620
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedWhiteBalances()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedWhiteBalances()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1a

    .line 622
    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0x320

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 623
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showcontrollerElements()V

    .line 624
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 625
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_1

    .line 628
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getWhiteBalanceDataEntries()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    .line 629
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mWhiteBalanceButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getLayoutData(Landroid/view/View;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentWhiteBalance()I

    move-result v10

    .line 632
    new-instance v16, Lcom/motorola/Camera/DialogGridView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    const v6, 0x7f0b016e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v20, p0

    move/from16 v22, v10

    invoke-direct/range {v16 .. v22}, Lcom/motorola/Camera/DialogGridView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/ArrayList;Lcom/motorola/Camera/DialogCallbackInterface;Ljava/lang/String;I)V

    .line 635
    .local v16, whitebalanceview:Lcom/motorola/Camera/DialogGridView;
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/Camera/DialogGridView;->getView()Landroid/view/View;

    move-result-object v13

    .line 636
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    .line 638
    move/from16 v0, v56

    move/from16 v1, v53

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 639
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/Camera/DialogGridView;->getChildWidth()I

    move-result v14

    .line 640
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogHeightPadding:I

    add-int/2addr v5, v6

    add-int/lit8 v15, v5, -0x5

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02009a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 643
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_1b

    .line 645
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DialogViewHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DialogViewWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GridSize"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_1b
    if-eqz v54, :cond_1c

    const/4 v5, 0x2

    move/from16 v0, v54

    if-ne v0, v5, :cond_1f

    .line 650
    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v19, v13

    move/from16 v20, v14

    move/from16 v21, v15

    invoke-direct/range {v17 .. v22}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewPort(Landroid/view/View;Landroid/view/View;III)V

    .line 656
    :goto_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-nez v5, :cond_1e

    .line 658
    if-eqz v54, :cond_1d

    const/4 v5, 0x2

    move/from16 v0, v54

    if-ne v0, v5, :cond_20

    .line 660
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationPortFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    .line 668
    :cond_1e
    :goto_6
    const/4 v5, 0x7

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 669
    const v5, 0x7f0d0030

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_1

    .line 654
    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v19, v13

    move/from16 v20, v14

    move/from16 v21, v15

    invoke-direct/range {v17 .. v22}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewLand(Landroid/view/View;Landroid/view/View;III)V

    goto :goto_5

    .line 664
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationLandFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    goto :goto_6

    .line 673
    .end local v16           #whitebalanceview:Lcom/motorola/Camera/DialogGridView;
    :cond_21
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 674
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_1

    .line 679
    :pswitch_4
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_22

    .line 680
    const-string v5, "MotoOnScreenControllerOpenGL"

    const-string v6, "Effects button clicked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_22
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2b

    .line 686
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_24

    .line 688
    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 689
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showcontrollerElements()V

    .line 690
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 691
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_1

    .line 694
    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getEffectsDataEntries()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    .line 695
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getLayoutData(Landroid/view/View;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentEffect()I

    move-result v10

    .line 698
    new-instance v4, Lcom/motorola/Camera/DialogGridView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    const v9, 0x7f0b0007

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v8, p0

    invoke-direct/range {v4 .. v10}, Lcom/motorola/Camera/DialogGridView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/ArrayList;Lcom/motorola/Camera/DialogCallbackInterface;Ljava/lang/String;I)V

    .line 701
    .local v4, effectsview:Lcom/motorola/Camera/DialogGridView;
    invoke-virtual {v4}, Lcom/motorola/Camera/DialogGridView;->getView()Landroid/view/View;

    move-result-object v13

    .line 702
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    .line 704
    move/from16 v0, v56

    move/from16 v1, v53

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 705
    invoke-virtual {v4}, Lcom/motorola/Camera/DialogGridView;->getChildWidth()I

    move-result v14

    .line 706
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogHeightPadding:I

    add-int/2addr v5, v6

    add-int/lit8 v15, v5, -0x5

    .line 708
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_25

    .line 709
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DialogViewHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DialogViewWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GridSize"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_25
    if-eqz v54, :cond_26

    const/4 v5, 0x2

    move/from16 v0, v54

    if-ne v0, v5, :cond_29

    .line 716
    :cond_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v19, v13

    move/from16 v20, v14

    move/from16 v21, v15

    invoke-direct/range {v17 .. v22}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewPort(Landroid/view/View;Landroid/view/View;III)V

    .line 722
    :goto_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-nez v5, :cond_28

    .line 724
    if-eqz v54, :cond_27

    const/4 v5, 0x2

    move/from16 v0, v54

    if-ne v0, v5, :cond_2a

    .line 726
    :cond_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationPortFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    .line 734
    :cond_28
    :goto_8
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 735
    const v5, 0x7f0d002e

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_1

    .line 720
    :cond_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v19, v13

    move/from16 v20, v14

    move/from16 v21, v15

    invoke-direct/range {v17 .. v22}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewLand(Landroid/view/View;Landroid/view/View;III)V

    goto :goto_7

    .line 730
    :cond_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationLandFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    goto :goto_8

    .line 739
    .end local v4           #effectsview:Lcom/motorola/Camera/DialogGridView;
    :cond_2b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 740
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_1

    .line 746
    :pswitch_5
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_2c

    .line 747
    const-string v5, "MotoOnScreenControllerOpenGL"

    const-string v6, "Scenes button clicked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_2c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_37

    .line 753
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v6

    .line 754
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_2d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_2d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/4 v7, 0x6

    if-eq v5, v7, :cond_2d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/16 v7, 0xd

    if-eq v5, v7, :cond_2d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_2d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAudioScenesSupported()Z

    move-result v5

    if-eqz v5, :cond_2e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/16 v7, 0x9

    if-eq v5, v7, :cond_2d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 764
    :cond_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v7, 0x2b

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 765
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showcontrollerElements()V

    .line 766
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 767
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    .line 768
    monitor-exit v6

    goto/16 :goto_1

    .line 770
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2e
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 772
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getScenesDataEntries()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    .line 774
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getLayoutData(Landroid/view/View;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    const v6, 0x7f0b0006

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 777
    .local v22, titleString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAudioScenesSupported()Z

    move-result v5

    if-eqz v5, :cond_2f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2f

    .line 779
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    const v6, 0x7f0b0109

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 781
    :cond_2f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v10

    .line 782
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_30

    .line 783
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scenes button clicked:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_30
    new-instance v17, Lcom/motorola/Camera/DialogGridView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v21, p0

    move/from16 v23, v10

    invoke-direct/range {v17 .. v23}, Lcom/motorola/Camera/DialogGridView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/ArrayList;Lcom/motorola/Camera/DialogCallbackInterface;Ljava/lang/String;I)V

    .line 788
    .local v17, scenesview:Lcom/motorola/Camera/DialogGridView;
    invoke-virtual/range {v17 .. v17}, Lcom/motorola/Camera/DialogGridView;->getView()Landroid/view/View;

    move-result-object v13

    .line 789
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    .line 791
    move/from16 v0, v56

    move/from16 v1, v53

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 792
    invoke-virtual/range {v17 .. v17}, Lcom/motorola/Camera/DialogGridView;->getChildWidth()I

    move-result v14

    .line 793
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogHeightPadding:I

    add-int/2addr v5, v6

    add-int/lit8 v15, v5, -0x5

    .line 795
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_31

    .line 796
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DialogViewHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DialogViewWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_31
    if-eqz v54, :cond_32

    const/4 v5, 0x2

    move/from16 v0, v54

    if-ne v0, v5, :cond_35

    .line 802
    :cond_32
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v28

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    invoke-direct/range {v23 .. v28}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewPort(Landroid/view/View;Landroid/view/View;III)V

    .line 809
    :goto_9
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-nez v5, :cond_34

    .line 811
    if-eqz v54, :cond_33

    const/4 v5, 0x2

    move/from16 v0, v54

    if-ne v0, v5, :cond_36

    .line 813
    :cond_33
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationPortFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    .line 821
    :cond_34
    :goto_a
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 822
    const v5, 0x7f0d002f

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_1

    .line 806
    :cond_35
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v28

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v13

    move/from16 v26, v14

    move/from16 v27, v15

    invoke-direct/range {v23 .. v28}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewLand(Landroid/view/View;Landroid/view/View;III)V

    goto :goto_9

    .line 817
    :cond_36
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationLandFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    goto :goto_a

    .line 826
    .end local v17           #scenesview:Lcom/motorola/Camera/DialogGridView;
    .end local v22           #titleString:Ljava/lang/String;
    :cond_37
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 827
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_1

    .line 833
    :pswitch_6
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_38

    .line 834
    const-string v5, "MotoOnScreenControllerOpenGL"

    const-string v6, "Modes button clicked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mStatus:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_38
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_42

    .line 840
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getModesDataEntries()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_39

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 842
    :cond_39
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_3a

    .line 843
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mStatus:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_3a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0x77

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 846
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showcontrollerElements()V

    .line 847
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 848
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_1

    .line 852
    :cond_3b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getModesDataEntries()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    .line 853
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mModesButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getLayoutData(Landroid/view/View;)V

    .line 855
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPositionFromMode(I)I

    move-result v10

    .line 857
    new-instance v23, Lcom/motorola/Camera/DialogGridView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    const v6, 0x7f0b000c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v27, p0

    move/from16 v29, v10

    invoke-direct/range {v23 .. v29}, Lcom/motorola/Camera/DialogGridView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/ArrayList;Lcom/motorola/Camera/DialogCallbackInterface;Ljava/lang/String;I)V

    .line 860
    .local v23, modesview:Lcom/motorola/Camera/DialogGridView;
    invoke-virtual/range {v23 .. v23}, Lcom/motorola/Camera/DialogGridView;->getView()Landroid/view/View;

    move-result-object v13

    .line 861
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    .line 863
    move/from16 v0, v56

    move/from16 v1, v53

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 864
    invoke-virtual/range {v23 .. v23}, Lcom/motorola/Camera/DialogGridView;->getChildWidth()I

    move-result v14

    .line 865
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogHeightPadding:I

    add-int v15, v5, v6

    .line 867
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_3c

    .line 868
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DialogViewHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DialogViewWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_3c
    if-eqz v54, :cond_3d

    const/4 v5, 0x2

    move/from16 v0, v54

    if-ne v0, v5, :cond_40

    .line 874
    :cond_3d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v29

    move-object/from16 v24, p0

    move-object/from16 v25, p1

    move-object/from16 v26, v13

    move/from16 v27, v14

    move/from16 v28, v15

    invoke-direct/range {v24 .. v29}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewPort(Landroid/view/View;Landroid/view/View;III)V

    .line 881
    :goto_b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-nez v5, :cond_3f

    .line 883
    if-eqz v54, :cond_3e

    const/4 v5, 0x2

    move/from16 v0, v54

    if-ne v0, v5, :cond_41

    .line 885
    :cond_3e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationPortFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    .line 893
    :cond_3f
    :goto_c
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 894
    const v5, 0x7f0d0031

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_1

    .line 878
    :cond_40
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v29

    move-object/from16 v24, p0

    move-object/from16 v25, p1

    move-object/from16 v26, v13

    move/from16 v27, v14

    move/from16 v28, v15

    invoke-direct/range {v24 .. v29}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewLand(Landroid/view/View;Landroid/view/View;III)V

    goto :goto_b

    .line 889
    :cond_41
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationLandFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    goto :goto_c

    .line 898
    .end local v23           #modesview:Lcom/motorola/Camera/DialogGridView;
    :cond_42
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 899
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_1

    .line 905
    :pswitch_7
    const/16 v30, -0x1

    .line 906
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_43

    .line 907
    const-string v5, "MotoOnScreenControllerOpenGL"

    const-string v6, "Brightness button clicked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_43
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_52

    .line 912
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v5

    if-nez v5, :cond_44

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v5

    if-eqz v5, :cond_45

    :cond_44
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_47

    .line 915
    :cond_45
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_46

    .line 916
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mStatus:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_46
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0x83

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 919
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showcontrollerElements()V

    .line 920
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 921
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_1

    .line 925
    :cond_47
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBrightnessButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getLayoutData(Landroid/view/View;)V

    .line 926
    const-string v5, "ro.contrast.enabled"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_48

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v5

    if-nez v5, :cond_4e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v5

    if-eqz v5, :cond_4e

    .line 929
    :cond_48
    new-instance v44, Lcom/motorola/Camera/DialogProgressBar;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v5, v6, v1}, Lcom/motorola/Camera/DialogProgressBar;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/motorola/Camera/DialogCallbackInterface;)V

    .line 931
    .local v44, brightnessview:Lcom/motorola/Camera/DialogProgressBar;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentExpValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastBrightnessProgress:I

    .line 932
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastBrightnessProgress:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v6

    sub-int v46, v5, v6

    .line 933
    .local v46, currentEV:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v6

    sub-int v55, v5, v6

    .line 934
    .local v55, scale:I
    mul-int/lit8 v5, v46, 0x64

    div-int v5, v5, v55

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v43

    .line 936
    .local v43, actualProgress:I
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/DialogProgressBar;->setSliderProgress(I)V

    .line 937
    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressBar:Lcom/motorola/Camera/DialogProgressBar;

    .line 939
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_49

    .line 940
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "progress bar is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressBar:Lcom/motorola/Camera/DialogProgressBar;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_49
    invoke-virtual/range {v44 .. v44}, Lcom/motorola/Camera/DialogProgressBar;->getView()Landroid/view/View;

    move-result-object v13

    .line 943
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    .line 945
    move/from16 v0, v56

    move/from16 v1, v53

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 946
    invoke-virtual/range {v44 .. v44}, Lcom/motorola/Camera/DialogProgressBar;->getChildWidth()I

    move-result v14

    .line 947
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 984
    .end local v44           #brightnessview:Lcom/motorola/Camera/DialogProgressBar;
    :goto_d
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_4a

    .line 985
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DialogViewHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DialogViewWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_4a
    if-eqz v54, :cond_4b

    const/4 v5, 0x2

    move/from16 v0, v54

    if-ne v0, v5, :cond_50

    :cond_4b
    move-object/from16 v25, p0

    move-object/from16 v26, p1

    move-object/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    .line 991
    invoke-direct/range {v25 .. v30}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewPort(Landroid/view/View;Landroid/view/View;III)V

    .line 998
    :goto_e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-nez v5, :cond_4d

    .line 1000
    if-eqz v54, :cond_4c

    const/4 v5, 0x2

    move/from16 v0, v54

    if-ne v0, v5, :cond_51

    .line 1002
    :cond_4c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationPortFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    .line 1010
    :cond_4d
    :goto_f
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 1011
    const v5, 0x7f0d0032

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_1

    .line 951
    .end local v43           #actualProgress:I
    .end local v46           #currentEV:I
    .end local v55           #scale:I
    :cond_4e
    new-instance v24, Lcom/motorola/Camera/ProgressSettingView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mActivity:Landroid/app/Activity;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentOrientation:I

    move/from16 v29, v0

    move-object/from16 v27, p0

    invoke-direct/range {v24 .. v29}, Lcom/motorola/Camera/ProgressSettingView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/motorola/Camera/DialogCallbackInterface;Landroid/app/Activity;I)V

    .line 952
    .local v24, progresssettingview:Lcom/motorola/Camera/ProgressSettingView;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressSettingView:Lcom/motorola/Camera/ProgressSettingView;

    .line 954
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentExpValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastBrightnessProgress:I

    .line 955
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastBrightnessProgress:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v6

    sub-int v46, v5, v6

    .line 956
    .restart local v46       #currentEV:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v6

    sub-int v55, v5, v6

    .line 957
    .restart local v55       #scale:I
    mul-int/lit8 v5, v46, 0x64

    div-int v5, v5, v55

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v43

    .line 958
    .restart local v43       #actualProgress:I
    const/4 v5, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v43

    invoke-virtual {v0, v5, v1}, Lcom/motorola/Camera/ProgressSettingView;->setSliderProgress(II)V

    .line 960
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentContrastValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastContrastProgress:I

    .line 961
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastContrastProgress:I

    move/from16 v45, v0

    .line 962
    .local v45, currentContrastValue:I
    const/16 v55, 0xc8

    .line 963
    mul-int/lit8 v5, v45, 0x64

    div-int v5, v5, v55

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v43

    .line 964
    const/4 v5, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v43

    invoke-virtual {v0, v5, v1}, Lcom/motorola/Camera/ProgressSettingView;->setSliderProgress(II)V

    .line 966
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentSaturationValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastSaturationProgress:I

    .line 967
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastSaturationProgress:I

    move/from16 v47, v0

    .line 968
    .local v47, currentSaturationValue:I
    const/16 v55, 0xc8

    .line 969
    mul-int/lit8 v5, v47, 0x64

    div-int v5, v5, v55

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v43

    .line 970
    const/4 v5, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v43

    invoke-virtual {v0, v5, v1}, Lcom/motorola/Camera/ProgressSettingView;->setSliderProgress(II)V

    .line 972
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressSettingView:Lcom/motorola/Camera/ProgressSettingView;

    .line 974
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_4f

    .line 975
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mProgressSettingView is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressSettingView:Lcom/motorola/Camera/ProgressSettingView;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_4f
    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/ProgressSettingView;->getView()Landroid/view/View;

    move-result-object v13

    .line 978
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    .line 980
    move/from16 v0, v56

    move/from16 v1, v53

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 981
    invoke-virtual/range {v24 .. v24}, Lcom/motorola/Camera/ProgressSettingView;->getChildWidth()I

    move-result v14

    .line 982
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    goto/16 :goto_d

    .end local v24           #progresssettingview:Lcom/motorola/Camera/ProgressSettingView;
    .end local v45           #currentContrastValue:I
    .end local v47           #currentSaturationValue:I
    :cond_50
    move-object/from16 v25, p0

    move-object/from16 v26, p1

    move-object/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    .line 995
    invoke-direct/range {v25 .. v30}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewLand(Landroid/view/View;Landroid/view/View;III)V

    goto/16 :goto_e

    .line 1006
    :cond_51
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationLandFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    goto/16 :goto_f

    .line 1015
    .end local v43           #actualProgress:I
    .end local v46           #currentEV:I
    .end local v55           #scale:I
    :cond_52
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 1016
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_1

    .line 1022
    :pswitch_8
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_53

    .line 1023
    const-string v5, "MotoOnScreenControllerOpenGL"

    const-string v6, "Flash button clicked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_53
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_60

    .line 1028
    const-string v36, "Flash"

    .line 1029
    .local v36, gridDialogTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v48

    .line 1032
    .local v48, currentScene:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v5

    if-nez v5, :cond_5a

    .line 1034
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_54

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_54

    const/4 v5, 0x2

    move/from16 v0, v48

    if-eq v0, v5, :cond_54

    const/4 v5, 0x4

    move/from16 v0, v48

    if-eq v0, v5, :cond_54

    const/4 v5, 0x5

    move/from16 v0, v48

    if-eq v0, v5, :cond_54

    const/4 v5, 0x3

    move/from16 v0, v48

    if-eq v0, v5, :cond_54

    const/4 v5, 0x6

    move/from16 v0, v48

    if-eq v0, v5, :cond_54

    const/4 v5, 0x7

    move/from16 v0, v48

    if-eq v0, v5, :cond_54

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v5

    if-nez v5, :cond_55

    .line 1044
    :cond_54
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0x35

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1045
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1046
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showcontrollerElements()V

    .line 1047
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 1048
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_1

    .line 1053
    :cond_55
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    const v6, 0x7f0b000a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 1072
    :goto_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashDataEntries()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    .line 1074
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getLayoutData(Landroid/view/View;)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v10

    .line 1077
    new-instance v31, Lcom/motorola/Camera/DialogGridView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v35, p0

    move/from16 v37, v10

    invoke-direct/range {v31 .. v37}, Lcom/motorola/Camera/DialogGridView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/ArrayList;Lcom/motorola/Camera/DialogCallbackInterface;Ljava/lang/String;I)V

    .line 1080
    .local v31, flashview:Lcom/motorola/Camera/DialogGridView;
    invoke-virtual/range {v31 .. v31}, Lcom/motorola/Camera/DialogGridView;->getView()Landroid/view/View;

    move-result-object v13

    .line 1081
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    .line 1083
    move/from16 v0, v56

    move/from16 v1, v53

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1084
    invoke-virtual/range {v31 .. v31}, Lcom/motorola/Camera/DialogGridView;->getChildWidth()I

    move-result v14

    .line 1085
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogHeightPadding:I

    add-int v15, v5, v6

    .line 1087
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_56

    .line 1088
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DialogViewHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DialogViewWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_56
    if-eqz v54, :cond_57

    const/4 v5, 0x2

    move/from16 v0, v54

    if-ne v0, v5, :cond_5e

    .line 1094
    :cond_57
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v42

    move-object/from16 v37, p0

    move-object/from16 v38, p1

    move-object/from16 v39, v13

    move/from16 v40, v14

    move/from16 v41, v15

    invoke-direct/range {v37 .. v42}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewPort(Landroid/view/View;Landroid/view/View;III)V

    .line 1101
    :goto_11
    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-nez v5, :cond_59

    .line 1103
    if-eqz v54, :cond_58

    const/4 v5, 0x2

    move/from16 v0, v54

    if-ne v0, v5, :cond_5f

    .line 1105
    :cond_58
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationPortFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    .line 1113
    :cond_59
    :goto_12
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 1114
    const v5, 0x7f0d0033

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_1

    .line 1058
    .end local v31           #flashview:Lcom/motorola/Camera/DialogGridView;
    :cond_5a
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->FLASH:Z

    if-eqz v5, :cond_5b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isTorchSupported()Z

    move-result v5

    if-eqz v5, :cond_5c

    :cond_5b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v5

    if-nez v5, :cond_5d

    .line 1061
    :cond_5c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0x35

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1062
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1063
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showcontrollerElements()V

    .line 1064
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 1065
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_1

    .line 1069
    :cond_5d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    const v6, 0x7f0b0042

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_10

    .line 1098
    .restart local v31       #flashview:Lcom/motorola/Camera/DialogGridView;
    :cond_5e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mGridDataArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v42

    move-object/from16 v37, p0

    move-object/from16 v38, p1

    move-object/from16 v39, v13

    move/from16 v40, v14

    move/from16 v41, v15

    invoke-direct/range {v37 .. v42}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->positionViewLand(Landroid/view/View;Landroid/view/View;III)V

    goto :goto_11

    .line 1109
    :cond_5f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v13, v5}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationLandFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    goto :goto_12

    .line 1118
    .end local v31           #flashview:Lcom/motorola/Camera/DialogGridView;
    .end local v36           #gridDialogTitle:Ljava/lang/String;
    .end local v48           #currentScene:I
    :cond_60
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 1119
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    goto/16 :goto_1

    .line 1125
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1126
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mshowRemainTime:Z

    if-nez v5, :cond_61

    .line 1127
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mshowRemainTime:Z

    .line 1131
    :goto_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1129
    :cond_61
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/motorola/Camera/View/Control/OnScreenController;->mshowRemainTime:Z

    goto :goto_13

    .line 1151
    .restart local v50       #flag1:Z
    .restart local v51       #flag2:Z
    .restart local v52       #flag3:Z
    :cond_62
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v5

    if-nez v5, :cond_63

    .line 1153
    const/16 v50, 0x1

    .line 1154
    const/16 v51, 0x1

    goto/16 :goto_2

    .line 1158
    :cond_63
    const/16 v51, 0x1

    goto/16 :goto_2

    .line 534
    :pswitch_data_0
    .packed-switch 0x7f0d002d
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private showcontrollerElements()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3061
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStillImageCaptureInProgress:Z

    if-nez v0, :cond_0

    .line 3063
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showZoomControlSet()V

    .line 3064
    sget-boolean v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureInProgress:Z

    if-nez v0, :cond_0

    .line 3066
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showThumbnail()V

    .line 3067
    invoke-virtual {p0, v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showLocationTags(ZZ)V

    .line 3068
    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showResolutionTextIcon(Z)V

    .line 3069
    invoke-virtual {p0, v1, v2}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showHandshake(ZZ)V

    .line 3072
    :cond_0
    return-void
.end method

.method private updateButtons()V
    .locals 1

    .prologue
    .line 1438
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->updateButtons(Z)V

    .line 1439
    return-void
.end method

.method private updateButtons(Z)V
    .locals 10
    .parameter "enable"

    .prologue
    .line 1443
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_0

    .line 1444
    const-string v6, "MotoOnScreenControllerOpenGL"

    const-string v7, "updateButtons() - Enter"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :cond_0
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v7

    .line 1447
    const/4 v2, 0x0

    .line 1449
    .local v2, draw:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedScenes()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1451
    :cond_1
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_2

    .line 1453
    const-string v6, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateButtons() currentScene= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v9}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :cond_2
    const-string v6, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateButtons() currentScene= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v9}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getScenesDataEntries()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v9, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v9}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/Camera/DialogGridData;

    invoke-virtual {v6}, Lcom/motorola/Camera/DialogGridData;->getResId()I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1463
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v6

    const/4 v8, 0x2

    if-eq v6, v8, :cond_3

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v6

    const/4 v8, 0x6

    if-ne v6, v8, :cond_15

    .line 1466
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f020057

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1467
    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1501
    :goto_0
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    if-eqz v6, :cond_4

    .line 1502
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1505
    :cond_4
    sget-object v6, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFilteredResources:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1509
    :cond_5
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mModesButton:Landroid/widget/ImageView;

    if-eqz v6, :cond_9

    .line 1512
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v6

    const/4 v8, 0x5

    if-eq v6, v8, :cond_1e

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v6

    const/16 v8, 0xd

    if-eq v6, v8, :cond_1e

    .line 1513
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    .line 1514
    .local v1, currentMode:I
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getModesValueEntries()[I

    move-result-object v4

    .line 1515
    .local v4, modesArray:[I
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getModesDataEntries()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/Camera/DialogGridData;

    invoke-virtual {v6}, Lcom/motorola/Camera/DialogGridData;->getResId()I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1517
    const/4 v3, 0x0

    .local v3, ind:I
    :goto_1
    array-length v6, v4

    if-ge v3, v6, :cond_6

    .line 1519
    aget v6, v4, v3

    if-ne v6, v1, :cond_1d

    .line 1521
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getModesDataEntries()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/Camera/DialogGridData;

    invoke-virtual {v6}, Lcom/motorola/Camera/DialogGridData;->getResId()I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1522
    if-eqz p1, :cond_1c

    .line 1523
    const/4 v6, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1557
    .end local v1           #currentMode:I
    .end local v3           #ind:I
    .end local v4           #modesArray:[I
    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getModesDataEntries()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x1

    if-le v6, v8, :cond_7

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1559
    :cond_7
    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1561
    :cond_8
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mModesButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1565
    :cond_9
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v6

    if-nez v6, :cond_e

    .line 1567
    :cond_a
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_27

    .line 1569
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->FLASH:Z

    if-eqz v6, :cond_24

    .line 1572
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_23

    .line 1573
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f020062

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1585
    :goto_3
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v6

    if-nez v6, :cond_25

    .line 1586
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f020064

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1587
    if-eqz v2, :cond_b

    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1640
    :cond_b
    :goto_4
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    if-eqz v6, :cond_d

    .line 1641
    if-eqz v2, :cond_c

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1643
    :cond_c
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_d

    .line 1644
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1645
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1648
    :cond_d
    if-eqz v2, :cond_e

    sget-object v6, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFilteredResources:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1652
    :cond_e
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mWhiteBalanceButton:Landroid/widget/ImageView;

    if-eqz v6, :cond_2e

    const-string v6, "ro.whitebalance.enabled"

    const/4 v8, 0x0

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2e

    .line 1654
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mWhiteBalanceButton:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1681
    :cond_f
    :goto_5
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedEffects()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x1

    if-gt v6, v8, :cond_34

    .line 1683
    :cond_10
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f020068

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1684
    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1708
    :goto_6
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/ImageView;

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1711
    :cond_11
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v6

    if-nez v6, :cond_12

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v6

    if-eqz v6, :cond_39

    :cond_12
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v6

    const/4 v8, 0x7

    if-eq v6, v8, :cond_39

    .line 1713
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f02005b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1714
    if-eqz p1, :cond_38

    .line 1715
    const/4 v6, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1726
    :goto_7
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBrightnessButton:Landroid/widget/ImageView;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBrightnessButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1729
    :cond_13
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1730
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 1731
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingsButton:Landroid/widget/ImageView;

    const/high16 v7, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1740
    :goto_8
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_14

    .line 1741
    const-string v6, "MotoOnScreenControllerOpenGL"

    const-string v7, "updateButtons() - Exit"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    :cond_14
    return-void

    .line 1470
    :cond_15
    :try_start_1
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_16

    .line 1472
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f020071

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1473
    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 1729
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1476
    :cond_16
    :try_start_2
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_17

    .line 1477
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f020065

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1478
    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 1480
    :cond_17
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_19

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isAudioScenesSupported()Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v6

    const/16 v8, 0xd

    if-eq v6, v8, :cond_18

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v6

    const/16 v8, 0x9

    if-eq v6, v8, :cond_18

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v6

    if-nez v6, :cond_18

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v6

    if-nez v6, :cond_19

    .line 1486
    :cond_18
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f020091

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1487
    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 1489
    :cond_19
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v6

    if-nez v6, :cond_1a

    .line 1491
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f020057

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1492
    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 1494
    :cond_1a
    if-nez p1, :cond_1b

    .line 1495
    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 1498
    :cond_1b
    const/4 v6, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 1525
    .restart local v1       #currentMode:I
    .restart local v3       #ind:I
    .restart local v4       #modesArray:[I
    :cond_1c
    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_2

    .line 1517
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1534
    .end local v1           #currentMode:I
    .end local v3           #ind:I
    .end local v4           #modesArray:[I
    :cond_1e
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v6

    const/4 v8, 0x5

    if-ne v6, v8, :cond_20

    .line 1535
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAutoTimer()I

    move-result v6

    if-eqz v6, :cond_1f

    .line 1536
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAutoTimer()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPositionFromAutoTimer(I)I

    move-result v3

    .line 1537
    .restart local v3       #ind:I
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getAutoTimerImgEntries()[I

    move-result-object v8

    aget v8, v8, v3

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1550
    .end local v3           #ind:I
    :goto_9
    if-eqz p1, :cond_22

    .line 1551
    const/4 v6, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_2

    .line 1539
    :cond_1f
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getAutoTimerImgEntries()[I

    move-result-object v8

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_9

    .line 1542
    :cond_20
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentTimeLapse()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPositionFromTimeLapse(I)I

    move-result v3

    .line 1543
    .restart local v3       #ind:I
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentTimeLapse()I

    move-result v6

    if-eqz v6, :cond_21

    if-ltz v3, :cond_21

    .line 1544
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getTimelapseImgEntries()[I

    move-result-object v8

    aget v8, v8, v3

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_9

    .line 1546
    :cond_21
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0200cd

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_9

    .line 1553
    .end local v3           #ind:I
    :cond_22
    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_2

    .line 1576
    :cond_23
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f020064

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_3

    .line 1582
    :cond_24
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashDataEntries()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v9, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v9}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/Camera/DialogGridData;

    invoke-virtual {v6}, Lcom/motorola/Camera/DialogGridData;->getResId()I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_3

    .line 1590
    :cond_25
    if-eqz p1, :cond_26

    .line 1591
    if-eqz v2, :cond_b

    const/4 v6, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_4

    .line 1593
    :cond_26
    if-eqz v2, :cond_b

    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_4

    .line 1600
    :cond_27
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v6

    const/4 v8, 0x2

    if-eq v6, v8, :cond_28

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_28

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v6

    if-nez v6, :cond_29

    .line 1604
    :cond_28
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f020060

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1605
    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_4

    .line 1609
    :cond_29
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v5

    .line 1610
    .local v5, sceneMode:I
    const/4 v6, 0x3

    if-eq v5, v6, :cond_2a

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2a

    const/4 v6, 0x5

    if-eq v5, v6, :cond_2a

    const/4 v6, 0x6

    if-eq v5, v6, :cond_2a

    const/4 v6, 0x7

    if-ne v5, v6, :cond_2b

    .line 1616
    :cond_2a
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f020060

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1617
    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_4

    .line 1620
    :cond_2b
    const/4 v6, 0x4

    if-ne v5, v6, :cond_2c

    .line 1622
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f020061

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1623
    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_4

    .line 1627
    :cond_2c
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v0

    .line 1628
    .local v0, curFlash:I
    if-ltz v0, :cond_b

    const/4 v6, 0x3

    if-gt v0, v6, :cond_b

    .line 1629
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashDataEntries()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/Camera/DialogGridData;

    invoke-virtual {v6}, Lcom/motorola/Camera/DialogGridData;->getResId()I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1630
    if-eqz p1, :cond_2d

    .line 1631
    const/4 v6, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_4

    .line 1633
    :cond_2d
    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_4

    .line 1657
    .end local v0           #curFlash:I
    .end local v5           #sceneMode:I
    :cond_2e
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedWhiteBalances()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2f

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getSupportedWhiteBalances()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x1

    if-gt v6, v8, :cond_30

    .line 1659
    :cond_2f
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f02009a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1660
    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1678
    :goto_a
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mWhiteBalanceButton:Landroid/widget/ImageView;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mWhiteBalanceButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 1664
    :cond_30
    if-eqz p1, :cond_33

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v6

    if-nez v6, :cond_31

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v6

    if-nez v6, :cond_31

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v6

    const/4 v8, 0x2

    if-eq v6, v8, :cond_31

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_32

    :cond_31
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_33

    .line 1671
    :cond_32
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getWhiteBalanceDataEntries()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v9, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v9}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentWhiteBalance()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/Camera/DialogGridData;

    invoke-virtual {v6}, Lcom/motorola/Camera/DialogGridData;->getResId()I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1672
    const/4 v6, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_a

    .line 1674
    :cond_33
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f02009a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1675
    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_a

    .line 1688
    :cond_34
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentEffect()I

    move-result v6

    if-nez v6, :cond_36

    .line 1690
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f020068

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1691
    if-eqz p1, :cond_35

    .line 1692
    const/4 v6, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_6

    .line 1694
    :cond_35
    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_6

    .line 1700
    :cond_36
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f02005f

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1701
    if-eqz p1, :cond_37

    .line 1702
    const/4 v6, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_6

    .line 1704
    :cond_37
    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_6

    .line 1717
    :cond_38
    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_7

    .line 1722
    :cond_39
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f02005b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1723
    const/high16 v6, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_7

    .line 1733
    :cond_3a
    if-eqz p1, :cond_3b

    .line 1734
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingsButton:Landroid/widget/ImageView;

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_8

    .line 1736
    :cond_3b
    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingsButton:Landroid/widget/ImageView;

    const/high16 v7, 0x7600

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_8
.end method


# virtual methods
.method public animateThumbnail()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const v2, 0x3f8ccccd

    const/high16 v1, 0x3f80

    .line 2435
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getWidth()I

    move-result v3

    div-int/lit8 v7, v3, 0x2

    .line 2436
    .local v7, centerX:I
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getHeight()I

    move-result v3

    div-int/lit8 v8, v3, 0x2

    .line 2437
    .local v8, centerY:I
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 2438
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    int-to-float v5, v7

    int-to-float v6, v8

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2439
    .local v0, scale:Landroid/view/animation/ScaleAnimation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScaleAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2440
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 2441
    invoke-virtual {v0, v9}, Landroid/view/animation/ScaleAnimation;->setZAdjustment(I)V

    .line 2442
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->thumbAnimation:Landroid/view/animation/AnimationSet;

    .line 2443
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->thumbAnimation:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2444
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->thumbAnimation:Landroid/view/animation/AnimationSet;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 2445
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->thumbAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2446
    return-void
.end method

.method public changeCaptureResource(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 3051
    return-void
.end method

.method public closePopupDialog(ZZ)V
    .locals 8
    .parameter "animation"
    .parameter "dialogsInProgress"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2882
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 2883
    const-string v3, "MotoOnScreenControllerOpenGL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close pop dialog enter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStillImageCaptureInProgress:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    :cond_0
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 2888
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 2889
    .local v2, rotation:I
    const/4 v0, 0x0

    .line 2891
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 2893
    iget-boolean v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogCloseInProgress:Z

    if-nez v3, :cond_3

    .line 2895
    if-eqz p1, :cond_7

    .line 2897
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    .line 2899
    if-eqz v2, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 2901
    :cond_1
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationPortCloseFadeOut(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2907
    :goto_0
    if-eqz v0, :cond_2

    .line 2909
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarDialogAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2910
    iput-boolean v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogCloseInProgress:Z

    .line 2920
    :cond_2
    :goto_1
    iput v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 2923
    :cond_3
    iget-boolean v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStillImageCaptureInProgress:Z

    if-nez v3, :cond_4

    if-eqz p2, :cond_4

    .line 2925
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showZoomControlSet()V

    .line 2926
    sget-boolean v3, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureInProgress:Z

    if-nez v3, :cond_4

    .line 2928
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showThumbnail()V

    .line 2929
    invoke-virtual {p0, v6, v7}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showLocationTags(ZZ)V

    .line 2930
    invoke-virtual {p0, v6}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showResolutionTextIcon(Z)V

    .line 2931
    invoke-virtual {p0, v6, v7}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showHandshake(ZZ)V

    .line 2933
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    if-eqz v3, :cond_4

    .line 2934
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v3}, Lcom/motorola/Camera/FocusManager;->shouldShowCafStatus()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2935
    invoke-virtual {p0, v6}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showCafStatus(Z)V

    .line 2943
    :cond_4
    :goto_2
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_5

    .line 2944
    const-string v3, "MotoOnScreenControllerOpenGL"

    const-string v4, "close pop dialog exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    :cond_5
    return-void

    .line 2905
    :cond_6
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationLandCloseFadeOut(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 2916
    :cond_7
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2917
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2918
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    goto :goto_1

    .line 2937
    :cond_8
    invoke-virtual {p0, v6}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideCafStatus(Z)V

    goto :goto_2
.end method

.method public closeSettingSecondaryDialog()V
    .locals 1

    .prologue
    .line 3774
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    if-eqz v0, :cond_1

    .line 3776
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {v0}, Lcom/motorola/Camera/DialogSettingsView;->closeSettingSecondaryDialog()V

    .line 3782
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingSecondaryDialog:Z

    .line 3783
    return-void

    .line 3778
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressSettingView:Lcom/motorola/Camera/ProgressSettingView;

    if-eqz v0, :cond_0

    .line 3780
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressSettingView:Lcom/motorola/Camera/ProgressSettingView;

    invoke-virtual {v0}, Lcom/motorola/Camera/ProgressSettingView;->closeSettingSecondaryDialog()V

    goto :goto_0
.end method

.method public createSecondaryDialog(Landroid/widget/RelativeLayout;I)V
    .locals 7
    .parameter "view"
    .parameter "btnCenter"

    .prologue
    const/4 v6, 0x0

    .line 4177
    const/4 v2, 0x0

    .line 4178
    .local v2, layoutWidth:I
    const/4 v0, 0x0

    .line 4179
    .local v0, layoutHeight:I
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getBtnTop()I

    move-result v3

    .line 4181
    .local v3, mBtnTop:I
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getAvailableWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 4183
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    .line 4190
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getAvailableHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 4192
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 4199
    :goto_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4202
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 4204
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 4205
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 4221
    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4222
    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4223
    return-void

    .line 4187
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getAvailableWidth()I

    move-result v2

    goto :goto_0

    .line 4196
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getAvailableHeight()I

    move-result v0

    goto :goto_1

    .line 4209
    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/high16 v4, 0x42b4

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 4211
    div-int/lit8 v4, v2, 0x2

    if-ge p2, v4, :cond_3

    .line 4213
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    .line 4217
    :cond_3
    div-int/lit8 v4, v2, 0x2

    sub-int v4, p2, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 1875
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_0

    .line 1876
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchTouchEvent() - Enter:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1880
    .local v0, action:I
    iget-boolean v5, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    if-eqz v5, :cond_a

    .line 1882
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-static {v5}, Lcom/motorola/Camera/CameraGlobalTools;->resetScreenTimeout(Landroid/os/Handler;)V

    .line 1883
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-static {v5}, Lcom/motorola/Camera/CameraGlobalTools;->resetCameraTimeout(Landroid/os/Handler;)V

    .line 1884
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1885
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1887
    .local v3, y:F
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_1

    .line 1888
    const-string v5, "MotoOnScreenControllerOpenGL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  y:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    :cond_1
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1892
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v5}, Lcom/motorola/Camera/widget/ZoomControlBar;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 1894
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 1897
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getBottom()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mY:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    iget v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mY:F

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v6}, Lcom/motorola/Camera/widget/ZoomControlBar;->getTop()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 1899
    iget v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mX:F

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v6}, Lcom/motorola/Camera/widget/ZoomControlBar;->getRight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 1985
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_2
    :goto_0
    return v4

    .line 1906
    .restart local v2       #x:F
    .restart local v3       #y:F
    :cond_3
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v5}, Lcom/motorola/Camera/CustomSlidingDrawer;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 1909
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v5}, Lcom/motorola/Camera/widget/ZoomControlBar;->getBottom()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mY:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    iget v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mY:F

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 1911
    iget v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mX:F

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v6}, Lcom/motorola/Camera/widget/ZoomControlBar;->getRight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_2

    .line 1920
    :cond_4
    const/4 v1, 0x1

    .line 1921
    .local v1, touchedOutside:Z
    iget-boolean v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingSecondaryDialog:Z

    if-eqz v5, :cond_8

    .line 1923
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    if-eqz v5, :cond_6

    .line 1925
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {v5}, Lcom/motorola/Camera/DialogSettingsView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_5

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {v5}, Lcom/motorola/Camera/DialogSettingsView;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_5

    .line 1927
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {v5}, Lcom/motorola/Camera/DialogSettingsView;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v5, v3

    if-gez v5, :cond_5

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {v5}, Lcom/motorola/Camera/DialogSettingsView;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_5

    .line 1929
    const/4 v1, 0x0

    .line 1933
    :cond_5
    if-eqz v1, :cond_8

    .line 1935
    if-ne v0, v4, :cond_2

    .line 1937
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {v5}, Lcom/motorola/Camera/DialogSettingsView;->closeSettingSecondaryDialog()V

    .line 1938
    iput-boolean v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingSecondaryDialog:Z

    goto :goto_0

    .line 1943
    :cond_6
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressSettingView:Lcom/motorola/Camera/ProgressSettingView;

    if-eqz v5, :cond_8

    .line 1945
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressSettingView:Lcom/motorola/Camera/ProgressSettingView;

    invoke-virtual {v5}, Lcom/motorola/Camera/ProgressSettingView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_7

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressSettingView:Lcom/motorola/Camera/ProgressSettingView;

    invoke-virtual {v5}, Lcom/motorola/Camera/ProgressSettingView;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_7

    .line 1947
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressSettingView:Lcom/motorola/Camera/ProgressSettingView;

    invoke-virtual {v5}, Lcom/motorola/Camera/ProgressSettingView;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v5, v3

    if-gez v5, :cond_7

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressSettingView:Lcom/motorola/Camera/ProgressSettingView;

    invoke-virtual {v5}, Lcom/motorola/Camera/ProgressSettingView;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_7

    .line 1949
    const/4 v1, 0x0

    .line 1953
    :cond_7
    if-eqz v1, :cond_8

    .line 1955
    if-ne v0, v4, :cond_2

    .line 1957
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressSettingView:Lcom/motorola/Camera/ProgressSettingView;

    invoke-virtual {v5}, Lcom/motorola/Camera/ProgressSettingView;->closeSettingSecondaryDialog()V

    .line 1958
    iput-boolean v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingSecondaryDialog:Z

    goto/16 :goto_0

    .line 1966
    :cond_8
    iget-boolean v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSecondaryDialogType:Z

    if-eqz v5, :cond_9

    .line 1968
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v5}, Lcom/motorola/Camera/CustomSlidingDrawer;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_9

    .line 1970
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v5}, Lcom/motorola/Camera/CustomSlidingDrawer;->getBottom()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-lez v5, :cond_2

    .line 1977
    :cond_9
    invoke-super {p0, p1}, Lcom/motorola/Camera/View/Control/OnScreenController;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 1983
    .end local v1           #touchedOutside:Z
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_a
    sget-boolean v5, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v5, :cond_2

    const-string v5, "MotoOnScreenControllerOpenGL"

    const-string v6, "OnScreenController:dispatchTouchEvent: Event Consumed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public enableAllControls(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 4017
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 4018
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-nez v0, :cond_0

    .line 4041
    :goto_0
    return-void

    .line 4021
    :cond_0
    invoke-virtual {v0, p1}, Lcom/motorola/Camera/View/CaptureCluster;->enableCamcorderSwitch(Z)V

    .line 4022
    invoke-virtual {v0, p1}, Lcom/motorola/Camera/View/CaptureCluster;->enableFrontCameraSwitch(Z)V

    .line 4023
    invoke-direct {p0, p1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->updateButtons(Z)V

    .line 4025
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4026
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4027
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4028
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mModesButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4029
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4030
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4031
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mWhiteBalanceButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4032
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBrightnessButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4033
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v1, p1}, Lcom/motorola/Camera/widget/ZoomControlBar;->setEnabled(Z)V

    .line 4035
    if-eqz p1, :cond_1

    .line 4036
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 4038
    :cond_1
    invoke-virtual {p0, v3, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    .line 4039
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    const/high16 v2, 0x7600

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public enableVideoSnapshotButton(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 4226
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 4227
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-nez v0, :cond_0

    .line 4231
    :goto_0
    return-void

    .line 4229
    :cond_0
    invoke-virtual {v0, p1}, Lcom/motorola/Camera/View/CaptureCluster;->enableVideoSnapshot(Z)V

    goto :goto_0
.end method

.method public getAvailableHeight()I
    .locals 3

    .prologue
    .line 4123
    const/4 v0, 0x0

    .line 4125
    .local v0, allowedHeight:I
    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4127
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    sub-int v0, v1, v2

    .line 4135
    :goto_0
    return v0

    .line 4131
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public getAvailableWidth()I
    .locals 6

    .prologue
    .line 4100
    const v3, 0x7f0d000b

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/Camera/View/CaptureCluster;

    .line 4101
    .local v2, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    const/4 v0, 0x0

    .line 4103
    .local v0, allowedWidth:I
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    if-nez v3, :cond_0

    move v1, v0

    .line 4118
    .end local v0           #allowedWidth:I
    .local v1, allowedWidth:I
    :goto_0
    return v1

    .line 4108
    .end local v1           #allowedWidth:I
    .restart local v0       #allowedWidth:I
    :cond_0
    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 4110
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v4

    invoke-virtual {v2}, Lcom/motorola/Camera/View/CaptureCluster;->getRight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    :goto_1
    move v1, v0

    .line 4118
    .end local v0           #allowedWidth:I
    .restart local v1       #allowedWidth:I
    goto :goto_0

    .line 4115
    .end local v1           #allowedWidth:I
    .restart local v0       #allowedWidth:I
    :cond_1
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    goto :goto_1
.end method

.method public getBtnCenter()I
    .locals 3

    .prologue
    .line 4155
    const/4 v0, 0x0

    .line 4157
    .local v0, btnCenter:I
    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4159
    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnLeft:I

    iget v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnRight:I

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 4166
    :goto_0
    return v0

    .line 4163
    :cond_0
    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnTop:I

    iget v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBtnWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    goto :goto_0
.end method

.method public getBtnTop()I
    .locals 1

    .prologue
    .line 4141
    const/4 v0, 0x0

    .line 4150
    .local v0, btnTop:I
    return v0
.end method

.method public getRecordStopInProgress()Z
    .locals 3

    .prologue
    .line 3986
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 3987
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecordStopInProgress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureStopping:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3989
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureStopping:Z

    return v0
.end method

.method public getSettingSecondaryDialog()Z
    .locals 1

    .prologue
    .line 3769
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingSecondaryDialog:Z

    return v0
.end method

.method public getThumbImageView()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getToolbarOpenState()Z
    .locals 1

    .prologue
    .line 4055
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSlidingDrawerClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideAnimatedThumbnail()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public hideCafStatus(Z)V
    .locals 4
    .parameter "anim"

    .prologue
    const/4 v3, 0x4

    .line 4347
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 4358
    :goto_0
    return-void

    .line 4350
    :cond_0
    if-eqz p1, :cond_1

    .line 4351
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeOut(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4352
    .local v0, a:Landroid/view/animation/Animation;
    new-instance v1, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$ViewAnimationHandler;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$ViewAnimationHandler;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 4355
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 4356
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideCaptureCluster()V
    .locals 2

    .prologue
    .line 3994
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 3995
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->setVisibility(I)V

    .line 3996
    return-void
.end method

.method public hideControllerPanel(Z)V
    .locals 3
    .parameter "needsave"

    .prologue
    .line 2735
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2736
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    if-eqz v0, :cond_1

    .line 2740
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    .line 2743
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2744
    return-void
.end method

.method public hideFocusBrackets()V
    .locals 2

    .prologue
    .line 2665
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    if-eqz v0, :cond_0

    .line 2666
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/FocusView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2667
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 2669
    :cond_0
    return-void
.end method

.method public hideHandshake(ZZ)V
    .locals 4
    .parameter "anim"
    .parameter "gone"

    .prologue
    const/16 v3, 0x8

    .line 4260
    if-eqz p2, :cond_2

    .line 4261
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "handshake visiblity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4262
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4271
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "hide handshake exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    :cond_1
    return-void

    .line 4263
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 4264
    if-eqz p1, :cond_3

    .line 4265
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeOut(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4266
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandShakeViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 4268
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideLocationTags(ZZ)V
    .locals 3
    .parameter "animation"
    .parameter "setGone"

    .prologue
    .line 2499
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 2500
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "hide location enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    :cond_0
    if-eqz p2, :cond_3

    .line 2504
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2518
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 2519
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "hide location exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    :cond_2
    return-void

    .line 2506
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 2507
    if-eqz p1, :cond_4

    .line 2509
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeOut(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2510
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 2514
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_4
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideRemainText()V
    .locals 0

    .prologue
    .line 2839
    return-void
.end method

.method public hideResolutionTextIcon(ZZ)V
    .locals 4
    .parameter "animation"
    .parameter "setGone"

    .prologue
    const/4 v3, 0x4

    .line 2627
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 2628
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "hide resolution image enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2631
    if-eqz p2, :cond_3

    .line 2632
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2646
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 2647
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "hide resolution image exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    :cond_2
    return-void

    .line 2634
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 2635
    if-eqz p1, :cond_4

    .line 2636
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeOut(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2637
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mResolutionImgViewAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 2640
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_4
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideRightSet()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2810
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 2811
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "hideRightSet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 2817
    invoke-virtual {p0, v4, v4, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideThumbnail(ZZZ)V

    .line 2818
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 2819
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v0, :cond_1

    .line 2820
    sget-boolean v1, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureInProgress:Z

    if-nez v1, :cond_1

    .line 2821
    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/CaptureCluster;->setCleanView(Z)V

    .line 2823
    :cond_1
    return-void
.end method

.method public hideSceneDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2685
    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2687
    :cond_0
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidescenedialog :: ENTER - mstatus is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mleftStatusSet:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2693
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2694
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2696
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2698
    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 2700
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2701
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->rightSetFadeOut()V

    .line 2703
    :cond_2
    return-void
.end method

.method public hideStatusSet(Z)V
    .locals 1
    .parameter "save"

    .prologue
    .line 1990
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideStatusSet(ZZ)V

    .line 1991
    return-void
.end method

.method public hideStatusSet(ZZ)V
    .locals 7
    .parameter "save"
    .parameter "scenesAnim"

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1995
    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1997
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashSet:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1998
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashSet:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1999
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashSet:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2001
    :cond_0
    if-eqz p1, :cond_1

    .line 2003
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentFlash:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentFlash(I)V

    .line 2037
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->updateController()V

    .line 2040
    if-eqz p1, :cond_2

    .line 2041
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2043
    :cond_2
    iput v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 2045
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2046
    return-void

    .line 2006
    :cond_3
    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-eq v0, v4, :cond_4

    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-eq v0, v5, :cond_4

    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v0, v6, :cond_1

    .line 2010
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mleftStatusSet:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2013
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 2014
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2016
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2018
    if-eqz p1, :cond_1

    .line 2020
    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v0, v4, :cond_6

    .line 2021
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentScenes:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentScene(I)V

    goto :goto_0

    .line 2023
    :cond_6
    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v0, v5, :cond_7

    .line 2024
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentEffect:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentEffect(I)V

    goto :goto_0

    .line 2026
    :cond_7
    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v0, v3, :cond_8

    .line 2027
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    goto :goto_0

    .line 2029
    :cond_8
    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v0, v6, :cond_1

    .line 2031
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentWhiteBalance:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    goto :goto_0
.end method

.method public hideThumbnail(ZZZ)V
    .locals 5
    .parameter "animation"
    .parameter "setInvisible"
    .parameter "setGone"

    .prologue
    const/4 v4, 0x4

    .line 2343
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 2344
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide thumbnail enter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_4

    .line 2348
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2366
    :cond_2
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    .line 2367
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "hide thumbnail exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    :cond_3
    return-void

    .line 2350
    :cond_4
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_2

    .line 2352
    if-eqz p1, :cond_5

    .line 2354
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 2356
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeOut(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2357
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 2362
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_5
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideToolBar(Z)V
    .locals 5
    .parameter "fade"

    .prologue
    const/4 v4, 0x0

    .line 3850
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 3852
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideToolBar enter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarHideAnimationInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3853
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideToolBar enter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v3}, Lcom/motorola/Camera/CustomSlidingDrawer;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3856
    :cond_0
    invoke-virtual {p0, v4, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    .line 3857
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v1}, Lcom/motorola/Camera/CustomSlidingDrawer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 3859
    if-eqz p1, :cond_3

    .line 3861
    iget-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarHideAnimationInProgress:Z

    if-nez v1, :cond_1

    .line 3863
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarHideAnimationInProgress:Z

    .line 3864
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeOut(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3865
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3874
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 3875
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "hideToolBar exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3876
    :cond_2
    return-void

    .line 3870
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CustomSlidingDrawer;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideTopStatusSet()V
    .locals 0

    .prologue
    .line 2849
    return-void
.end method

.method public hideVStabImage()V
    .locals 2

    .prologue
    .line 2470
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2471
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "hide vstab image"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVStabImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2474
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVStabImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2476
    :cond_1
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 2477
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "hide vstab image exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    :cond_2
    return-void
.end method

.method public hideZoomControlSet(Z)V
    .locals 3
    .parameter "fadeOut"

    .prologue
    .line 2239
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 2240
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "hide zoombar enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 2246
    :cond_1
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 2247
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "Zoom is not supported!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    :cond_2
    :goto_0
    return-void

    .line 2252
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/ZoomControlBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 2254
    if-eqz p1, :cond_5

    .line 2255
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeOut(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2257
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoombarAnimationFadeOutListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2261
    .end local v0           #a:Landroid/view/animation/Animation;
    :goto_1
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/ZoomControlBar;->setEnabled(Z)V

    .line 2263
    :cond_4
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 2264
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "hide zoombar exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2259
    :cond_5
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/ZoomControlBar;->setVisibility(I)V

    goto :goto_1
.end method

.method public isPopupDialogOpen()Z
    .locals 1

    .prologue
    .line 2873
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2874
    const/4 v0, 0x1

    .line 2876
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needCenterVF()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2777
    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDrawerStatus(Z)V
    .locals 4
    .parameter "closed"

    .prologue
    const/4 v3, 0x0

    .line 3630
    iput-boolean p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSlidingDrawerClosed:Z

    .line 3631
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 3632
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawer status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSlidingDrawerClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSlidingDrawerClosed:Z

    if-eqz v0, :cond_1

    .line 3636
    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 3639
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    .line 3640
    iput-boolean v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarFaded:Z

    .line 3642
    return-void
.end method

.method public notifyItemClicked(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "adaptV"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 3417
    iget-boolean v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSecondaryDialogType:Z

    if-eqz v4, :cond_0

    .line 3489
    :goto_0
    return-void

    .line 3420
    :cond_0
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_1

    .line 3421
    const-string v4, "MotoOnScreenControllerOpenGL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position in client:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  id in client"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " selectdPosition:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  selected id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  getPositionForView:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " childCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    :cond_1
    const/4 v0, -0x1

    .line 3428
    .local v0, lastPosition:I
    const/4 v3, 0x0

    .line 3430
    .local v3, temp:Landroid/widget/ImageView;
    iget v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    packed-switch v4, :pswitch_data_0

    .line 3471
    :cond_2
    :goto_1
    :pswitch_0
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_3

    .line 3472
    const-string v4, "MotoOnScreenControllerOpenGL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastPosition:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3475
    :cond_3
    const/4 v4, -0x1

    if-eq v0, v4, :cond_6

    .line 3477
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v4

    if-lt v0, v4, :cond_4

    .line 3479
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v4

    sub-int/2addr v0, v4

    .line 3481
    :cond_4
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_5

    .line 3482
    const-string v4, "MotoOnScreenControllerOpenGL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastPosition:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    :cond_5
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3487
    :cond_6
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    .line 3488
    const/4 v4, 0x0

    iput v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    goto/16 :goto_0

    .line 3433
    :pswitch_1
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentFlash()I

    move-result v0

    .line 3434
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4, p3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentFlash(I)V

    .line 3435
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v5, 0x6d

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 3438
    :pswitch_2
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPositionFromMode(I)I

    move-result v0

    .line 3439
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v5, 0x74

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getModesValueEntries()[I

    move-result-object v6

    aget v6, v6, p3

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 3440
    .local v2, switchMsg:Landroid/os/Message;
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3442
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getModesValueEntries()[I

    move-result-object v4

    aget v4, v4, p3

    const/4 v5, 0x5

    if-eq v4, v5, :cond_7

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getModesValueEntries()[I

    move-result-object v4

    aget v4, v4, p3

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2

    .line 3443
    :cond_7
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSecondaryDialogType:Z

    goto/16 :goto_0

    .line 3448
    .end local v2           #switchMsg:Landroid/os/Message;
    :pswitch_3
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentEffect()I

    move-result v0

    .line 3449
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4, p3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentEffect(I)V

    .line 3450
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v5, 0x71

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 3454
    :pswitch_4
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentWhiteBalance()I

    move-result v0

    .line 3455
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4, p3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentWhiteBalance(I)V

    .line 3456
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v5, 0x321

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 3460
    :pswitch_5
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v0

    .line 3461
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4, p3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentScene(I)V

    .line 3462
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5, v0, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 3463
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3464
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 3430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public notifyProgressBarChanged(Lcom/motorola/Camera/widget/SliderBarWidget;IZ)V
    .locals 7
    .parameter "sliderBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 3502
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 3503
    const-string v3, "MotoOnScreenControllerOpenGL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "progress bar status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3505
    :cond_0
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressBar:Lcom/motorola/Camera/DialogProgressBar;

    if-eqz v3, :cond_4

    .line 3507
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v4

    sub-int v2, v3, v4

    .line 3508
    .local v2, scale:I
    mul-int v3, p2, v2

    div-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v4

    add-int v0, v3, v4

    .line 3510
    .local v0, actualEV:I
    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastBrightnessProgress:I

    if-eq v0, v3, :cond_3

    .line 3511
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v0

    .line 3512
    :cond_1
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v3

    if-le v0, v3, :cond_2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v0

    .line 3514
    :cond_2
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v5, 0x78

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3516
    :cond_3
    iput v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastBrightnessProgress:I

    .line 3517
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "#.#"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3518
    .local v1, df:Ljava/text/DecimalFormat;
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressBar:Lcom/motorola/Camera/DialogProgressBar;

    int-to-float v4, v0

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getExpCompensationStep()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/DialogProgressBar;->setValue(Ljava/lang/String;)V

    .line 3520
    .end local v0           #actualEV:I
    .end local v1           #df:Ljava/text/DecimalFormat;
    .end local v2           #scale:I
    :cond_4
    return-void
.end method

.method public notifyProgressSettingChanged(IIZ)V
    .locals 10
    .parameter "sliderID"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xc8

    .line 3533
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_0

    .line 3534
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyProgressSettingChanged: sliderID is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , progress bar status:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    :cond_0
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressSettingView:Lcom/motorola/Camera/ProgressSettingView;

    if-nez v7, :cond_1

    .line 3588
    :goto_0
    return-void

    .line 3537
    :cond_1
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v7, "#.#"

    invoke-direct {v3, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3539
    .local v3, df:Ljava/text/DecimalFormat;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3541
    :pswitch_0
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v5

    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v7

    sub-int v4, v5, v7

    .line 3542
    .local v4, scale:I
    mul-int v5, p2, v4

    div-int/lit8 v5, v5, 0x64

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v7

    add-int v1, v5, v7

    .line 3544
    .local v1, actualEV:I
    iget v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastBrightnessProgress:I

    if-eq v1, v5, :cond_4

    .line 3545
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v5

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v1

    .line 3546
    :cond_2
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v5

    if-le v1, v5, :cond_3

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v1

    .line 3547
    :cond_3
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v8, 0x78

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3549
    :cond_4
    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastBrightnessProgress:I

    .line 3550
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressSettingView:Lcom/motorola/Camera/ProgressSettingView;

    int-to-float v7, v1

    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v8}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getExpCompensationStep()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-double v7, v7

    invoke-virtual {v3, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/motorola/Camera/ProgressSettingView;->setValue(ILjava/lang/String;)V

    goto :goto_0

    .line 3554
    .end local v1           #actualEV:I
    .end local v4           #scale:I
    :pswitch_1
    const/16 v4, 0xc8

    .line 3555
    .restart local v4       #scale:I
    mul-int v7, p2, v4

    div-int/lit8 v7, v7, 0x64

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 3557
    .local v0, actualConstrastValue:I
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastContrastProgress:I

    if-eq v0, v7, :cond_7

    .line 3558
    if-gez v0, :cond_5

    move v0, v6

    .line 3559
    :cond_5
    if-le v0, v5, :cond_6

    move v0, v5

    .line 3560
    :cond_6
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v7, 0x322

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3562
    :cond_7
    iput v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastContrastProgress:I

    .line 3563
    new-instance v3, Ljava/text/DecimalFormat;

    .end local v3           #df:Ljava/text/DecimalFormat;
    const-string v5, "#"

    invoke-direct {v3, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3564
    .restart local v3       #df:Ljava/text/DecimalFormat;
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressSettingView:Lcom/motorola/Camera/ProgressSettingView;

    const/4 v6, 0x1

    add-int/lit8 v7, v0, -0x64

    int-to-long v7, v7

    invoke-virtual {v3, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/motorola/Camera/ProgressSettingView;->setValue(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3568
    .end local v0           #actualConstrastValue:I
    .end local v4           #scale:I
    :pswitch_2
    const/16 v4, 0xc8

    .line 3569
    .restart local v4       #scale:I
    mul-int v7, p2, v4

    div-int/lit8 v7, v7, 0x64

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 3571
    .local v2, actualSaturationValue:I
    iget v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastSaturationProgress:I

    if-eq v2, v7, :cond_a

    .line 3572
    if-gez v2, :cond_8

    move v2, v6

    .line 3573
    :cond_8
    if-le v2, v5, :cond_9

    move v2, v5

    .line 3574
    :cond_9
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v7, 0x323

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3576
    :cond_a
    iput v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastSaturationProgress:I

    .line 3577
    new-instance v3, Ljava/text/DecimalFormat;

    .end local v3           #df:Ljava/text/DecimalFormat;
    const-string v5, "#"

    invoke-direct {v3, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3578
    .restart local v3       #df:Ljava/text/DecimalFormat;
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressSettingView:Lcom/motorola/Camera/ProgressSettingView;

    const/4 v6, 0x2

    add-int/lit8 v7, v2, -0x64

    int-to-long v7, v7

    invoke-virtual {v3, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/motorola/Camera/ProgressSettingView;->setValue(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 3582
    .end local v2           #actualSaturationValue:I
    .end local v4           #scale:I
    :pswitch_3
    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v7, 0x324

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 3539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public notifySettingSecondaryClosed()V
    .locals 1

    .prologue
    .line 3764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingSecondaryDialog:Z

    .line 3765
    return-void
.end method

.method public notifySettingSecondaryOpened()V
    .locals 1

    .prologue
    .line 3759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingSecondaryDialog:Z

    .line 3760
    return-void
.end method

.method public notifySettingsClicked(II)V
    .locals 7
    .parameter "setting"
    .parameter "selection"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x2

    const/16 v5, 0x7b

    const/4 v0, 0x1

    .line 3691
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 3692
    const-string v2, "MotoOnScreenControllerOpenGL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "selection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3694
    :cond_0
    sget v2, Lcom/motorola/Camera/CameraGlobalType;->SETTING_PICTURE_RESOLUTION:I

    if-ne p1, v2, :cond_3

    .line 3696
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3697
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3698
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, " Previous change picture resolution request is removed from the queue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3702
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3703
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, " restart preview is put in the queue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    :cond_2
    :goto_0
    return-void

    .line 3705
    :cond_3
    sget v2, Lcom/motorola/Camera/CameraGlobalType;->SETTING_VIDEO_RESOLUTION:I

    if-ne p1, v2, :cond_5

    .line 3707
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    .line 3708
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "Video resolution changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3711
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3713
    :cond_5
    sget v2, Lcom/motorola/Camera/CameraGlobalType;->SETTING_FACE_DETECTION:I

    if-eq p1, v2, :cond_2

    .line 3717
    sget v2, Lcom/motorola/Camera/CameraGlobalType;->SETTING_GEO_TAG:I

    if-ne p1, v2, :cond_8

    .line 3719
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_6

    .line 3720
    const-string v2, "MotoOnScreenControllerOpenGL"

    const-string v3, "geo tag setting updated"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    :cond_6
    if-ne p2, v0, :cond_7

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3724
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v3, 0x86

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3727
    :cond_7
    invoke-virtual {p0, v1, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showLocationTags(ZZ)V

    goto :goto_0

    .line 3729
    :cond_8
    sget v2, Lcom/motorola/Camera/CameraGlobalType;->SETTING_SHUTTER_TONE:I

    if-eq p1, v2, :cond_2

    .line 3733
    sget v2, Lcom/motorola/Camera/CameraGlobalType;->SETTING_SHUTTER_ANIMATION:I

    if-eq p1, v2, :cond_2

    .line 3737
    sget v2, Lcom/motorola/Camera/CameraGlobalType;->SETTING_STORAGE_LOCATION:I

    if-ne p1, v2, :cond_a

    .line 3739
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_9

    .line 3740
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "Storage Location changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3742
    :cond_9
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3744
    :cond_a
    sget v2, Lcom/motorola/Camera/CameraGlobalType;->SETTING_VIDEO_STABILIZATION:I

    if-ne p1, v2, :cond_2

    .line 3745
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3746
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3747
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_b

    const-string v2, "MotoOnScreenControllerOpenGL"

    const-string v3, " Previous change video stabilization change request is removed from the queue"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    :cond_b
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    if-ne p2, v0, :cond_d

    :goto_1
    invoke-virtual {v2, v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setVideoStabilization(Z)V

    .line 3750
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_c

    .line 3751
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "Setting changed: Video Stabilization"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    :cond_c
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_d
    move v0, v1

    .line 3749
    goto :goto_1
.end method

.method public notifyViewClicked(Landroid/view/View;I)V
    .locals 8
    .parameter "v"
    .parameter "direction"

    .prologue
    .line 3600
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressBar:Lcom/motorola/Camera/DialogProgressBar;

    invoke-virtual {v4}, Lcom/motorola/Camera/DialogProgressBar;->getSliderProgress()I

    move-result v2

    .line 3601
    .local v2, progress:I
    sget-boolean v4, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v4, :cond_0

    .line 3602
    const-string v4, "MotoOnScreenControllerOpenGL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "progress bar status:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3604
    :cond_0
    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    const/16 v4, 0x64

    if-ge v2, v4, :cond_2

    .line 3606
    add-int/lit8 v2, v2, 0x1

    .line 3612
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v4}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMaxExpCompensationIndex()I

    move-result v4

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v5

    sub-int v3, v4, v5

    .line 3613
    .local v3, scale:I
    mul-int v4, v2, v3

    div-int/lit8 v4, v4, 0x64

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getMinExpCompensationIndex()I

    move-result v5

    add-int v0, v4, v5

    .line 3614
    .local v0, actualEV:I
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v6, 0x78

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3615
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressBar:Lcom/motorola/Camera/DialogProgressBar;

    invoke-virtual {v4, v2}, Lcom/motorola/Camera/DialogProgressBar;->setSliderProgress(I)V

    .line 3616
    iput v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastBrightnessProgress:I

    .line 3617
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v4, "#.#"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3618
    .local v1, df:Ljava/text/DecimalFormat;
    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mProgressBar:Lcom/motorola/Camera/DialogProgressBar;

    int-to-float v5, v0

    iget-object v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v6}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getExpCompensationStep()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-virtual {v1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/motorola/Camera/DialogProgressBar;->setValue(Ljava/lang/String;)V

    .line 3619
    return-void

    .line 3608
    .end local v0           #actualEV:I
    .end local v1           #df:Ljava/text/DecimalFormat;
    .end local v3           #scale:I
    :cond_2
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    if-lez v2, :cond_1

    .line 3610
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public notifyZoomProgress(II)V
    .locals 4
    .parameter "progress"
    .parameter "action"

    .prologue
    .line 3653
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 3654
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoom progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mLastProgress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    :cond_0
    if-gez p1, :cond_1

    .line 3659
    const/4 p1, 0x0

    .line 3662
    :cond_1
    sget v1, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    if-le p1, v1, :cond_2

    .line 3664
    sget p1, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    .line 3667
    :cond_2
    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastProgress:I

    if-eq p1, v1, :cond_5

    .line 3669
    if-eqz p2, :cond_3

    const/4 v1, 0x2

    if-ne p2, v1, :cond_6

    .line 3671
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3672
    .local v0, zoomMsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3678
    .end local v0           #zoomMsg:Landroid/os/Message;
    :cond_4
    :goto_0
    iput p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastProgress:I

    .line 3680
    :cond_5
    return-void

    .line 3674
    :cond_6
    const/4 v1, 0x1

    if-eq p2, v1, :cond_7

    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    .line 3676
    :cond_7
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1860
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1861
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "onAnimationEnd() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1865
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1868
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 1869
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "onAnimationStart() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    :cond_0
    return-void
.end method

.method public onAutoTimerItemCanceled()V
    .locals 1

    .prologue
    .line 4049
    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 4050
    return-void
.end method

.method public onAutoTimerItemSelected()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4044
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    .line 4045
    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 4046
    return-void
.end method

.method public onCameraModeSwitch(Z)V
    .locals 5
    .parameter "isStillCamera"

    .prologue
    .line 3823
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 3824
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "onCameraModeSwitch: isStillCamera - %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    const-string v0, "true"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3826
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    const/16 v0, 0x49

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3827
    return-void

    .line 3824
    :cond_1
    const-string v0, "false"

    goto :goto_0

    .line 3826
    :cond_2
    const/16 v0, 0x1f

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 450
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 451
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() - Enter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolBarButtonClicked:Z

    if-eqz v0, :cond_2

    .line 456
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 457
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mToolBarButtonClicked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolBarButtonClicked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_1
    :goto_0
    return-void

    .line 461
    :cond_2
    iput-boolean v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolBarButtonClicked:Z

    .line 464
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOldChildView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 466
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    .line 468
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "mOldChildView is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_3
    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-eqz v0, :cond_1

    .line 474
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPrevButtonClicked:I

    if-ne v0, v1, :cond_4

    .line 476
    iput-boolean v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTransitionBetweenDialogs:Z

    .line 477
    invoke-virtual {p0, v4, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    goto :goto_0

    .line 481
    :cond_4
    iput-boolean v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTransitionBetweenDialogs:Z

    .line 482
    invoke-virtual {p0, v3, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    .line 483
    invoke-direct {p0, p1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->processOnClick(Landroid/view/View;)V

    goto :goto_0

    .line 492
    :cond_5
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    .line 494
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "mOldChildView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_6
    iput-boolean v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTransitionBetweenDialogs:Z

    .line 497
    invoke-direct {p0, p1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->processOnClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/high16 v7, 0x41a0

    const/16 v8, 0x8

    const/4 v4, 0x0

    .line 1224
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 1225
    const-string v3, "MotoOnScreenControllerOpenGL"

    const-string v6, "onFinishInflate() - Enter"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_0
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1228
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScale:F

    .line 1230
    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScale:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mClickTouchThreshold:I

    .line 1231
    const/high16 v3, 0x41c0

    iget v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScale:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogHeightPadding:I

    .line 1232
    const/high16 v3, 0x4160

    iget v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScale:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    .line 1233
    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogMarginPadding:I

    .line 1234
    iget v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScale:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoomBarTolerance:I

    .line 1235
    const/high16 v3, 0x42a0

    iget v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScale:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoomBarUpperPadding:I

    .line 1236
    const/high16 v3, 0x4120

    iget v6, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScale:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mUserThreshold:I

    .line 1238
    const v3, 0x7f0d0035

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mleftStatusSet:Landroid/view/View;

    .line 1239
    const v3, 0x7f0d0034

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/widget/RotateLayout;

    .line 1240
    .local v1, layout:Lcom/motorola/Camera/widget/RotateLayout;
    const/16 v3, 0x10e

    invoke-virtual {v1, v3}, Lcom/motorola/Camera/widget/RotateLayout;->setOrientation(I)V

    .line 1242
    const v3, 0x7f0d0038

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    .line 1243
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1245
    const v3, 0x7f0d003b

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    .line 1248
    invoke-direct {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->initForMode()V

    .line 1250
    const v3, 0x7f0d0037

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    .line 1252
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    .line 1253
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1256
    :cond_1
    invoke-virtual {p0, v4, v4, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideThumbnail(ZZZ)V

    .line 1257
    const v3, 0x7f0d0039

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    .line 1258
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 1260
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1261
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1262
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1265
    :cond_2
    const v3, 0x7f0d003a

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVStabImage:Landroid/widget/ImageView;

    .line 1266
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVStabImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVStabImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1268
    :cond_3
    const v3, 0x7f0d003c

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    .line 1269
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1271
    :cond_4
    const v3, 0x7f0d0026

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    .line 1272
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScreen:Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    .line 1273
    const v3, 0x7f0d0029

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    .line 1275
    const v3, 0x7f0d003d

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    .line 1276
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1279
    :cond_5
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_6

    .line 1282
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerWidth:I

    .line 1283
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerLeft:I

    .line 1284
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerRight:I

    .line 1285
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerHeight:I

    .line 1286
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerTop:I

    .line 1287
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v3

    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSliderContainerBottom:I

    .line 1290
    :cond_6
    const v3, 0x7f0d002c

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNub:Landroid/widget/LinearLayout;

    .line 1293
    const v3, 0x7f0d002d

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingsButton:Landroid/widget/ImageView;

    .line 1294
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_7

    .line 1295
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1296
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1297
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSettingsButton:Landroid/widget/ImageView;

    const/high16 v6, 0x7600

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v6, v7}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1300
    :cond_7
    const v3, 0x7f0d0030

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mWhiteBalanceButton:Landroid/widget/ImageView;

    .line 1301
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mWhiteBalanceButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    .line 1302
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mWhiteBalanceButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1305
    :cond_8
    const v3, 0x7f0d002e

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/ImageView;

    .line 1306
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_9

    .line 1307
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mEffectsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1310
    :cond_9
    const v3, 0x7f0d002f

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    .line 1311
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_a

    .line 1312
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mScenesButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1315
    :cond_a
    const v3, 0x7f0d0031

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mModesButton:Landroid/widget/ImageView;

    .line 1316
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mModesButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_b

    .line 1317
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mModesButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1320
    :cond_b
    const v3, 0x7f0d0032

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBrightnessButton:Landroid/widget/ImageView;

    .line 1321
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBrightnessButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_c

    .line 1322
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mBrightnessButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1326
    :cond_c
    const v3, 0x7f0d0033

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    .line 1327
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_e

    .line 1328
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v3

    if-nez v3, :cond_15

    .line 1330
    :cond_d
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1331
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1339
    :cond_e
    :goto_0
    const v3, 0x7f0d002a

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/motorola/Camera/CustomSlidingDrawer;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    .line 1340
    const v3, 0x7f0d002b

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarHandle:Landroid/widget/ImageView;

    .line 1342
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    if-eqz v3, :cond_f

    .line 1344
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v3, p0}, Lcom/motorola/Camera/CustomSlidingDrawer;->setCallbackInterface(Lcom/motorola/Camera/DialogCallbackInterface;)V

    .line 1347
    :cond_f
    const v3, 0x7f0d003e

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/motorola/Camera/widget/ZoomControlBar;

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    .line 1348
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    if-eqz v3, :cond_10

    .line 1349
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    sget v6, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual {v3, v6}, Lcom/motorola/Camera/widget/ZoomControlBar;->setZoomMax(I)V

    .line 1350
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/widget/ZoomControlBar;->setZoomIndex(I)V

    .line 1351
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    new-instance v6, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$3;

    invoke-direct {v6, p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$3;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;)V

    invoke-virtual {v3, v6}, Lcom/motorola/Camera/widget/ZoomControlBar;->setOnZoomChangeListener(Lcom/motorola/Camera/widget/ZoomControl$OnZoomChangedListener;)V

    .line 1368
    :cond_10
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1370
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_11

    .line 1371
    const-string v3, "MotoOnScreenControllerOpenGL"

    const-string v6, "Zoom is not supported!!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_11
    const v3, 0x7f0d000b

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 1377
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v0, :cond_12

    .line 1378
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isDualCameraSupported()Z

    move-result v3

    if-eqz v3, :cond_16

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/CaptureCluster;->setMode(I)V

    .line 1380
    invoke-virtual {v0, p0}, Lcom/motorola/Camera/View/CaptureCluster;->setCaptureClusterListener(Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;)V

    .line 1382
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v3

    if-nez v3, :cond_12

    .line 1384
    invoke-virtual {v0, v4}, Lcom/motorola/Camera/View/CaptureCluster;->setCameraMode(Z)V

    .line 1389
    :cond_12
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->trayDrawable:Landroid/graphics/drawable/Drawable;

    .line 1391
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getToolbarOpenStatus()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1393
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    if-eqz v3, :cond_13

    .line 1395
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v3}, Lcom/motorola/Camera/CustomSlidingDrawer;->drawWithoutAnimation()V

    .line 1399
    :cond_13
    invoke-super {p0}, Lcom/motorola/Camera/View/Control/OnScreenController;->onFinishInflate()V

    .line 1401
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_14

    .line 1402
    const-string v3, "MotoOnScreenControllerOpenGL"

    const-string v4, "onFinishInflate() - Exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_14
    return-void

    .line 1335
    .end local v0           #captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    :cond_15
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .restart local v0       #captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    :cond_16
    move v3, v5

    .line 1378
    goto :goto_1
.end method

.method public onFrontCameraSwitch()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3786
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x73

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x72

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3787
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 3788
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "onFrontCameraSwitch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3790
    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    .line 3791
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    monitor-enter v2

    .line 3792
    const/16 v0, 0x73

    .line 3793
    .local v0, msgCode:I
    :try_start_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3794
    const/16 v0, 0x72

    .line 3798
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3799
    monitor-exit v2

    .line 3801
    .end local v0           #msgCode:I
    :cond_2
    return-void

    .line 3799
    .restart local v0       #msgCode:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 1218
    const/4 v0, 0x0

    return v0
.end method

.method public onMuteToggle(Z)V
    .locals 2
    .parameter "audioButtonEnabled"

    .prologue
    .line 3810
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 v0, 0x88

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3811
    return-void

    .line 3810
    :cond_0
    const/16 v0, 0x87

    goto :goto_0
.end method

.method public onStillCaptureDown(Z)V
    .locals 5
    .parameter "exitPanorama"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3830
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 3831
    const-string v3, "MotoOnScreenControllerOpenGL"

    const-string v4, "onStillCaptureDown"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3833
    :cond_0
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStillImageCaptureInProgress:Z

    .line 3835
    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 3836
    const v3, 0x7f0d000b

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 3837
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/CaptureCluster;->setCameraMode(I)V

    .line 3839
    .end local v0           #captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    :cond_1
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v4, 0x42

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3842
    if-nez p1, :cond_2

    .line 3843
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    iget-boolean v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSlidingDrawerClosed:Z

    if-nez v4, :cond_3

    :goto_0
    invoke-virtual {v3, v1}, Lcom/motorola/Camera/CustomSlidingDrawer;->setSliderRestoreState(Z)V

    .line 3845
    :cond_2
    iput v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 3846
    return-void

    :cond_3
    move v1, v2

    .line 3843
    goto :goto_0
.end method

.method public onStillCaptureFocus()V
    .locals 2

    .prologue
    .line 3944
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 3945
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "onStillCaptureFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->rightSetFadeOut()V

    .line 3948
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3949
    return-void
.end method

.method public onStillCaptureUp()V
    .locals 2

    .prologue
    .line 3952
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 3953
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "onStillCaptureUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3954
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->rightSetFadeIn()V

    .line 3955
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3956
    return-void
.end method

.method public onTimelapseItemSelected()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4079
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    .line 4080
    iput v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 4081
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 3054
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 3056
    const/4 v0, 0x0

    return v0
.end method

.method public onVideoRecordingStarted()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 3959
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 3960
    const-string v2, "MotoOnScreenControllerOpenGL"

    const-string v3, "onVideoRecordingStarted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3962
    :cond_0
    sput-boolean v1, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureInProgress:Z

    .line 3963
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->rightSetFadeOut()V

    .line 3966
    const v2, 0x7f0d000b

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 3967
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v0, :cond_1

    .line 3968
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->enableMute(Z)V

    .line 3971
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3972
    return-void

    .line 3968
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onVideoRecordingStopped()V
    .locals 2

    .prologue
    .line 3975
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 3976
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "onVideoRecordingStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3978
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureInProgress:Z

    .line 3979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureStopping:Z

    .line 3980
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3981
    return-void
.end method

.method public onVideoSnapshot()V
    .locals 2

    .prologue
    .line 3805
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3806
    return-void
.end method

.method public removePicsStill()V
    .locals 4

    .prologue
    .line 296
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    const v3, 0x7f0d0027

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/widget/RotateLayout;

    .line 298
    .local v1, rl:Lcom/motorola/Camera/widget/RotateLayout;
    if-nez v1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-virtual {v1}, Lcom/motorola/Camera/widget/RotateLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 302
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->setVisibility(I)V

    .line 303
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    const v3, 0x7f0d0028

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 305
    .local v0, iv:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 306
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public resetFilter()V
    .locals 5

    .prologue
    .line 4064
    sget-object v2, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFilteredResources:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 4065
    sget-object v2, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFilteredResources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 4067
    .local v0, draw:Landroid/graphics/drawable/Drawable;
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_1

    .line 4068
    const-string v2, "MotoOnScreenControllerOpenGL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drawbles"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4070
    :cond_1
    if-eqz v0, :cond_0

    .line 4071
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0

    .line 4074
    .end local v0           #draw:Landroid/graphics/drawable/Drawable;
    :cond_2
    sget-object v2, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFilteredResources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4076
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public rightSetFadeIn()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2069
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 2070
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "rightSetFadeIn() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    :cond_0
    iput-boolean v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStillImageCaptureInProgress:Z

    .line 2074
    iget-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    if-nez v1, :cond_2

    .line 2076
    iput-boolean v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    .line 2078
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFlashModes()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2080
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2081
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFlashButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2085
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showThumbnail()V

    .line 2086
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showZoomControlSet()V

    .line 2087
    invoke-virtual {p0, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showToolBar(Z)V

    .line 2089
    iput v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 2091
    invoke-virtual {p0, v4, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showLocationTags(ZZ)V

    .line 2101
    invoke-virtual {p0, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showResolutionTextIcon(Z)V

    .line 2103
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 2105
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2108
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getLastHandShake()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v1

    if-nez v1, :cond_6

    .line 2109
    invoke-virtual {p0, v3, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showHandshake(ZZ)V

    .line 2112
    :goto_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    if-eqz v1, :cond_3

    .line 2113
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    invoke-virtual {v1}, Lcom/motorola/Camera/FocusManager;->shouldShowCafStatus()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2114
    invoke-virtual {p0, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showCafStatus(Z)V

    .line 2119
    :cond_3
    :goto_1
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 2120
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v0, :cond_4

    .line 2121
    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/CaptureCluster;->setCleanView(Z)V

    .line 2124
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showCaptureCluster()V

    .line 2126
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    .line 2127
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "rightSetFadeIn() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    :cond_5
    return-void

    .line 2111
    .end local v0           #captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    :cond_6
    invoke-virtual {p0, v4, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showHandshake(ZZ)V

    goto :goto_0

    .line 2116
    :cond_7
    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideCafStatus(Z)V

    goto :goto_1
.end method

.method public rightSetFadeOut()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2132
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 2133
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "rightSetFadeOut() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2136
    :cond_1
    iput-boolean v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    .line 2138
    iget-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLockRightSet:Z

    if-nez v1, :cond_2

    .line 2140
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 2143
    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideLocationTags(ZZ)V

    .line 2144
    invoke-virtual {p0, v3, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideHandshake(ZZ)V

    .line 2145
    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideCafStatus(Z)V

    .line 2147
    invoke-virtual {p0, v3, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideResolutionTextIcon(ZZ)V

    .line 2149
    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-eqz v1, :cond_3

    .line 2151
    invoke-virtual {p0, v4, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    .line 2152
    iput v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 2156
    :cond_3
    sget-boolean v1, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureInProgress:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isCamcorderZoomSupported()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2157
    :cond_4
    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideZoomControlSet(Z)V

    .line 2160
    :cond_5
    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideToolBar(Z)V

    .line 2161
    iput v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 2164
    invoke-virtual {p0, v3, v3, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideThumbnail(ZZZ)V

    .line 2166
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 2167
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v0, :cond_6

    .line 2171
    iget-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStillImageCaptureInProgress:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    if-eq v1, v3, :cond_9

    .line 2173
    invoke-virtual {v0, v3, v3}, Lcom/motorola/Camera/View/CaptureCluster;->setCleanView(ZZ)V

    .line 2182
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2185
    .end local v0           #captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    :cond_7
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_8

    .line 2186
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "rightSetFadeOut() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    :cond_8
    return-void

    .line 2177
    .restart local v0       #captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    :cond_9
    sget-boolean v1, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureInProgress:Z

    if-nez v1, :cond_6

    .line 2178
    invoke-virtual {v0, v3}, Lcom/motorola/Camera/View/CaptureCluster;->setCleanView(Z)V

    goto :goto_0
.end method

.method public secondaryDialogClosed()V
    .locals 1

    .prologue
    .line 4085
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSecondaryDialogType:Z

    .line 4086
    return-void
.end method

.method public secondaryDialogOpen()V
    .locals 1

    .prologue
    .line 4090
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSecondaryDialogType:Z

    .line 4091
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 4172
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mActivity:Landroid/app/Activity;

    .line 4173
    return-void
.end method

.method public setCaptureClusterCameraMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 4009
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 4010
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-nez v0, :cond_0

    .line 4014
    :goto_0
    return-void

    .line 4013
    :cond_0
    invoke-virtual {v0, p1}, Lcom/motorola/Camera/View/CaptureCluster;->setCameraMode(I)V

    goto :goto_0
.end method

.method public setCaptureResourceClickable(Z)V
    .locals 4
    .parameter "setClickable"

    .prologue
    .line 1838
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Setting the capture resource clickable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    :cond_0
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 1842
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v0, :cond_1

    .line 1843
    invoke-virtual {v0, p1}, Lcom/motorola/Camera/View/CaptureCluster;->setCaptureResourceClickable(Z)V

    .line 1844
    :cond_1
    return-void
.end method

.method public setDialogStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 2990
    iput p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 2991
    return-void
.end method

.method public setFocusBracket(Lcom/motorola/Camera/View/FocusView;)V
    .locals 0
    .parameter "focusView"

    .prologue
    .line 2985
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    .line 2986
    return-void
.end method

.method public setMenuPress()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2996
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2997
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMenuPress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMenuPress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSlidingDrawerClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSecondaryDialogType:Z

    if-eqz v0, :cond_1

    .line 3048
    :goto_0
    return-void

    .line 3004
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    if-nez v0, :cond_3

    .line 3006
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/CustomSlidingDrawer;->setSliderRestoreState(Z)V

    .line 3007
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v0}, Lcom/motorola/Camera/CustomSlidingDrawer;->drawWithoutAnimation()V

    .line 3008
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->rightSetFadeIn()V

    .line 3047
    :cond_2
    :goto_1
    iput-boolean v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarFaded:Z

    goto :goto_0

    .line 3010
    :cond_3
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mSlidingDrawerClosed:Z

    if-eqz v0, :cond_5

    .line 3013
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    if-eqz v0, :cond_2

    .line 3015
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarFaded:Z

    if-eqz v0, :cond_4

    .line 3017
    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showToolBar(Z)V

    goto :goto_1

    .line 3021
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/CustomSlidingDrawer;->setSliderRestoreState(Z)V

    .line 3022
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/CustomSlidingDrawer;->animateOpen(Z)V

    goto :goto_1

    .line 3028
    :cond_5
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    .line 3029
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mToolbarFaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarFaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    if-eqz v0, :cond_2

    .line 3035
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarFaded:Z

    if-eqz v0, :cond_7

    .line 3037
    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showToolBar(Z)V

    goto :goto_1

    .line 3041
    :cond_7
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v0, v4}, Lcom/motorola/Camera/CustomSlidingDrawer;->setSliderRestoreState(Z)V

    .line 3042
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/CustomSlidingDrawer;->animateClose(Z)V

    .line 3043
    iput v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    goto :goto_1
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 4095
    iput p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCurrentOrientation:I

    .line 4096
    return-void
.end method

.method public setParams(Landroid/os/Handler;Lcom/motorola/Camera/FocusManager;)V
    .locals 2
    .parameter "handler"
    .parameter "focusManager"

    .prologue
    .line 1847
    iput-object p1, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    .line 1848
    iput-object p2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusManager:Lcom/motorola/Camera/FocusManager;

    .line 1850
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTranslateIn:Landroid/view/animation/AnimationSet;

    .line 1853
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTranslateIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1854
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    const v1, 0x7f040007

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTranslateOut:Landroid/view/animation/AnimationSet;

    .line 1856
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mTranslateOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1857
    return-void
.end method

.method public setRecordButton(Z)V
    .locals 4
    .parameter "recording"

    .prologue
    .line 1815
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 1816
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recording:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1821
    iput-boolean p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mRecording:Z

    .line 1824
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 1825
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v0, :cond_1

    .line 1826
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/motorola/Camera/View/CaptureCluster;->videoCapture(ZZ)V

    .line 1829
    .end local v0           #captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    :cond_1
    return-void
.end method

.method public setStillImageCaptureInProgress(Z)V
    .locals 0
    .parameter "isStillCapture"

    .prologue
    .line 4381
    iput-boolean p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStillImageCaptureInProgress:Z

    .line 4382
    return-void
.end method

.method public setZoomBarMax(I)V
    .locals 2
    .parameter "max"

    .prologue
    .line 4059
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    sget v1, Lcom/motorola/Camera/CameraGlobalType;->ZOOM_MAX_VALUE:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/widget/ZoomControlBar;->setZoomMax(I)V

    .line 4060
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 2710
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->show(I)V

    .line 2711
    return-void
.end method

.method public show(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 2756
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    if-nez v0, :cond_0

    .line 2758
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->setVisibility(I)V

    .line 2759
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->invalidate()V

    .line 2760
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    .line 2763
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    if-nez v0, :cond_1

    .line 2765
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->rightSetFadeIn()V

    .line 2768
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2769
    if-gtz p1, :cond_2

    .line 2771
    const/16 p1, 0x1388

    .line 2773
    :cond_2
    return-void
.end method

.method public show(Z)V
    .locals 1
    .parameter "lock"

    .prologue
    .line 2714
    iput-boolean p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLockRightSet:Z

    .line 2715
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->show(I)V

    .line 2716
    return-void
.end method

.method public showCafStatus(Z)V
    .locals 4
    .parameter "anim"

    .prologue
    const/4 v3, 0x0

    .line 4332
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4343
    :cond_0
    :goto_0
    return-void

    .line 4335
    :cond_1
    if-eqz p1, :cond_2

    .line 4336
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4337
    .local v0, a:Landroid/view/animation/Animation;
    new-instance v1, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$ViewAnimationHandler;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$ViewAnimationHandler;-><init>(Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 4340
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 4341
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showCameraCaptureControl(Z)V
    .locals 5
    .parameter "show"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2719
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCameraCaptureControl() - Enter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    if-nez v0, :cond_0

    .line 2721
    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->setVisibility(I)V

    .line 2722
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->invalidate()V

    .line 2723
    iput-boolean v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    .line 2726
    :cond_0
    if-eqz p1, :cond_1

    .line 2727
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2728
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 2732
    :goto_0
    return-void

    .line 2730
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public showCaptureCluster()V
    .locals 3

    .prologue
    .line 4000
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 4001
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "showCaptureCluster()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4003
    :cond_0
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 4004
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->setVisibility(I)V

    .line 4005
    return-void
.end method

.method public showFocusBrackets()V
    .locals 2

    .prologue
    .line 2673
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    if-eqz v0, :cond_0

    .line 2675
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/FocusView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2677
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 2680
    :cond_0
    return-void
.end method

.method public showHandshake(ZZ)V
    .locals 4
    .parameter "anim"
    .parameter "override"

    .prologue
    const/4 v3, 0x0

    .line 4234
    if-eqz p2, :cond_1

    .line 4235
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4244
    :cond_0
    :goto_0
    return-void

    .line 4236
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 4237
    if-eqz p1, :cond_2

    .line 4238
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4239
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshakeViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 4241
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mHandshake:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showLocationTags(ZZ)V
    .locals 4
    .parameter "animation"
    .parameter "setGone"

    .prologue
    .line 2541
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_0

    .line 2542
    const-string v2, "MotoOnScreenControllerOpenGL"

    const-string v3, "show location enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    :cond_0
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v2}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v1

    .line 2546
    .local v1, isLocationOn:Z
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->isPopupDialogOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialogCloseInProgress:Z

    if-eqz v2, :cond_6

    .line 2548
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 2550
    if-eqz p1, :cond_5

    .line 2552
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2553
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2560
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->updateLocationText()V

    .line 2568
    :cond_3
    :goto_1
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_4

    .line 2569
    const-string v2, "MotoOnScreenControllerOpenGL"

    const-string v3, "show location exit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    :cond_4
    return-void

    .line 2557
    :cond_5
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2562
    :cond_6
    if-eqz p2, :cond_3

    .line 2564
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2565
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public showPhoneLocationDialog()V
    .locals 2

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1833
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mDialog:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {v0}, Lcom/motorola/Camera/DialogSettingsView;->showPhoneLocationDialog()V

    .line 1835
    :cond_0
    return-void
.end method

.method public showPicsStill(Landroid/graphics/Bitmap;III)V
    .locals 4
    .parameter "image"
    .parameter "width"
    .parameter "height"
    .parameter "left"

    .prologue
    .line 285
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    const v3, 0x7f0d0028

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 286
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    const v3, 0x7f0d0027

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/widget/RotateLayout;

    .line 287
    .local v1, rl:Lcom/motorola/Camera/widget/RotateLayout;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->setVisibility(I)V

    .line 289
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 290
    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 292
    const/16 v2, 0x10e

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/widget/RotateLayout;->setOrientation(I)V

    .line 293
    return-void
.end method

.method public showRecordingIndicator(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 2868
    return-void
.end method

.method public showRemainText()V
    .locals 0

    .prologue
    .line 2844
    return-void
.end method

.method public showResolutionTextIcon(Z)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 2591
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 2592
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "show resolution Img enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2595
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2596
    if-eqz p1, :cond_4

    .line 2597
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2598
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mResolutionImgViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2605
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->updateResImg()V

    .line 2608
    :cond_2
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    .line 2609
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "show resolution Img exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    :cond_3
    return-void

    .line 2601
    :cond_4
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showRightSet()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2827
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2828
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mImageCaptureMode:Ljava/lang/Boolean;

    .line 2831
    :cond_0
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 2832
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v0, :cond_1

    .line 2833
    invoke-virtual {v0, v2}, Lcom/motorola/Camera/View/CaptureCluster;->setCleanView(Z)V

    .line 2834
    :cond_1
    return-void
.end method

.method public showThumbnail()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 2388
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 2389
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "show thumbnail enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPanCapturing:Z

    if-eqz v1, :cond_2

    .line 2395
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2414
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 2415
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "show thumbnail exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    :cond_1
    return-void

    .line 2398
    :cond_2
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2400
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 2404
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2405
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->thumbAnimation:Landroid/view/animation/AnimationSet;

    if-nez v1, :cond_4

    .line 2406
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2407
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 2410
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_4
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->thumbAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public showToolBar(Z)V
    .locals 4
    .parameter "fade"

    .prologue
    .line 3898
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 3899
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showToolBar enter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarShowAnimationInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    const-string v1, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showToolBar enter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v3}, Lcom/motorola/Camera/CustomSlidingDrawer;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    invoke-virtual {v1}, Lcom/motorola/Camera/CustomSlidingDrawer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3905
    if-eqz p1, :cond_3

    .line 3907
    iget-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarShowAnimationInProgress:Z

    if-nez v1, :cond_1

    .line 3909
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarShowAnimationInProgress:Z

    .line 3910
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3911
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3920
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 3921
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "showToolBar exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3922
    :cond_2
    return-void

    .line 3916
    :cond_3
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/CustomSlidingDrawer;->setVisibility(I)V

    goto :goto_0
.end method

.method public showTopStatusSet()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2854
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showLocationTags(ZZ)V

    .line 2856
    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showResolutionTextIcon(Z)V

    .line 2859
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showThumbnail()V

    .line 2860
    invoke-virtual {p0, v1, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showHandshake(ZZ)V

    .line 2861
    return-void
.end method

.method public showVStabImage()V
    .locals 2

    .prologue
    .line 2483
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2484
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "show vstab image enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoStabilization()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2487
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->hideVStabImage()V

    .line 2491
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 2492
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "show vstab image exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    :cond_2
    return-void

    .line 2488
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVStabImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2489
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVStabImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showZoomControlSet()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2283
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 2284
    const-string v3, "MotoOnScreenControllerOpenGL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show zoombar enter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v5}, Lcom/motorola/Camera/widget/ZoomControlBar;->getVisibility()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    const-string v3, "MotoOnScreenControllerOpenGL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "show zoombar enter:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v5}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    :cond_0
    const/4 v1, 0x0

    .line 2289
    .local v1, cameraMode:I
    const v3, 0x7f0d000b

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/Camera/View/CaptureCluster;

    .line 2290
    .local v2, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v2, :cond_1

    .line 2292
    invoke-virtual {v2}, Lcom/motorola/Camera/View/CaptureCluster;->getCameraMode()I

    move-result v1

    .line 2295
    :cond_1
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 2298
    :cond_2
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_3

    .line 2299
    const-string v3, "MotoOnScreenControllerOpenGL"

    const-string v4, "Zoom is not supported!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    :cond_3
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/motorola/Camera/widget/ZoomControlBar;->setVisibility(I)V

    .line 2311
    :cond_4
    :goto_0
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_5

    .line 2312
    const-string v3, "MotoOnScreenControllerOpenGL"

    const-string v4, "show zoombar exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    :cond_5
    return-void

    .line 2303
    :cond_6
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    invoke-virtual {v3}, Lcom/motorola/Camera/widget/ZoomControlBar;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    .line 2305
    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isCamcorderZoomSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    if-ne v1, v6, :cond_4

    .line 2307
    :cond_7
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2308
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoombarAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public thumbAnimation(Landroid/graphics/Bitmap;III)V
    .locals 7
    .parameter "image"
    .parameter "width"
    .parameter "height"
    .parameter "left"

    .prologue
    const/4 v6, 0x1

    .line 254
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 255
    const-string v3, "MyMotoOnScreenControllerOpenGL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " left:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 260
    .local v1, d:Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNewThumbAnimationImage:Landroid/widget/ImageView;

    .line 262
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 265
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    iput p4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 266
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNewThumbAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNewThumbAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 270
    const/4 v0, 0x0

    .line 272
    .local v0, a:Landroid/view/animation/Animation;
    if-gt p4, v6, :cond_1

    .line 274
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNewThumbAnimationImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationWideThumbPostShot(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 281
    :goto_0
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailAnimationPostShotListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 282
    return-void

    .line 278
    :cond_1
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mNewThumbAnimationImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbPostShot(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 279
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_0
.end method

.method public toggleMediaControlsVisibility()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2782
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 2783
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleMediaControlsVisibility() - Enter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 2785
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    :cond_1
    iget v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    if-eqz v0, :cond_3

    .line 2790
    invoke-virtual {p0, v3, v3}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->closePopupDialog(ZZ)V

    .line 2791
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatus:I

    .line 2806
    :cond_2
    :goto_0
    return-void

    .line 2795
    :cond_3
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mShowing:Z

    if-nez v0, :cond_4

    .line 2796
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->show()V

    .line 2804
    :goto_1
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 2805
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "toggleMediaControlsVisibility() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2798
    :cond_4
    iget-boolean v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mOnScreenMenuShowing:Z

    if-eqz v0, :cond_5

    .line 2799
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->rightSetFadeOut()V

    goto :goto_1

    .line 2801
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->rightSetFadeIn()V

    goto :goto_1
.end method

.method public updateCafStatus(Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;Z)V
    .locals 3
    .parameter "status"
    .parameter "lowLight"

    .prologue
    const/4 v2, 0x2

    .line 4312
    sget-object v0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl$18;->$SwitchMap$com$motorola$Camera$CameraGlobalType$CAF_STATUS:[I

    invoke-virtual {p1}, Lcom/motorola/Camera/CameraGlobalType$CAF_STATUS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4328
    :goto_0
    return-void

    .line 4314
    :pswitch_0
    if-eqz p2, :cond_0

    .line 4315
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 4317
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 4320
    :pswitch_1
    if-eqz p2, :cond_1

    .line 4321
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 4323
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCAFStatus:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 4312
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateController()V
    .locals 3

    .prologue
    .line 2050
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 2051
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "updateController() - Enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    :cond_0
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 2054
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v0, :cond_1

    .line 2055
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isDualCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->setMode(I)V

    .line 2060
    :cond_1
    invoke-direct {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->updateButtons()V

    .line 2061
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->updateStatusIcons()V

    .line 2063
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 2064
    const-string v1, "MotoOnScreenControllerOpenGL"

    const-string v2, "updateController() - Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    :cond_2
    return-void

    .line 2055
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateControllerinSoundRecord()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4292
    invoke-virtual {p0, v4}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->setRecordButton(Z)V

    .line 4293
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showThumbnail()V

    .line 4294
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showZoomControlSet()V

    .line 4295
    iget-boolean v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarShowAnimationInProgress:Z

    if-nez v3, :cond_0

    .line 4297
    iput-boolean v4, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarHideAnimationInProgress:Z

    .line 4298
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarShowAnimationInProgress:Z

    .line 4299
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCustomSlidingDrawer:Lcom/motorola/Camera/CustomSlidingDrawer;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4300
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mToolbarAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4302
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_0
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 4303
    .local v1, b:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4304
    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->updateLocationText()V

    .line 4305
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/motorola/Camera/View/Control/OnScreenController;->mMainContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/motorola/Camera/DialogUtils;->setViewAnimationThumbFadeIn(Landroid/view/View;Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object v2

    .line 4306
    .local v2, c:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mResolutionImgViewAnimationFadeInListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4307
    return-void
.end method

.method public updateLocationText()V
    .locals 5

    .prologue
    .line 2207
    iget-object v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    .line 2209
    .local v1, setting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isLocationOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2236
    :cond_0
    :goto_0
    return-void

    .line 2211
    :cond_1
    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getLocStatus()I

    move-result v2

    if-nez v2, :cond_2

    .line 2213
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0057

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2216
    :cond_2
    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getLocStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 2218
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2221
    :cond_3
    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getLocStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 2223
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0064

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2228
    :cond_4
    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAddress()Ljava/lang/String;

    move-result-object v0

    .line 2229
    .local v0, adr:Ljava/lang/String;
    if-nez v0, :cond_5

    .line 2230
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2233
    :cond_5
    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLocationTagsView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updatePanoramaCaptureStatus(Z)V
    .locals 0
    .parameter "capturing"

    .prologue
    .line 2190
    iput-boolean p1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mPanCapturing:Z

    .line 2191
    return-void
.end method

.method public updateResImg()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    .line 1761
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_0

    const-string v7, "MotoOnScreenControllerOpenGL"

    const-string v8, "update Resolution Img - Enter"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    :cond_0
    const/4 v0, 0x0

    .line 1767
    .local v0, currentRes:Ljava/lang/String;
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v7

    if-nez v7, :cond_3

    .line 1768
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1810
    :cond_1
    :goto_0
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_2

    const-string v7, "MotoOnScreenControllerOpenGL"

    const-string v8, "update Resolution Img - Exit"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    :cond_2
    return-void

    .line 1770
    :cond_3
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentAppMode()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 1772
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    .line 1774
    .local v1, currentVideoMode:I
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v0

    .line 1775
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_4

    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateResImg() - currentVideoMode currentRes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    :cond_4
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolutionValues()Ljava/util/List;

    move-result-object v6

    .line 1780
    .local v6, videoResolutionValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v7}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolutionTextIcons()Ljava/util/List;

    move-result-object v5

    .line 1782
    .local v5, videoResolutionTextIcons:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_5

    .line 1783
    const-string v7, "MotoOnScreenControllerOpenGL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateResImg() - videoResolutionValues videoResolutionImgs"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    :cond_5
    if-eqz v6, :cond_7

    if-eqz v0, :cond_7

    .line 1788
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 1789
    .local v3, num:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 1791
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1792
    .local v4, tempString:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1794
    iget-object v8, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1789
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1801
    .end local v2           #i:I
    .end local v3           #num:I
    .end local v4           #tempString:Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStatusResolutionTextIcon:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1806
    .end local v1           #currentVideoMode:I
    .end local v5           #videoResolutionTextIcons:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #videoResolutionValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    const/4 v0, 0x0

    .line 1807
    const-string v7, "MotoOnScreenControllerOpenGL"

    const-string v8, "updateResImg() - bad state, how did we get here?"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public updateStatusIcons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1746
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "updateStatusIcons() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showLocationTags(ZZ)V

    .line 1749
    invoke-virtual {p0, v2}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showResolutionTextIcon(Z)V

    .line 1751
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "updateStatusIcons() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    :cond_1
    return-void
.end method

.method public updateSwitchCameraUI(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 3815
    const v1, 0x7f0d000b

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/Camera/View/CaptureCluster;

    .line 3817
    .local v0, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v0, :cond_0

    .line 3818
    invoke-virtual {v0, p1}, Lcom/motorola/Camera/View/CaptureCluster;->setCameraMode(Z)V

    .line 3819
    :cond_0
    return-void
.end method

.method public updateTagsSet()V
    .locals 2

    .prologue
    .line 1757
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v1, "updateTagsSet() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :cond_0
    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 13
    .parameter "image"
    .parameter "orientation"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 336
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoCameraKPI"

    const-string v2, "control updatethumb enter"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    const/4 v9, 0x0

    .line 339
    .local v9, finalBitmap:Landroid/graphics/Bitmap;
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 340
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v2, "updateThumbnail() - Enter"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_1
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mStillImageCaptureInProgress:Z

    .line 345
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v12

    .line 346
    .local v12, width:I
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v10

    .line 348
    .local v10, height:I
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 349
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateThumbnail - mThumbnailImageView measured width x height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_2
    if-eqz v12, :cond_3

    if-eqz v10, :cond_3

    if-nez p1, :cond_b

    .line 356
    :cond_3
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_4

    .line 357
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v2, "updateThumbnail() - either thumbnail is null or widthxheight of our VIEW isn\'t valid"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_4
    const/4 v9, 0x0

    .line 396
    :goto_0
    if-nez v9, :cond_15

    .line 397
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 401
    :goto_1
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_5

    .line 402
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mThumbnailImageView.getBottom():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getBottom()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_16

    .line 409
    iget v11, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mZoomBarUpperPadding:I

    .line 416
    .local v11, upperPadding:I
    :goto_2
    const/4 v8, 0x0

    .line 417
    .local v8, display:Landroid/view/Display;
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_6

    .line 418
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upperPadding:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 422
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 426
    :cond_7
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_8

    .line 427
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ndroid.view.Display.getRotation():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_8
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 433
    iput-boolean v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mVideoCaptureStopping:Z

    .line 436
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v0

    if-nez v0, :cond_9

    .line 438
    invoke-virtual {p0, v6}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->showToolBar(Z)V

    .line 439
    const v0, 0x7f0d000b

    invoke-virtual {p0, v0}, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/motorola/Camera/View/CaptureCluster;

    .line 440
    .local v7, captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    if-eqz v7, :cond_9

    .line 441
    invoke-virtual {v7, v1}, Lcom/motorola/Camera/View/CaptureCluster;->setCleanView(Z)V

    .line 444
    .end local v7           #captureCluster:Lcom/motorola/Camera/View/CaptureCluster;
    :cond_9
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_a

    const-string v0, "MotoCameraKPI"

    const-string v1, "control updatethumb enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_a
    return-void

    .line 360
    .end local v8           #display:Landroid/view/Display;
    .end local v11           #upperPadding:I
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 362
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 366
    :cond_c
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_d

    .line 367
    const-string v0, "MotoOnScreenControllerOpenGL"

    const-string v2, "updateThumbnail() - everything is valid, set mini thumbnail"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_d
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_e

    .line 370
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateThumbnail() - everything is valid, scale is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v12

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v10

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_e
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_f

    .line 373
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateThumbnail() - everything is valid, w and h is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_f
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_10

    const-string v0, "MotoCameraKPI"

    const-string v2, "control updatethumb got wxh"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_10
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 379
    .local v5, rotationMatrix:Landroid/graphics/Matrix;
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_11

    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateThumbnail() - orientation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_11
    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 382
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_12

    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateThumbnail() Scale W & H"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v12, -0xe

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v10, -0xe

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_12
    add-int/lit8 v0, v12, -0xe

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    add-int/lit8 v2, v10, -0xe

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 387
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 388
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_13

    .line 389
    const-string v0, "MotoOnScreenControllerOpenGL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE_THUMBNAIL() - everything is valid, scaled w and h is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_13
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_14

    const-string v0, "MotoCameraKPI"

    const-string v2, "control updatethumb bitmap rotated"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 399
    .end local v5           #rotationMatrix:Landroid/graphics/Matrix;
    :cond_15
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_1

    .line 413
    :cond_16
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mThumbnailImageView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBottom()I

    move-result v11

    .restart local v11       #upperPadding:I
    goto/16 :goto_2
.end method

.method public updateZoom(I)V
    .locals 2
    .parameter "zoomNum"

    .prologue
    .line 2194
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 2195
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastProgress:I

    .line 2196
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastProgress:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/widget/ZoomControlBar;->setZoomIndex(I)V

    .line 2203
    :cond_0
    :goto_0
    return-void

    .line 2197
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v0

    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastProgress:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2199
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getZoomNum()I

    move-result v0

    iput v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastProgress:I

    .line 2200
    iget-object v0, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mICSZoomBar:Lcom/motorola/Camera/widget/ZoomControlBar;

    iget v1, p0, Lcom/motorola/Camera/View/Control/OnScreenControllerOpengl;->mLastProgress:I

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/widget/ZoomControlBar;->setZoomIndex(I)V

    goto :goto_0
.end method
