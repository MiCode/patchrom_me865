.class Lcom/motorola/Camera/DialogSettingsView$PictureResListAdapter;
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
    name = "PictureResListAdapter"
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
    .line 1155
    iput-object p1, p0, Lcom/motorola/Camera/DialogSettingsView$PictureResListAdapter;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1156
    iput-object p3, p0, Lcom/motorola/Camera/DialogSettingsView$PictureResListAdapter;->mIconText:[Ljava/lang/CharSequence;

    .line 1157
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$PictureResListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1158
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$PictureResListAdapter;->mIconText:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1185
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1180
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1161
    if-nez p2, :cond_0

    .line 1163
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$PictureResListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1165
    :cond_0
    const v1, 0x7f0d0025

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1166
    .local v0, textView:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$PictureResListAdapter;->mIconText:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1167
    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$PictureResListAdapter;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mPicResItemSelected:I
    invoke-static {v1}, Lcom/motorola/Camera/DialogSettingsView;->access$1000(Lcom/motorola/Camera/DialogSettingsView;)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 1169
    const v1, 0x7f02002a

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1175
    :goto_0
    return-object p2

    .line 1173
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
    .line 1195
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$PictureResListAdapter;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    sget v1, Lcom/motorola/Camera/CameraGlobalType;->SETTING_PICTURE_RESOLUTION:I

    invoke-interface {v0, v1, p3}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingsClicked(II)V

    .line 1196
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$PictureResListAdapter;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #setter for: Lcom/motorola/Camera/DialogSettingsView;->mPicResItemSelected:I
    invoke-static {v0, p3}, Lcom/motorola/Camera/DialogSettingsView;->access$1002(Lcom/motorola/Camera/DialogSettingsView;I)I

    .line 1197
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$PictureResListAdapter;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$000(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$PictureResListAdapter;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mPicResValue:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setCurrentSingleShotRes(Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$PictureResListAdapter;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mPicResSelect:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/motorola/Camera/DialogSettingsView$PictureResListAdapter;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v1, v1, Lcom/motorola/Camera/DialogSettingsView;->mPicResDesc:[Ljava/lang/CharSequence;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1199
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$PictureResListAdapter;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    #getter for: Lcom/motorola/Camera/DialogSettingsView;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/DialogSettingsView;->access$300(Lcom/motorola/Camera/DialogSettingsView;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/RotateDialogController;->dismissDialog()V

    .line 1200
    iget-object v0, p0, Lcom/motorola/Camera/DialogSettingsView$PictureResListAdapter;->this$0:Lcom/motorola/Camera/DialogSettingsView;

    iget-object v0, v0, Lcom/motorola/Camera/DialogSettingsView;->mCallback:Lcom/motorola/Camera/DialogCallbackInterface;

    invoke-interface {v0}, Lcom/motorola/Camera/DialogCallbackInterface;->notifySettingSecondaryClosed()V

    .line 1201
    return-void
.end method
