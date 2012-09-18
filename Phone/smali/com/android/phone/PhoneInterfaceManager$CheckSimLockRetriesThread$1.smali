.class Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;)V
    .locals 0
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 687
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 688
    .local v1, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 701
    :goto_0
    return-void

    .line 690
    :pswitch_0
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;

    monitor-enter v4

    .line 691
    :try_start_0
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 692
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v2, v0

    .line 693
    .local v2, retryLeft:[I
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;

    const/4 v5, 0x0

    aget v5, v2, v5

    #setter for: Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;->mRetryLeft:I
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;->access$802(Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;I)I

    .line 695
    .end local v2           #retryLeft:[I
    :cond_0
    const-string v3, "PhoneInterfaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRetryLeft="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;

    #getter for: Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;->mRetryLeft:I
    invoke-static {v6}, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;->access$800(Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;

    const/4 v5, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;->mDone:Z
    invoke-static {v3, v5}, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;->access$902(Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;Z)Z

    .line 697
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimLockRetriesThread;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 698
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 688
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
