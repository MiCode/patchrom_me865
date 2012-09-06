.class Lcom/motorola/android/internal/telephony/Precacher$StateIdle;
.super Lcom/motorola/android/internal/telephony/Precacher$State;
.source "Precacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/Precacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateIdle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/Precacher;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/Precacher;)V
    .locals 0
    .parameter

    .prologue
    .line 982
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateIdle;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/Precacher$State;-><init>(Lcom/motorola/android/internal/telephony/Precacher;)V

    return-void
.end method


# virtual methods
.method detect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1023
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher$StateIdle;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #getter for: Lcom/motorola/android/internal/telephony/Precacher;->mDormant:Z
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/Precacher;->access$300(Lcom/motorola/android/internal/telephony/Precacher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    const-string v0, "ignore detect in dormant state"

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/Precacher$StateIdle;->log(Ljava/lang/String;)V

    .line 1033
    :goto_0
    return-void

    .line 1028
    :cond_0
    iput-boolean v3, p0, Lcom/motorola/android/internal/telephony/Precacher$State;->iccStatusPending:Z

    .line 1029
    const-string v0, "start detect..."

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/Precacher$StateIdle;->log(Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher$StateIdle;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #getter for: Lcom/motorola/android/internal/telephony/Precacher;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/Precacher;->access$800(Lcom/motorola/android/internal/telephony/Precacher;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const/16 v2, 0x1f5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1032
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher$StateIdle;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/Precacher;->setState(I)V

    goto :goto_0
.end method

.method enter()V
    .locals 4

    .prologue
    .line 990
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher$StateIdle;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->updateIccInfo()V
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/Precacher;->access$1100(Lcom/motorola/android/internal/telephony/Precacher;)V

    .line 991
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher$StateIdle;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #getter for: Lcom/motorola/android/internal/telephony/Precacher;->mDormant:Z
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/Precacher;->access$300(Lcom/motorola/android/internal/telephony/Precacher;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher$StateIdle;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->hasIccCard()Z
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/Precacher;->access$1200(Lcom/motorola/android/internal/telephony/Precacher;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 992
    const-string v0, "card not present, start timer"

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/Precacher$StateIdle;->log(Ljava/lang/String;)V

    .line 993
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher$StateIdle;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #getter for: Lcom/motorola/android/internal/telephony/Precacher;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/Precacher;->access$800(Lcom/motorola/android/internal/telephony/Precacher;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateIdle;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #getter for: Lcom/motorola/android/internal/telephony/Precacher;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/Precacher;->access$800(Lcom/motorola/android/internal/telephony/Precacher;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 997
    :cond_0
    return-void
.end method

.method exit()V
    .locals 2

    .prologue
    .line 1001
    const-string v0, "stop timer"

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/Precacher$StateIdle;->log(Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher$StateIdle;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #getter for: Lcom/motorola/android/internal/telephony/Precacher;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/Precacher;->access$800(Lcom/motorola/android/internal/telephony/Precacher;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1003
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 985
    const-string v0, "IDLE"

    return-object v0
.end method

.method processEvent(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 1007
    const/4 v0, 0x0

    .line 1008
    .local v0, result:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1017
    :goto_0
    return v0

    .line 1010
    :pswitch_0
    const-string v1, "*** precache timeout fired"

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/Precacher$StateIdle;->log(Ljava/lang/String;)V

    .line 1011
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateIdle;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->onIccPrecacheDone()V
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/Precacher;->access$1300(Lcom/motorola/android/internal/telephony/Precacher;)V

    .line 1012
    const/4 v0, 0x1

    .line 1013
    goto :goto_0

    .line 1008
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
