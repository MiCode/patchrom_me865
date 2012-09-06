.class Lcom/motorola/android/internal/policy/impl/DmAlertDialog$3;
.super Ljava/lang/Object;
.source "DmAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/policy/impl/DmAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$3;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$3;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    #getter for: Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mTimeout:I
    invoke-static {v0}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->access$400(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)I

    move-result v0

    if-lez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$3;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    #getter for: Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->access$600(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$3;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    #getter for: Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialogTimeout:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->access$500(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$3;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    #getter for: Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I
    invoke-static {v0}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->access$700(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 412
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$3;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    const/4 v1, 0x2

    #setter for: Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mAlertResult:I
    invoke-static {v0, v1}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->access$202(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;I)I

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$3;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    const/4 v1, 0x1

    #setter for: Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mResultCode:I
    invoke-static {v0, v1}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->access$102(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;I)I

    .line 415
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$3;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    #calls: Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->onFinish()V
    invoke-static {v0}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->access$300(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)V

    .line 416
    const-string v0, "DmKeyguardAlertDialog"

    const-string v1, "DmAlert.DM_SERVICE_ALERT_RESP_NO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void
.end method
