.class final Landroid/net/wifi/WifiCtcwSipConfig$1;
.super Ljava/lang/Object;
.source "WifiCtcwSipConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiCtcwSipConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/WifiCtcwSipConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiCtcwSipConfig;
    .locals 2
    .parameter "in"

    .prologue
    .line 69
    new-instance v0, Landroid/net/wifi/WifiCtcwSipConfig;

    invoke-direct {v0}, Landroid/net/wifi/WifiCtcwSipConfig;-><init>()V

    .line 70
    .local v0, config:Landroid/net/wifi/WifiCtcwSipConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiCtcwSipConfig;->account:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiCtcwSipConfig;->server:Ljava/lang/String;

    .line 72
    iget-object v1, v0, Landroid/net/wifi/WifiCtcwSipConfig;->server:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiCtcwSipConfig;->server:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 73
    :cond_0
    const-string v1, "chinanetcw.chinatelecom.cn"

    iput-object v1, v0, Landroid/net/wifi/WifiCtcwSipConfig;->server:Ljava/lang/String;

    .line 74
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiCtcwSipConfig;->default_server:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiCtcwSipConfig;->port:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiCtcwSipConfig;->proxy:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiCtcwSipConfig;->proxyPort:Ljava/lang/String;

    .line 78
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiCtcwSipConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiCtcwSipConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiCtcwSipConfig;
    .locals 1
    .parameter "size"

    .prologue
    .line 82
    new-array v0, p1, [Landroid/net/wifi/WifiCtcwSipConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiCtcwSipConfig$1;->newArray(I)[Landroid/net/wifi/WifiCtcwSipConfig;

    move-result-object v0

    return-object v0
.end method
