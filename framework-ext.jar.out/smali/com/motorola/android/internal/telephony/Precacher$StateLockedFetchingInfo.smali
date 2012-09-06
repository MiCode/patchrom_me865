.class Lcom/motorola/android/internal/telephony/Precacher$StateLockedFetchingInfo;
.super Lcom/motorola/android/internal/telephony/Precacher$State;
.source "Precacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/Precacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateLockedFetchingInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/Precacher;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/Precacher;)V
    .locals 0
    .parameter

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateLockedFetchingInfo;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/Precacher$State;-><init>(Lcom/motorola/android/internal/telephony/Precacher;)V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1148
    const-string v0, "LOCKED-FETCHING-INFO"

    return-object v0
.end method

.method processEvent(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 1153
    invoke-super {p0, p1}, Lcom/motorola/android/internal/telephony/Precacher$State;->processEvent(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1154
    const/4 v0, 0x1

    .line 1178
    :goto_0
    return v0

    .line 1156
    :cond_0
    const/4 v0, 0x0

    .line 1157
    .local v0, result:Z
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1159
    :pswitch_0
    const-string v1, "EVENT_FETCH_ICCINFO_DONE..."

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/Precacher$StateLockedFetchingInfo;->log(Ljava/lang/String;)V

    .line 1160
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateLockedFetchingInfo;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->onFetchIccInfoDone(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/motorola/android/internal/telephony/Precacher;->access$1400(Lcom/motorola/android/internal/telephony/Precacher;Landroid/os/Message;)V

    .line 1161
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateLockedFetchingInfo;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->isCardInitialized()Z
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/Precacher;->access$1500(Lcom/motorola/android/internal/telephony/Precacher;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1162
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateLockedFetchingInfo;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->getLockStatus([Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1163
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateLockedFetchingInfo;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->setState(I)V

    .line 1173
    :goto_1
    const/4 v0, 0x1

    .line 1174
    goto :goto_0

    .line 1165
    :cond_1
    const-string v1, "go on fetching IMSI..."

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/Precacher$StateLockedFetchingInfo;->log(Ljava/lang/String;)V

    .line 1166
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateLockedFetchingInfo;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher$StateLockedFetchingInfo;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #getter for: Lcom/motorola/android/internal/telephony/Precacher;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/Precacher;->access$800(Lcom/motorola/android/internal/telephony/Precacher;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    const/16 v4, 0x1f7

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->fetchImsi(Landroid/os/Message;)V
    invoke-static {v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->access$1900(Lcom/motorola/android/internal/telephony/Precacher;Landroid/os/Message;)V

    .line 1168
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateLockedFetchingInfo;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->setState(I)V

    goto :goto_1

    .line 1171
    :cond_2
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateLockedFetchingInfo;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-virtual {v1, v5}, Lcom/motorola/android/internal/telephony/Precacher;->setState(I)V

    goto :goto_1

    .line 1157
    nop

    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
    .end packed-switch
.end method
