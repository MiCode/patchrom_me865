.class Lcom/motorola/net/wifi/ctcn/CtcnStateRegistering;
.super Lcom/motorola/net/wifi/ctcn/CtcnStateBase;
.source "CtcnStateRegistering.java"


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

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->sendCtcnStateChangeBroadcast(I)V

    .line 14
    return-void
.end method

.method handleEvent(ILjava/lang/Object;)Z
    .locals 4
    .parameter "event"
    .parameter "obj"

    .prologue
    const/16 v3, 0xb

    .line 18
    sparse-switch p1, :sswitch_data_0

    .line 53
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 20
    :sswitch_0
    if-eqz p2, :cond_1

    instance-of v1, p2, Landroid/os/AsyncResult;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 21
    check-cast v0, Landroid/os/AsyncResult;

    .line 22
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 23
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;

    invoke-virtual {v2, v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->onSipReady(Lcom/motorola/net/wifi/ctcn/RegistrationInfo;)V

    .line 24
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateRegistered:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "register SIP failed!"

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v1, v3}, Lcom/motorola/net/wifi/ctcn/CtcnController;->sendCtcnStateChangeBroadcast(I)V

    .line 28
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInitialized:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto :goto_0

    .line 31
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register SIP failed obj="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInitialized:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto :goto_0

    .line 36
    :sswitch_1
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v1, v3}, Lcom/motorola/net/wifi/ctcn/CtcnController;->sendCtcnStateChangeBroadcast(I)V

    .line 37
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInitialized:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto :goto_0

    .line 40
    :sswitch_2
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->stopSip()V

    .line 41
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateDeregisterting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto/16 :goto_0

    .line 44
    :sswitch_3
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->stopSip()V

    .line 47
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInitialized:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto/16 :goto_0

    .line 50
    :sswitch_4
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInitialized:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto/16 :goto_0

    .line 18
    nop

    :sswitch_data_0
    .sparse-switch
        0x3eb -> :sswitch_0
        0x3ec -> :sswitch_1
        0x7d1 -> :sswitch_4
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_3
    .end sparse-switch
.end method
