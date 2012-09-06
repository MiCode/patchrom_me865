.class public Lcom/motorola/Camera/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/Camera/FocusManager$1;,
        Lcom/motorola/Camera/FocusManager$MainHandler;,
        Lcom/motorola/Camera/FocusManager$FocusListener;
    }
.end annotation


# static fields
.field private static final RESET_TOUCH_FOCUS:I = 0x0

.field private static final RESET_TOUCH_FOCUS_DELAY:I = 0xfa0

.field private static final STATE_FAIL:I = 0x4

.field private static final STATE_FOCUSING:I = 0x1

.field private static final STATE_FOCUSING_SNAP_ON_FINISH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SUCCESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FocusManager"


# instance fields
.field private mDefaultFocusMode:Ljava/lang/String;

.field private mFocusArea:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusMode:Ljava/lang/String;

.field private mFocusModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusTone:Landroid/media/MediaPlayer;

.field private mFocusView:Lcom/motorola/Camera/View/FocusView;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mListener:Lcom/motorola/Camera/FocusManager$FocusListener;

.field private mLowLight:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreviewFrame:Landroid/view/View;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mInitialized:Z

    .line 46
    iput v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    .line 64
    iput-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusAreaSupported:Z

    .line 69
    iput-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mLowLight:Z

    .line 100
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    .line 101
    new-instance v0, Lcom/motorola/Camera/FocusManager$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/Camera/FocusManager$MainHandler;-><init>(Lcom/motorola/Camera/FocusManager;Lcom/motorola/Camera/FocusManager$1;)V

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/Camera/FocusManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/motorola/Camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/Camera/FocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/motorola/Camera/FocusManager;->cancelAutoFocus()V

    return-void
.end method

.method private autoFocus(Z)V
    .locals 2
    .parameter "snapOnFinish"

    .prologue
    const/4 v1, 0x0

    .line 420
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mListener:Lcom/motorola/Camera/FocusManager$FocusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mListener:Lcom/motorola/Camera/FocusManager$FocusListener;

    invoke-interface {v0}, Lcom/motorola/Camera/FocusManager$FocusListener;->autoFocus()Z

    .line 421
    :cond_0
    if-eqz p1, :cond_2

    .line 422
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    .line 426
    :goto_0
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/Camera/View/FocusView;->updateFocusArea(ZZZ)Z

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 428
    return-void

    .line 424
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    goto :goto_0
.end method

.method private calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "areaMultiple"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "rect"

    .prologue
    .line 440
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 441
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 442
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/motorola/Camera/CameraGlobalTools;->clamp(III)I

    move-result v3

    .line 443
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/motorola/Camera/CameraGlobalTools;->clamp(III)I

    move-result v5

    .line 445
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 446
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/motorola/Camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 447
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/motorola/Camera/CameraGlobalTools;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 448
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 411
    invoke-virtual {p0}, Lcom/motorola/Camera/FocusManager;->resetTouchFocus()V

    .line 412
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mListener:Lcom/motorola/Camera/FocusManager$FocusListener;

    invoke-interface {v0}, Lcom/motorola/Camera/FocusManager$FocusListener;->cancelAutoFocus()Z

    .line 413
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mListener:Lcom/motorola/Camera/FocusManager$FocusListener;

    invoke-interface {v0}, Lcom/motorola/Camera/FocusManager$FocusListener;->setFocusParameters()V

    .line 414
    iput v1, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    .line 415
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    return-void
.end method

.method private capture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 431
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mListener:Lcom/motorola/Camera/FocusManager$FocusListener;

    invoke-interface {v0}, Lcom/motorola/Camera/FocusManager$FocusListener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iput v2, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    .line 433
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 436
    :cond_0
    return-void
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
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
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 493
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needAutoFocusCall()Z
    .locals 2

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/motorola/Camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, focusMode:Ljava/lang/String;
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static prepareMatrix(Landroid/graphics/Matrix;ZIII)V
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

    .line 453
    if-eqz p1, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 455
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 458
    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 459
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 460
    return-void

    :cond_0
    move v0, v1

    .line 453
    goto :goto_0
.end method

.method private setDefaultFocusMode()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusModes:Ljava/util/List;

    .line 499
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusModes:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusModes:Ljava/util/List;

    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    const-string v0, "continuous-picture"

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusModes:Ljava/util/List;

    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    const-string v0, "auto"

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusModes:Ljava/util/List;

    const-string v1, "fixed"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    const-string v0, "fixed"

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 396
    iput-object v1, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mInitialized:Z

    .line 398
    invoke-virtual {p0}, Lcom/motorola/Camera/FocusManager;->removeMessages()V

    .line 400
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 402
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 403
    iput-object v1, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    .line 405
    :cond_0
    return-void
.end method

