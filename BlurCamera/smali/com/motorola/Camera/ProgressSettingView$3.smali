.class Lcom/motorola/Camera/ProgressSettingView$3;
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
    .line 345
    iput-object p1, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 350
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mExposureSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, v1, Lcom/motorola/Camera/ProgressSettingView;->mExposureSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/widget/SliderBarWidget;->setSliderPosition(I)V

    .line 351
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, v1, Lcom/motorola/Camera/ProgressSettingView;->mExposureSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v4, v1, v3}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyProgressSettingChanged(IIZ)V

    .line 352
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, v1, Lcom/motorola/Camera/ProgressSettingView;->mExposureBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/RotateLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v2, v2, Lcom/motorola/Camera/ProgressSettingView;->mExposureSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v2}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v2, v2, Lcom/motorola/Camera/ProgressSettingView;->mExposureBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v2}, Lcom/motorola/Camera/widget/RotateLayout;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/motorola/Camera/ProgressSettingView;->mExposureLeftMargin:I
    invoke-static {v0, v1}, Lcom/motorola/Camera/ProgressSettingView;->access$002(Lcom/motorola/Camera/ProgressSettingView;I)I

    .line 355
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mContrastSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, v1, Lcom/motorola/Camera/ProgressSettingView;->mContrastSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/widget/SliderBarWidget;->setSliderPosition(I)V

    .line 356
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, v1, Lcom/motorola/Camera/ProgressSettingView;->mContrastSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v3, v1, v3}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyProgressSettingChanged(IIZ)V

    .line 357
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, v1, Lcom/motorola/Camera/ProgressSettingView;->mContrastBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/RotateLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v2, v2, Lcom/motorola/Camera/ProgressSettingView;->mContrastSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v2}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v2, v2, Lcom/motorola/Camera/ProgressSettingView;->mContrastBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v2}, Lcom/motorola/Camera/widget/RotateLayout;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/motorola/Camera/ProgressSettingView;->mContrastLeftMargin:I
    invoke-static {v0, v1}, Lcom/motorola/Camera/ProgressSettingView;->access$102(Lcom/motorola/Camera/ProgressSettingView;I)I

    .line 360
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mSaturationSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, v1, Lcom/motorola/Camera/ProgressSettingView;->mSaturationSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/widget/SliderBarWidget;->setSliderPosition(I)V

    .line 361
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v2, v2, Lcom/motorola/Camera/ProgressSettingView;->mContrastSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v2}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyProgressSettingChanged(IIZ)V

    .line 362
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, v1, Lcom/motorola/Camera/ProgressSettingView;->mSaturationBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/RotateLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v2, v2, Lcom/motorola/Camera/ProgressSettingView;->mSaturationSlideBar:Lcom/motorola/Camera/widget/SliderBarWidget;

    invoke-virtual {v2}, Lcom/motorola/Camera/widget/SliderBarWidget;->getSliderBarMax()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v2, v2, Lcom/motorola/Camera/ProgressSettingView;->mSaturationBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v2}, Lcom/motorola/Camera/widget/RotateLayout;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/motorola/Camera/ProgressSettingView;->mSaturationLeftMargin:I
    invoke-static {v0, v1}, Lcom/motorola/Camera/ProgressSettingView;->access$202(Lcom/motorola/Camera/ProgressSettingView;I)I

    .line 364
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    invoke-virtual {v0}, Lcom/motorola/Camera/ProgressSettingView;->realignValue()V

    .line 367
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iput v4, v0, Lcom/motorola/Camera/ProgressSettingView;->mISOItemSelected:I

    .line 368
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, v1, Lcom/motorola/Camera/ProgressSettingView;->mISOValueArray:[Ljava/lang/String;

    aget-object v1, v1, v4

    #setter for: Lcom/motorola/Camera/ProgressSettingView;->mCurrentISO:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/Camera/ProgressSettingView;->access$602(Lcom/motorola/Camera/ProgressSettingView;Ljava/lang/String;)Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    const/4 v1, 0x3

    invoke-interface {v0, v1, v4, v3}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyProgressSettingChanged(IIZ)V

    .line 370
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mISOTextValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$3;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, v1, Lcom/motorola/Camera/ProgressSettingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0177

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    return-void
.end method
