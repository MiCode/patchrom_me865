.class Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckSimLockRetriesThread"
.end annotation


# static fields
.field private static final CHECK_SIM_LOCK_RETRIES_COMPLETE:I = 0x64


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mRetryLeft:I

.field private final mSimCard:Lcom/android/internal/telephony/IccCard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;)V
    .locals 1
    .parameter "simCard"

    .prologue
    .line 676
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 667
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;->mRetryLeft:I

    .line 668
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;->mDone:Z

    .line 677
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;->mSimCard:Lcom/android/internal/telephony/IccCard;

    .line 678
    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 664
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;->mRetryLeft:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 664
    iput p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;->mRetryLeft:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 664
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;->mDone:Z

    return p1
.end method


# virtual methods
.method declared-synchronized checkSimLockRetries(Lcom/android/internal/telephony/IccCard$PinType;)I
    .locals 4
    .parameter "type"

    .prologue
    .line 710
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 712
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 713
    :catch_0
    move-exception v1

    .line 714
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 710
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 717
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 718
    .local v0, callback:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;->mSimCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v2, :cond_1

    .line 719
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;->mSimCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/IccCard;->getIccLockRetryAttemps(Lcom/android/internal/telephony/IccCard$PinType;Landroid/os/Message;)V

    .line 725
    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_2

    .line 727
    :try_start_4
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "wait for done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 729
    :catch_1
    move-exception v1

    .line 731
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 721
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "checkSimLockRetries, iccCard is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 722
    const/4 v2, -0x1

    .line 735
    :goto_2
    monitor-exit p0

    return v2

    .line 734
    :cond_2
    :try_start_6
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;->mRetryLeft:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public run()V
    .locals 1

    .prologue
    .line 682
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 683
    monitor-enter p0

    .line 684
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;->mHandler:Landroid/os/Handler;

    .line 703
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 704
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 706
    return-void

    .line 704
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
