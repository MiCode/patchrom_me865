.class Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProgressSettingView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/ProgressSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISOListAdapter"
.end annotation


# instance fields
.field private mIconText:[Ljava/lang/CharSequence;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/motorola/Camera/ProgressSettingView;


# direct methods
.method public constructor <init>(Lcom/motorola/Camera/ProgressSettingView;Landroid/content/Context;[Ljava/lang/CharSequence;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "entries"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 435
    iput-object p3, p0, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;->mIconText:[Ljava/lang/CharSequence;

    .line 436
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 437
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;->mIconText:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 464
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 459
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 440
    if-nez p2, :cond_0

    .line 442
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 444
    :cond_0
    const v1, 0x7f0d0025

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 445
    .local v0, textView:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;->mIconText:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget v1, v1, Lcom/motorola/Camera/ProgressSettingView;->mISOItemSelected:I

    if-ne v1, p1, :cond_1

    .line 448
    const v1, 0x7f02002a

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 454
    :goto_0
    return-object p2

    .line 452
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 474
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iput p3, v0, Lcom/motorola/Camera/ProgressSettingView;->mISOItemSelected:I

    .line 475
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, v1, Lcom/motorola/Camera/ProgressSettingView;->mISOValueArray:[Ljava/lang/String;

    aget-object v1, v1, p3

    #setter for: Lcom/motorola/Camera/ProgressSettingView;->mCurrentISO:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/Camera/ProgressSettingView;->access$602(Lcom/motorola/Camera/ProgressSettingView;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    #getter for: Lcom/motorola/Camera/ProgressSettingView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/ProgressSettingView;->access$700(Lcom/motorola/Camera/ProgressSettingView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    #getter for: Lcom/motorola/Camera/ProgressSettingView;->mCurrentISO:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/Camera/ProgressSettingView;->access$600(Lcom/motorola/Camera/ProgressSettingView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentISOValue(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-interface {v0, v1, p3, v2}, Lcom/motorola/Camera/DialogCallbackInterface;->notifyProgressSettingChanged(IIZ)V

    .line 478
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    #getter for: Lcom/motorola/Camera/ProgressSettingView;->mCurrentISO:Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/Camera/ProgressSettingView;->access$600(Lcom/motorola/Camera/ProgressSettingView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mISOTextValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v1, v1, Lcom/motorola/Camera/ProgressSettingView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0177

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    :goto_0
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    #getter for: Lcom/motorola/Camera/ProgressSettingView;->mISORotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/ProgressSettingView;->access$300(Lcom/motorola/Camera/ProgressSettingView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 485
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v0}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingSecondaryClosed()V

    .line 486
    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    iget-object v0, v0, Lcom/motorola/Camera/ProgressSettingView;->mISOTextValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/Camera/ProgressSettingView$ISOListAdapter;->this$0:Lcom/motorola/Camera/ProgressSettingView;

    #getter for: Lcom/motorola/Camera/ProgressSettingView;->mCurrentISO:Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/Camera/ProgressSettingView;->access$600(Lcom/motorola/Camera/ProgressSettingView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
