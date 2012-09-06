.class Lcom/motorola/android/internal/telephony/ModemConfigManager$1;
.super Landroid/os/Handler;
.source "ModemConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/ModemConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;)V
    .locals 0
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$1;->this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 710
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 725
    const-string v2, "RIL_ModemConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled message with number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 712
    :pswitch_0
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$1;->this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->updateIccAvailability()V

    goto :goto_0

    .line 715
    :pswitch_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$1;->this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    const-string v3, "Received EVENT_SET_TEMPORARY_NETWORK_MODE_DONE"

    #calls: Lcom/motorola/android/internal/telephony/ModemConfigManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->access$300(Lcom/motorola/android/internal/telephony/ModemConfigManager;Ljava/lang/String;)V

    .line 716
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 717
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 718
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/CommandsInterface;

    .line 720
    .local v1, ci:Lcom/android/internal/telephony/CommandsInterface;
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager$1;->this$0:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    const-string v3, "Restore"

    #calls: Lcom/motorola/android/internal/telephony/ModemConfigManager;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->access$300(Lcom/motorola/android/internal/telephony/ModemConfigManager;Ljava/lang/String;)V

    .line 721
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 710
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
