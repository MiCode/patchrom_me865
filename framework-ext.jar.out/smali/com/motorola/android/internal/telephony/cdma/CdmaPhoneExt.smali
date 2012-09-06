.class public Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;
.super Lcom/motorola/android/internal/telephony/PhoneExtBase;
.source "CdmaPhoneExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$SyncCmdHandler;,
        Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$Request;
    }
.end annotation


# static fields
.field private static final EVENT_GET_IS_ESN_CHANGED_DONE:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/PhoneExtBase;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 26
    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$1;-><init>(Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;->mHandler:Landroid/os/Handler;

    .line 32
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;->mHandler:Landroid/os/Handler;

    invoke-super {p0, v0}, Lcom/motorola/android/internal/telephony/PhoneExtBase;->init(Landroid/os/Handler;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected getMsgCategory()I
    .locals 1

    .prologue
    .line 37
    const/high16 v0, 0x200

    return v0
.end method

.method public isEsnChanged()Z
    .locals 7

    .prologue
    .line 42
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "CdmaPhoneExt"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 43
    .local v4, thread:Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 44
    new-instance v1, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$SyncCmdHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$SyncCmdHandler;-><init>(Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;Landroid/os/Looper;)V

    .line 45
    .local v1, handler:Landroid/os/Handler;
    new-instance v2, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$Request;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$Request;-><init>(Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$1;)V

    .line 46
    .local v2, request:Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$Request;
    const/4 v5, 0x1

    invoke-virtual {v1, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 47
    .local v3, response:Landroid/os/Message;
    const/16 v5, 0x8

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 48
    .local v0, buf:Ljava/nio/ByteBuffer;
    const v5, 0x2090002

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 49
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 50
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/PhoneExtBase;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-interface {v5, v6, v3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 52
    monitor-enter v2

    .line 53
    :goto_0
    :try_start_0
    iget-boolean v5, v2, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$Request;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 55
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v5

    goto :goto_0

    .line 60
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    invoke-virtual {v4}, Landroid/os/HandlerThread;->quit()Z

    .line 62
    iget-object v5, v2, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt$Request;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    .line 60
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method
