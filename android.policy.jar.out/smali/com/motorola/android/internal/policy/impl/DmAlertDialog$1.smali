.class Lcom/motorola/android/internal/policy/impl/DmAlertDialog$1;
.super Ljava/lang/Object;
.source "DmAlertDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->showDialog(Landroid/content/Context;Landroid/content/Intent;Z)V
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
    .line 185
    iput-object p1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$1;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$1;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    const/4 v1, 0x4

    #setter for: Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mResultCode:I
    invoke-static {v0, v1}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->access$102(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;I)I

    .line 188
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$1;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    const/4 v1, 0x2

    #setter for: Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mAlertResult:I
    invoke-static {v0, v1}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->access$202(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;I)I

    .line 189
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$1;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    #calls: Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->onFinish()V
    invoke-static {v0}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->access$300(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)V

    .line 190
    const-string v0, "DmKeyguardAlertDialog"

    const-string v1, "DmAlert.DM_SERVICE_ALERT_RESP_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method
