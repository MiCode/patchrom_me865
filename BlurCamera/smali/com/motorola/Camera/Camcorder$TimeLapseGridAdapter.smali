.class Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "Camcorder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeLapseGridAdapter"
.end annotation


# instance fields
.field private mIconIds:[I

.field private mIconText:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTimeLapseValues:[I

.field final synthetic this$0:Lcom/motorola/Camera/Camcorder;


# direct methods
.method public constructor <init>(Lcom/motorola/Camera/Camcorder;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    .line 5218
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 5219
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5220
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->mIconText:[Ljava/lang/String;

    .line 5221
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->mTimeLapseValues:[I

    .line 5222
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->mIconIds:[I

    .line 5224
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5225
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->mIconIds:[I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v2, v1

    .line 5224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5227
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5228
    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 5230
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 5253
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->mIconIds:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 5249
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 5245
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 5233
    if-nez p2, :cond_0

    .line 5234
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030010

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 5237
    :cond_0
    const v2, 0x7f0d0008

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 5238
    .local v0, imgView:Landroid/widget/ImageView;
    const v2, 0x7f0d0009

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5239
    .local v1, textView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->mIconText:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5240
    iget-object v2, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->mIconIds:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5241
    return-object p2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/16 v3, 0xd

    const/4 v0, 0x0

    .line 5257
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$4100(Lcom/motorola/Camera/Camcorder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5260
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainer:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$4100(Lcom/motorola/Camera/Camcorder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5261
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    #setter for: Lcom/motorola/Camera/Camcorder;->mElapsedTimerContainerShowing:Z
    invoke-static {v1, v0}, Lcom/motorola/Camera/Camcorder;->access$4002(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 5262
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 5265
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$5000(Lcom/motorola/Camera/Camcorder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5267
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$4700(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5269
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$4700(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 5270
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 5271
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    #setter for: Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z
    invoke-static {v1, v0}, Lcom/motorola/Camera/Camcorder;->access$5002(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 5276
    :cond_1
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->mTimeLapseValues:[I

    aget v2, v2, p3

    #setter for: Lcom/motorola/Camera/Camcorder;->mTimeBetweenTimeLapseFrameCaptureMs:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camcorder;->access$3802(Lcom/motorola/Camera/Camcorder;I)I

    .line 5277
    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v2, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mTimeBetweenTimeLapseFrameCaptureMs:I
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$3800(Lcom/motorola/Camera/Camcorder;)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    #setter for: Lcom/motorola/Camera/Camcorder;->mCaptureTimeLapse:Z
    invoke-static {v1, v0}, Lcom/motorola/Camera/Camcorder;->access$3702(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 5278
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->onTimelapseItemSelected()V

    .line 5279
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->mTimeLapseValues:[I

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentTimeLapse(I)V

    .line 5280
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 5281
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->loadSliderData()V

    .line 5282
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 5283
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->releaseMediaRecorder()V
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$700(Lcom/motorola/Camera/Camcorder;)V

    .line 5284
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5290
    :goto_0
    return-void

    .line 5286
    :cond_3
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentMode(I)V

    .line 5287
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->updateController()V

    .line 5288
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$TimeLapseGridAdapter;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
