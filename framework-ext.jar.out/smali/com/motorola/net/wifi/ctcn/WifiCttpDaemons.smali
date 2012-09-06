.class Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;
.super Ljava/lang/Object;
.source "WifiCttpDaemons.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;,
        Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;,
        Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$DaemontMonitor;,
        Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;
    }
.end annotation


# static fields
.field private static final CTCN_DNS1:Ljava/lang/String; = "vpn.ctcn.dns1"

.field private static final CTCN_DNS2:Ljava/lang/String; = "vpn.ctcn.dns2"

.field private static final CTCN_IS_DOWN:Ljava/lang/String; = "error"

.field private static final CTCN_IS_UP:Ljava/lang/String; = "ok"

.field private static final CTCN_STATUS:Ljava/lang/String; = "vpn.ctcn.status"

.field private static final CTTPD:Ljava/lang/String; = "cttpd"

.field private static final DNS1:Ljava/lang/String; = "net.dns1"

.field private static final DNS2:Ljava/lang/String; = "net.dns2"

.field private static final DNS_DOMAIN_SUFFICES:Ljava/lang/String; = "net.dns.search"

.field private static final EVENT_CTCW_CTTPD_FAIL:I = 0x69

.field private static final EVENT_CTCW_CTTPD_READY:I = 0x67

.field private static final EVENT_CTTPD_MONITOR:I = 0x3

.field private static final EVENT_CTTPD_START:I = 0x1

.field private static final EVENT_CTTPD_STOP:I = 0x2

.field private static final PPP_ARGS_SEPARATOR:Ljava/lang/String; = ""

.field private static final PPP_PASSWORD:Ljava/lang/String; = "vnet.mobi"

.field private static final PPP_PROT:Ljava/lang/String; = "0"

.field private static final PPP_USERNAME:Ljava/lang/String; = "ctnet@mycdma.cn"

.field private static final PROTOCOL:Ljava/lang/String; = "ctcn"

.field private static final REMOTE_IP:Ljava/lang/String; = "net.ipremote"

.field public static final STATE_CTCW_CTTPD_STARTED:I = 0x2

.field public static final STATE_CTCW_CTTPD_STARTING:I = 0x1

.field public static final STATE_CTCW_CTTPD_STOPPED:I = 0x4

.field public static final STATE_CTCW_CTTPD_STOPPING:I = 0x3

.field private static final VPN_LINKNAME:Ljava/lang/String; = "ctcn"

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private final PREFIX:Ljava/lang/String;

.field private mArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;

.field private mDaemonMonitor:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$DaemontMonitor;

.field private mLastNetworkInfo:Landroid/net/NetworkInfo;

.field private mLastTimeReceivedIntent:J

.field private mMessageHandler:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;

.field private mMessageThread:Landroid/os/HandlerThread;

.field private mNotNeedHandleIntent:Z

.field private mOriginalDns1:Ljava/lang/String;

.field private mOriginalDns2:Ljava/lang/String;

.field private mReceiver:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;

.field private mStartCallback:Landroid/os/Message;

.field private mState:I

