.class Lcom/motorola/android/internal/telephony/Precacher$StateFetchingIccid;
.super Lcom/motorola/android/internal/telephony/Precacher$State;
.source "Precacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/Precacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateFetchingIccid"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/Precacher;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/Precacher;)V
    .locals 0
    .parameter

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingIccid;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/Precacher$State;-><init>(Lcom/motorola/android/internal/telephony/Precacher;)V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1079
    const-string v0, "FETCHING-ICCID"

    return-object v0
.end method

.method processEvent(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    .line 1084
    invoke-super {p0, p1}, Lcom/motorola/android/internal/telephony/Precacher$State;->processEvent(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1085
    const/4 v0, 0x1

    .line 1105
    :goto_0
    return v0

    .line 1087
    :cond_0
    const/4 v0, 0x0

    .line 1088
    .local v0, result:Z
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1090
    :pswitch_0
    const-string v1, "EVENT_FETCH_ICCID_DONE..."

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingIccid;->log(Ljava/lang/String;)V

    .line 1091
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingIccid;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->getLockStatus([Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1093
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingIccid;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->setState(I)V

    .line 1100
    :goto_1
    const/4 v0, 0x1

    .line 1101
    goto :goto_0

    .line 1096
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingIccid;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingIccid;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #getter for: Lcom/motorola/android/internal/telephony/Precacher;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/Precacher;->access$800(Lcom/motorola/android/internal/telephony/Precacher;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    const/16 v4, 0x1f7

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->fetchImsi(Landroid/os/Message;)V
    invoke-static {v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->access$1900(Lcom/motorola/android/internal/telephony/Precacher;Landroid/os/Message;)V

    .line 1098
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingIccid;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->setState(I)V

    goto :goto_1

    .line 1088
    nop

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
    .end packed-switch
.end method
