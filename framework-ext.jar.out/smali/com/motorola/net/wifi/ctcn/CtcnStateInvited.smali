.class Lcom/motorola/net/wifi/ctcn/CtcnStateInvited;
.super Lcom/motorola/net/wifi/ctcn/CtcnStateBase;
.source "CtcnStateInvited.java"


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
    .locals 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->isCdmaDataNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    const/16 v0, 0x3ed

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/net/wifi/ctcn/CtcnStateInvited;->handleEvent(ILjava/lang/Object;)Z

    .line 17
    :cond_0
    return-void
.end method

.method handleEvent(ILjava/lang/Object;)Z
    .locals 7
    .parameter "event"
    .parameter "obj"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 21
    sparse-switch p1, :sswitch_data_0

    .line 73
    :cond_0
    :goto_0
    :sswitch_0
    return v5

    .line 23
    :sswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "May switch back to REGISTERED due to BYE?"

    invoke-static {v2, v3}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    if-eqz p2, :cond_1

    instance-of v2, p2, Landroid/os/AsyncResult;

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 25
    check-cast v0, Landroid/os/AsyncResult;

    .line 26
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "May switch back to REGISTERED due to BYE? Yes"

    invoke-static {v2, v3}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iput-boolean v5, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateReverted:Z

    .line 32
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v3, v3, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateDisonnecting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v2, v3}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto :goto_0

    .line 37
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get wrong event obj="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/16 v2, 0x7d3

    invoke-virtual {p0, v2, v6}, Lcom/motorola/net/wifi/ctcn/CtcnStateInvited;->handleEvent(ILjava/lang/Object;)Z

    goto :goto_0

    .line 41
    :sswitch_2
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDefaultDataNetworkChanged:Z

    .line 42
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->isCdmaDataNetworkEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const/16 v2, 0x3ed

    invoke-virtual {p0, v2, v6}, Lcom/motorola/net/wifi/ctcn/CtcnStateInvited;->handleEvent(ILjava/lang/Object;)Z

    goto :goto_0

    .line 47
    :sswitch_3
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->startCttpd()Z

    move-result v1

    .line 48
    .local v1, result:Z
    if-eqz v1, :cond_0

    .line 49
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v3, v3, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateConnecting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v2, v3}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto :goto_0

    .line 58
    .end local v1           #result:Z
    :sswitch_4
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->teardownDataLink()V

    .line 59
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->stopSip()V

    .line 60
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v3, v3, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateDeregisterting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v2, v3}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto/16 :goto_0

    .line 63
    :sswitch_5
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->teardownDataLink()V

    .line 64
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->stopSip()V

    .line 67
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v3, v3, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInitialized:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v2, v3}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto/16 :goto_0

    .line 70
    :sswitch_6
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v3, v3, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInitialized:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v2, v3}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto/16 :goto_0

    .line 21
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_3
        0x3f1 -> :sswitch_4
        0x3f6 -> :sswitch_1
        0x3f7 -> :sswitch_0
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_4
        0x7d3 -> :sswitch_5
        0x7d4 -> :sswitch_4
        0x7d5 -> :sswitch_2
    .end sparse-switch
.end method