.method public doSnap()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 275
    iget-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-direct {p0}, Lcom/motorola/Camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 281
    :cond_2
    invoke-direct {p0}, Lcom/motorola/Camera/FocusManager;->capture()V

    goto :goto_0

    .line 282
    :cond_3
    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    if-ne v0, v2, :cond_4

    .line 286
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    goto :goto_0

    .line 287
    :cond_4
    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 295
    invoke-direct {p0, v2}, Lcom/motorola/Camera/FocusManager;->autoFocus(Z)V

    goto :goto_0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 489
    :goto_0
    return-object v0

    .line 472
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 474
    const-string v0, "auto"

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 479
    :goto_1
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/Camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 482
    const-string v0, "auto"

    iget-object v1, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/Camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 484
    const-string v0, "auto"

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 489
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 486
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_2
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mMeteringArea:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initialize(Lcom/motorola/Camera/FocusManager$FocusListener;Lcom/motorola/Camera/View/FocusView;Landroid/view/View;ZI)V
    .locals 4
    .parameter "listener"
    .parameter "focusView"
    .parameter "previewFrame"
    .parameter "mirror"
    .parameter "orientation"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/motorola/Camera/FocusManager;->mListener:Lcom/motorola/Camera/FocusManager$FocusListener;

    .line 134
    iput-object p2, p0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    .line 135
    iput-object p3, p0, Lcom/motorola/Camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    .line 137
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 139
    .local v0, matrix:Landroid/graphics/Matrix;
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preview width and height"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focus view width and height"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/FocusView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v3}, Lcom/motorola/Camera/View/FocusView;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, p4, p5, v1, v2}, Lcom/motorola/Camera/FocusManager;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 145
    iget-object v1, p0, Lcom/motorola/Camera/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 147
    return-void
.end method

.method public initializeFocusTone(Landroid/content/res/AssetFileDescriptor;)V
    .locals 7
    .parameter "fd"

    .prologue
    .line 517
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusManager"

    const-string v1, "initializeFocusTone() - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 522
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    .line 523
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 525
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 526
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "FocusManager"

    const-string v1, "initializeFocusTone() - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_2
    return-void

    .line 530
    :catch_0
    move-exception v6

    .line 532
    .local v6, ex:Ljava/io/IOException;
    const-string v0, "FocusManager"

    const-string v1, "initializeFocusTone() - failed to load audio for focus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public initializeParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    const/4 v1, 0x1

    .line 155
    iput-object p1, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 157
    invoke-direct {p0}, Lcom/motorola/Camera/FocusManager;->setDefaultFocusMode()V

    .line 159
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "auto"

    iget-object v2, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/Camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusAreaSupported:Z

    .line 163
    iput-boolean v1, p0, Lcom/motorola/Camera/FocusManager;->mInitialized:Z

    .line 166
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoFocus(Z)V
    .locals 5
    .parameter "focusState"

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 313
    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 314
    if-eqz p1, :cond_1

    .line 315
    iput v2, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    .line 319
    :goto_0
    invoke-direct {p0}, Lcom/motorola/Camera/FocusManager;->capture()V

    .line 346
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, p1, v3, p1}, Lcom/motorola/Camera/View/FocusView;->updateFocusArea(ZZZ)Z

    .line 347
    return-void

    .line 317
    :cond_1
    iput v4, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    goto :goto_0

    .line 320
    :cond_2
    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 324
    if-eqz p1, :cond_5

    .line 325
    iput v2, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    .line 329
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance()Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterToneOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 330
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 333
    :cond_3
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance()Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getShutterToneOn()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusTone:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 339
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 335
    :cond_5
    iput v4, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    goto :goto_2

    .line 342
    :cond_6
    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public onLowLight(Z)V
    .locals 0
    .parameter "lowlight"

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/motorola/Camera/FocusManager;->mLowLight:Z

    .line 354
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    .line 357
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    .line 361
    invoke-virtual {p0}, Lcom/motorola/Camera/FocusManager;->resetTouchFocus()V

    .line 362
    return-void
.end method

.method public onShutter()V
    .locals 4

    .prologue
    .line 304
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 305
    return-void
.end method

.method public onShutterDown()V
    .locals 2

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-direct {p0}, Lcom/motorola/Camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/Camera/FocusManager;->autoFocus(Z)V

    goto :goto_0
.end method

