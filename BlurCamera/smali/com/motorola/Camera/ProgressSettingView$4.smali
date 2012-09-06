.class Lcom/motorola/Camera/ProgressSettingView$4;
.super Ljava/lang/Object;
.source "ProgressSettingView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/ProgressSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/ProgressSettingView;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/ProgressSettingView;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/motorola/Camera/ProgressSettingView$4;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "v"
    .parameter "event"

    .prologue
    const-wide/16 v11, 0xc8

    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 378
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 379
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 380
    .local v1, vId:I
    const-wide/16 v4, 0x0

    .line 381
    .local v4, xPrevious:J
    const-wide/16 v2, 0x0

    .line 383
    .local v2, xCurrent:J
    if-nez v0, :cond_1

    .line 385
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 418
    :cond_0
    :goto_0
    return v9

    .line 388
    :cond_1
    if-eq v0, v10, :cond_2

    if-ne v0, v9, :cond_0

    .line 390
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 392
    if-ne v0, v9, :cond_3

    sub-long v6, v2, v4

    cmp-long v6, v6, v11

    if-lez v6, :cond_4

    :cond_3
    if-ne v0, v10, :cond_0

    sub-long v6, v2, v4

    cmp-long v6, v6, v11

    if-ltz v6, :cond_0

    .line 395
    :cond_4
    move-wide v4, v2

    .line 396
    const v6, 0x7f0d005c

    if-ne v1, v6, :cond_6

    .line 398
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/motorola/Camera/ProgressSettingView$4;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v6, v6, Lcom/motorola/Camera/ProgressSettingView;->TAG:Ljava/lang/String;

    const-string v7, "Left continous clicked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_5
    iget-object v6, p0, Lcom/motorola/Camera/ProgressSettingView$4;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v6, v6, Lcom/motorola/Camera/ProgressSettingView;->mExposureSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v6, v8}, Lcom/motorola/Camera/widget/SliderBarWidget;->setSliderPosition(I)V

    .line 400
    iget-object v6, p0, Lcom/motorola/Camera/ProgressSettingView$4;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v6, v6, Lcom/motorola/Camera/ProgressSettingView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v6, v8, v8, v9}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyProgressSettingChanged(IIZ)V

    .line 401
    iget-object v6, p0, Lcom/motorola/Camera/ProgressSettingView$4;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v7, p0, Lcom/motorola/Camera/ProgressSettingView$4;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v7, v7, Lcom/motorola/Camera/ProgressSettingView;->mExposureBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v7}, Lcom/motorola/Camera/widget/RotateLayout;->getLeft()I

    move-result v7

    #setter for: Lcom/motorola/Camera/ProgressSettingView;->mExposureLeftMargin:I
    invoke-static {v6, v7}, Lcom/motorola/Camera/ProgressSettingView;->access$002(Lcom/motorola/Camera/ProgressSettingView;I)I

    .line 402
    iget-object v6, p0, Lcom/motorola/Camera/ProgressSettingView$4;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    invoke-virtual {v6}, Lcom/motorola/Camera/ProgressSettingView;->realignValue()V

    goto :goto_0

    .line 404
    :cond_6
    const v6, 0x7f0d005d

    if-ne v1, v6, :cond_8

    .line 406
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/motorola/Camera/ProgressSettingView$4;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v6, v6, Lcom/motorola/Camera/ProgressSettingView;->TAG:Ljava/lang/String;

    const-string v7, "Right continous clicked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_7
    iget-object v6, p0, Lcom/motorola/Camera/ProgressSettingView$4;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v6, v6, Lcom/motorola/Camera/ProgressSettingView;->mExposureSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    iget-object v7, p0, Lcom/motorola/Camera/ProgressSettingView$4;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v7, v7, Lcom/motorola/Camera/ProgressSettingView;->mExposureSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v7}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/motorola/Camera/widget/SliderBarWidget;->setSliderPosition(I)V

    .line 408
    iget-object v6, p0, Lcom/motorola/Camera/ProgressSettingView$4;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v6, v6, Lcom/motorola/Camera/ProgressSettingView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    iget-object v7, p0, Lcom/motorola/Camera/ProgressSettingView$4;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v7, v7, Lcom/motorola/Camera/ProgressSettingView;->mExposureSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v7}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v7

    invoke-interface {v6, v8, v7, v9}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyProgressSettingChanged(IIZ)V

    .line 409
    iget-object v6, p0, Lcom/motorola/Camera/ProgressSettingView$4;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v7, p0, Lcom/motorola/Camera/ProgressSettingView$4;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v7, v7, Lcom/motorola/Camera/ProgressSettingView;->mExposureBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v7}, Lcom/motorola/Camera/widget/RotateLayout;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x64

    iget-object v8, p0, Lcom/motorola/Camera/ProgressSettingView$4;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v8, v8, Lcom/motorola/Camera/ProgressSettingView;->mExposureSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v8}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v8

    mul-int/2addr v7, v8

    iget-object v8, p0, Lcom/motorola/Camera/ProgressSettingView$4;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v8, v8, Lcom/motorola/Camera/ProgressSettingView;->mExposureBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v8}, Lcom/motorola/Camera/widget/RotateLayout;->getLeft()I

    move-result v8

    add-int/2addr v7, v8

    #setter for: Lcom/motorola/Camera/ProgressSettingView;->mExposureLeftMargin:I
    invoke-static {v6, v7}, Lcom/motorola/Camera/ProgressSettingView;->access$002(Lcom/motorola/Camera/ProgressSettingView;I)I

    .line 410
    iget-object v6, p0, Lcom/motorola/Camera/ProgressSettingView$4;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    invoke-virtual {v6}, Lcom/motorola/Camera/ProgressSettingView;->realignValue()V

    goto/16 :goto_0

    .line 412
    :cond_8
    const v6, 0x7f0d0070

    if-ne v1, v6, :cond_0

    .line 414
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/motorola/Camera/ProgressSettingView$4;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v6, v6, Lcom/motorola/Camera/ProgressSettingView;->TAG:Ljava/lang/String;

    const-string v7, "isobutton clicked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
