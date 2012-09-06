.class Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;
.super Ljava/lang/Object;
.source "WifiCttpDaemonProxy.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final END_OF_ARGUMENTS:I = 0xff

.field private static final SVC_START_CMD:Ljava/lang/String; = "ctl.start"

.field private static final SVC_STATE_CMD_PREFIX:Ljava/lang/String; = "init.svc."

.field private static final SVC_STATE_RUNNING:Ljava/lang/String; = "running"

.field private static final SVC_STATE_STOPPED:Ljava/lang/String; = "stopped"

.field private static final SVC_STOP_CMD:Ljava/lang/String; = "ctl.stop"

.field private static final WAITING_TIME:I = 0xf

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private PREFIX:Ljava/lang/String;

.field private transient mControlSocket:Landroid/net/LocalSocket;

.field private mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "daemonName"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "CttpdProxy"

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->PREFIX:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->mName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private blockUntil(Ljava/lang/String;I)Z
    .locals 7
    .parameter "expectedState"
    .parameter "waitTime"

    .prologue
    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init.svc."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, cmd:Ljava/lang/String;
    const/16 v3, 0xc8

    .line 166
    .local v3, sleepTime:I
    mul-int/lit16 v4, p2, 0x3e8

    div-int v2, v4, v3

    .line 167
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 168
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->PREFIX:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-int v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " msec"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 172
    :cond_1
    invoke-direct {p0, v3}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->sleep(I)V

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private createServiceSocket()Landroid/net/LocalSocket;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V

    .line 132
    .local v4, s:Landroid/net/LocalSocket;
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v5, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->mName:Ljava/lang/String;

    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v5, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 136
    .local v0, a:Landroid/net/LocalSocketAddress;
    const/4 v2, 0x0

    .line 137
    .local v2, excp:Ljava/io/IOException;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v5, 0xa

    if-ge v3, v5, :cond_0

    .line 139
    :try_start_0
    invoke-virtual {v4, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    return-object v4

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->PREFIX:Ljava/lang/String;

    const-string v6, "service not yet listen()ing; try again"

    invoke-static {v5, v6}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    move-object v2, v1

    .line 144
    const/16 v5, 0x1f4

    invoke-direct {p0, v5}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->sleep(I)V

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    throw v2
.end method

.method private getControlSocketOutput()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->mControlSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->mControlSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no control socket available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getResultFromSocket(Z)I
    .locals 6
    .parameter "blocking"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 119
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->mControlSocket:Landroid/net/LocalSocket;

    .line 120
    .local v2, s:Landroid/net/LocalSocket;
    if-nez v2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 122
    .local v1, in:Ljava/io/InputStream;
    if-nez p1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    :cond_2
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 125
    .local v0, data:I
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->PREFIX:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got data from control socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private outputString(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "out"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 179
    .local v0, bytes:[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 180
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 181
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 182
    return-void
.end method

.method private sleep(I)V
    .locals 3
    .parameter "msec"

    .prologue
    .line 186
    int-to-long v1, p1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method closeControlSocket()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->mControlSocket:Landroid/net/LocalSocket;

    if-nez v1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 98
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->mControlSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_1
    iput-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->mControlSocket:Landroid/net/LocalSocket;

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->PREFIX:Ljava/lang/String;

    const-string v2, "close control socket"

    invoke-static {v1, v2, v0}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 102
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->mControlSocket:Landroid/net/LocalSocket;

    throw v1
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getResultFromSocket()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->getResultFromSocket(Z)I

    move-result v0

    return v0
.end method

.method isStopped()Z
    .locals 3

    .prologue
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init.svc."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, cmd:Ljava/lang/String;
    const-string v1, "stopped"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method varargs sendCommand([Ljava/lang/String;)V
    .locals 9
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->getControlSocketOutput()Ljava/io/OutputStream;

    move-result-object v4

    .line 79
    .local v4, out:Ljava/io/OutputStream;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .local v0, arg:Ljava/lang/String;
    invoke-direct {p0, v4, v0}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->outputString(Ljava/io/OutputStream;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v0           #arg:Ljava/lang/String;
    :cond_0
    const/16 v6, 0xff

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write(I)V

    .line 81
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 83
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->getResultFromSocket(Z)I

    move-result v5

    .line 84
    .local v5, result:I
    array-length v6, p1

    if-eq v5, v6, :cond_1

    .line 85
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "socket error, result from service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 88
    :cond_1
    return-void
.end method

.method start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->PREFIX:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start CTTP daemon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "ctl.start"

    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->mName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "running"

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->blockUntil(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot start service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->mControlSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->PREFIX:Ljava/lang/String;

    const-string v1, "CHECK-ME:control Socket with cttpd is not null!"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->closeControlSocket()V

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->createServiceSocket()Landroid/net/LocalSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->mControlSocket:Landroid/net/LocalSocket;

    .line 75
    return-void
.end method

.method stop()V
    .locals 4

    .prologue
    .line 107
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->PREFIX:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop CTTP daemon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "ctl.stop"

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->mName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "stopped"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->blockUntil(Ljava/lang/String;I)Z

    move-result v0

    .line 110
    .local v0, success:Z
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->PREFIX:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", success? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method
