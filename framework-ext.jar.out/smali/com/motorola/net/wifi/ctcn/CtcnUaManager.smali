.class public Lcom/motorola/net/wifi/ctcn/CtcnUaManager;
.super Ljava/lang/Object;
.source "CtcnUaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "UaManager"


# instance fields
.field private mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

.field private mConnection:Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;

.field private mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mLock:Ljava/lang/Object;

    .line 66
    iput-boolean v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mInitialized:Z

    .line 69
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mContext:Landroid/content/Context;

    .line 70
    iput-boolean v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mInitialized:Z

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/net/wifi/ctcn/CtcnUaManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/motorola/net/wifi/ctcn/CtcnUaManager;Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;)Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/motorola/net/wifi/ctcn/CtcnUaManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bye()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    if-nez v2, :cond_0

    .line 214
    :goto_0
    return v1

    .line 212
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    invoke-interface {v2}, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;->bye()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public deregister()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 230
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    if-nez v2, :cond_0

    .line 234
    :goto_0
    return v1

    .line 232
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    invoke-interface {v2}, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;->deregister()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getRegistrationInfo()Lcom/motorola/net/wifi/ctcn/RegistrationInfo;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    if-nez v2, :cond_0

    .line 264
    :goto_0
    return-object v1

    .line 262
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    invoke-interface {v2}, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;->getRegistrationInfo()Lcom/motorola/net/wifi/ctcn/RegistrationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public init(Landroid/os/Message;Landroid/os/Message;)Z
    .locals 5
    .parameter "onComplete"
    .parameter "onDisconneted"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    iget-boolean v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mInitialized:Z

    if-eqz v2, :cond_0

    .line 92
    :goto_0
    return v0

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.server.ctcnua.SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    .line 83
    const-string v0, "UaManager"

    const-string v2, "***failed to start"

    invoke-static {v0, v2}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 84
    goto :goto_0

    .line 86
    :cond_1
    new-instance v2, Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;

    invoke-direct {v2, p0, p1, p2}, Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;-><init>(Lcom/motorola/net/wifi/ctcn/CtcnUaManager;Landroid/os/Message;Landroid/os/Message;)V

    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mConnection:Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;

    .line 87
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.server.ctcnua.SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mConnection:Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 88
    const-string v0, "UaManager"

    const-string v2, "***failed to bind"

    invoke-static {v0, v2}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 89
    goto :goto_0

    .line 91
    :cond_2
    iput-boolean v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mInitialized:Z

    goto :goto_0
.end method

.method public invite(Ljava/lang/String;)Z
    .locals 3
    .parameter "ua"

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    if-nez v2, :cond_0

    .line 195
    :goto_0
    return v1

    .line 193
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    invoke-interface {v2, p1}, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;->invite(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public register(Ljava/lang/String;)Z
    .locals 3
    .parameter "ua"

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    if-nez v2, :cond_0

    .line 175
    :goto_0
    return v1

    .line 173
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    invoke-interface {v2, p1}, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;->register(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setAccessNetInfo(Lcom/motorola/net/wifi/ctcn/AccessNetInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 246
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    invoke-interface {v0, p1}, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;->setAccessNetInfo(Lcom/motorola/net/wifi/ctcn/AccessNetInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public start(Lcom/motorola/net/wifi/ctcn/AccessNetInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/net/wifi/ctcn/AccessNetInfo;)Z

    move-result v0

    return v0
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/net/wifi/ctcn/AccessNetInfo;)Z
    .locals 3
    .parameter "server"
    .parameter "localIp"
    .parameter "nextHop"
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 134
    if-eqz p4, :cond_0

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    if-nez v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v1

    .line 137
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/net/wifi/ctcn/AccessNetInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public stop()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    if-nez v2, :cond_0

    .line 154
    :goto_0
    return v1

    .line 152
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    invoke-interface {v2}, Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;->terminate()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public terminate()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    iget-boolean v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mInitialized:Z

    if-nez v2, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mConnection:Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;

    if-eqz v2, :cond_2

    .line 103
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mConnection:Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 104
    iput-object v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mAgent:Lcom/motorola/net/wifi/ctcn/ICtcnUserAgent;

    .line 105
    iput-object v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mConnection:Lcom/motorola/net/wifi/ctcn/CtcnUaManager$MyConnection;

    .line 107
    :cond_2
    iput-boolean v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mInitialized:Z

    .line 108
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.server.ctcnua.SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 111
    goto :goto_0
.end method
