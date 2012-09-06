.class Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiCttpDaemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;


# direct methods
.method constructor <init>(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)V
    .locals 0
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 603
    const-string v3, "CttpdProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received connection changed event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 615
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_0

    .line 617
    const-string v3, "CttpdProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3GPP network state is changed :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 620
    const-string v3, "CttpdProxy"

    const-string v4, "Restart cttpd due to 3GPP down event"

    invoke-static {v3, v4}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mLastTimeReceivedIntent:J
    invoke-static {v5}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1800(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)J

    move-result-wide v5

    sub-long v1, v3, v5

    .line 623
    .local v1, intervalOfIntents:J
    const-wide/16 v3, 0x1f4

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mNotNeedHandleIntent:Z
    invoke-static {v3}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1900(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 624
    const-string v3, "CttpdProxy"

    const-string v4, "Ignore same connection changed event in 500ms."

    invoke-static {v3, v4}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    .end local v1           #intervalOfIntents:J
    :cond_0
    :goto_0
    return-void

    .line 639
    .restart local v1       #intervalOfIntents:J
    :cond_1
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v3}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$900(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/Message;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 641
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v3}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$900(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/Message;

    move-result-object v3

    invoke-static {v3, v7, v7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 642
    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    monitor-enter v4

    .line 643
    :try_start_0
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v3}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$900(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 644
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    const/4 v5, 0x0

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v3, v5}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$902(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Landroid/os/Message;)Landroid/os/Message;

    .line 653
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    :goto_1
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mLastTimeReceivedIntent:J
    invoke-static {v3, v4, v5}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1802(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;J)J

    .line 658
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    const/4 v4, 0x1

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mNotNeedHandleIntent:Z
    invoke-static {v3, v4}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1902(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Z)Z

    goto :goto_0

    .line 653
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 655
    :cond_2
    const-string v3, "CttpdProxy"

    const-string v4, "mStartCallback is null"

    invoke-static {v3, v4}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 660
    .end local v1           #intervalOfIntents:J
    :cond_3
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    const/4 v4, 0x0

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mNotNeedHandleIntent:Z
    invoke-static {v3, v4}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1902(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Z)Z

    goto :goto_0
.end method
