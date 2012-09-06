.class Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$1;
.super Landroid/os/Handler;
.source "WifiCtcnUaProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;


# direct methods
.method constructor <init>(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$1;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 216
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 218
    :pswitch_0
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$1;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->ctcnwlan:Lcom/motorola/net/wifi/ctcn/CtcnUaManager;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$500(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Lcom/motorola/net/wifi/ctcn/CtcnUaManager;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$1;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mServerIP:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$000(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$1;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mLocalIP:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$100(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;

    iget-object v6, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$1;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->WLAN11Type:Ljava/lang/String;
    invoke-static {v6}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$200(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$1;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mSSID:Ljava/lang/String;
    invoke-static {v7}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$300(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$1;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mbSSID:Ljava/lang/String;
    invoke-static {v8}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$400(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/net/wifi/ctcn/AccessNetInfo;)Z

    move-result v0

    .line 220
    .local v0, ret:Z
    if-eqz v0, :cond_1

    .line 221
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$1;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInitialized:Z
    invoke-static {v1, v9}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$602(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;Z)Z

    .line 225
    :goto_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    check-cast v1, Landroid/os/Message;

    if-eqz v0, :cond_2

    move-object v2, v3

    :goto_2
    invoke-static {v1, v3, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 227
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$1;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->ctcnwlan:Lcom/motorola/net/wifi/ctcn/CtcnUaManager;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$500(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Lcom/motorola/net/wifi/ctcn/CtcnUaManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->terminate()Z

    goto :goto_1

    .line 226
    :cond_2
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    goto :goto_2

    .line 231
    .end local v0           #ret:Z
    :pswitch_1
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$1;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    invoke-virtual {v1, v9}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->notifyUaTerminated(I)V

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
