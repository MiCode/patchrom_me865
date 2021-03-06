.class public Lcom/android/server/SUPLService$SUPLThread;
.super Ljava/lang/Thread;
.source "SUPLService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SUPLService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SUPLThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    const-string v0, "SUPL Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/android/server/SUPLService$SUPLThread;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public static getServiceInstance(Landroid/content/Context;)Lcom/android/server/SUPLService;
    .locals 4
    .parameter "context"

    .prologue
    .line 71
    new-instance v1, Lcom/android/server/SUPLService$SUPLThread;

    invoke-direct {v1, p0}, Lcom/android/server/SUPLService$SUPLThread;-><init>(Landroid/content/Context;)V

    .line 73
    .local v1, thread:Lcom/android/server/SUPLService$SUPLThread;
    invoke-virtual {v1}, Lcom/android/server/SUPLService$SUPLThread;->start()V

    .line 74
    monitor-enter v1

    .line 75
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/server/SUPLService;->access$000()Lcom/android/server/SUPLService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    .line 78
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, ignore:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "SUPLService"

    const-string v3, "Unexpected InterruptedException while waiting for SUPLService Thread"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    .end local v0           #ignore:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    invoke-static {}, Lcom/android/server/SUPLService;->access$000()Lcom/android/server/SUPLService;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 54
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    new-instance v1, Lcom/android/server/SUPLService;

    iget-object v2, p0, Lcom/android/server/SUPLService$SUPLThread;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/SUPLService;-><init>(Landroid/content/Context;Lcom/android/server/SUPLService$1;)V

    invoke-static {v1}, Lcom/android/server/SUPLService;->access$002(Lcom/android/server/SUPLService;)Lcom/android/server/SUPLService;

    .line 58
    new-instance v1, Lcom/android/server/SUPLServer;

    invoke-static {}, Lcom/android/server/SUPLService;->access$000()Lcom/android/server/SUPLService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/SUPLService$SUPLThread;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/server/SUPLServer;-><init>(Lcom/android/server/SUPLService;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/android/server/SUPLService;->access$202(Lcom/android/server/SUPLServer;)Lcom/android/server/SUPLServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :try_start_1
    invoke-static {}, Lcom/android/server/SUPLService;->access$200()Lcom/android/server/SUPLServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SUPLServer;->start()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 65
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 67
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, ignore:Ljava/io/IOException;
    :try_start_3
    const-string v1, "SUPLService"

    const-string v2, "====>>> IO Exception  error with starting SUPL Server <<<==="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    .end local v0           #ignore:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
