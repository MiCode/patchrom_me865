.class Lcom/motorola/android/internal/telephony/Precacher$StateFetchingInfo;
.super Lcom/motorola/android/internal/telephony/Precacher$State;
.source "Precacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/Precacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateFetchingInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/Precacher;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/Precacher;)V
    .locals 0
    .parameter

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingInfo;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/Precacher$State;-><init>(Lcom/motorola/android/internal/telephony/Precacher;)V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1040
    const-string v0, "FETCHING-INFO"

    return-object v0
.end method

.method processEvent(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 1045
    invoke-super {p0, p1}, Lcom/motorola/android/internal/telephony/Precacher$State;->processEvent(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1046
    const/4 v0, 0x1

    .line 1071
    :goto_0
    return v0

    .line 1048
    :cond_0
    const/4 v0, 0x0

    .line 1049
    .local v0, result:Z
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1051
    :pswitch_0
    const-string v1, "EVENT_FETCH_ICCINFO_DONE..."

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingInfo;->log(Ljava/lang/String;)V

    .line 1052
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingInfo;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->onFetchIccInfoDone(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/motorola/android/internal/telephony/Precacher;->access$1400(Lcom/motorola/android/internal/telephony/Precacher;Landroid/os/Message;)V

    .line 1053
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingInfo;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->isCardInitialized()Z
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/Precacher;->access$1500(Lcom/motorola/android/internal/telephony/Precacher;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1054
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingInfo;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #getter for: Lcom/motorola/android/internal/telephony/Precacher;->mIsFastPrecache:Z
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/Precacher;->access$1600(Lcom/motorola/android/internal/telephony/Precacher;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1055
    const-string v1, "Fast Precache Done..."

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingInfo;->log(Ljava/lang/String;)V

    .line 1056
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingInfo;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->onIccPrecacheFast()V
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/Precacher;->access$1700(Lcom/motorola/android/internal/telephony/Precacher;)V

    .line 1057
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingInfo;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-virtual {v1, v5}, Lcom/motorola/android/internal/telephony/Precacher;->setState(I)V

    .line 1066
    :goto_1
    const/4 v0, 0x1

    .line 1067
    goto :goto_0

    .line 1059
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingInfo;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingInfo;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #getter for: Lcom/motorola/android/internal/telephony/Precacher;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/Precacher;->access$800(Lcom/motorola/android/internal/telephony/Precacher;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    const/16 v4, 0x1f6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->fetchIccid(Landroid/os/Message;)V
    invoke-static {v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->access$1800(Lcom/motorola/android/internal/telephony/Precacher;Landroid/os/Message;)V

    .line 1061
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingInfo;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->setState(I)V

    goto :goto_1

    .line 1064
    :cond_2
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingInfo;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-virtual {v1, v5}, Lcom/motorola/android/internal/telephony/Precacher;->setState(I)V

    goto :goto_1

    .line 1049
    :pswitch_data_0
    .packed-switch 0x1f5
        :pswitch_0
    .end packed-switch
.end method
