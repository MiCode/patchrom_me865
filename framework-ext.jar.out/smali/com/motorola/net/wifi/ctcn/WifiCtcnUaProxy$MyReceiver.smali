.class Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiCtcnUaProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyReceiver"
.end annotation


# instance fields
.field private mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

.field final synthetic this$0:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;


# direct methods
.method constructor <init>(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)V
    .locals 0
    .parameter
    .parameter "proxy"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 241
    iput-object p2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    .line 242
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 246
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    monitor-enter v3

    .line 247
    :try_start_0
    const-string v2, "status"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, newState:Ljava/lang/String;
    const-string v2, "UaProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received CTCN_REGISTRATION_STATUS_CHANGED, oldState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;
    invoke-static {v5}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$700(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v2, "INVITING"

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$700(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "INVITED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    const-string v2, "regInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;

    .line 257
    .local v0, info:Lcom/motorola/net/wifi/ctcn/RegistrationInfo;
    const-string v2, "UaProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---invited---:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInviteCallback:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$800(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 259
    const-string v2, "UaProxy"

    const-string v4, "mProxy.mInviteCallback != null"

    invoke-static {v2, v4}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInviteCallback:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$800(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v0, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 261
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInviteCallback:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$800(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 262
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    const/4 v4, 0x0

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInviteCallback:Landroid/os/Message;
    invoke-static {v2, v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$802(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;Landroid/os/Message;)Landroid/os/Message;

    .line 359
    .end local v0           #info:Lcom/motorola/net/wifi/ctcn/RegistrationInfo;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$702(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    monitor-exit v3

    .line 361
    return-void

    .line 266
    :cond_1
    const-string v2, "INVITED"

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$700(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "REGISTERED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    const-string v2, "UaProxy"

    const-string v4, "Need request CtcnController back to registered state"

    invoke-static {v2, v4}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInviteCallback:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$800(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 271
    const-string v2, "UaProxy"

    const-string v4, "mProxy.mInviteCallback != null"

    invoke-static {v2, v4}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 360
    .end local v1           #newState:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 282
    .restart local v1       #newState:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v2, "INVITING"

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$700(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "INVITED"

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$700(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v2, "INIT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 287
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->notifyUaTerminated(I)V

    goto :goto_0

    .line 290
    :cond_4
    const-string v2, "INVITING"

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$700(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "INVITED"

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$700(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-string v2, "REGISTERING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 294
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    const/4 v4, 0x1

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mReregister:Z
    invoke-static {v2, v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$902(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;Z)Z

    goto/16 :goto_0

    .line 297
    :cond_6
    const-string v2, "REGISTERED"

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$700(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "REGISTERED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 301
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->notifyUaTerminated(I)V

    goto/16 :goto_0

    .line 304
    :cond_7
    const-string v2, "REGISTERING"

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$700(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "REGISTERED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 307
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mRegisterCallback:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$1000(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mRegisterCallback:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$1000(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 309
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mRegisterCallback:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$1000(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 310
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    const/4 v4, 0x0

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mRegisterCallback:Landroid/os/Message;
    invoke-static {v2, v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$1002(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;Landroid/os/Message;)Landroid/os/Message;

    goto/16 :goto_0

    .line 314
    :cond_8
    const-string v2, "REGISTERING"

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$700(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "INIT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 317
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mRegisterCallback:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$1000(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 318
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mRegisterCallback:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$1000(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Landroid/os/RemoteException;

    invoke-direct {v5}, Landroid/os/RemoteException;-><init>()V

    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 319
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mRegisterCallback:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$1000(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 320
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    const/4 v4, 0x0

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mRegisterCallback:Landroid/os/Message;
    invoke-static {v2, v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$1002(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;Landroid/os/Message;)Landroid/os/Message;

    .line 323
    :cond_9
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mReregister:Z
    invoke-static {v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$900(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->notifyUaTerminated(I)V

    .line 325
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    const/4 v4, 0x0

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mReregister:Z
    invoke-static {v2, v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$902(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;Z)Z

    goto/16 :goto_0

    .line 329
    :cond_a
    const-string v2, "REGISTERED"

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$700(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "INIT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 331
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->notifyUaTerminated(I)V

    goto/16 :goto_0

    .line 334
    :cond_b
    const-string v2, "DEREGISTERING"

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$700(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "INIT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 336
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mDeregisterCallback:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$1100(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 337
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mDeregisterCallback:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$1100(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 338
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mDeregisterCallback:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$1100(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 339
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    const/4 v4, 0x0

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mDeregisterCallback:Landroid/os/Message;
    invoke-static {v2, v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$1102(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;Landroid/os/Message;)Landroid/os/Message;

    goto/16 :goto_0

    .line 343
    :cond_c
    const-string v2, "INIT"

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$700(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "INIT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 345
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mRegisterCallback:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$1000(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 346
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mRegisterCallback:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$1000(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Landroid/os/RemoteException;

    invoke-direct {v5}, Landroid/os/RemoteException;-><init>()V

    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 347
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mRegisterCallback:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$1000(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 348
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    const/4 v4, 0x0

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mRegisterCallback:Landroid/os/Message;
    invoke-static {v2, v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$1002(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;Landroid/os/Message;)Landroid/os/Message;

    goto/16 :goto_0

    .line 349
    :cond_d
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mDeregisterCallback:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$1100(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mDeregisterCallback:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$1100(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 351
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mDeregisterCallback:Landroid/os/Message;
    invoke-static {v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$1100(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 352
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    const/4 v4, 0x0

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mDeregisterCallback:Landroid/os/Message;
    invoke-static {v2, v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$1102(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;Landroid/os/Message;)Landroid/os/Message;

    goto/16 :goto_0

    .line 355
    :cond_e
    const-string v2, "REGISTERED"

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->mProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$700(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "REGISTERING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    const/4 v4, 0x1

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mReregister:Z
    invoke-static {v2, v4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->access$902(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
