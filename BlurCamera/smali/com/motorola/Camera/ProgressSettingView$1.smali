.class Lcom/motorola/Camera/ProgressSettingView$1;
.super Ljava/lang/Object;
.source "ProgressSettingView.java"

# interfaces
.implements Lcom/motorola/Camera/widget/SliderBarWidget$OnSliderProgressListener;


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
    .line 265
    iput-object p1, p0, Lcom/motorola/Camera/ProgressSettingView$1;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSliderBarActivated(Z)V
    .locals 0
    .parameter "activated"

    .prologue
    .line 296
    return-void
.end method

.method public onSliderProgressChanged(Lcom/motorola/Camera/widget/SliderBarWidget;I)V
    .locals 4
    .parameter "sliderBar"
    .parameter "Progress"

    .prologue
    const/4 v3, 0x1

    .line 270
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$1;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSliderProgressChanged,sliderBar ID is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/motorola/Camera/widget/SliderBarWidget;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p1}, Lcom/motorola/Camera/widget/SliderBarWidget;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 291
    :goto_0
    return-void

    .line 274
    :sswitch_0
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$1;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2, v3}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyProgressSettingChanged(IIZ)V

    .line 275
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$1;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$1;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, v1, Lcom/motorola/Camera/ProgressSettingView;->mExposureBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/RotateLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    mul-int/2addr v1, p2

    iget-object v2, p0, Lcom/motorola/Camera/ProgressSettingView$1;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v2, v2, Lcom/motorola/Camera/ProgressSettingView;->mContrastBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v2}, Lcom/motorola/Camera/widget/RotateLayout;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/motorola/Camera/ProgressSettingView;->mExposureLeftMargin:I
    invoke-static {v0, v1}, Lcom/motorola/Camera/ProgressSettingView;->access$002(Lcom/motorola/Camera/ProgressSettingView;I)I

    .line 276
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$1;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    invoke-virtual {v0}, Lcom/motorola/Camera/ProgressSettingView;->realignValue()V

    goto :goto_0

    .line 279
    :sswitch_1
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$1;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v0, v3, p2, v3}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyProgressSettingChanged(IIZ)V

    .line 280
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$1;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$1;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, v1, Lcom/motorola/Camera/ProgressSettingView;->mContrastBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/RotateLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    mul-int/2addr v1, p2

    iget-object v2, p0, Lcom/motorola/Camera/ProgressSettingView$1;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v2, v2, Lcom/motorola/Camera/ProgressSettingView;->mContrastBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v2}, Lcom/motorola/Camera/widget/RotateLayout;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/motorola/Camera/ProgressSettingView;->mContrastLeftMargin:I
    invoke-static {v0, v1}, Lcom/motorola/Camera/ProgressSettingView;->access$102(Lcom/motorola/Camera/ProgressSettingView;I)I

    .line 281
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$1;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    invoke-virtual {v0}, Lcom/motorola/Camera/ProgressSettingView;->realignValue()V

    goto :goto_0

    .line 284
    :sswitch_2
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$1;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p2, v3}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyProgressSettingChanged(IIZ)V

    .line 285
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$1;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$1;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, v1, Lcom/motorola/Camera/ProgressSettingView;->mSaturationBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v1}, Lcom/motorola/Camera/widget/RotateLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    mul-int/2addr v1, p2

    iget-object v2, p0, Lcom/motorola/Camera/ProgressSettingView$1;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v2, v2, Lcom/motorola/Camera/ProgressSettingView;->mSaturationBarContainer:Lcom/motorola/Camera/widget/RotateLayout;

    invoke-virtual {v2}, Lcom/motorola/Camera/widget/RotateLayout;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/motorola/Camera/ProgressSettingView;->mSaturationLeftMargin:I
    invoke-static {v0, v1}, Lcom/motorola/Camera/ProgressSettingView;->access$202(Lcom/motorola/Camera/ProgressSettingView;I)I

    .line 286
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$1;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    invoke-virtual {v0}, Lcom/motorola/Camera/ProgressSettingView;->realignValue()V

    goto :goto_0

    .line 272
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d005f -> :sswitch_0
        0x7f0d0066 -> :sswitch_1
        0x7f0d006d -> :sswitch_2
    .end sparse-switch
.end method
