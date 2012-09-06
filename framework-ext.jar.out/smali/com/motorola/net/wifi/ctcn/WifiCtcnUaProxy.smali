.class Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;
.super Ljava/lang/Object;
.source "WifiCtcnUaProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_DISCONNECTED:I = 0x2

.field private static final EVENT_INITIALIZED:I = 0x1

.field private static final PREFIX:Ljava/lang/String; = "UaProxy"


# instance fields
.field private WLAN11Type:Ljava/lang/String;

.field private ctcnwlan:Lcom/motorola/net/wifi/ctcn/CtcnUaManager;

.field private h:Landroid/os/Handler;

.field private mByeCallback:Landroid/os/Message;

.field private mContext:Landroid/content/Context;

.field private mDeregisterCallback:Landroid/os/Message;

.field private mInitialized:Z

.field private mInviteCallback:Landroid/os/Message;

.field private mLocalIP:Ljava/lang/String;

.field private mReceiver:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;

.field private mRegisterCallback:Landroid/os/Message;

.field private mReregister:Z

.field private mSSID:Ljava/lang/String;

.field private mServerIP:Ljava/lang/String;

.field private mTerminatedRegistrants:Landroid/os/RegistrantList;

.field private mUaState:Ljava/lang/String;

.field private mbSSID:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "context"
    .parameter "ssid"
    .parameter "bSSID"
    .parameter "linkSpeed"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mReregister:Z

    .line 42
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mTerminatedRegistrants:Landroid/os/RegistrantList;

    .line 44
    iput-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mRegisterCallback:Landroid/os/Message;

    .line 45
    iput-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInviteCallback:Landroid/os/Message;

    .line 46
    iput-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mByeCallback:Landroid/os/Message;

    .line 47
    iput-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mDeregisterCallback:Landroid/os/Message;

    .line 213
    new-instance v0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$1;

    invoke-direct {v0, p0}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$1;-><init>(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)V

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->h:Landroid/os/Handler;

    .line 50
    const-string v0, "UaProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ssid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bSSID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " speed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iput-object p2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mSSID:Ljava/lang/String;

    .line 52
    if-eqz p3, :cond_0

    .line 53
    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mbSSID:Ljava/lang/String;

    .line 57
    :goto_0
    invoke-static {p4}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->getTypeFromSpeed(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->WLAN11Type:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;

    invoke-direct {v0, p1}, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->ctcnwlan:Lcom/motorola/net/wifi/ctcn/CtcnUaManager;

    .line 60
    iput-boolean v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInitialized:Z

    .line 61
    return-void

    .line 55
    :cond_0
    iput-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mbSSID:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mServerIP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mLocalIP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mRegisterCallback:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mRegisterCallback:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mDeregisterCallback:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mDeregisterCallback:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$200(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->WLAN11Type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mbSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Lcom/motorola/net/wifi/ctcn/CtcnUaManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->ctcnwlan:Lcom/motorola/net/wifi/ctcn/CtcnUaManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInitialized:Z

    return p1
.end method

.method static synthetic access$700(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInviteCallback:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$802(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInviteCallback:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$900(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mReregister:Z

    return v0
.end method

.method static synthetic access$902(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mReregister:Z

    return p1
.end method

.method static getTypeFromSpeed(I)Ljava/lang/String;
    .locals 4
    .parameter "linkSpeed"

    .prologue
    .line 203
    if-gtz p0, :cond_0

    .line 204
    const-string v0, "IEEE-802.11g"

    .line 210
    :goto_0
    return-object v0

    .line 205
    :cond_0
    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    int-to-double v0, p0

    const-wide/high16 v2, 0x4016

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    .line 206
    :cond_1
    const-string v0, "IEEE-802.11b"

    goto :goto_0

    .line 207
    :cond_2
    const/16 v0, 0x36

    if-gt p0, v0, :cond_3

    .line 208
    const-string v0, "IEEE-802.11g"

    goto :goto_0

    .line 210
    :cond_3
    const-string v0, "IEEE-802.11n"

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized bye(Landroid/os/Message;)Z
    .locals 4
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    .line 124
    monitor-enter p0

    :try_start_0
    const-string v1, "UaProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---bye--- mInitialized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UaState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-boolean v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 128
    :cond_1
    :try_start_1
    const-string v1, "INVITED"

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->ctcnwlan:Lcom/motorola/net/wifi/ctcn/CtcnUaManager;

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->bye()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mByeCallback:Landroid/os/Message;

    .line 135
    const/4 v0, 0x1

    goto :goto_0

    .line 137
    :cond_2
    const/4 v1, 0x0

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    invoke-static {p1, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 138
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized deregister(Landroid/os/Message;)Z
    .locals 5
    .parameter "result"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 144
    monitor-enter p0

    :try_start_0
    const-string v2, "UaProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---deregister--- mInitialized="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInitialized:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " UaState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-boolean v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 159
    :goto_0
    monitor-exit p0

    return v0

    .line 147
    :cond_0
    :try_start_1
    const-string v2, "INIT"

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 149
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    move v0, v1

    .line 150
    goto :goto_0

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->ctcnwlan:Lcom/motorola/net/wifi/ctcn/CtcnUaManager;

    invoke-virtual {v2}, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->deregister()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mDeregisterCallback:Landroid/os/Message;

    move v0, v1

    .line 155
    goto :goto_0

    .line 157
    :cond_2
    const/4 v1, 0x0

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    invoke-static {p1, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 158
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized invite(Landroid/os/Message;Ljava/lang/String;)Z
    .locals 4
    .parameter "result"
    .parameter "ua"

    .prologue
    const/4 v0, 0x0

    .line 100
    monitor-enter p0

    :try_start_0
    const-string v1, "UaProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---invite--- mInitialized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UaState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-boolean v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 119
    :goto_0
    monitor-exit p0

    return v0

    .line 111
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->ctcnwlan:Lcom/motorola/net/wifi/ctcn/CtcnUaManager;

    invoke-virtual {v1, p2}, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->invite(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInviteCallback:Landroid/os/Message;

    .line 114
    const/4 v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    const/4 v1, 0x0

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    invoke-static {p1, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 118
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized notifyUaTerminated(I)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mTerminatedRegistrants:Landroid/os/RegistrantList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized register(Landroid/os/Message;Ljava/lang/String;)Z
    .locals 5
    .parameter "result"
    .parameter "ua"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 79
    monitor-enter p0

    :try_start_0
    const-string v2, "UaProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---register--- mInitialized="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInitialized:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " UaState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-boolean v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 94
    :goto_0
    monitor-exit p0

    return v0

    .line 82
    :cond_0
    :try_start_1
    const-string v2, "REGISTERED"

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 84
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    move v0, v1

    .line 85
    goto :goto_0

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->ctcnwlan:Lcom/motorola/net/wifi/ctcn/CtcnUaManager;

    invoke-virtual {v2, p2}, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->register(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mRegisterCallback:Landroid/os/Message;

    move v0, v1

    .line 90
    goto :goto_0

    .line 92
    :cond_2
    const/4 v1, 0x0

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    invoke-static {p1, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 93
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized registerForUaTerminated(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 186
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mTerminatedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 185
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized start(Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "result"
    .parameter "localIp"
    .parameter "serverIp"

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    const-string v1, "UaProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---start--- mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", localIp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", serverIp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-boolean v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 74
    :goto_0
    monitor-exit p0

    return v1

    .line 67
    :cond_0
    :try_start_1
    iput-object p2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mLocalIP:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mServerIP:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.motorola.intent.action.REGISTRATION_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    new-instance v1, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;

    invoke-direct {v1, p0, p0}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;-><init>(Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;)V

    iput-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mReceiver:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;

    .line 72
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mReceiver:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    const-string v1, "INIT"

    iput-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->ctcnwlan:Lcom/motorola/net/wifi/ctcn/CtcnUaManager;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->h:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->h:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->init(Landroid/os/Message;Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 64
    .end local v0           #filter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized stop()Z
    .locals 3

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    const-string v0, "UaProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---stop--- mInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UaState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-boolean v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 181
    :goto_0
    monitor-exit p0

    return v0

    .line 168
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mReceiver:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mReceiver:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mReceiver:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy$MyReceiver;

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->ctcnwlan:Lcom/motorola/net/wifi/ctcn/CtcnUaManager;

    invoke-virtual {v0}, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->stop()Z

    .line 173
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->ctcnwlan:Lcom/motorola/net/wifi/ctcn/CtcnUaManager;

    invoke-virtual {v0}, Lcom/motorola/net/wifi/ctcn/CtcnUaManager;->terminate()Z

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mRegisterCallback:Landroid/os/Message;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mInviteCallback:Landroid/os/Message;

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mByeCallback:Landroid/os/Message;

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mDeregisterCallback:Landroid/os/Message;

    .line 180
    const-string v0, "INIT"

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mUaState:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    const/4 v0, 0x1

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized unregisterForUaTerminated(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->mTerminatedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
