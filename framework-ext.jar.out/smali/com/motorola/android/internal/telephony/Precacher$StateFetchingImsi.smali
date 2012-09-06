.class Lcom/motorola/android/internal/telephony/Precacher$StateFetchingImsi;
.super Lcom/motorola/android/internal/telephony/Precacher$State;
.source "Precacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/Precacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateFetchingImsi"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/Precacher;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/Precacher;)V
    .locals 0
    .parameter

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingImsi;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/Precacher$State;-><init>(Lcom/motorola/android/internal/telephony/Precacher;)V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1186
    const-string v0, "FETCHING-IMSI"

    return-object v0
.end method

.method processEvent(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    .line 1191
    invoke-super {p0, p1}, Lcom/motorola/android/internal/telephony/Precacher$State;->processEvent(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1192
    const/4 v0, 0x1

    .line 1204
    :goto_0
    return v0

    .line 1194
    :cond_0
    const/4 v0, 0x0

    .line 1195
    .local v0, result:Z
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1197
    :pswitch_0
    const-string v1, "EVENT_FETCH_IMSI_DONE..."

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingImsi;->log(Ljava/lang/String;)V

    .line 1198
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingImsi;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    #calls: Lcom/motorola/android/internal/telephony/Precacher;->onIccPrecacheDone()V
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/Precacher;->access$1300(Lcom/motorola/android/internal/telephony/Precacher;)V

    .line 1199
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingImsi;->this$0:Lcom/motorola/android/internal/telephony/Precacher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->setState(I)V

    .line 1200
    const/4 v0, 0x1

    goto :goto_0

    .line 1195
    nop

    :pswitch_data_0
    .packed-switch 0x1f7
        :pswitch_0
    .end packed-switch
.end method
