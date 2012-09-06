.class Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;
.super Landroid/os/Handler;
.source "WifiCttpDaemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# instance fields
.field mPppRetryCount:I

.field mRetryCounter:I

.field final synthetic this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;


# direct methods
.method constructor <init>(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    const/4 v0, 0x0

    .line 381
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    .line 382
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 379
    iput v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->mRetryCounter:I

    .line 380
    iput v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->mPppRetryCount:I

    .line 383
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 387
    const-string v1, "CttpdProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 522
    const-string v1, "CttpdProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unhandled message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :goto_0
    return-void

    .line 390
    :pswitch_0
    iput v7, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->mRetryCounter:I

    .line 392
    :try_start_0
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;

    #calls: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->prepare(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Z
    invoke-static {v2, v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$700(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    const/4 v2, 0x4

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mState:I
    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$802(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;I)I

    .line 395
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$900(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$900(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 397
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :try_start_1
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$900(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 399
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    const/4 v3, 0x0

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v1, v3}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$902(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Landroid/os/Message;)Landroid/os/Message;

    .line 400
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CttpdProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDaemon fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #calls: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->onFinalCleanUp()V
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1300(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)V

    .line 411
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->stopMonitorCttpd()V

    .line 412
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1200(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->closeControlSocket()V

    .line 413
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1200(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->stop()V

    .line 414
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mState:I
    invoke-static {v1, v6}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$802(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;I)I

    .line 415
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$900(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 418
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$900(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v4, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 419
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    monitor-enter v2

    .line 420
    :try_start_3
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$900(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 421
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    const/4 v3, 0x0

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v1, v3}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$902(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Landroid/os/Message;)Landroid/os/Message;

    .line 422
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 402
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_4
    const-string v1, "CttpdProxy"

    const-string v2, "mStartCallback is null"

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    const-string v2, "cttpd"

    #calls: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->startDaemon(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1000(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1200(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;

    move-result-object v2

    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mArgs:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1100(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mArgs:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1100(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->sendCommand([Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 428
    invoke-virtual {p0, v5}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->removeMessages(I)V

    .line 429
    invoke-virtual {p0, v5}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 424
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_2
    const-string v1, "CttpdProxy"

    const-string v2, "mStartCallback is null"

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 432
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mState:I
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$800(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)I

    move-result v1

    if-eq v1, v6, :cond_3

    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mState:I
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$800(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 433
    :cond_3
    const-string v1, "CttpdProxy"

    const-string v2, "EVENT_CTTPD_MONITOR: STATE_CTCW_CTTPD_STOPPED, breaking"

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 436
    :cond_4
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    const-string v2, "ok"

    #calls: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->checkStatus(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1400(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 437
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mState:I
    invoke-static {v1, v8}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$802(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;I)I

    .line 438
    invoke-static {}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getInstance()Lcom/motorola/net/wifi/ctcn/CtcnController;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 439
    invoke-static {}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getInstance()Lcom/motorola/net/wifi/ctcn/CtcnController;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setPppRetryCount(I)V

    .line 441
    :cond_5
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$900(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 442
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    monitor-enter v2

    .line 443
    :try_start_5
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$900(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 444
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    const/4 v3, 0x0

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v1, v3}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$902(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Landroid/os/Message;)Landroid/os/Message;

    .line 445
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 447
    :cond_6
    const-string v1, "CttpdProxy"

    const-string v2, "mStartCallback is null"

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    :cond_7
    invoke-virtual {p0, v5}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->removeMessages(I)V

    .line 452
    iget v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->mRetryCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->mRetryCounter:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_8

    .line 453
    invoke-virtual {p0, v5}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 455
    :cond_8
    invoke-static {}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getInstance()Lcom/motorola/net/wifi/ctcn/CtcnController;

    move-result-object v1

    if-nez v1, :cond_a

    .line 462
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->stopMonitorCttpd()V

    .line 463
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$900(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 466
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$900(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v4, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 467
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    monitor-enter v2

    .line 468
    :try_start_6
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$900(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 469
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    const/4 v3, 0x0

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v1, v3}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$902(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Landroid/os/Message;)Landroid/os/Message;

    .line 470
    monitor-exit v2

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    .line 472
    :cond_9
    const-string v1, "CttpdProxy"

    const-string v2, "mStartCallback is null"

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 475
    :cond_a
    invoke-static {}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getInstance()Lcom/motorola/net/wifi/ctcn/CtcnController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getPppRetryCount()I

    move-result v1

    iput v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->mPppRetryCount:I

    .line 476
    iget v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->mPppRetryCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->mPppRetryCount:I

    if-ge v1, v8, :cond_c

    .line 477
    invoke-static {}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getInstance()Lcom/motorola/net/wifi/ctcn/CtcnController;

    move-result-object v1

    iget v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->mPppRetryCount:I

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setPppRetryCount(I)V

    .line 484
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->stopMonitorCttpd()V

    .line 485
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$900(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 488
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$900(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, v4, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 489
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    monitor-enter v2

    .line 490
    :try_start_7
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$900(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 491
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    const/4 v3, 0x0

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;
    invoke-static {v1, v3}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$902(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Landroid/os/Message;)Landroid/os/Message;

    .line 492
    monitor-exit v2

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1

    .line 494
    :cond_b
    const-string v1, "CttpdProxy"

    const-string v2, "mStartCallback is null"

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 499
    :cond_c
    invoke-static {}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getInstance()Lcom/motorola/net/wifi/ctcn/CtcnController;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setPppRetryCount(I)V

    .line 500
    invoke-static {}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getInstance()Lcom/motorola/net/wifi/ctcn/CtcnController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->notifyUaTerminated()V

    goto/16 :goto_0

    .line 507
    :pswitch_2
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #calls: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->onFinalCleanUp()V
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1300(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)V

    .line 508
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->stopMonitorCttpd()V

    .line 509
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1200(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->closeControlSocket()V

    .line 510
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1200(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->stop()V

    .line 511
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mState:I
    invoke-static {v1, v6}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$802(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;I)I

    .line 512
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    monitor-enter v2

    .line 513
    :try_start_8
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStopCallbak:Landroid/os/Message;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1500(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 514
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStopCallbak:Landroid/os/Message;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1500(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 515
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    const/4 v3, 0x0

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStopCallbak:Landroid/os/Message;
    invoke-static {v1, v3}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1502(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Landroid/os/Message;)Landroid/os/Message;

    .line 517
    :cond_d
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mMessageThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1600(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 518
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->this$0:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    const/4 v3, 0x0

    #setter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mMessageThread:Landroid/os/HandlerThread;
    invoke-static {v1, v3}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->access$1602(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 519
    monitor-exit v2

    goto/16 :goto_0

    :catchall_5
    move-exception v1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v1

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
