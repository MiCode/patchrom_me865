.class Lcom/motorola/android/internal/policy/impl/DmAlertDialog$4;
.super Ljava/lang/Object;
.source "DmAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 420
    iput-object p1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$4;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 422
    const-string v0, "DmKeyguardAlertDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCancel: Dialog - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$4;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    #getter for: Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I
    invoke-static {v2}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->access$700(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$4;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    const/4 v1, 0x3

    #setter for: Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mResultCode:I
    invoke-static {v0, v1}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->access$102(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;I)I

    .line 424
    const-string v0, "DmKeyguardAlertDialog"

    const-string v1, "DmAlert.DM_SERVICE_ALERT_RESP_CANCEL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$4;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    #calls: Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->onFinish()V
    invoke-static {v0}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->access$300(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)V

    .line 426
    return-void
.end method
