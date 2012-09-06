.class Lcom/motorola/net/wifi/ctcn/CtcnStateRegistered;
.super Lcom/motorola/net/wifi/ctcn/CtcnStateBase;
.source "CtcnStateRegistered.java"


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
    .line 15
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->sendCtcnStateChangeBroadcast(I)V

    .line 26
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->isCdmaDataNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const/16 v0, 0x3f5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/net/wifi/ctcn/CtcnStateRegistered;->handleEvent(ILjava/lang/Object;)Z

    .line 29
    :cond_0
    return-void
.end method

.method handleEvent(ILjava/lang/Object;)Z
    .locals 3
    .parameter "event"
    .parameter "obj"

    .prologue
    .line 33
    sparse-switch p1, :sswitch_data_0

    .line 76
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 35
    :sswitch_0
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDefaultDataNetworkChanged:Z

    .line 36
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->isCdmaDataNetworkEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const/16 v1, 0x3f5

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnStateRegistered;->handleEvent(ILjava/lang/Object;)Z

    goto :goto_0

    .line 49
    :sswitch_1
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->startEstablishGreTunnel()Z

    move-result v0

    .line 50
    .local v0, result:Z
    if-eqz v0, :cond_1

    .line 51
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInviting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fail to start SIP"

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->stopSip()V

    .line 57
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInitialized:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto :goto_0

    .line 63
    .end local v0           #result:Z
    :sswitch_2
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->stopSip()V

    .line 64
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateDeregisterting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto :goto_0

    .line 67
    :sswitch_3
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->stopSip()V

    .line 70
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInitialized:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto :goto_0

    .line 73
    :sswitch_4
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInitialized:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto :goto_0

    .line 33
    nop

    :sswitch_data_0
    .sparse-switch
        0x3f1 -> :sswitch_2
        0x3f5 -> :sswitch_1
        0x7d1 -> :sswitch_4
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_3
        0x7d4 -> :sswitch_2
        0x7d5 -> :sswitch_0
    .end sparse-switch
.end method
