.class Lcom/android/server/SUPLServer;
.super Ljava/lang/Object;
.source "SUPLServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final COMMAND_PROTOCOL_VERSION:Ljava/lang/String; = "PROTOCOL"

.field private static final COMMAND_SERVER_VERSION:Ljava/lang/String; = "SERVER"

.field private static final COMMAND_WINDOW_MANAGER_LIST:Ljava/lang/String; = "LIST"

.field public static final CONFIG_PATH:Ljava/lang/String; = "/data/TI/SuplConfig.spl"

.field public static Impl:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "SUPLServer"

.field private static Pass:Ljava/lang/String; = null

.field private static Path:Ljava/lang/String; = null

.field private static final VALUE_PROTOCOL_VERSION:Ljava/lang/String; = "2"

.field private static final VALUE_SERVER_VERSION:Ljava/lang/String; = "2"

.field public static final VIEW_SERVER_DEFAULT_PORT:I = 0x1388


# instance fields
.field private SLPThread:Ljava/lang/Thread;

.field private TestThread:Ljava/lang/Thread;

.field private checkBind:Z

.field private mContext:Landroid/content/Context;

.field private final mPort:I

.field private mServer:Ljava/net/ServerSocket;

.field private final mSuplServer:Lcom/android/server/SUPLService;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "/certificate/client_keystore.bks"

    sput-object v0, Lcom/android/server/SUPLServer;->Path:Ljava/lang/String;

    .line 69
    const-string v0, "Socket"

    sput-object v0, Lcom/android/server/SUPLServer;->Impl:Ljava/lang/String;

    .line 70
    const-string v0, "123456"

    sput-object v0, Lcom/android/server/SUPLServer;->Pass:Ljava/lang/String;

    .line 77
    const-string v0, "suplhelperservicejni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method constructor <init>(Lcom/android/server/SUPLService;)V
    .locals 1
    .parameter "suplserv"

    .prologue
    .line 87
    const/16 v0, 0x1388

    invoke-direct {p0, p1, v0}, Lcom/android/server/SUPLServer;-><init>(Lcom/android/server/SUPLService;I)V

    .line 89
    return-void
.end method

.method constructor <init>(Lcom/android/server/SUPLService;I)V
    .locals 0
    .parameter "suplserv"
    .parameter "port"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/server/SUPLServer;->mSuplServer:Lcom/android/server/SUPLService;

    .line 99
    iput p2, p0, Lcom/android/server/SUPLServer;->mPort:I

    .line 100
    return-void
.end method

.method constructor <init>(Lcom/android/server/SUPLService;Landroid/content/Context;)V
    .locals 0
    .parameter "suplserv"
    .parameter "context"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/SUPLServer;-><init>(Lcom/android/server/SUPLService;)V

    .line 105
    iput-object p2, p0, Lcom/android/server/SUPLServer;->mContext:Landroid/content/Context;

    .line 106
    return-void
.end method

.method private native nativeStartSocketServer()Z
.end method

