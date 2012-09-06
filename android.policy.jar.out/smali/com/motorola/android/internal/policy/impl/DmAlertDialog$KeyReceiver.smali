.class final Lcom/motorola/android/internal/policy/impl/DmAlertDialog$KeyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DmAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/policy/impl/DmAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;


# direct methods
.method private constructor <init>(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$KeyReceiver;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;Lcom/motorola/android/internal/policy/impl/DmAlertDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$KeyReceiver;-><init>(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 208
    const-string v0, "DmKeyguardAlertDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive the broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$KeyReceiver;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    const/4 v1, 0x3

    #setter for: Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mResultCode:I
    invoke-static {v0, v1}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->access$102(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;I)I

    .line 210
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$KeyReceiver;->this$0:Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    #calls: Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->onFinish()V
    invoke-static {v0}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->access$300(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)V

    .line 211
    return-void
.end method
