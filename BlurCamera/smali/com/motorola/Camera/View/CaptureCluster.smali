.class public Lcom/motorola/Camera/View/CaptureCluster;
.super Landroid/widget/FrameLayout;
.source "CaptureCluster.java"

# interfaces
.implements Lcom/motorola/Camera/View/CamcoderSwitch$OnSwitchListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;
    }
.end annotation


# static fields
.field public static final CAMERA_MODE_PANORAMA:I = 0x2

.field public static final CAMERA_MODE_STILL:I = 0x0

.field public static final CAMERA_MODE_VIDEO:I = 0x1

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_SERVICE:I = 0x1

.field public static final TAG_KPI:Ljava/lang/String; = "MotoCameraKPI"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

.field private mCameraMode:I

.field private mCaptureClusterButtonHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCaptureClusterHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCaptureClusterShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCleanView:Z

.field private mFrontCameraSwitch:Landroid/widget/ImageButton;

.field private mIsRecording:Z

.field private mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

.field private mMode:I

.field private mMuteAudioButton:Landroid/widget/ImageButton;

.field private mMyTimer:Lcom/motorola/Camera/MyCameraTimer;

.field private mVideoSnapshotButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    .line 59
    iput v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMode:I

    .line 60
    iput v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    .line 61
    iput-boolean v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCleanView:Z

    .line 62
    iput-boolean v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mIsRecording:Z

    .line 63
    const-string v0, "CaptureCluster"

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->TAG:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMyTimer:Lcom/motorola/Camera/MyCameraTimer;

    .line 67
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    .line 68
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    .line 69
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

    .line 70
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    .line 201
    new-instance v0, Lcom/motorola/Camera/View/CaptureCluster$1;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/CaptureCluster$1;-><init>(Lcom/motorola/Camera/View/CaptureCluster;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 214
    new-instance v0, Lcom/motorola/Camera/View/CaptureCluster$2;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/CaptureCluster$2;-><init>(Lcom/motorola/Camera/View/CaptureCluster;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 233
    new-instance v0, Lcom/motorola/Camera/View/CaptureCluster$3;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/CaptureCluster$3;-><init>(Lcom/motorola/Camera/View/CaptureCluster;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterButtonHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    .line 59
    iput v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMode:I

    .line 60
    iput v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    .line 61
    iput-boolean v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCleanView:Z

    .line 62
    iput-boolean v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mIsRecording:Z

    .line 63
    const-string v0, "CaptureCluster"

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->TAG:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMyTimer:Lcom/motorola/Camera/MyCameraTimer;

    .line 67
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    .line 68
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    .line 69
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

    .line 70
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    .line 201
    new-instance v0, Lcom/motorola/Camera/View/CaptureCluster$1;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/CaptureCluster$1;-><init>(Lcom/motorola/Camera/View/CaptureCluster;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 214
    new-instance v0, Lcom/motorola/Camera/View/CaptureCluster$2;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/CaptureCluster$2;-><init>(Lcom/motorola/Camera/View/CaptureCluster;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 233
    new-instance v0, Lcom/motorola/Camera/View/CaptureCluster$3;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/CaptureCluster$3;-><init>(Lcom/motorola/Camera/View/CaptureCluster;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterButtonHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    .line 59
    iput v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMode:I

    .line 60
    iput v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    .line 61
    iput-boolean v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCleanView:Z

    .line 62
    iput-boolean v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mIsRecording:Z

    .line 63
    const-string v0, "CaptureCluster"

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->TAG:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMyTimer:Lcom/motorola/Camera/MyCameraTimer;

    .line 67
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    .line 68
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    .line 69
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

    .line 70
    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    .line 201
    new-instance v0, Lcom/motorola/Camera/View/CaptureCluster$1;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/CaptureCluster$1;-><init>(Lcom/motorola/Camera/View/CaptureCluster;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 214
    new-instance v0, Lcom/motorola/Camera/View/CaptureCluster$2;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/CaptureCluster$2;-><init>(Lcom/motorola/Camera/View/CaptureCluster;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 233
    new-instance v0, Lcom/motorola/Camera/View/CaptureCluster$3;

    invoke-direct {v0, p0}, Lcom/motorola/Camera/View/CaptureCluster$3;-><init>(Lcom/motorola/Camera/View/CaptureCluster;)V

    iput-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterButtonHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/Camera/View/CaptureCluster;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private computeCoordinates(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 432
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 434
    .local v0, location:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 436
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 438
    .local v1, viewRect:Landroid/graphics/Rect;
    aget v2, v0, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 439
    aget v2, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 440
    aget v2, v0, v4

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 441
    aget v2, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 443
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "computeCoordinates"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-object v1
.end method

.method private frontCameraSwitch()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    invoke-interface {v0}, Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;->onFrontCameraSwitch()V

    .line 333
    :cond_0
    return-void
.end method


# virtual methods
.method public enableCamcorderSwitch(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

    invoke-virtual {v0, p1}, Lcom/motorola/Camera/View/CamcoderSwitch;->setEnabled(Z)V

    .line 450
    return-void
.end method

.method public enableFrontCameraSwitch(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 454
    if-eqz p1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    const/high16 v1, 0x7600

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public enableMute(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 473
    return-void
.end method

.method public enableVideoSnapshot(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 464
    if-eqz p1, :cond_0

    .line 465
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 469
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    const/high16 v1, 0x7600

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public getCameraMode()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMode:I

    return v0
.end method

.method public isCleanView()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCleanView:Z

    return v0
.end method

.method public isVideoRecordingInProgress()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mIsRecording:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 351
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->TAG:Ljava/lang/String;

    const-string v4, "onClick()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 392
    :cond_1
    :goto_0
    return-void

    .line 355
    :pswitch_0
    iget v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    if-nez v3, :cond_4

    .line 356
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    if-eqz v2, :cond_1

    .line 358
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->TAG:Ljava/lang/String;

    const-string v3, "onClick() -- calling onStillCaptureDown"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_2
    sget-boolean v2, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v2, :cond_3

    const-string v2, "MotoCameraKPI"

    const-string v3, "captureCluster capture start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_3
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    invoke-interface {v2, v1}, Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;->onStillCaptureDown(Z)V

    goto :goto_0

    .line 363
    :cond_4
    iget v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    if-ne v2, v3, :cond_8

    .line 364
    iget-boolean v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->mIsRecording:Z

    if-eqz v3, :cond_6

    .line 365
    iget-object v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMyTimer:Lcom/motorola/Camera/MyCameraTimer;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMyTimer:Lcom/motorola/Camera/MyCameraTimer;

    invoke-virtual {v3}, Lcom/motorola/Camera/MyCameraTimer;->isTimeout()Z

    move-result v3

    if-nez v3, :cond_6

    .line 366
    :cond_5
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->TAG:Ljava/lang/String;

    const-string v2, "stopVideoRecordingAndDisplayDialog--mMyTimer.isTimeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 370
    :cond_6
    iget-boolean v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->mIsRecording:Z

    if-nez v3, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {p0, v1, v2}, Lcom/motorola/Camera/View/CaptureCluster;->videoCapture(ZZ)V

    goto :goto_0

    .line 371
    :cond_8
    const/4 v3, 0x2

    iget v4, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    if-ne v3, v4, :cond_1

    .line 372
    const v3, 0x7f0d0012

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 373
    .local v0, captureBtn:Landroid/widget/ImageButton;
    const v3, 0x7f02002d

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 375
    iput v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    .line 376
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    if-eqz v1, :cond_1

    .line 377
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    invoke-interface {v1, v2}, Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;->onStillCaptureDown(Z)V

    goto :goto_0

    .line 382
    .end local v0           #captureBtn:Landroid/widget/ImageButton;
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/Camera/View/CaptureCluster;->frontCameraSwitch()V

    goto :goto_0

    .line 385
    :pswitch_2
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    invoke-interface {v1}, Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;->onVideoSnapshot()V

    goto :goto_0

    .line 388
    :pswitch_3
    iget-object v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 389
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;->onMuteToggle(Z)V

    goto/16 :goto_0

    :cond_9
    move v1, v2

    .line 388
    goto :goto_1

    .line 353
    :pswitch_data_0
    .packed-switch 0x7f0d000f
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    const v1, 0x7f0d0012

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 86
    .local v0, captureBtn:Landroid/widget/ImageButton;
    const v1, 0x7f0d0010

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    .line 88
    const/high16 v1, 0x7f0d

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/Camera/View/CamcoderSwitch;

    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

    .line 89
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

    invoke-virtual {v1, p0}, Lcom/motorola/Camera/View/CamcoderSwitch;->setOnSwitchListener(Lcom/motorola/Camera/View/CamcoderSwitch$OnSwitchListener;)V

    .line 91
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 93
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v1, 0x7f0d0011

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    .line 97
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 99
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    .line 103
    :cond_0
    const v1, 0x7f0d000f

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    .line 104
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    .line 109
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 110
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 403
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 397
    :pswitch_0
    iget v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    invoke-interface {v0}, Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;->onStillCaptureFocus()V

    goto :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0012
        :pswitch_0
    .end packed-switch
.end method

.method public onSwitch(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 336
    const v3, 0x7f0d0012

    invoke-virtual {p0, v3}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 337
    .local v0, captureBtn:Landroid/widget/ImageButton;
    invoke-virtual {p0, v2, v1}, Lcom/motorola/Camera/View/CaptureCluster;->videoCapture(ZZ)V

    .line 338
    if-nez p1, :cond_1

    .line 339
    const v3, 0x7f02002d

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 340
    iput v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    .line 346
    :goto_0
    iget-object v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    if-eqz v3, :cond_0

    .line 347
    iget-object v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    if-nez p1, :cond_2

    :goto_1
    invoke-interface {v3, v1}, Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;->onCameraModeSwitch(Z)V

    .line 348
    :cond_0
    return-void

    .line 342
    :cond_1
    const v3, 0x7f02002f

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 343
    iput v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 347
    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "event"

    .prologue
    .line 407
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 408
    .local v1, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 410
    .local v2, y:I
    sget-boolean v3, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v3, :cond_0

    .line 411
    iget-object v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "x:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 427
    :cond_1
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 415
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/motorola/Camera/View/CaptureCluster;->computeCoordinates(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 420
    .local v0, viewRect:Landroid/graphics/Rect;
    iget v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 422
    :cond_2
    iget-object v3, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    invoke-interface {v3}, Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;->onStillCaptureUp()V

    goto :goto_0

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0012
        :pswitch_0
    .end packed-switch
.end method

.method public setCameraMode(I)V
    .locals 3
    .parameter "cameraMode"

    .prologue
    .line 246
    iget v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    if-ne v1, p1, :cond_0

    .line 266
    :goto_0
    return-void

    .line 249
    :cond_0
    iput p1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCameraMode:I

    .line 251
    const v1, 0x7f0d0012

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 252
    .local v0, captureBtn:Landroid/widget/ImageButton;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 254
    :pswitch_0
    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 255
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/CamcoderSwitch;->setState(I)V

    goto :goto_0

    .line 259
    :pswitch_1
    iget-object v1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/CamcoderSwitch;->setState(I)V

    goto :goto_0

    .line 263
    :pswitch_2
    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCameraMode(Z)V
    .locals 2
    .parameter "CameraMode"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 132
    if-eqz p1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public setCaptureClusterListener(Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    .line 282
    return-void
.end method

.method public setCaptureResourceClickable(Z)V
    .locals 2
    .parameter "setClickable"

    .prologue
    .line 324
    const v1, 0x7f0d0012

    invoke-virtual {p0, v1}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 325
    .local v0, captureBtn:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 328
    :cond_0
    return-void
.end method

.method public setCleanView(Z)V
    .locals 4
    .parameter "cleanView"

    .prologue
    .line 144
    iget-boolean v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCleanView:Z

    if-ne v2, p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iput-boolean p1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCleanView:Z

    .line 148
    invoke-virtual {p0}, Lcom/motorola/Camera/View/CaptureCluster;->clearAnimation()V

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, a:Landroid/view/animation/Animation;
    if-eqz p1, :cond_2

    .line 151
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mContext:Landroid/content/Context;

    const v3, 0x7f030016

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 152
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 153
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 159
    :goto_1
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 160
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 163
    invoke-virtual {p0}, Lcom/motorola/Camera/View/CaptureCluster;->getCameraMode()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 164
    const v2, 0x7f0d000c

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 165
    .local v1, clusterFrame:Landroid/widget/FrameLayout;
    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 155
    .end local v1           #clusterFrame:Landroid/widget/FrameLayout;
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mContext:Landroid/content/Context;

    const v3, 0x7f030015

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 156
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1
.end method

.method public setCleanView(ZZ)V
    .locals 4
    .parameter "cleanView"
    .parameter "hideCaptureButton"

    .prologue
    .line 172
    const v2, 0x7f0d0012

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 174
    .local v1, captureBtn:Landroid/widget/ImageButton;
    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    :goto_0
    return-void

    .line 182
    :cond_0
    iput-boolean p1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCleanView:Z

    .line 183
    invoke-virtual {p0}, Lcom/motorola/Camera/View/CaptureCluster;->clearAnimation()V

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, a:Landroid/view/animation/Animation;
    if-eqz p1, :cond_1

    .line 186
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mContext:Landroid/content/Context;

    const v3, 0x7f030016

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 187
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 188
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterButtonHideAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 194
    :goto_1
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 195
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 197
    invoke-virtual {p0, v0}, Lcom/motorola/Camera/View/CaptureCluster;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mContext:Landroid/content/Context;

    const v3, 0x7f030015

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 191
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCaptureClusterShowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1
.end method

.method public setMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 114
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    :cond_0
    iget v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMode:I

    if-ne v2, p1, :cond_2

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 117
    :cond_2
    invoke-virtual {p0, v4}, Lcom/motorola/Camera/View/CaptureCluster;->setCleanView(Z)V

    .line 119
    iput p1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMode:I

    .line 121
    const v2, 0x7f0d000e

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 122
    .local v1, twoButtonBckg:Landroid/widget/ImageView;
    const v2, 0x7f0d000d

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 124
    .local v0, threeButtonBckg:Landroid/widget/ImageView;
    if-nez p1, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    if-nez p1, :cond_4

    move v2, v4

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    if-nez p1, :cond_5

    :goto_3
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v2, v4

    .line 124
    goto :goto_1

    :cond_4
    move v2, v3

    .line 125
    goto :goto_2

    :cond_5
    move v4, v3

    .line 126
    goto :goto_3
.end method

.method public videoCapture(ZZ)V
    .locals 9
    .parameter "start"
    .parameter "notifyListeners"

    .prologue
    const-wide/16 v7, 0x5dc

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 285
    iget-boolean v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mIsRecording:Z

    if-ne v2, p1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    if-ne v6, p1, :cond_3

    .line 289
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMyTimer:Lcom/motorola/Camera/MyCameraTimer;

    if-nez v2, :cond_2

    .line 290
    new-instance v2, Lcom/motorola/Camera/MyCameraTimer;

    invoke-direct {v2, v7, v8}, Lcom/motorola/Camera/MyCameraTimer;-><init>(J)V

    iput-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMyTimer:Lcom/motorola/Camera/MyCameraTimer;

    .line 291
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->TAG:Ljava/lang/String;

    const-string v3, "startVideoRecording() - new Timer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_2
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMyTimer:Lcom/motorola/Camera/MyCameraTimer;

    invoke-virtual {v2, v7, v8, v4}, Lcom/motorola/Camera/MyCameraTimer;->reset(JZ)V

    .line 296
    :cond_3
    iput-boolean p1, p0, Lcom/motorola/Camera/View/CaptureCluster;->mIsRecording:Z

    .line 297
    const v2, 0x7f0d0012

    invoke-virtual {p0, v2}, Lcom/motorola/Camera/View/CaptureCluster;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 299
    .local v0, captureBtn:Landroid/widget/ImageButton;
    if-eqz p1, :cond_4

    .line 300
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 301
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 302
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

    invoke-virtual {v2, v5}, Lcom/motorola/Camera/View/CamcoderSwitch;->setVisibility(I)V

    .line 303
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 305
    const v2, 0x7f040009

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 306
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 307
    .local v1, glowing:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 308
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    if-eqz v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    invoke-interface {v2}, Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;->onVideoRecordingStarted()V

    goto :goto_0

    .line 311
    .end local v1           #glowing:Landroid/graphics/drawable/AnimationDrawable;
    :cond_4
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mVideoSnapshotButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 312
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mFrontCameraSwitch:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 313
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mCamcorderSwitch:Lcom/motorola/Camera/View/CamcoderSwitch;

    invoke-virtual {v2, v4}, Lcom/motorola/Camera/View/CamcoderSwitch;->setVisibility(I)V

    .line 314
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 315
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mMuteAudioButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 317
    const v2, 0x7f02002f

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 318
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    if-eqz v2, :cond_0

    .line 319
    iget-object v2, p0, Lcom/motorola/Camera/View/CaptureCluster;->mListener:Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;

    invoke-interface {v2}, Lcom/motorola/Camera/View/CaptureCluster$CaptureClusterListener;->onVideoRecordingStopped()V

    goto :goto_0
.end method
