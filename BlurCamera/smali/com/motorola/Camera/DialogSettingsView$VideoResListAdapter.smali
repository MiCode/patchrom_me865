.class Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DialogSettingsView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/DialogSettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoResListAdapter"
.end annotation


# instance fields
.field private mIconText:[Ljava/lang/CharSequence;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/motorola/Camera/DialogSettingsView;


# direct methods
.method public constructor <init>(Lcom/motorola/Camera/DialogSettingsView;Landroid/content/Context;[Ljava/lang/CharSequence;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "entries"

    .prologue
    .line 1210
    iput-object p1, p0, Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1211
    iput-object p3, p0, Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;->mIconText:[Ljava/lang/CharSequence;

    .line 1212
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1213
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;->mIconText:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1240
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1235
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1216
    if-nez p2, :cond_0

    .line 1218
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1220
    :cond_0
    const v1, 0x7f0d0025

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1221
    .local v0, textView:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;->mIconText:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1222
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mVidResItemSelected:I
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$1100(Lcom/motorola/Camera/DialogSettingsView;)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 1224
    const v1, 0x7f02002a

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1230
    :goto_0
    return-object p2

    .line 1228
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 1250
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v1, Lcom/motorola/Camera/CameraGlobalType;->SETTING_VIDEO_RESOLUTION:I

    invoke-interface {v0, v1, p3}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    .line 1251
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #setter for: Lcom/motorola/Camera/DialogSettingsView;->mVidResItemSelected:I
    invoke-static {v0, p3}, Lcom/motorola/Camera/DialogSettingsView;->access$1102(Lcom/motorola/Camera/DialogSettingsView;I)I

    .line 1252
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mVidResValue:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentVideoRes(Ljava/lang/String;)V

    .line 1253
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mVidResSelect:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v1, v1, Lcom/motorola/Camera/DialogSettingsView;->mVidResDesc:[Ljava/lang/CharSequence;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1254
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$300(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 1255
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$VideoResListAdapter;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v0}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingSecondaryClosed()V

    .line 1256
    return-void
.end method
