.class public Lcom/motorola/net/wifi/ctcn/CtcnController;
.super Landroid/os/Handler;
.source "CtcnController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/net/wifi/ctcn/CtcnController$DefaultDataNetworkObserver;,
        Lcom/motorola/net/wifi/ctcn/CtcnController$PreferredApnObserver;,
        Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;
    }
.end annotation


# static fields
.field private static final EVENT_INITIALIZE_DELAY:I = 0x3e8

.field private static final EVENT_RETRY_INITIALIZE_DELAY:I = 0x2ee0

.field private static final ICON_CTCW_CONNECTED:I = 0x1080504

.field private static final PREFERAPN_URI:Landroid/net/Uri; = null

.field private static final PREFIX:Ljava/lang/String; = "Ctrler"

.field static final UA_TERMINATED_REASON_CLIENT:I = 0x1

.field static final UA_TERMINATED_REASON_SERVER:I = 0x2

.field static final UA_TERMINATED_REASON_UNKNOWN:I

.field private static isDmds:Z

.field private static mHandlerThread:Landroid/os/HandlerThread;

.field private static sInstance:Lcom/motorola/net/wifi/ctcn/CtcnController;


# instance fields
.field private ifname:Ljava/lang/String;

.field private mApnObserver:Lcom/motorola/net/wifi/ctcn/CtcnController$PreferredApnObserver;

.field mConnectRequested:Z

.field private mContext:Landroid/content/Context;

.field private mCtcnNotification:Landroid/app/Notification;

.field private mCtcwSipRegInfo:Lcom/motorola/net/wifi/ctcn/RegistrationInfo;

.field private mCttpDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

.field mCurrentState:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

.field private mDataObserver:Lcom/motorola/net/wifi/ctcn/CtcnController$DefaultDataNetworkObserver;

.field mDefaultDataNetworkChanged:Z

.field mDisconnectRequested:Z

.field mDisconnected:Z

.field private mInitializationRetryTime:I

.field mMMSApnRequested:Z

.field private mPollNetStat:Ljava/lang/Runnable;

.field private mPppRetryCount:I

.field private mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

.field mPreferredApnChanged:Z

.field mStateConnected:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

.field mStateConnecting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

.field mStateDeregisterting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

.field mStateDisonnecting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

.field mStateInitialized:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

.field mStateInvited:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

.field mStateInviting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

.field mStateRegistered:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

.field mStateRegistering:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

.field mStateReverted:Z

.field mSyncObject:Ljava/lang/Object;

.field private mUaProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

.field mUaTerminated:Z

.field private mUaTerminatedReason:I

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

.field private rxPkts:J

.field private sipServerIp:Ljava/lang/String;

