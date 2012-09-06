.class Lcom/motorola/Camera/DialogSettingsView$2;
.super Ljava/lang/Object;
.source "DialogSettingsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/DialogSettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/DialogSettingsView;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/DialogSettingsView;)V
    .locals 0
    .parameter

    .prologue
    .line 904
    iput-object p1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/16 v7, 0x10e

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 908
    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #setter for: Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v3, v2}, Lcom/motorola/Camera/DialogSettingsView;->access$302(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;

    .line 909
    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v3, v3, Lcom/motorola/Camera/DialogSettingsView;->mPicResTextContainer:Landroid/widget/LinearLayout;

    if-ne p1, v3, :cond_3

    .line 911
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPictureResRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$400(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    if-nez v1, :cond_0

    .line 913
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    new-instance v3, Lcom/motorola/Camera/RotateDialogController;

    iget-object v4, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/motorola/Camera/DialogSettingsView;->access$500(Lcom/motorola/Camera/DialogSettingsView;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f030026

    invoke-direct {v3, v4, v5}, Lcom/motorola/Camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    #setter for: Lcom/motorola/Camera/DialogSettingsView;->mPictureResRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1, v3}, Lcom/motorola/Camera/DialogSettingsView;->access$402(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;

    .line 915
    :cond_0
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPictureResRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$400(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 916
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCurrentOrientation:I
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$600(Lcom/motorola/Camera/DialogSettingsView;)I

    move-result v0

    if-eq v0, v6, :cond_1

    .line 918
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPictureResRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$400(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPictureResRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$400(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v1, v1, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v3, 0x7f0b004c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v3, v3, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0038

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v6, v3, Lcom/motorola/Camera/DialogSettingsView;->mPicResCancelListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v3, Lcom/motorola/Camera/DialogSettingsView;->mPictureResListAdapter:Landroid/widget/BaseAdapter;

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v3, Lcom/motorola/Camera/DialogSettingsView;->mPictureResListAdapter:Landroid/widget/BaseAdapter;

    check-cast v8, Landroid/widget/AdapterView$OnItemClickListener;

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v8}, Lcom/motorola/Camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 930
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v0}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingSecondaryOpened()V

    .line 931
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPictureResRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$400(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    #setter for: Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0, v1}, Lcom/motorola/Camera/DialogSettingsView;->access$302(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;

    .line 1111
    :cond_2
    :goto_0
    return-void

    .line 932
    :cond_3
    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v3, v3, Lcom/motorola/Camera/DialogSettingsView;->mVidResTextContainer:Landroid/widget/LinearLayout;

    if-ne p1, v3, :cond_6

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v3}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 934
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mVideoResRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$700(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    if-nez v1, :cond_4

    .line 936
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    new-instance v3, Lcom/motorola/Camera/RotateDialogController;

    iget-object v4, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/motorola/Camera/DialogSettingsView;->access$500(Lcom/motorola/Camera/DialogSettingsView;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f030026

    invoke-direct {v3, v4, v5}, Lcom/motorola/Camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    #setter for: Lcom/motorola/Camera/DialogSettingsView;->mVideoResRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1, v3}, Lcom/motorola/Camera/DialogSettingsView;->access$702(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;

    .line 938
    :cond_4
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mVideoResRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$700(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 939
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCurrentOrientation:I
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$600(Lcom/motorola/Camera/DialogSettingsView;)I

    move-result v0

    if-eq v0, v6, :cond_5

    .line 941
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mVideoResRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$700(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 944
    :cond_5
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mVideoResRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$700(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v1, v1, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v3, 0x7f0b004e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v3, v3, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0038

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v6, v3, Lcom/motorola/Camera/DialogSettingsView;->mVidResCancelListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v3, Lcom/motorola/Camera/DialogSettingsView;->mVideoResListAdapter:Landroid/widget/BaseAdapter;

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v3, Lcom/motorola/Camera/DialogSettingsView;->mVideoResListAdapter:Landroid/widget/BaseAdapter;

    check-cast v8, Landroid/widget/AdapterView$OnItemClickListener;

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v8}, Lcom/motorola/Camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 953
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v0}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingSecondaryOpened()V

    .line 954
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mVideoResRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$700(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    #setter for: Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0, v1}, Lcom/motorola/Camera/DialogSettingsView;->access$302(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;

    goto/16 :goto_0

    .line 955
    :cond_6
    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v3, v3, Lcom/motorola/Camera/DialogSettingsView;->mVolumeFuncContainer:Landroid/widget/RelativeLayout;

    if-ne p1, v3, :cond_9

    .line 956
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$800(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    if-nez v1, :cond_7

    .line 958
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    new-instance v3, Lcom/motorola/Camera/RotateDialogController;

    iget-object v4, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/motorola/Camera/DialogSettingsView;->access$500(Lcom/motorola/Camera/DialogSettingsView;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f030026

    invoke-direct {v3, v4, v5}, Lcom/motorola/Camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    #setter for: Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1, v3}, Lcom/motorola/Camera/DialogSettingsView;->access$802(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;

    .line 960
    :cond_7
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$800(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 961
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCurrentOrientation:I
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$600(Lcom/motorola/Camera/DialogSettingsView;)I

    move-result v0

    if-eq v0, v6, :cond_8

    .line 963
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$800(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 966
    :cond_8
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$800(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v1, v1, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v3, 0x7f0b004f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v3, v3, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0038

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v6, v3, Lcom/motorola/Camera/DialogSettingsView;->mVolKeyCancelListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v3, Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyListAdapter:Landroid/widget/BaseAdapter;

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v3, Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyListAdapter:Landroid/widget/BaseAdapter;

    check-cast v8, Landroid/widget/AdapterView$OnItemClickListener;

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v8}, Lcom/motorola/Camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 975
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v0}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingSecondaryOpened()V

    .line 976
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mVolumeKeyRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$800(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    #setter for: Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0, v1}, Lcom/motorola/Camera/DialogSettingsView;->access$302(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;

    goto/16 :goto_0

    .line 978
    :cond_9
    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v3, v3, Lcom/motorola/Camera/DialogSettingsView;->mStorageTextContainer:Landroid/widget/LinearLayout;

    if-ne p1, v3, :cond_c

    .line 980
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mStorageRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$900(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    if-nez v1, :cond_a

    .line 982
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    new-instance v3, Lcom/motorola/Camera/RotateDialogController;

    iget-object v4, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/motorola/Camera/DialogSettingsView;->access$500(Lcom/motorola/Camera/DialogSettingsView;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f030026

    invoke-direct {v3, v4, v5}, Lcom/motorola/Camera/RotateDialogController;-><init>(Landroid/app/Activity;I)V

    #setter for: Lcom/motorola/Camera/DialogSettingsView;->mStorageRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1, v3}, Lcom/motorola/Camera/DialogSettingsView;->access$902(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;

    .line 984
    :cond_a
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mStorageRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$900(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 985
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCurrentOrientation:I
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$600(Lcom/motorola/Camera/DialogSettingsView;)I

    move-result v0

    if-eq v0, v6, :cond_b

    .line 987
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mStorageRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$900(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/motorola/Camera/RotateDialogController;->setOrientation(I)V

    .line 989
    :cond_b
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mStorageRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$900(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v1, v1, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0134

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v3, v3, Lcom/motorola/Camera/DialogSettingsView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0038

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v6, v3, Lcom/motorola/Camera/DialogSettingsView;->mStorageCancelListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v7, v3, Lcom/motorola/Camera/DialogSettingsView;->mStorageListAdapter:Landroid/widget/BaseAdapter;

    iget-object v3, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v8, v3, Lcom/motorola/Camera/DialogSettingsView;->mStorageListAdapter:Landroid/widget/BaseAdapter;

    check-cast v8, Landroid/widget/AdapterView$OnItemClickListener;

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v8}, Lcom/motorola/Camera/RotateDialogController;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 998
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v0}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingSecondaryOpened()V

    .line 999
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mStorageRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$900(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v1

    #setter for: Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0, v1}, Lcom/motorola/Camera/DialogSettingsView;->access$302(Lcom/motorola/Camera/DialogSettingsView;Lcom/motorola/Camera/RotateDialogController;)Lcom/motorola/Camera/RotateDialogController;

    goto/16 :goto_0

    .line 1001
    :cond_c
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v2, v2, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectCheckBox:Landroid/widget/CheckBox;

    if-ne p1, v2, :cond_e

    .line 1003
    const/4 v12, 0x0

    .line 1004
    .local v12, selection:I
    const/4 v11, 0x0

    .line 1006
    .local v11, flag:Z
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mFaceDetectCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1008
    const/4 v12, 0x1

    .line 1009
    const/4 v11, 0x1

    .line 1017
    :goto_1
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$100(Lcom/motorola/Camera/DialogSettingsView;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 1018
    .local v10, editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "Face Detection"

    invoke-interface {v10, v0, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1019
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1021
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v1, Lcom/motorola/Camera/CameraGlobalType;->SETTING_FACE_DETECTION:I

    invoke-interface {v0, v1, v12}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    goto/16 :goto_0

    .line 1013
    .end local v10           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_d
    const/4 v12, 0x0

    .line 1014
    const/4 v11, 0x0

    goto :goto_1

    .line 1023
    .end local v11           #flag:Z
    .end local v12           #selection:I
    :cond_e
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v2, v2, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    if-ne p1, v2, :cond_13

    .line 1025
    const/4 v12, 0x0

    .line 1026
    .restart local v12       #selection:I
    const/4 v11, 0x0

    .line 1027
    .restart local v11       #flag:Z
    const/4 v9, 0x0

    .line 1029
    .local v9, alertDlg:Landroid/app/AlertDialog;
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1031
    const/4 v12, 0x1

    .line 1032
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1033
    const/4 v11, 0x1

    .line 1042
    :cond_f
    :goto_2
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1043
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1044
    const/4 v11, 0x0

    .line 1048
    :cond_10
    if-eqz v11, :cond_11

    .line 1050
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInSecurelyLockedMode()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1052
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-virtual {v0}, Lcom/motorola/Camera/DialogSettingsView;->showPhoneLocationDialog()V

    .line 1053
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mGeoTagCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1054
    const/4 v11, 0x0

    .line 1058
    :cond_11
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setLocationOn(Ljava/lang/Boolean;)V

    .line 1059
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$100(Lcom/motorola/Camera/DialogSettingsView;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 1060
    .restart local v10       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "isLocationOn"

    invoke-interface {v10, v0, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1061
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1063
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v1, Lcom/motorola/Camera/CameraGlobalType;->SETTING_GEO_TAG:I

    invoke-interface {v0, v1, v12}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    goto/16 :goto_0

    .line 1038
    .end local v10           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_12
    const/4 v12, 0x0

    .line 1039
    const/4 v11, 0x0

    goto :goto_2

    .line 1064
    .end local v9           #alertDlg:Landroid/app/AlertDialog;
    .end local v11           #flag:Z
    .end local v12           #selection:I
    :cond_13
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v2, v2, Lcom/motorola/Camera/DialogSettingsView;->mVStabCheckBox:Landroid/widget/CheckBox;

    if-ne p1, v2, :cond_15

    .line 1065
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v2, v2, Lcom/motorola/Camera/DialogSettingsView;->mVStabCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    .line 1066
    .restart local v11       #flag:Z
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v2}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setVideoStabilization(Z)V

    .line 1068
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v2, v2, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v3, Lcom/motorola/Camera/CameraGlobalType;->SETTING_VIDEO_STABILIZATION:I

    if-eqz v11, :cond_14

    :goto_3
    invoke-interface {v2, v3, v0}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    goto/16 :goto_0

    :cond_14
    move v0, v1

    goto :goto_3

    .line 1071
    .end local v11           #flag:Z
    :cond_15
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v2, v2, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneCheckBox:Landroid/widget/CheckBox;

    if-ne p1, v2, :cond_17

    .line 1073
    const/4 v12, 0x0

    .line 1074
    .restart local v12       #selection:I
    iget-object v2, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v2, v2, Lcom/motorola/Camera/DialogSettingsView;->mShutterToneCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1076
    const/4 v12, 0x1

    .line 1077
    sput-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_ENABLED:Z

    .line 1084
    :goto_4
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v1, Lcom/motorola/Camera/CameraGlobalType;->SETTING_SHUTTER_TONE:I

    invoke-interface {v0, v1, v12}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    .line 1086
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$100(Lcom/motorola/Camera/DialogSettingsView;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 1087
    .restart local v10       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "Shutter Tone"

    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_ENABLED:Z

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1088
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1081
    .end local v10           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_16
    sput-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->SHUTTER_TONE_ENABLED:Z

    .line 1082
    const/4 v12, 0x0

    goto :goto_4

    .line 1090
    .end local v12           #selection:I
    :cond_17
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimCheckBox:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_2

    .line 1092
    const/4 v12, 0x0

    .line 1093
    .restart local v12       #selection:I
    const/4 v11, 0x0

    .line 1094
    .restart local v11       #flag:Z
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mShutterAnimCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1096
    const/4 v12, 0x1

    .line 1097
    const/4 v11, 0x1

    .line 1104
    :goto_5
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v1, Lcom/motorola/Camera/CameraGlobalType;->SETTING_SHUTTER_ANIMATION:I

    invoke-interface {v0, v1, v12}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    .line 1106
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$2;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPreferencesCommon:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$100(Lcom/motorola/Camera/DialogSettingsView;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 1107
    .restart local v10       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "Shutter Animation"

    invoke-interface {v10, v0, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1108
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1101
    .end local v10           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_18
    const/4 v12, 0x0

    .line 1102
    const/4 v11, 0x0

    goto :goto_5
.end method
