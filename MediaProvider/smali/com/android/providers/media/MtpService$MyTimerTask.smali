.class Lcom/android/providers/media/MtpService$MyTimerTask;
.super Ljava/util/TimerTask;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimerTask"
.end annotation


# instance fields
.field mNewState:Ljava/lang/String;

.field mObjectHandle:I

.field mOldState:Ljava/lang/String;

.field mPath:Ljava/lang/String;

.field mReason:I

.field final synthetic this$0:Lcom/android/providers/media/MtpService;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MtpService;II)V
    .locals 0
    .parameter
    .parameter "reason"
    .parameter "objectid"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    .line 99
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 100
    iput p2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mReason:I

    .line 101
    iput p3, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mObjectHandle:I

    .line 102
    return-void
.end method

.method constructor <init>(Lcom/android/providers/media/MtpService;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "reason"
    .parameter "oldState"
    .parameter "newState"
    .parameter "path"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    .line 91
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 92
    iput p2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mReason:I

    .line 93
    iput-object p5, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mPath:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mOldState:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mNewState:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 109
    iget v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mReason:I

    invoke-static {}, Lcom/android/providers/media/MtpService;->access$000()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 110
    iget-object v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$100(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;

    move-result-object v3

    monitor-enter v3

    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mMtpDisabled:Z
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$200(Lcom/android/providers/media/MtpService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$300(Lcom/android/providers/media/MtpService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpStorage;

    .line 114
    .local v1, storage:Landroid/mtp/MtpStorage;
    iget-object v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    #calls: Lcom/android/providers/media/MtpService;->addStorageLocked(Landroid/mtp/MtpStorage;)V
    invoke-static {v2, v1}, Lcom/android/providers/media/MtpService;->access$400(Lcom/android/providers/media/MtpService;Landroid/mtp/MtpStorage;)V

    .line 116
    iget-object v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    invoke-virtual {v1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/providers/media/MtpService;->copyMtpIconLogo(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/providers/media/MtpService;->access$500(Lcom/android/providers/media/MtpService;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #storage:Landroid/mtp/MtpStorage;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 119
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    const/4 v4, 0x0

    #setter for: Lcom/android/providers/media/MtpService;->mMtpDisabled:Z
    invoke-static {v2, v4}, Lcom/android/providers/media/MtpService;->access$202(Lcom/android/providers/media/MtpService;Z)Z

    .line 121
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :cond_2
    :goto_1
    return-void

    .line 122
    :cond_3
    iget v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mReason:I

    invoke-static {}, Lcom/android/providers/media/MtpService;->access$600()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 123
    iget-object v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$100(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;

    move-result-object v3

    monitor-enter v3

    .line 124
    :try_start_2
    const-string v2, "MtpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStorageStateChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mOldState:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mNewState:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v2, "mounted"

    iget-object v4, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mNewState:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 126
    iget-object v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    iget-object v4, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mPath:Ljava/lang/String;

    #calls: Lcom/android/providers/media/MtpService;->volumeMountedLocked(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/providers/media/MtpService;->access$700(Lcom/android/providers/media/MtpService;Ljava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$300(Lcom/android/providers/media/MtpService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpStorage;

    .line 129
    .restart local v1       #storage:Landroid/mtp/MtpStorage;
    iget-object v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    invoke-virtual {v1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/providers/media/MtpService;->copyMtpIconLogo(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/providers/media/MtpService;->access$500(Lcom/android/providers/media/MtpService;Ljava/lang/String;)V

    goto :goto_2

    .line 138
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #storage:Landroid/mtp/MtpStorage;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 132
    :cond_4
    :try_start_3
    const-string v2, "mounted"

    iget-object v4, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mOldState:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 133
    iget-object v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$300(Lcom/android/providers/media/MtpService;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v4, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpStorage;

    .line 134
    .restart local v1       #storage:Landroid/mtp/MtpStorage;
    if-eqz v1, :cond_5

    .line 135
    iget-object v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    #calls: Lcom/android/providers/media/MtpService;->removeStorageLocked(Landroid/mtp/MtpStorage;)V
    invoke-static {v2, v1}, Lcom/android/providers/media/MtpService;->access$800(Lcom/android/providers/media/MtpService;Landroid/mtp/MtpStorage;)V

    .line 138
    .end local v1           #storage:Landroid/mtp/MtpStorage;
    :cond_5
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    .line 140
    :cond_6
    iget v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mReason:I

    invoke-static {}, Lcom/android/providers/media/MtpService;->access$900()I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 142
    iget-object v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$100(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;

    move-result-object v3

    monitor-enter v3

    .line 143
    :try_start_4
    iget-object v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$300(Lcom/android/providers/media/MtpService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpStorage;

    .line 144
    .restart local v1       #storage:Landroid/mtp/MtpStorage;
    iget-object v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    invoke-virtual {v1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/providers/media/MtpService;->copyMtpIconLogo(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/providers/media/MtpService;->access$500(Lcom/android/providers/media/MtpService;Ljava/lang/String;)V

    goto :goto_3

    .line 146
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #storage:Landroid/mtp/MtpStorage;
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_7
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_1

    .line 150
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_8
    iget v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mReason:I

    invoke-static {}, Lcom/android/providers/media/MtpService;->access$1000()I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 151
    iget-object v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$100(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;

    move-result-object v3

    monitor-enter v3

    .line 152
    :try_start_6
    iget-object v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$1100(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 153
    iget-object v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$1100(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;

    move-result-object v2

    iget v4, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mObjectHandle:I

    invoke-virtual {v2, v4}, Landroid/mtp/MtpServer;->sendObjectAdded(I)V

    .line 155
    :cond_9
    monitor-exit v3

    goto/16 :goto_1

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2

    .line 156
    :cond_a
    iget v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mReason:I

    invoke-static {}, Lcom/android/providers/media/MtpService;->access$1200()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 157
    iget-object v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$100(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;

    move-result-object v3

    monitor-enter v3

    .line 158
    :try_start_7
    iget-object v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$1100(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 159
    iget-object v2, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;
    invoke-static {v2}, Lcom/android/providers/media/MtpService;->access$1100(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;

    move-result-object v2

    iget v4, p0, Lcom/android/providers/media/MtpService$MyTimerTask;->mObjectHandle:I

    invoke-virtual {v2, v4}, Landroid/mtp/MtpServer;->sendObjectRemoved(I)V

    .line 161
    :cond_b
    monitor-exit v3

    goto/16 :goto_1

    :catchall_4
    move-exception v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v2
.end method
