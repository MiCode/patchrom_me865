.class Lcom/motorola/net/wifi/ctcn/CtcnStateBase;
.super Ljava/lang/Object;
.source "CtcnStateBase.java"


# static fields
.field static final EVENT_CONNECT:I = 0x3ea

.field static final EVENT_CTTPD_CONNECTED:I = 0x3ee

.field static final EVENT_CTTPD_CONNECT_FAILED:I = 0x3ef

.field static final EVENT_CTTPD_DISCONNECTED:I = 0x3f2

.field static final EVENT_CTTPD_ERROR:I = 0x3f0

.field static final EVENT_DEFAULT_DATE_NETWORK_CHANGED:I = 0x7d5

.field static final EVENT_DISCONNECT:I = 0x7d2

.field static final EVENT_FAST_DISCONNECT:I = 0x7d3

.field static final EVENT_INITIALIZE:I = 0x3f4

.field static final EVENT_PREFERRED_APN_CHANGED:I = 0x7d4

.field static final EVENT_RETRY_INITIALIZE:I = 0x3e9

.field static final EVENT_SIP_BYE:I = 0x3f7

.field static final EVENT_SIP_DEREGISTERED:I = 0x3f3

.field static final EVENT_SIP_INVITE:I = 0x3f5

.field static final EVENT_SIP_PROXY_INITIALIZED:I = 0x3e8

.field static final EVENT_SIP_REGISTERED:I = 0x3eb

.field static final EVENT_SIP_REGISTER_FAILED:I = 0x3ec

.field static final EVENT_SIP_TUNNEL_INIT:I = 0x3f6

.field static final EVENT_START_CTTPD:I = 0x3ed

.field static final EVENT_STOP_SIP:I = 0x3f1

.field static final EVENT_UA_TERMINATED:I = 0x7d1


# instance fields
.field mController:Lcom/motorola/net/wifi/ctcn/CtcnController;


# direct methods
.method constructor <init>(Lcom/motorola/net/wifi/ctcn/CtcnController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/CtcnStateBase;->mController:Lcom/motorola/net/wifi/ctcn/CtcnController;

    .line 50
    return-void
.end method


# virtual methods
.method enter()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method exit()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method handleEvent(ILjava/lang/Object;)Z
    .locals 1
    .parameter "event"
    .parameter "obj"

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method