.method public onShutterUp()V
    .locals 2

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-direct {p0}, Lcom/motorola/Camera/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 266
    :cond_2
    invoke-direct {p0}, Lcom/motorola/Camera/FocusManager;->cancelAutoFocus()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 18
    .parameter "e"

    .prologue
    .line 181
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 244
    :goto_0
    return v1

    .line 183
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/FocusManager;->needAutoFocusCall()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 186
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/Camera/FocusManager;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 188
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/motorola/Camera/FocusManager;->cancelAutoFocus()V

    .line 192
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 193
    .local v16, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 194
    .local v17, y:I
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance()Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFocusViewWidth()F

    move-result v13

    .line 195
    .local v13, focusWidth:F
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance()Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getFocusViewHeight()F

    move-result v10

    .line 197
    .local v10, focusHeight:F
    const/4 v11, 0x0

    .line 198
    .local v11, focusRegion:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v1}, Lcom/motorola/Camera/View/FocusView;->getFocusRegion()Landroid/graphics/RectF;

    move-result-object v11

    .line 200
    :cond_4
    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance()Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    invoke-static {}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getInstance()Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentScene()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 201
    :cond_5
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_6

    const-string v1, "FocusManager"

    const-string v2, "Don\'t show focus bocket when scene mode is LANDSCAPE or Sport"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    .line 205
    :cond_7
    move/from16 v0, v16

    int-to-float v1, v0

    move/from16 v0, v17

    int-to-float v2, v0

    invoke-virtual {v11, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_8

    .line 206
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 210
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 211
    .local v7, previewWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 212
    .local v8, previewHeight:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    if-nez v1, :cond_9

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    new-instance v2, Landroid/hardware/Camera$Area;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/FocusManager;->mMeteringArea:Ljava/util/ArrayList;

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mMeteringArea:Ljava/util/ArrayList;

    new-instance v2, Landroid/hardware/Camera$Area;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v5, v16, v1

    .line 219
    .local v5, newx:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v6, v17, v1

    .line 224
    .local v6, newy:I
    float-to-int v2, v13

    float-to-int v3, v10

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v9, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/motorola/Camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 225
    float-to-int v2, v13

    float-to-int v3, v10

    const/high16 v4, 0x3fc0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mMeteringArea:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v9, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/motorola/Camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 227
    float-to-int v1, v13

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v16, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v3, v7

    float-to-int v4, v13

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/motorola/Camera/CameraGlobalTools;->clamp(III)I

    move-result v1

    int-to-float v14, v1

    .line 228
    .local v14, left:F
    float-to-int v1, v10

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v17, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/FocusManager;->mPreviewFrame:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v8

    float-to-int v4, v10

    sub-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/motorola/Camera/CameraGlobalTools;->clamp(III)I

    move-result v1

    int-to-float v15, v1

    .line 229
    .local v15, top:F
    new-instance v12, Landroid/graphics/RectF;

    add-float v1, v14, v13

    add-float v2, v15, v10

    invoke-direct {v12, v14, v15, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 231
    .local v12, focusViewarea:Landroid/graphics/RectF;
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_a

    const-string v2, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HAL"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v1, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v1, v12}, Lcom/motorola/Camera/View/FocusView;->setFocusArea(Landroid/graphics/RectF;)V

    .line 233
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_b

    const-string v1, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v12, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v12, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v12, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/Camera/View/FocusView;->updateFocusArea(ZZZ)Z

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 239
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/motorola/Camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/FocusManager;->mListener:Lcom/motorola/Camera/FocusManager$FocusListener;

    invoke-interface {v1}, Lcom/motorola/Camera/FocusManager$FocusListener;->setFocusParameters()V

    .line 241
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/motorola/Camera/FocusManager;->autoFocus(Z)V

    .line 244
    :cond_c
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 511
    iput-object p1, p0, Lcom/motorola/Camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 512
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 393
    return-void
.end method

.method public resetTouchFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 378
    iget-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 380
    :cond_0
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "FocusManager"

    const-string v1, "resetTouchFocus enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0}, Lcom/motorola/Camera/View/FocusView;->resetFocusArea()V

    .line 382
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    invoke-virtual {v0, v2, v2, v2}, Lcom/motorola/Camera/View/FocusView;->updateFocusArea(ZZZ)Z

    .line 383
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusView:Lcom/motorola/Camera/View/FocusView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/View/FocusView;->setVisibility(I)V

    .line 384
    iput-object v3, p0, Lcom/motorola/Camera/FocusManager;->mFocusArea:Ljava/util/ArrayList;

    .line 385
    iput-object v3, p0, Lcom/motorola/Camera/FocusManager;->mMeteringArea:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public setFocusParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 170
    iget-object v0, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "auto"

    iget-object v1, p0, Lcom/motorola/Camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/Camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/Camera/FocusManager;->mFocusAreaSupported:Z

    .line 174
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowCafStatus()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 107
    .local v0, model:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v3, "MT917"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "XT928"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    :cond_0
    const-string v2, "FocusManager"

    const-string v3, "dinara model, should not show caf status"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_1
    :goto_0
    return v1

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/Camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "auto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    iget-boolean v3, p0, Lcom/motorola/Camera/FocusManager;->mLowLight:Z

    if-eqz v3, :cond_1

    move v1, v2

    .line 113
    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/Camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "continuous-picture"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 117
    goto :goto_0
.end method
