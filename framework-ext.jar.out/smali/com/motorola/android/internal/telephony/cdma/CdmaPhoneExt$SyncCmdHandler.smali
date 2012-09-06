.class Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$SyncCmdHandler;
.super Landroid/os/Handler;
.source "CdmaPhoneExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncCmdHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$SyncCmdHandler;->this$0:Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;

    .line 72
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 77
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 80
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$Request;

    .line 81
    .local v2, request:Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$Request;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 82
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 83
    .local v1, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$Request;->result:Ljava/lang/Object;

    .line 87
    .end local v1           #buffer:Ljava/nio/ByteBuffer;
    :goto_2
    iput-boolean v4, v2, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$Request;->finished:Z

    .line 88
    monitor-enter v2

    .line 89
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 90
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #buffer:Ljava/nio/ByteBuffer;
    :cond_0
    move v3, v5

    .line 83
    goto :goto_1

    .line 85
    .end local v1           #buffer:Ljava/nio/ByteBuffer;
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$Request;->result:Ljava/lang/Object;

    goto :goto_2

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
