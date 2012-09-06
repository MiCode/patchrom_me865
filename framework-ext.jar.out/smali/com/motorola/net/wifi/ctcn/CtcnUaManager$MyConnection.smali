.class Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;
.super Ljava/lang/Object;
.source "CtcnUaManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/net/wifi/ctcn/CtcnUaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyConnection"
.end annotation


# instance fields
.field private mOnComplete:Landroid/os/Message;

.field private mOnDisconneted:Landroid/os/Message;

.field final synthetic this$0:Lcom/motorola/net/wifi/ctcn/CtcnUaManager;


# direct methods
.method constructor <init>(Lcom/motorola/net/wifi/ctcn/CtcnUaManager;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "onComplete"
    .parameter "onDisconneted"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnUaManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;->mOnComplete:Landroid/os/Message;

    .line 27
    iput-object p3, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;->mOnDisconneted:Landroid/os/Message;

    .line 28
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "className"
    .parameter "service"

    .prologue
    const/4 v5, 0x0

    .line 32
    :try_start_0
    const-string v1, "UaManager"

    const-string v2, "onServiceConnected..."

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnUaManager;

    #getter for: Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->access$000(Lcom/motorola/net/wifi/ctcn/CtcnUaManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :try_start_1
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnUaManager;

    invoke-static {p2}, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    move-result-object v3

    #setter for: Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;
    invoke-static {v1, v3}, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->access$102(Lcom/motorola/net/wifi/ctcn/CtcnUaManager;Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;)Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    .line 35
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :goto_0
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;->mOnComplete:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;->mOnComplete:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 45
    iput-object v5, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;->mOnComplete:Landroid/os/Message;

    .line 47
    :cond_0
    return-void

    .line 35
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnUaManager;

    #getter for: Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->access$000(Lcom/motorola/net/wifi/ctcn/CtcnUaManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 38
    :try_start_4
    const-string v1, "UaManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception in onServiceConnected...e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnUaManager;

    const/4 v3, 0x0

    #setter for: Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;
    invoke-static {v1, v3}, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->access$102(Lcom/motorola/net/wifi/ctcn/CtcnUaManager;Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;)Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    .line 40
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "className"

    .prologue
    const/4 v3, 0x0

    .line 50
    const-string v0, "UaManager"

    const-string v1, "onServiceDisconnected..."

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnUaManager;

    #getter for: Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->access$200(Lcom/motorola/net/wifi/ctcn/CtcnUaManager;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.intent.action.REGISTRATION_STATUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 52
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnUaManager;

    #getter for: Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->access$000(Lcom/motorola/net/wifi/ctcn/CtcnUaManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;->this$0:Lcom/motorola/net/wifi/ctcn/CtcnUaManager;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;
    invoke-static {v0, v2}, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->access$102(Lcom/motorola/net/wifi/ctcn/CtcnUaManager;Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;)Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    .line 54
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;->mOnDisconneted:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;->mOnDisconneted:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 57
    iput-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;->mOnDisconneted:Landroid/os/Message;

    .line 59
    :cond_0
    return-void

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
