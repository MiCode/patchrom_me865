.class Lcom/motorola/net/wifi/ctcn/CtcnStateInitialized;
.super Lcom/motorola/net/wifi/ctcn/CtcnStateBase;
.source "CtcnStateInitialized.java"


# direct methods
.method constructor <init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;-><init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V

    .line 9
    return-void
.end method


# virtual methods
.method enter()V
    .locals 3

    .prologue
    .line 13
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->sendCtcnStateChangeBroadcast(I)V

    .line 14
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-boolean v0, v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaTerminated:Z

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->clearCachedEvents()V

    .line 16
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->uaTerminated()V

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-boolean v0, v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDisconnectRequested:Z

    if-eqz v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->clearCachedEvents()V

    .line 19
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v1, v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDisconnected:Z

    .line 21
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v0, v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 22
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-boolean v0, v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferredApnChanged:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-boolean v0, v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDefaultDataNetworkChanged:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-boolean v0, v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mConnectRequested:Z

    if-eqz v0, :cond_0

    .line 25
    :cond_3
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->clearCachedEvents()V

    .line 26
    const/16 v0, 0x3ea

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/net/wifi/ctcn/CtcnStateInitialized;->handleEvent(ILjava/lang/Object;)Z

    goto :goto_0
.end method

.method exit()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDisconnected:Z

    .line 33
    return-void
.end method

.method handleEvent(ILjava/lang/Object;)Z
    .locals 5
    .parameter "event"
    .parameter "obj"

    .prologue
    const/4 v4, 0x1

    .line 37
    sparse-switch p1, :sswitch_data_0

    .line 58
    :goto_0
    return v4

    .line 39
    :sswitch_0
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->startSip()Z

    move-result v0

    .line 40
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 41
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateRegistering:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fail to start SIP"

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    .end local v0           #result:Z
    :sswitch_1
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferredApnChanged:Z

    .line 48
    const/16 v1, 0x3ea

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnStateInitialized;->handleEvent(ILjava/lang/Object;)Z

    goto :goto_0

    .line 52
    :sswitch_2
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, v1, Lcom/motorola/net/wifi/ctcn/CtcnController;->mSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDisconnected:Z

    .line 54
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v1, v1, Lcom/motorola/net/wifi/ctcn/CtcnController;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 55
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ea -> :sswitch_0
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_2
        0x7d4 -> :sswitch_1
    .end sparse-switch
.end method
