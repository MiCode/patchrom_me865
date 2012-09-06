.class Lcom/motorola/Camera/ProgressSettingView$2;
.super Ljava/lang/Object;
.source "ProgressSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 300
    iput-object p1, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 303
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mExposureLeftIcon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 305
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->TAG:Ljava/lang/String;

    const-string v1, "Left clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mExposureSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/widget/SliderBarWidget;->setSliderPosition(I)V

    .line 307
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v0, v3, v3, v5}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyProgressSettingChanged(IIZ)V

    .line 308
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, v1, Lcom/motorola/Camera/ProgressSettingView;->mExposureBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/RotateLayout;->getLeft()I

    move-result v1

    #setter for: Lcom/motorola/Camera/ProgressSettingView;->mExposureLeftMargin:I
    invoke-static {v0, v1}, Lcom/motorola/Camera/ProgressSettingView;->access$002(Lcom/motorola/Camera/ProgressSettingView;I)I

    .line 309
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    invoke-virtual {v0}, Lcom/motorola/Camera/ProgressSettingView;->realignValue()V

    .line 342
    :cond_1
    :goto_0
    return-void

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mExposureRightIcon:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    .line 313
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->TAG:Ljava/lang/String;

    const-string v1, "Right clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mExposureSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, v1, Lcom/motorola/Camera/ProgressSettingView;->mExposureSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/widget/SliderBarWidget;->setSliderPosition(I)V

    .line 315
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, v1, Lcom/motorola/Camera/ProgressSettingView;->mExposureSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v1

    invoke-interface {v0, v5, v1, v5}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyProgressSettingChanged(IIZ)V

    .line 316
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, v1, Lcom/motorola/Camera/ProgressSettingView;->mExposureBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/RotateLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v2, v2, Lcom/motorola/Camera/ProgressSettingView;->mExposureSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v2}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v2, v2, Lcom/motorola/Camera/ProgressSettingView;->mExposureBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v2}, Lcom/motorola/Camera/widget/RotateLayout;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/motorola/Camera/ProgressSettingView;->mExposureLeftMargin:I
    invoke-static {v0, v1}, Lcom/motorola/Camera/ProgressSettingView;->access$002(Lcom/motorola/Camera/ProgressSettingView;I)I

    .line 317
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    invoke-virtual {v0}, Lcom/motorola/Camera/ProgressSettingView;->realignValue()V

    goto :goto_0

    .line 319
    :cond_4
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mISOTextContainer:Landroid/widget/RelativeLayout;

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mISOButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 321
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    #getter for: Lcom/motorola/Camera/ProgressSettingView;->mISORotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/ProgressSettingView;->access$300(Lcom/motorola/Camera/ProgressSettingView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    if-nez v0, :cond_6

    .line 323
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    new-instance v1, Lcom/motorola/Camera/RotateDialogController;

    iget-object v3, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    #getter for: Lcom/motorola/Camera/ProgressSettingView;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/motorola/Camera/ProgressSettingView;->access$400(Lcom/motorola/Camera/ProgressSettingView;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f030026

    invoke-direct {v1, v3, v4}, Lcom/motorola/Camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    #setter for: Lcom/motorola/Camera/ProgressSettingView;->mISORotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0, v1}, Lcom/motorola/Camera/ProgressSettingView;->access$302(Lcom/motorola/Camera/ProgressSettingView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;

    .line 325
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    #getter for: Lcom/motorola/Camera/ProgressSettingView;->mISORotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/ProgressSettingView;->access$300(Lcom/motorola/Camera/ProgressSettingView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 326
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    #getter for: Lcom/motorola/Camera/ProgressSettingView;->mCurrentOrientation:I
    invoke-static {v0}, Lcom/motorola/Camera/ProgressSettingView;->access$500(Lcom/motorola/Camera/ProgressSettingView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    .line 328
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    #getter for: Lcom/motorola/Camera/ProgressSettingView;->mISORotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/ProgressSettingView;->access$300(Lcom/motorola/Camera/ProgressSettingView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    const/16 v1, 0x10e

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 331
    :cond_7
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    #getter for: Lcom/motorola/Camera/ProgressSettingView;->mISORotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/ProgressSettingView;->access$300(Lcom/motorola/Camera/ProgressSettingView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, v1, Lcom/motorola/Camera/ProgressSettingView;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0176

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v3, v3, Lcom/motorola/Camera/ProgressSettingView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0038

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v6, v3, Lcom/motorola/Camera/ProgressSettingView;->mISOCancelListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v7, v3, Lcom/motorola/Camera/ProgressSettingView;->mISOListAdapter:Landroid/widget/BaseAdapter;

    iget-object v3, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v8, v3, Lcom/motorola/Camera/ProgressSettingView;->mISOListAdapter:Landroid/widget/BaseAdapter;

    check-cast v8, Landroid/widget/AdapterView$OnItemClickListener;

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v8}, Lcom/motorola/Camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 340
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$2;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v0}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingSecondaryOpened()V

    goto/16 :goto_0
.end method
