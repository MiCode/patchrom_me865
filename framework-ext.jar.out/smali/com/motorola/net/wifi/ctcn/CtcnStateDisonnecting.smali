.class Lcom/motorola/net/wifi/ctcn/CtcnStateDisonnecting;
.super Lcom/motorola/net/wifi/ctcn/CtcnStateBase;
.source "CtcnStateDisonnecting.java"


# direct methods
.method constructor <init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;-><init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V

    .line 6
    return-void
.end method


# virtual methods
.method handleEvent(ILjava/lang/Object;)Z
    .locals 2
    .parameter "event"
    .parameter "obj"

    .prologue
    .line 10
    sparse-switch p1, :sswitch_data_0

    .line 27
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 12
    :sswitch_0
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-boolean v0, v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaTerminated:Z

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v1, v1, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInitialized:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v0, v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-boolean v0, v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDisconnectRequested:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-boolean v0, v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferredApnChanged:Z

    if-eqz v0, :cond_2

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->stopSip()V

    .line 16
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v1, v1, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateDeregisterting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v0, v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v1, v1, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateRegistered:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v0, v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto :goto_0

    .line 22
    :sswitch_1
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-virtual {v0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->stopSip()V

    .line 23
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    iget-object v1, v1, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInitialized:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v0, v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V

    goto :goto_0

    .line 10
    nop

    :sswitch_data_0
    .sparse-switch
        0x3f2 -> :sswitch_0
        0x7d3 -> :sswitch_1
    .end sparse-switch
.end method