.field private txPkts:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->PREFERAPN_URI:Landroid/net/Uri;

    .line 62
    sput-object v1, Lcom/motorola/net/wifi/ctcn/CtcnController;->sInstance:Lcom/motorola/net/wifi/ctcn/CtcnController;

    .line 63
    sput-object v1, Lcom/motorola/net/wifi/ctcn/CtcnController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 68
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->isDmds()Z

    move-result v0

    sput-boolean v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->isDmds:Z

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/os/Looper;)V
    .locals 2
    .parameter "context"
    .parameter "wifiStateMachine"
    .parameter "looper"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 312
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 85
    iput-boolean v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateReverted:Z

    .line 90
    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInitialized:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 91
    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateRegistering:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 92
    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateRegistered:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 93
    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInviting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 94
    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInvited:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 95
    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateConnecting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 96
    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateConnected:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 97
    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateDisonnecting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 98
    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateDeregisterting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 99
    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCurrentState:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mInitializationRetryTime:I

    .line 999
    new-instance v0, Lcom/motorola/net/wifi/ctcn/CtcnController$1;

    invoke-direct {v0, p0}, Lcom/motorola/net/wifi/ctcn/CtcnController$1;-><init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPollNetStat:Ljava/lang/Runnable;

    .line 313
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mContext:Landroid/content/Context;

    .line 314
    iput-object p2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 315
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mSyncObject:Ljava/lang/Object;

    .line 316
    iput-boolean v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mMMSApnRequested:Z

    .line 317
    iput v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPppRetryCount:I

    .line 318
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/net/wifi/ctcn/CtcnController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->txPkts:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/motorola/net/wifi/ctcn/CtcnController;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->txPkts:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/motorola/net/wifi/ctcn/CtcnController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->rxPkts:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/motorola/net/wifi/ctcn/CtcnController;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->rxPkts:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/motorola/net/wifi/ctcn/CtcnController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->ifname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->PREFERAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/net/wifi/ctcn/CtcnController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkSipServerIp()Z
    .locals 5

    .prologue
    .line 417
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->sipServerIp:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->sipServerIp:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 419
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->getCtcwSipConfig()Landroid/net/wifi/WifiCtcwSipConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiCtcwSipConfig;->server:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 420
    .local v1, wagIp:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->sipServerIp:Ljava/lang/String;

    .line 421
    const-string v2, "Ctrler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get wag server ip :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->sipServerIp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .end local v1           #wagIp:Ljava/net/InetAddress;
    :goto_0
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->sipServerIp:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->sipServerIp:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 430
    :cond_1
    const-string v2, "Ctrler"

    const-string v3, "No wag server ip address avaiable! Failed."

    invoke-static {v2, v3}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const/4 v2, 0x0

    .line 434
    :goto_1
    return v2

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v2, "Ctrler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get wag server ip failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->sipServerIp:Ljava/lang/String;

    .line 427
    const-string v2, "124.127.128.132"

    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->sipServerIp:Ljava/lang/String;

    goto :goto_0

    .line 434
    .end local v0           #e:Ljava/net/UnknownHostException;
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)Lcom/motorola/net/wifi/ctcn/CtcnController;
    .locals 3
    .parameter "context"
    .parameter "wifiStateMachine"

    .prologue
    .line 156
    const-class v1, Lcom/motorola/net/wifi/ctcn/CtcnController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->sInstance:Lcom/motorola/net/wifi/ctcn/CtcnController;

    if-nez v0, :cond_0

    .line 157
    const-string v0, "Ctrler"

    const-string v2, "new CtcnController instance"

    invoke-static {v0, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CtcnController"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 159
    sget-object v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 160
    new-instance v0, Lcom/motorola/net/wifi/ctcn/CtcnController;

    sget-object v2, Lcom/motorola/net/wifi/ctcn/CtcnController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/os/Looper;)V

    sput-object v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->sInstance:Lcom/motorola/net/wifi/ctcn/CtcnController;

    .line 162
    :cond_0
    sget-object v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->sInstance:Lcom/motorola/net/wifi/ctcn/CtcnController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/net/wifi/ctcn/CtcnController;
    .locals 2

    .prologue
    .line 179
    const-class v0, Lcom/motorola/net/wifi/ctcn/CtcnController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/net/wifi/ctcn/CtcnController;->sInstance:Lcom/motorola/net/wifi/ctcn/CtcnController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getMMSApn()Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;
    .locals 10

    .prologue
    .line 892
    const-string v0, "Ctrler"

    const-string v1, "getMMSApn()"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    const/4 v6, 0x0

    .line 896
    .local v6, apn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;
    const-string v3, "numeric = \'46003\'"

    .line 898
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "apn"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "proxy"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "port"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "user"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "password"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 901
    .local v8, cursor:Landroid/database/Cursor;
    const-string v0, "Ctrler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    if-eqz v8, :cond_1

    .line 904
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 906
    :cond_0
    const-string v0, "type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 907
    .local v9, types:Ljava/lang/String;
    const-string v0, "Ctrler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "types:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const-string v0, "mms"

    invoke-static {v9, v0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->isValidApnType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 909
    new-instance v7, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    invoke-direct {v7, p0}, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;-><init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    .end local v6           #apn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;
    .local v7, apn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;
    :try_start_1
    const-string v0, "apn"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->apn:Ljava/lang/String;

    .line 911
    const-string v0, "user"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->user:Ljava/lang/String;

    .line 912
    const-string v0, "password"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->password:Ljava/lang/String;

    .line 914
    const-string v0, "proxy"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->proxy:Ljava/lang/String;

    .line 916
    const-string v0, "port"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->port:Ljava/lang/String;

    .line 917
    iput-object v9, v7, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->types:Ljava/lang/String;

    .line 918
    const-string v0, "Ctrler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMMSApn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v7

    .line 923
    .end local v7           #apn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;
    .restart local v6       #apn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 926
    .end local v9           #types:Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    iget-object v0, v6, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->user:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getCtcwSipConfig()Landroid/net/wifi/WifiCtcwSipConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 927
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getCtcwSipConfig()Landroid/net/wifi/WifiCtcwSipConfig;

    move-result-object v0

    iget-object v1, v6, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->user:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiCtcwSipConfig;->account:Ljava/lang/String;

    .line 928
    :cond_2
    return-object v6

    .line 921
    .restart local v9       #types:Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 923
    .end local v9           #types:Ljava/lang/String;
    :catchall_0
    move-exception v0

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v6           #apn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;
    .restart local v7       #apn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;
    .restart local v9       #types:Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v6, v7

    .end local v7           #apn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;
    .restart local v6       #apn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;
    goto :goto_1
.end method

.method private getPreferredApn()Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 843
    const-string v0, "Ctrler"

    const-string v1, "getPreferredApn()"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    new-instance v6, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    invoke-direct {v6, p0}, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;-><init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V

    .line 847
    .local v6, apn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/net/wifi/ctcn/CtcnController;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "apn"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "proxy"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "port"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "user"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "password"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "type"

    aput-object v5, v2, v4

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 850
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 851
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 853
    :try_start_0
    const-string v0, "apn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->apn:Ljava/lang/String;

    .line 854
    const-string v0, "user"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->user:Ljava/lang/String;

    .line 855
    const-string v0, "password"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->password:Ljava/lang/String;

    .line 857
    const-string v0, "proxy"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->proxy:Ljava/lang/String;

    .line 859
    const-string v0, "port"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->port:Ljava/lang/String;

    .line 860
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->types:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    :goto_0
    const-string v0, "Ctrler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :cond_0
    if-eqz v7, :cond_1

    .line 867
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 869
    :cond_1
    iget-object v0, v6, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->user:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getCtcwSipConfig()Landroid/net/wifi/WifiCtcwSipConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 870
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getCtcwSipConfig()Landroid/net/wifi/WifiCtcwSipConfig;

    move-result-object v0

    iget-object v1, v6, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->user:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiCtcwSipConfig;->account:Ljava/lang/String;

    .line 871
    :cond_2
    return-object v6

    .line 861
    :catch_0
    move-exception v8

    .line 862
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "Ctrler"

    const-string v1, "read apn db fail"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized initialize(Landroid/net/wifi/WifiInfo;)Z
    .locals 9
    .parameter "wifiInfo"

    .prologue
    const/4 v4, 0x0

    .line 438
    monitor-enter p0

    :try_start_0
    const-string v5, "Ctrler"

    const-string v6, "initialize()"

    invoke-static {v5, v6}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    if-eqz p1, :cond_0

    .line 440
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 443
    :cond_0
    const/4 v0, 0x0

    .line 444
    .local v0, IccCardReady:Z
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->isIccCardReady()Z

    move-result v0

    .line 446
    const-string v5, "Ctrler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IccCardReady ? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v5, "Ctrler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ActivityManagerNative.isSystemReady() ? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    if-eqz v0, :cond_3

    .line 452
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->checkSipServerIp()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 476
    :goto_0
    monitor-exit p0

    return v4

    .line 455
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    .line 456
    .local v1, addr:I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 457
    .local v2, buf:Ljava/lang/StringBuffer;
    and-int/lit16 v4, v1, 0xff

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v5, v1, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v5, v1, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v5, v1, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 459
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, ipString:Ljava/lang/String;
    new-instance v4, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    iget-object v5, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    .line 463
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->registerForUaTerminated()V

    .line 466
    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    if-eqz v4, :cond_2

    .line 467
    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    const/16 v5, 0x3e8

    invoke-virtual {p0, v5}, Lcom/motorola/net/wifi/ctcn/CtcnController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->sipServerIp:Ljava/lang/String;

    invoke-virtual {v4, v5, v3, v6}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->start(Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;)Z

    .line 470
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 471
    .end local v1           #addr:I
    .end local v2           #buf:Ljava/lang/StringBuffer;
    .end local v3           #ipString:Ljava/lang/String;
    :cond_3
    iget v5, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mInitializationRetryTime:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mInitializationRetryTime:I

    if-lez v5, :cond_4

    .line 472
    const/16 v5, 0x3e9

    const-wide/16 v6, 0x2ee0

    invoke-virtual {p0, v5, v6, v7}, Lcom/motorola/net/wifi/ctcn/CtcnController;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 438
    .end local v0           #IccCardReady:Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 475
    .restart local v0       #IccCardReady:Z
    :cond_4
    :try_start_2
    const-string v5, "Ctrler"

    const-string v6, "** Can not detect ICC card or ICC card is not ready"

    invoke-static {v5, v6}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private isIccCardReady()Z
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 760
    const-string v10, "Ctrler"

    const-string v11, "isIccCardReady() "

    invoke-static {v10, v11}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    sget-boolean v10, Lcom/motorola/net/wifi/ctcn/CtcnController;->isDmds:Z

    if-nez v10, :cond_2

    .line 762
    iget-object v10, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mContext:Landroid/content/Context;

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 763
    .local v7, tm:Landroid/telephony/TelephonyManager;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v10

    if-ne v10, v13, :cond_0

    .line 764
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_1

    :goto_0
    move v9, v8

    .line 804
    .end local v7           #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_1
    return v9

    .restart local v7       #tm:Landroid/telephony/TelephonyManager;
    :cond_1
    move v8, v9

    .line 764
    goto :goto_0

    .line 769
    .end local v7           #tm:Landroid/telephony/TelephonyManager;
    :cond_2
    const/4 v4, 0x0

    .line 771
    .local v4, iccCardInfo:Lcom/motorola/android/telephony/IccCardInfo;
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->getAllModemIds()[I

    move-result-object v5

    .line 773
    .local v5, modemIds:[I
    if-eqz v5, :cond_4

    array-length v10, v5

    if-lez v10, :cond_4

    .line 774
    const/4 v1, 0x0

    .line 775
    .local v1, gotCdma:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v10, v5

    if-ge v2, v10, :cond_3

    .line 776
    const-string v10, "Ctrler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "modemId["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v5, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    aget v10, v5, v2

    invoke-static {v10}, Lcom/motorola/android/telephony/PhoneModeManager;->getPhoneTypeByModemId(I)I

    move-result v0

    .line 778
    .local v0, PhoneType:I
    const-string v10, "Ctrler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PhoneType =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    if-ne v0, v13, :cond_5

    .line 780
    const-string v10, "Ctrler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ModemId =  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const/4 v1, 0x1

    .line 785
    .end local v0           #PhoneType:I
    :cond_3
    if-eqz v1, :cond_0

    .line 788
    aget v10, v5, v2

    invoke-static {v10}, Lcom/motorola/android/telephony/PhoneModeManager;->getSubscriptionInfo(I)Lcom/motorola/android/telephony/SubscriptionInfo;

    move-result-object v6

    .line 789
    .local v6, subscriptionInfo:Lcom/motorola/android/telephony/SubscriptionInfo;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/motorola/android/telephony/SubscriptionInfo;->getSubscriptionType()I

    move-result v10

    if-nez v10, :cond_4

    .line 791
    iget-object v4, v6, Lcom/motorola/android/telephony/SubscriptionInfo;->iccCardInfo:Lcom/motorola/android/telephony/IccCardInfo;

    .line 792
    const-string v10, "Ctrler"

    const-string v11, "iccCardInfo != null "

    invoke-static {v10, v11}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    .end local v1           #gotCdma:Z
    .end local v2           #i:I
    .end local v6           #subscriptionInfo:Lcom/motorola/android/telephony/SubscriptionInfo;
    :cond_4
    if-eqz v4, :cond_0

    .line 796
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    invoke-virtual {v4}, Lcom/motorola/android/telephony/IccCardInfo;->getNumApplications()I

    move-result v10

    if-ge v2, v10, :cond_0

    .line 797
    invoke-virtual {v4, v2}, Lcom/motorola/android/telephony/IccCardInfo;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v3

    .line 798
    .local v3, iccCardApplication:Lcom/android/internal/telephony/IccCardApplication;
    iget-object v10, v3, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v11, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v10, v11, :cond_6

    iget-object v10, v3, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    sget-object v11, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$AppState;

    if-ne v10, v11, :cond_6

    move v9, v8

    .line 800
    goto/16 :goto_1

    .line 775
    .end local v3           #iccCardApplication:Lcom/android/internal/telephony/IccCardApplication;
    .restart local v0       #PhoneType:I
    .restart local v1       #gotCdma:Z
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 796
    .end local v0           #PhoneType:I
    .end local v1           #gotCdma:Z
    .restart local v3       #iccCardApplication:Lcom/android/internal/telephony/IccCardApplication;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private isNotificationEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 808
    const-string v1, "Ctrler"

    const-string v2, "isNotificationEnabled()"

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_networks_available_notification_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidApnType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "types"
    .parameter "requestType"

    .prologue
    const/4 v4, 0x1

    .line 876
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 885
    :cond_0
    :goto_0
    return v4

    .line 880
    :cond_1
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 881
    .local v3, t:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 880
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 885
    .end local v3           #t:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized notifyModemCtcnState(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 1130
    const-class v0, Lcom/motorola/net/wifi/ctcn/CtcnController;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 830
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 831
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 832
    .local v0, result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 836
    :goto_0
    return-object v0

    .line 834
    .end local v0           #result:[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:[Ljava/lang/String;
    goto :goto_0
.end method

.method private registerForUaTerminated()V
    .locals 3

    .prologue
    .line 814
    const-string v0, "Ctrler"

    const-string v1, "registerForUaTerminated()"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    const/16 v1, 0x7d1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->registerForUaTerminated(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 818
    :cond_0
    return-void
.end method

.method private terminate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 481
    const-string v0, "Ctrler"

    const-string v1, "terminate()"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCurrentState:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->unregisterObserver()V

    .line 485
    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCurrentState:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    if-eqz v0, :cond_1

    .line 488
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->unregisterForUaTerminated()V

    .line 489
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    invoke-virtual {v0}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->stop()Z

    .line 490
    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    .line 494
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setCtcnNotificationVisible(Z)V

    .line 495
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.WIFI_CTCW_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 496
    return-void
.end method

.method public static declared-synchronized terminateInstance()V
    .locals 3

    .prologue
    .line 169
    const-class v1, Lcom/motorola/net/wifi/ctcn/CtcnController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->sInstance:Lcom/motorola/net/wifi/ctcn/CtcnController;

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "Ctrler"

    const-string v2, "terminate CtcnController instance"

    invoke-static {v0, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 172
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 173
    sget-object v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->sInstance:Lcom/motorola/net/wifi/ctcn/CtcnController;

    invoke-direct {v0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->terminate()V

    .line 174
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/net/wifi/ctcn/CtcnController;->sInstance:Lcom/motorola/net/wifi/ctcn/CtcnController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_0
    monitor-exit v1

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private unregisterForUaTerminated()V
    .locals 3

    .prologue
    .line 821
    const-string v0, "Ctrler"

    const-string v1, "unregisterForUaTerminated()"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    const/16 v1, 0x7d1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->unregisterForUaTerminated(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 825
    :cond_0
    return-void
.end method


# virtual methods
.method clearCachedEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 515
    const-string v0, "Ctrler"

    const-string v1, "clearCache()"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iput-boolean v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaTerminated:Z

    .line 518
    iput-boolean v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDisconnectRequested:Z

    .line 519
    iput-boolean v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferredApnChanged:Z

    .line 520
    iput-boolean v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDefaultDataNetworkChanged:Z

    .line 521
    iput-boolean v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mConnectRequested:Z

    .line 523
    return-void
.end method

.method public declared-synchronized connect(Landroid/net/wifi/WifiInfo;)V
    .locals 3
    .parameter "wifiInfo"

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    const-string v0, "Ctrler"

    const-string v1, "connect()"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 189
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "connect cannot be called from controller thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 192
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCurrentState:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    if-nez v0, :cond_2

    .line 193
    if-eqz p1, :cond_1

    .line 194
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 196
    :cond_1
    const/16 v0, 0x3f4

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized disconnect(Z)V
    .locals 8
    .parameter "block"

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    const-string v5, "Ctrler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disconnect() "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_0

    const-string v4, "normal"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 208
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "disconnect cannot be called from controller thread"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_0
    :try_start_1
    const-string v4, "fast"

    goto :goto_0

    .line 212
    :cond_1
    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    if-nez v4, :cond_3

    .line 214
    const/16 v4, 0x3e9

    invoke-virtual {p0, v4}, Lcom/motorola/net/wifi/ctcn/CtcnController;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 216
    :cond_3
    const-wide/16 v2, 0x0

    .line 217
    .local v2, stopTime:J
    if-eqz p1, :cond_5

    .line 218
    const/16 v4, 0x7d2

    :try_start_2
    invoke-virtual {p0, v4}, Lcom/motorola/net/wifi/ctcn/CtcnController;->sendEmptyMessage(I)Z

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long v2, v4, v6

    .line 229
    :goto_2
    iget-object v5, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mSyncObject:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    :goto_3
    if-eqz p1, :cond_4

    if-eqz p1, :cond_6

    :try_start_3
    iget-boolean v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDisconnected:Z

    if-nez v4, :cond_6

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v6

    cmp-long v4, v6, v2

    if-gez v4, :cond_6

    .line 235
    :try_start_4
    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mSyncObject:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v2, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 236
    :catch_0
    move-exception v4

    goto :goto_3

    .line 222
    :cond_5
    const/16 v4, 0x7d3

    :try_start_5
    invoke-virtual {p0, v4}, Lcom/motorola/net/wifi/ctcn/CtcnController;->sendEmptyMessage(I)Z

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x5dc

    add-long v2, v4, v6

    goto :goto_2

    .line 237
    :catch_1
    move-exception v0

    .line 241
    :cond_6
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 242
    :try_start_7
    sget-boolean v4, Lcom/motorola/net/wifi/ctcn/L;->DBG:Z

    if-eqz v4, :cond_2

    .line 243
    const-string v1, "unknown"

    .line 244
    .local v1, reason:Ljava/lang/String;
    if-nez p1, :cond_8

    .line 245
    const-string v1, "fast"

    .line 251
    :cond_7
    :goto_4
    const-string v4, "Ctrler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finish disconnect due to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 241
    .end local v1           #reason:Ljava/lang/String;
    :catchall_1
    move-exception v4

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v4

    .line 246
    .restart local v1       #reason:Ljava/lang/String;
    :cond_8
    if-eqz p1, :cond_9

    iget-boolean v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDisconnected:Z

    if-nez v4, :cond_9

    .line 247
    const-string v1, "timeout"

    goto :goto_4

    .line 248
    :cond_9
    if-eqz p1, :cond_7

    iget-boolean v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDisconnected:Z

    if-eqz v4, :cond_7

    .line 249
    const-string v1, "normal clean"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4
.end method

.method getPppRetryCount()I
    .locals 3

    .prologue
    .line 730
    const-string v0, "Ctrler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPppRetryCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPppRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPppRetryCount:I

    return v0
.end method

.method handleEvent(ILjava/lang/Object;)Z
    .locals 3
    .parameter "event"
    .parameter "obj"

    .prologue
    .line 509
    const-string v0, "Ctrler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEvent() Current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCurrentState:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " obj = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCurrentState:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->handleEvent(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v7, 0x3ea

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 322
    const-string v3, "Ctrler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage() "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Current state = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCurrentState:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    if-nez v2, :cond_2

    const-string v2, "NONE"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const/4 v1, 0x0

    .line 326
    .local v1, handled:Z
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 410
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCurrentState:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 411
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCurrentState:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->handleEvent(ILjava/lang/Object;)Z

    .line 413
    :cond_1
    return-void

    .line 322
    .end local v1           #handled:Z
    :cond_2
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCurrentState:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 328
    .restart local v1       #handled:Z
    :sswitch_0
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->initialize(Landroid/net/wifi/WifiInfo;)Z

    .line 329
    invoke-virtual {p0, v7}, Lcom/motorola/net/wifi/ctcn/CtcnController;->sendEmptyMessage(I)Z

    .line 330
    const/4 v1, 0x1

    .line 331
    goto :goto_1

    .line 333
    :sswitch_1
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->initialize(Landroid/net/wifi/WifiInfo;)Z

    .line 334
    const/4 v1, 0x1

    .line 335
    goto :goto_1

    .line 337
    :sswitch_2
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCurrentState:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    if-nez v2, :cond_5

    .line 340
    iget-boolean v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDisconnectRequested:Z

    if-eqz v2, :cond_3

    .line 341
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mSyncObject:Ljava/lang/Object;

    monitor-enter v3

    .line 342
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDisconnected:Z

    .line 343
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 344
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 349
    :cond_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/AsyncResult;

    if-eqz v2, :cond_4

    .line 350
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object v0, v2

    check-cast v0, Landroid/os/AsyncResult;

    .line 351
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 357
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_4
    new-instance v2, Lcom/motorola/net/wifi/ctcn/CtcnStateInitialized;

    invoke-direct {v2, p0}, Lcom/motorola/net/wifi/ctcn/CtcnStateInitialized;-><init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V

    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInitialized:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 358
    new-instance v2, Lcom/motorola/net/wifi/ctcn/CtcnStateRegistering;

    invoke-direct {v2, p0}, Lcom/motorola/net/wifi/ctcn/CtcnStateRegistering;-><init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V

    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateRegistering:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 359
    new-instance v2, Lcom/motorola/net/wifi/ctcn/CtcnStateRegistered;

    invoke-direct {v2, p0}, Lcom/motorola/net/wifi/ctcn/CtcnStateRegistered;-><init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V

    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateRegistered:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 360
    new-instance v2, Lcom/motorola/net/wifi/ctcn/CtcnStateInviting;

    invoke-direct {v2, p0}, Lcom/motorola/net/wifi/ctcn/CtcnStateInviting;-><init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V

    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInviting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 361
    new-instance v2, Lcom/motorola/net/wifi/ctcn/CtcnStateInvited;

    invoke-direct {v2, p0}, Lcom/motorola/net/wifi/ctcn/CtcnStateInvited;-><init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V

    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInvited:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 362
    new-instance v2, Lcom/motorola/net/wifi/ctcn/CtcnStateConnecting;

    invoke-direct {v2, p0}, Lcom/motorola/net/wifi/ctcn/CtcnStateConnecting;-><init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V

    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateConnecting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 363
    new-instance v2, Lcom/motorola/net/wifi/ctcn/CtcnStateConnected;

    invoke-direct {v2, p0}, Lcom/motorola/net/wifi/ctcn/CtcnStateConnected;-><init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V

    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateConnected:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 364
    new-instance v2, Lcom/motorola/net/wifi/ctcn/CtcnStateDisonnecting;

    invoke-direct {v2, p0}, Lcom/motorola/net/wifi/ctcn/CtcnStateDisonnecting;-><init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V

    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateDisonnecting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 365
    new-instance v2, Lcom/motorola/net/wifi/ctcn/CtcnStateDeregisterting;

    invoke-direct {v2, p0}, Lcom/motorola/net/wifi/ctcn/CtcnStateDeregisterting;-><init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V

    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateDeregisterting:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 366
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mStateInitialized:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCurrentState:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 367
    new-instance v2, Lcom/motorola/net/wifi/ctcn/CtcnController$PreferredApnObserver;

    invoke-direct {v2, p0}, Lcom/motorola/net/wifi/ctcn/CtcnController$PreferredApnObserver;-><init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V

    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mApnObserver:Lcom/motorola/net/wifi/ctcn/CtcnController$PreferredApnObserver;

    .line 368
    new-instance v2, Lcom/motorola/net/wifi/ctcn/CtcnController$DefaultDataNetworkObserver;

    invoke-direct {v2, p0}, Lcom/motorola/net/wifi/ctcn/CtcnController$DefaultDataNetworkObserver;-><init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V

    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDataObserver:Lcom/motorola/net/wifi/ctcn/CtcnController$DefaultDataNetworkObserver;

    .line 370
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCurrentState:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v2}, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->enter()V

    .line 371
    invoke-virtual {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->registerObserver()V

    .line 374
    :cond_5
    iget-boolean v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mConnectRequested:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCurrentState:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    if-eqz v2, :cond_6

    .line 375
    invoke-virtual {p0, v7}, Lcom/motorola/net/wifi/ctcn/CtcnController;->sendEmptyMessage(I)Z

    .line 377
    :cond_6
    const/4 v1, 0x1

    .line 378
    goto/16 :goto_1

    .line 380
    :sswitch_3
    iput-boolean v5, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mConnectRequested:Z

    goto/16 :goto_1

    .line 384
    :sswitch_4
    iput-boolean v6, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mConnectRequested:Z

    .line 385
    iput-boolean v5, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDisconnectRequested:Z

    goto/16 :goto_1

    .line 388
    :sswitch_5
    iput-boolean v5, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaTerminated:Z

    .line 389
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 390
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_7

    .line 391
    iput v6, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaTerminatedReason:I

    goto/16 :goto_1

    .line 393
    :cond_7
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaTerminatedReason:I

    goto/16 :goto_1

    .line 399
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->removeMessages(I)V

    goto/16 :goto_1

    .line 402
    :sswitch_7
    const-string v2, "Ctrler"

    const-string v3, "CTCN-W notify Modem CTCN disconnected"

    invoke-static {v2, v3}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-static {v6}, Lcom/motorola/net/wifi/ctcn/CtcnController;->notifyModemCtcnState(Z)V

    goto/16 :goto_1

    .line 326
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_3
        0x3f0 -> :sswitch_7
        0x3f4 -> :sswitch_0
        0x7d1 -> :sswitch_5
        0x7d2 -> :sswitch_4
        0x7d3 -> :sswitch_4
        0x7d4 -> :sswitch_6
        0x7d5 -> :sswitch_6
    .end sparse-switch
.end method

.method isCdmaDataNetworkEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 679
    const-string v4, "Ctrler"

    const-string v5, "isCdmaDataNetworkEnabled()"

    invoke-static {v4, v5}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-boolean v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mMMSApnRequested:Z

    if-eqz v4, :cond_1

    .line 699
    :cond_0
    :goto_0
    return v3

    .line 685
    :cond_1
    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 687
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v4, "mobile_data"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 693
    .local v2, savedDataNetwork:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 694
    const-string v3, "Ctrler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB saved data network:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 688
    .end local v2           #savedDataNetwork:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 689
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Ctrler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "default_data_network fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const/4 v3, 0x0

    goto :goto_0
.end method

.method notifyUaTerminated()V
    .locals 2

    .prologue
    .line 740
    const-string v0, "Ctrler"

    const-string v1, "notifyUaTerminated()"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->notifyUaTerminated(I)V

    .line 744
    :cond_0
    return-void
.end method

.method onSipReady(Lcom/motorola/net/wifi/ctcn/RegistrationInfo;)V
    .locals 3
    .parameter "regInfo"

    .prologue
    .line 599
    if-eqz p1, :cond_0

    .line 600
    const-string v0, "Ctrler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSipReady() regInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCtcwSipRegInfo:Lcom/motorola/net/wifi/ctcn/RegistrationInfo;

    .line 603
    :cond_0
    return-void
.end method

.method registerObserver()V
    .locals 4

    .prologue
    .line 932
    const-string v0, "Ctrler"

    const-string v1, "registerObserver()"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mApnObserver:Lcom/motorola/net/wifi/ctcn/CtcnController$PreferredApnObserver;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mApnObserver:Lcom/motorola/net/wifi/ctcn/CtcnController$PreferredApnObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDataObserver:Lcom/motorola/net/wifi/ctcn/CtcnController$DefaultDataNetworkObserver;

    if-eqz v0, :cond_1

    .line 938
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDataObserver:Lcom/motorola/net/wifi/ctcn/CtcnController$DefaultDataNetworkObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 941
    :cond_1
    return-void
.end method

.method public declared-synchronized requestMMS()V
    .locals 3

    .prologue
    .line 653
    monitor-enter p0

    :try_start_0
    const-string v0, "Ctrler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestMMS(), mMMSApnRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mMMSApnRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-boolean v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mMMSApnRequested:Z

    if-nez v0, :cond_0

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mMMSApnRequested:Z

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDefaultDataNetworkChanged:Z

    .line 659
    const/16 v0, 0x7d5

    invoke-virtual {p0, v0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    :cond_0
    monitor-exit p0

    return-void

    .line 653
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method sendCtcnStateChangeBroadcast(I)V
    .locals 6
    .parameter "state"

    .prologue
    const/16 v5, 0xe

    .line 526
    const-string v2, "Ctrler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCTCWStateChangeBroadcast(), netState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 529
    if-gt p1, v5, :cond_0

    .line 530
    const/4 v1, 0x0

    .line 531
    .local v1, proxy:Ljava/lang/String;
    if-ne p1, v5, :cond_0

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    if-eqz v2, :cond_0

    .line 532
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->proxy:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->port:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    iget-object v3, v3, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->proxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    iget-object v3, v3, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->port:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    .end local v1           #proxy:Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.WIFI_CTCW_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "CWState"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 543
    if-ne p1, v5, :cond_1

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    if-eqz v2, :cond_1

    .line 544
    const-string v2, "apn"

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    iget-object v3, v3, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->apn:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    const-string v2, "apnType"

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    iget-object v3, v3, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->types:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    const-string v2, "Ctrler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIFI_CTCW_STATE_PPP_OK, apnname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    iget-object v4, v4, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->apn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", anpTypes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    iget-object v4, v4, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->types:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_1
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 550
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method public setCtcnNotificationVisible(Z)V
    .locals 10
    .parameter "visible"

    .prologue
    const v9, 0x20086

    const v8, 0x1080504

    const/4 v7, 0x0

    .line 263
    const-string v3, "Ctrler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCTCWNotificationVisible(), visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->isNotificationEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 268
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCtcnNotification:Landroid/app/Notification;

    if-nez v3, :cond_0

    .line 273
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCtcnNotification:Landroid/app/Notification;

    .line 274
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCtcnNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 275
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCtcnNotification:Landroid/app/Notification;

    iput v8, v3, Landroid/app/Notification;->icon:I

    .line 276
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCtcnNotification:Landroid/app/Notification;

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 277
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCtcnNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.wifi.WIFI_NETWORK_PREFERRED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v7, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 281
    :cond_0
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10403f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 283
    .local v2, title:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10403f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 285
    .local v1, prompt:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10403f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 287
    .local v0, details:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCtcnNotification:Landroid/app/Notification;

    iput-object v1, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 288
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCtcnNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCtcnNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v2, v0, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 291
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCtcnNotification:Landroid/app/Notification;

    invoke-virtual {v4, v9, v5, v8, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 309
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v1           #prompt:Ljava/lang/CharSequence;
    .end local v2           #title:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-void

    .line 298
    :cond_2
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCtcnNotification:Landroid/app/Notification;

    if-eqz v3, :cond_1

    .line 299
    const-string v3, "Ctrler"

    const-string v4, "setCTCWNotificationVisible Remove notification"

    invoke-static {v3, v4}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v9, v7, v8}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 307
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCtcnNotification:Landroid/app/Notification;

    goto :goto_0
.end method

.method setPppRetryCount(I)V
    .locals 3
    .parameter "Count"

    .prologue
    .line 735
    const-string v0, "Ctrler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPppRetryCount mPppRetryCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iput p1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPppRetryCount:I

    .line 737
    return-void
.end method

.method setState(Lcom/motorola/net/wifi/ctcn/CtcnStateBase;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 499
    const-string v0, "Ctrler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCurrentState:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ======>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCurrentState:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    if-eq v0, p1, :cond_0

    .line 502
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCurrentState:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    invoke-virtual {v0}, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->exit()V

    .line 503
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCurrentState:Lcom/motorola/net/wifi/ctcn/CtcnStateBase;

    .line 504
    invoke-virtual {p1}, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->enter()V

    .line 506
    :cond_0
    return-void
.end method

.method startCttpd()Z
    .locals 8

    .prologue
    .line 606
    const-string v1, "Ctrler"

    const-string v2, "startCttpd()"

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-boolean v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mMMSApnRequested:Z

    if-eqz v1, :cond_2

    .line 609
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getMMSApn()Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    .line 610
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    if-nez v1, :cond_0

    .line 611
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getPreferredApn()Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    .line 616
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCttpDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    if-nez v1, :cond_1

    .line 617
    new-instance v1, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    invoke-direct {v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;-><init>()V

    iput-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCttpDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    .line 618
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCttpDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->setContext(Landroid/content/Context;)V

    .line 621
    :cond_1
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->checkSipServerIp()Z

    move-result v1

    if-nez v1, :cond_3

    .line 622
    const/4 v1, 0x0

    .line 632
    :goto_1
    return v1

    .line 614
    :cond_2
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getPreferredApn()Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    goto :goto_0

    .line 624
    :cond_3
    new-instance v0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;

    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCtcwSipRegInfo:Lcom/motorola/net/wifi/ctcn/RegistrationInfo;

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    iget-object v2, v2, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    iget-object v3, v3, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->password:Ljava/lang/String;

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    iget-object v4, v4, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->proxy:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    iget-object v5, v5, Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;->port:Ljava/lang/String;

    iget-object v6, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->syncGetDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v6

    iget v6, v6, Landroid/net/DhcpInfo;->gateway:I

    iget-object v7, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->sipServerIp:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;-><init>(Lcom/motorola/net/wifi/ctcn/RegistrationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 630
    .local v0, parameter:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCttpDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    const/16 v2, 0x3ee

    invoke-virtual {p0, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->start(Landroid/os/Message;Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)V

    .line 632
    const/4 v1, 0x1

    goto :goto_1
.end method

.method startEstablishGreTunnel()Z
    .locals 4

    .prologue
    .line 571
    const-string v2, "Ctrler"

    const-string v3, "startEstablishGreTunnel()"

    invoke-static {v2, v3}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-boolean v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mMMSApnRequested:Z

    if-eqz v2, :cond_1

    .line 575
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getMMSApn()Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    .line 576
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    if-nez v2, :cond_0

    .line 577
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getPreferredApn()Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    .line 583
    :cond_0
    :goto_0
    const-string v2, "ro.product.model"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, apnUserPrefix:Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    const/16 v3, 0x3f6

    invoke-virtual {p0, v3}, Lcom/motorola/net/wifi/ctcn/CtcnController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->invite(Landroid/os/Message;Ljava/lang/String;)Z

    move-result v1

    .line 585
    .local v1, result:Z
    return v1

    .line 580
    .end local v0           #apnUserPrefix:Ljava/lang/String;
    .end local v1           #result:Z
    :cond_1
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getPreferredApn()Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    goto :goto_0
.end method

.method startMonitorCttpd()V
    .locals 2

    .prologue
    .line 716
    const-string v0, "Ctrler"

    const-string v1, "startMonitorCttpd()"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCttpDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCttpDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    const/16 v1, 0x3f0

    invoke-virtual {p0, v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->startMonitorCttpd(Landroid/os/Message;)V

    .line 720
    :cond_0
    return-void
.end method

.method startNetstate()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 703
    const-string v0, "Ctrler"

    const-string v1, "startNetstate()"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v0, "vpn.ctcn.ifname"

    const-string v1, "ppp0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->ifname:Ljava/lang/String;

    .line 705
    iput-wide v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->txPkts:J

    .line 706
    iput-wide v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->rxPkts:J

    .line 707
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPollNetStat:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->post(Ljava/lang/Runnable;)Z

    .line 708
    return-void
.end method

.method startSip()Z
    .locals 3

    .prologue
    .line 553
    const-string v1, "Ctrler"

    const-string v2, "startSip()"

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-boolean v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mMMSApnRequested:Z

    if-eqz v1, :cond_1

    .line 557
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getMMSApn()Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    .line 558
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    if-nez v1, :cond_0

    .line 559
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getPreferredApn()Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    .line 565
    :cond_0
    :goto_0
    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, apnUserPrefix:Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    const/16 v2, 0x3eb

    invoke-virtual {p0, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->register(Landroid/os/Message;Ljava/lang/String;)Z

    .line 567
    const/4 v1, 0x1

    return v1

    .line 562
    .end local v0           #apnUserPrefix:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getPreferredApn()Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    goto :goto_0
.end method

.method stopCttpd()V
    .locals 2

    .prologue
    .line 636
    const-string v0, "Ctrler"

    const-string v1, "stopCttpd()"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCttpDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    if-eqz v0, :cond_0

    .line 638
    const-string v0, "Ctrler"

    const-string v1, "mCttpDaemon.stop"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCttpDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    const/16 v1, 0x3f2

    invoke-virtual {p0, v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->stop(Landroid/os/Message;)V

    .line 641
    :cond_0
    return-void
.end method

.method public stopMMS()V
    .locals 3

    .prologue
    .line 664
    const-string v0, "Ctrler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopMMS(), mMMSApnRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mMMSApnRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-boolean v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mMMSApnRequested:Z

    if-eqz v0, :cond_0

    .line 666
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getPreferredApn()Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPreferedApn:Lcom/motorola/net/wifi/ctcn/CtcnController$Apn;

    .line 667
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mMMSApnRequested:Z

    .line 670
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDefaultDataNetworkChanged:Z

    .line 671
    const/16 v0, 0x7d5

    invoke-virtual {p0, v0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->sendEmptyMessage(I)Z

    .line 673
    :cond_0
    return-void
.end method

.method stopMonitorCttpd()V
    .locals 2

    .prologue
    .line 723
    const-string v0, "Ctrler"

    const-string v1, "stopMonitorCttpd()"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCttpDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mCttpDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;

    invoke-virtual {v0}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->stopMonitorCttpd()V

    .line 727
    :cond_0
    return-void
.end method

.method stopNetstate()V
    .locals 2

    .prologue
    .line 711
    const-string v0, "Ctrler"

    const-string v1, "stopNetstate()"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mPollNetStat:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 713
    return-void
.end method

.method stopSip()V
    .locals 2

    .prologue
    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mMMSApnRequested:Z

    .line 591
    const-string v0, "Ctrler"

    const-string v1, "stopSip()"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    if-eqz v0, :cond_0

    .line 593
    const-string v0, "Ctrler"

    const-string v1, "mSipHandler.stopSip"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    const/16 v1, 0x3f3

    invoke-virtual {p0, v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->deregister(Landroid/os/Message;)Z

    .line 596
    :cond_0
    return-void
.end method

.method teardownDataLink()V
    .locals 2

    .prologue
    .line 644
    const-string v0, "Ctrler"

    const-string v1, "teardownDataLink()"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaProxy:Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;

    const/16 v1, 0x3f7

    invoke-virtual {p0, v1}, Lcom/motorola/net/wifi/ctcn/CtcnController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/net/wifi/ctcn/WifiCtcnUaProxy;->bye(Landroid/os/Message;)Z

    .line 650
    :cond_0
    return-void
.end method

.method uaTerminated()V
    .locals 3

    .prologue
    .line 747
    const-string v0, "Ctrler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uaTerminated() reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mUaTerminatedReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z

    .line 756
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z

    .line 757
    return-void
.end method

.method unregisterObserver()V
    .locals 2

    .prologue
    .line 944
    const-string v0, "Ctrler"

    const-string v1, "unregisterObserver()"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mApnObserver:Lcom/motorola/net/wifi/ctcn/CtcnController$PreferredApnObserver;

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mApnObserver:Lcom/motorola/net/wifi/ctcn/CtcnController$PreferredApnObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDataObserver:Lcom/motorola/net/wifi/ctcn/CtcnController$DefaultDataNetworkObserver;

    if-eqz v0, :cond_1

    .line 949
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/CtcnController;->mDataObserver:Lcom/motorola/net/wifi/ctcn/CtcnController$DefaultDataNetworkObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 951
    :cond_1
    return-void
.end method