.field private mStopCallbak:Landroid/os/Message;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "CttpdProxy"

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->PREFIX:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mArgs:Ljava/util/ArrayList;

    .line 91
    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mState:I

    .line 95
    iput-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mReceiver:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;

    .line 97
    iput-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mLastTimeReceivedIntent:J

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mNotNeedHandleIntent:Z

    .line 600
    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->startDaemon(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mArgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->onFinalCleanUp()V

    return-void
.end method

.method static synthetic access$1400(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->checkStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStopCallbak:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStopCallbak:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mMessageThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mMessageThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->getSocketError()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mLastTimeReceivedIntent:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mLastTimeReceivedIntent:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mNotNeedHandleIntent:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mNotNeedHandleIntent:Z

    return p1
.end method

.method static synthetic access$700(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->prepare(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mState:I

    return v0
.end method

.method static synthetic access$802(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mState:I

    return p1
.end method

.method static synthetic access$900(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$902(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;

    return-object p1
.end method

.method private static addPppArguments(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter "serverIp"
    .parameter "username"
    .parameter "password"
    .parameter "encryption"
    .parameter "local"
    .parameter "remote"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 284
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p6, :cond_1

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "linkname"

    aput-object v1, v0, v2

    const-string v1, "ctcn"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    aput-object p2, v0, v5

    const-string v1, "password"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    const-string v2, "refuse-eap"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nodefaultroute"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "usepeerdns"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "idle"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "1800"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mtu"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "1400"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mru"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "1352"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "lcp-max-configure"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "debug"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "noccp"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "novj"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ipcp-accept-local"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "ipcp-accept-remote"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 314
    :goto_0
    if-eqz p4, :cond_0

    .line 315
    const-string v0, "+mppe"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_0
    return-void

    .line 301
    :cond_1
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "linkname"

    aput-object v1, v0, v2

    const-string v1, "ctcn"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    aput-object p2, v0, v5

    const-string v1, "password"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    aput-object p3, v0, v1

    const/4 v1, 0x6

    const-string v2, "refuse-eap"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nodefaultroute"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "usepeerdns"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "idle"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "1800"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mtu"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "1400"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mru"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "1352"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "lcp-max-configure"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "debug"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "noccp"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "novj"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private bumpDns()V
    .locals 5

    .prologue
    .line 559
    const-string v2, "net.dnschange"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, propVal:Ljava/lang/String;
    const/4 v0, 0x0

    .line 561
    .local v0, n:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 563
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 566
    :cond_0
    :goto_0
    const-string v2, "net.dnschange"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    return-void

    .line 564
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private bytesToInt([B)I
    .locals 3
    .parameter "bytes"

    .prologue
    .line 244
    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 246
    .local v0, value:I
    return v0
.end method

.method private checkStatus(Ljava/lang/String;)Z
    .locals 4
    .parameter "status"

    .prologue
    .line 270
    const-string v1, "CttpdProxy"

    const-string v2, "checkStatus"

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v1, "vpn.ctcn.status"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, st:Ljava/lang/String;
    const-string v1, "CttpdProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vpn.ctcn.status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->onConnected()V

    .line 275
    const/4 v1, 0x1

    .line 279
    :goto_0
    return v1

    .line 276
    :cond_0
    const-string v1, "error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mMessageHandler:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;

    const/16 v2, 0x1e

    iput v2, v1, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->mRetryCounter:I

    .line 279
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSocketError()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 250
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;

    if-nez v2, :cond_0

    .line 255
    :goto_0
    return v1

    .line 253
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;

    invoke-virtual {v2}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->getResultFromSocket()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method private onConnected()V
    .locals 2

    .prologue
    .line 320
    const-string v0, "CttpdProxy"

    const-string v1, "onConnected()"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->saveOriginalDns()V

    .line 326
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->setCtcnDns()V

    .line 327
    return-void
.end method

.method private onFinalCleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 330
    const-string v0, "CttpdProxy"

    const-string v1, "onFinalCleanUp()"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mReceiver:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "CttpdProxy"

    const-string v1, "unregister receiver for connection state changed event."

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mReceiver:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 336
    :cond_0
    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mReceiver:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;

    .line 338
    const-string v0, "CttpdProxy"

    const-string v1, "set gprs.http-proxy to null"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v0, "net.gprs.http-proxy"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->restoreOriginalDns()V

    .line 343
    return-void
.end method

.method private prepare(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Z
    .locals 17
    .parameter "parameter"

    .prologue
    .line 153
    const-string v1, "CttpdProxy"

    const-string v2, "prepare()"

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "vpn.ctcn.status"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mApnProxy:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->access$000(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Ljava/lang/String;

    move-result-object v12

    .line 160
    .local v12, httpProxy:Ljava/lang/String;
    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mApnPort:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->access$100(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Ljava/lang/String;

    move-result-object v11

    .line 161
    .local v11, httpPort:Ljava/lang/String;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 162
    :cond_0
    const-string v1, "CttpdProxy"

    const-string v2, "set gprs.http-proxy to null"

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "net.gprs.http-proxy"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_0
    const/4 v13, 0x0

    .line 175
    .local v13, qmi0Gw:Ljava/lang/String;
    const/4 v15, 0x0

    .line 176
    .local v15, retryCount:I
    :goto_1
    const/16 v1, 0x9

    if-ge v15, v1, :cond_1

    .line 177
    const-string v1, "net.qmi0.gw"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 178
    const-string v1, "CttpdProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qmi0.gw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 189
    :cond_1
    const/16 v1, 0x9

    if-ne v15, v1, :cond_6

    if-eqz v13, :cond_6

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 190
    const-string v1, "CttpdProxy"

    const-string v2, "qmi0 still active"

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v1, 0x0

    .line 240
    :goto_2
    return v1

    .line 165
    .end local v13           #qmi0Gw:Ljava/lang/String;
    .end local v15           #retryCount:I
    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 166
    :cond_3
    const-string v11, "8080"

    .line 168
    :cond_4
    const-string v1, "CttpdProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set gprs.http-proxyhttp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "net.gprs.http-proxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    .restart local v13       #qmi0Gw:Ljava/lang/String;
    .restart local v15       #retryCount:I
    :cond_5
    monitor-enter p0

    .line 183
    const-wide/16 v1, 0x3e8

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_3
    :try_start_1
    monitor-exit p0

    .line 176
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 184
    :catch_0
    move-exception v9

    .line 185
    .local v9, e:Ljava/lang/InterruptedException;
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 187
    .end local v9           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 195
    :cond_6
    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mSipRegistrationInfo:Lcom/motorola/net/wifi/ctcn/RegistrationInfo;
    invoke-static/range {p1 .. p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->access$200(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Lcom/motorola/net/wifi/ctcn/RegistrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->getIp()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->bytesToInt([B)I

    move-result v8

    .line 196
    .local v8, addr:I
    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mDhcpGateway:I
    invoke-static/range {p1 .. p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->access$300(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)I

    move-result v1

    invoke-static {v8, v1}, Lcom/motorola/android/net/MotorolaNetworkUtilsExt;->addNextHop(II)I

    move-result v14

    .line 197
    .local v14, result:I
    const-string v1, "CttpdProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add next hop("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") route to gw("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mDhcpGateway:I
    invoke-static/range {p1 .. p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->access$300(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :try_start_2
    const-string v1, "CttpdProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InetAddress.getByName() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mSipServer:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->access$400(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mSipServer:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->access$400(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v16

    .line 203
    .local v16, wagIp:Ljava/net/InetAddress;
    const-string v1, "CttpdProxy"

    const-string v2, "InetAddress.getByName() done"

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->bytesToInt([B)I

    move-result v8

    .line 205
    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mDhcpGateway:I
    invoke-static/range {p1 .. p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->access$300(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)I

    move-result v1

    invoke-static {v8, v1}, Lcom/motorola/android/net/MotorolaNetworkUtilsExt;->addNextHop(II)I

    move-result v14

    .line 206
    const-string v1, "CttpdProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add next hop("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") route to gw("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mDhcpGateway:I
    invoke-static/range {p1 .. p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->access$300(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1

    .line 212
    .end local v16           #wagIp:Ljava/net/InetAddress;
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mArgs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mArgs:Ljava/util/ArrayList;

    const-string v2, "ctcn"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mArgs:Ljava/util/ArrayList;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mSipRegistrationInfo:Lcom/motorola/net/wifi/ctcn/RegistrationInfo;
    invoke-static/range {p1 .. p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->access$200(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Lcom/motorola/net/wifi/ctcn/RegistrationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->getIp()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mArgs:Ljava/util/ArrayList;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mSipRegistrationInfo:Lcom/motorola/net/wifi/ctcn/RegistrationInfo;
    invoke-static/range {p1 .. p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->access$200(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Lcom/motorola/net/wifi/ctcn/RegistrationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mArgs:Ljava/util/ArrayList;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mSipRegistrationInfo:Lcom/motorola/net/wifi/ctcn/RegistrationInfo;
    invoke-static/range {p1 .. p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->access$200(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Lcom/motorola/net/wifi/ctcn/RegistrationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->getStreamid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mArgs:Ljava/util/ArrayList;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mSipRegistrationInfo:Lcom/motorola/net/wifi/ctcn/RegistrationInfo;
    invoke-static/range {p1 .. p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->access$200(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Lcom/motorola/net/wifi/ctcn/RegistrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->isNat()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "1"

    :goto_5
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mArgs:Ljava/util/ArrayList;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mApnUser:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->access$500(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mArgs:Ljava/util/ArrayList;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mSipRegistrationInfo:Lcom/motorola/net/wifi/ctcn/RegistrationInfo;
    invoke-static/range {p1 .. p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->access$200(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Lcom/motorola/net/wifi/ctcn/RegistrationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->getIp()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ctnet@mycdma.cn"

    const-string v4, "vnet.mobi"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->addPppArguments(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mReceiver:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;

    if-nez v1, :cond_9

    .line 230
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 232
    .local v10, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v10, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v1, "CttpdProxy"

    const-string v2, "register receiver for connection state changed event."

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v1, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;-><init>(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mReceiver:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mReceiver:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MyReceiver;

    invoke-virtual {v1, v2, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    .end local v10           #filter:Landroid/content/IntentFilter;
    :goto_7
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 208
    :catch_1
    move-exception v9

    .line 209
    .local v9, e:Ljava/net/UnknownHostException;
    const-string v1, "CttpdProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get wag server ip failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 217
    .end local v9           #e:Ljava/net/UnknownHostException;
    :cond_7
    const-string v1, "0"

    goto :goto_5

    .line 224
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mArgs:Ljava/util/ArrayList;

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mSipRegistrationInfo:Lcom/motorola/net/wifi/ctcn/RegistrationInfo;
    invoke-static/range {p1 .. p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->access$200(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Lcom/motorola/net/wifi/ctcn/RegistrationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->getIp()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mApnUser:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->access$500(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mApnPassword:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->access$600(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->addPppArguments(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 237
    :cond_9
    const-string v1, "CttpdProxy"

    const-string v2, "receiver has been registered!"

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private restoreOriginalDns()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 347
    const-string v1, "vpn.ctcn.dns1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, vpnDns1:Ljava/lang/String;
    const-string v1, "net.dns1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    const-string v1, "CttpdProxy"

    const-string v2, "restore original dns prop: %s --> %s"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "net.dns1"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mOriginalDns1:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v1, "CttpdProxy"

    const-string v2, "restore original dns prop: %s --> %s"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "net.dns2"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mOriginalDns2:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v1, "net.dns1"

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mOriginalDns1:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v1, "net.dns2"

    iget-object v2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mOriginalDns2:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_0
    const-string v1, "CttpdProxy"

    const-string v2, "clean ctcn dns prop"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v1, "vpn.ctcn.dns1"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v1, "vpn.ctcn.dns2"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private saveOriginalDns()V
    .locals 5

    .prologue
    .line 362
    const-string v0, "net.dns1"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mOriginalDns1:Ljava/lang/String;

    .line 363
    const-string v0, "net.dns2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mOriginalDns2:Ljava/lang/String;

    .line 364
    const-string v0, "CttpdProxy"

    const-string v1, "save original dns prop: %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mOriginalDns1:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mOriginalDns2:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method private setCtcnDns()V
    .locals 6

    .prologue
    .line 369
    const-string v2, "vpn.ctcn.dns1"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, ctcnDns1:Ljava/lang/String;
    const-string v2, "vpn.ctcn.dns2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, ctcnDns2:Ljava/lang/String;
    const-string v2, "net.dns1"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v2, "net.dns2"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v2, "CttpdProxy"

    const-string v3, "set vpn dns prop: %s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-direct {p0}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->bumpDns()V

    .line 376
    return-void
.end method

.method private startDaemon(Ljava/lang/String;)V
    .locals 2
    .parameter "daemonName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;

    invoke-direct {v0, p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mDaemon:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;

    invoke-virtual {v0}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemonProxy;->start()V

    .line 267
    return-void

    .line 264
    :cond_0
    const-string v0, "CttpdProxy"

    const-string v1, "CHECK-ME:re-enter Daemon!"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method getCttpState()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mState:I

    return v0
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 597
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mContext:Landroid/content/Context;

    .line 598
    return-void
.end method

.method declared-synchronized start(Landroid/os/Message;Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)V
    .locals 3
    .parameter "message"
    .parameter "parameter"

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStartCallback:Landroid/os/Message;

    .line 105
    iget v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 106
    const-string v0, "CttpdProxy"

    const-string v1, "already started"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mState:I

    .line 111
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mMessageThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CTTPDaemonMessageThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mMessageThread:Landroid/os/HandlerThread;

    .line 113
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mMessageThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 114
    new-instance v0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;

    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mMessageThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;-><init>(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mMessageHandler:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mMessageHandler:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;

    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mMessageHandler:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    const-string v0, "CttpdProxy"

    const-string v1, "start msg sent"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method startMonitorCttpd(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mDaemonMonitor:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$DaemontMonitor;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$DaemontMonitor;

    invoke-direct {v0, p0, p1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$DaemontMonitor;-><init>(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;Landroid/os/Message;)V

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mDaemonMonitor:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$DaemontMonitor;

    .line 141
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mDaemonMonitor:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$DaemontMonitor;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 143
    :cond_0
    return-void
.end method

.method declared-synchronized stop(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v1, 0x2

    .line 122
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mStopCallbak:Landroid/os/Message;

    .line 123
    iget v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mState:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 124
    const-string v0, "CttpdProxy"

    const-string v1, "not start yet"

    invoke-static {v0, v1}, Lcom/motorola/net/wifi/ctcn/L;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 127
    :cond_1
    const/4 v0, 0x3

    :try_start_1
    iput v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mState:I

    .line 129
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mMessageHandler:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mMessageHandler:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;

    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mMessageHandler:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$MessageHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method stopMonitorCttpd()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mDaemonMonitor:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$DaemontMonitor;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mDaemonMonitor:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$DaemontMonitor;

    invoke-virtual {v0}, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$DaemontMonitor;->stop()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;->mDaemonMonitor:Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$DaemontMonitor;

    .line 150
    :cond_0
    return-void
.end method
