.class Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;
.super Ljava/lang/Object;
.source "WifiCttpDaemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Parameter"
.end annotation


# instance fields
.field private mApnPassword:Ljava/lang/String;

.field private mApnPort:Ljava/lang/String;

.field private mApnProxy:Ljava/lang/String;

.field private mApnUser:Ljava/lang/String;

.field private mDhcpGateway:I

.field private mSipRegistrationInfo:Lcom/motorola/net/wifi/ctcn/RegistrationInfo;

.field private mSipServer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/motorola/net/wifi/ctcn/RegistrationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "sipRegistrationInfo"
    .parameter "apnUser"
    .parameter "apnPassword"
    .parameter "apnProxy"
    .parameter "apnPort"
    .parameter "dhcpGateway"
    .parameter "sipServer"

    .prologue
    .line 585
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mSipRegistrationInfo:Lcom/motorola/net/wifi/ctcn/RegistrationInfo;

    .line 587
    iput-object p2, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mApnUser:Ljava/lang/String;

    .line 588
    iput-object p3, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mApnPassword:Ljava/lang/String;

    .line 589
    iput-object p4, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mApnProxy:Ljava/lang/String;

    .line 590
    iput-object p5, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mApnPort:Ljava/lang/String;

    .line 591
    iput p6, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mDhcpGateway:I

    .line 592
    iput-object p7, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mSipServer:Ljava/lang/String;

    .line 593
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mApnProxy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mApnPort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Lcom/motorola/net/wifi/ctcn/RegistrationInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mSipRegistrationInfo:Lcom/motorola/net/wifi/ctcn/RegistrationInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 569
    iget v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mDhcpGateway:I

    return v0
.end method

.method static synthetic access$400(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mSipServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mApnUser:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/WifiCttpDaemons$Parameter;->mApnPassword:Ljava/lang/String;

    return-object v0
.end method
