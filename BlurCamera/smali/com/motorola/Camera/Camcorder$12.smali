.class Lcom/motorola/Camera/Camcorder$12;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 5294
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$12;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 5297
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$12;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mRotateDialog:Lcom/motorola/Camera/RotateDialogController;
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$4700(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/RotateDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/RotateDialogController;->dismissDialogImmediately()V

    .line 5299
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$12;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isEulaShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5300
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$12;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->setEulaShown(Ljava/lang/Boolean;)V

    .line 5301
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$12;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->save()V

    .line 5303
    :cond_0
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$12;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->showPhoneLocationDialog()V

    .line 5304
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$12;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v1, 0x0

    #setter for: Lcom/motorola/Camera/Camcorder;->mRotateDialogShowing:Z
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camcorder;->access$5002(Lcom/motorola/Camera/Camcorder;Z)Z

    .line 5305
    iget-object v0, p0, Lcom/motorola/Camera/Camcorder$12;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v0}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/Camera/View/Control/OnScreenController;->secondaryDialogClosed()V

    .line 5306
    return-void
.end method