.method private static writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 8
    .parameter "client"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 247
    const/4 v2, 0x0

    .line 250
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 251
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v3, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v2           #out:Ljava/io/BufferedWriter;
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 253
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 255
    const/4 v4, 0x1

    .line 259
    .local v4, result:Z
    if-eqz v3, :cond_2

    .line 261
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move v5, v4

    :goto_0
    move-object v2, v3

    .line 267
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :cond_0
    :goto_1
    return v5

    .line 256
    .end local v4           #result:Z
    :catch_0
    move-exception v1

    .line 257
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    const/4 v4, 0x0

    .line 259
    .restart local v4       #result:Z
    if-eqz v2, :cond_0

    .line 261
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 262
    :catch_1
    move-exception v1

    .line 263
    .local v1, e:Ljava/io/IOException;
    goto :goto_1

    .line 259
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #result:Z
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_1

    .line 261
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 259
    :cond_1
    :goto_4
    throw v5

    .line 262
    :catch_2
    move-exception v1

    .line 263
    .restart local v1       #e:Ljava/io/IOException;
    goto :goto_4

    .line 262
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .restart local v4       #result:Z
    :catch_3
    move-exception v1

    .line 263
    .restart local v1       #e:Ljava/io/IOException;
    goto :goto_0

    .line 259
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #result:Z
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .line 256
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .restart local v4       #result:Z
    :cond_2
    move v5, v4

    goto :goto_0
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 200
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    if-ne v2, v3, :cond_0

    .line 210
    :try_start_0
    new-instance v1, Landroid/supl/config/SuplConfig;

    invoke-direct {v1}, Landroid/supl/config/SuplConfig;-><init>()V

    .line 211
    .local v1, spl:Landroid/supl/config/SuplConfig;
    const-string v2, "/data/TI/SuplConfig.spl"

    invoke-virtual {v1, v2}, Landroid/supl/config/SuplConfig;->readConfigPath(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1}, Landroid/supl/config/SuplConfig;->PrintConfig()V

    .line 215
    invoke-virtual {v1}, Landroid/supl/config/SuplConfig;->getStorePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/supl/CNet;->SetPath(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v1}, Landroid/supl/config/SuplConfig;->getImplType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/supl/CNet;->SetImpl(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1}, Landroid/supl/config/SuplConfig;->isLocalhost()Z

    move-result v2

    sput-boolean v2, Landroid/supl/CNet;->localhost:Z

    .line 218
    invoke-virtual {v1}, Landroid/supl/config/SuplConfig;->getSLPHost()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/supl/CNet;->slphost_port:Ljava/lang/String;

    .line 221
    iget-object v2, p0, Lcom/android/server/SUPLServer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/supl/CSUPL_LP;->Init(Landroid/content/Context;)V

    .line 224
    invoke-virtual {v1}, Landroid/supl/config/SuplConfig;->getMcc()I

    move-result v2

    invoke-static {v2}, Landroid/supl/CSUPL_LP;->SetMcc(I)V

    .line 225
    invoke-virtual {v1}, Landroid/supl/config/SuplConfig;->getMnc()I

    move-result v2

    invoke-static {v2}, Landroid/supl/CSUPL_LP;->SetMnc(I)V

    .line 226
    invoke-virtual {v1}, Landroid/supl/config/SuplConfig;->getLac()I

    move-result v2

    invoke-static {v2}, Landroid/supl/CSUPL_LP;->SetLac(I)V

    .line 227
    invoke-virtual {v1}, Landroid/supl/config/SuplConfig;->getCi()I

    move-result v2

    invoke-static {v2}, Landroid/supl/CSUPL_LP;->SetCi(I)V

    .line 228
    invoke-virtual {v1}, Landroid/supl/config/SuplConfig;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/supl/CSUPL_LP;->SetMsisdn(Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/android/server/SUPLServer;->nativeStartSocketServer()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 233
    .end local v1           #spl:Landroid/supl/config/SuplConfig;
    :catchall_0
    move-exception v2

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "SUPLServer"

    const-string v3, "Connection error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 238
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    throw v2

    .line 243
    :cond_0
    return-void
.end method

.method start()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 121
    iget-object v1, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/android/server/SUPLServer;->SLPThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SLP Server [port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/SUPLServer;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    .line 134
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SLP Client Thread [port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/SUPLServer;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/SUPLServer;->SLPThread:Ljava/lang/Thread;

    .line 135
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "===>>TEST Thread <<<=="

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/SUPLServer;->TestThread:Ljava/lang/Thread;

    .line 147
    iget-object v0, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 149
    const/4 v0, 0x1

    goto :goto_0
.end method

.method stop()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SUPLServer;->mThread:Ljava/lang/Thread;

    .line 172
    const/4 v0, 0x1

    .line 178
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
