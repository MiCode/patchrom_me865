.class Lcom/motorola/net/wifi/ctcn/CtcnStateConnecting;
.super Lcom/motorola/net/wifi/ctcn/CtcnStateBase;
.source "CtcnStateConnecting.java"


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
    .line 13
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->sendCtcnStateChangeBroadcast(I)V

    .line 14
    return-void
.end method

.method handleEvent(ILjava/lang/Object;)Z
    .locals 7
    .parameter "event"
    .parameter "obj"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x7d3

    const/4 v4, 0x1

    .line 18
    sparse-switch p1, :sswitch_data_0

    .line 75
    :goto_0
    return v4

    .line 20
    :sswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "May switch back to REGISTERED due to BYE?"

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    if-eqz p2, :cond_0

    instance-of v1, p2, Landroid/os/AsyncResult;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 22
    check-cast v0, Landroid/os/AsyncResult;

    .line 23
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "May switch back to REGISTERED due to BYE? Yes"

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iput-boolean v4, v1, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateReverted:Z

    .line 29
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->stopCttpd()V

    .line 30
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateDisonnecting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto :goto_0

    .line 35
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get wrong event obj="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, v5, v6}, Lcom/motorola/net/wifi/ctcn/CtcnStateConnecting;->handleEvent(ILjava/lang/Object;)Z

    goto :goto_0

    .line 39
    :sswitch_1
    if-nez p2, :cond_1

    .line 40
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateConnected:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto :goto_0

    .line 41
    :cond_1
    instance-of v1, p2, Landroid/os/AsyncResult;

    if-eqz v1, :cond_3

    move-object v0, p2

    .line 43
    check-cast v0, Landroid/os/AsyncResult;

    .line 44
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 45
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->teardownDataLink()V

    .line 46
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->stopCttpd()V

    .line 48
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateDisonnecting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto/16 :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0, v5, v6}, Lcom/motorola/net/wifi/ctcn/CtcnStateConnecting;->handleEvent(ILjava/lang/Object;)Z

    goto/16 :goto_0

    .line 54
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_3
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInvited:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto/16 :goto_0

    .line 58
    :sswitch_2
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInvited:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto/16 :goto_0

    .line 64
    :sswitch_3
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->teardownDataLink()V

    .line 65
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->stopCttpd()V

    .line 66
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateDisonnecting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto/16 :goto_0

    .line 69
    :sswitch_4
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->teardownDataLink()V

    .line 70
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->stopCttpd()V

    .line 71
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->stopSip()V

    .line 72
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInitialized:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto/16 :goto_0

    .line 18
    :sswitch_data_0
    .sparse-switch
        0x3ee -> :sswitch_1
        0x3ef -> :sswitch_2
        0x3f6 -> :sswitch_0
        0x7d1 -> :sswitch_3
        0x7d2 -> :sswitch_3
        0x7d3 -> :sswitch_4
        0x7d4 -> :sswitch_3
        0x7d5 -> :sswitch_3
    .end sparse-switch
.end method
