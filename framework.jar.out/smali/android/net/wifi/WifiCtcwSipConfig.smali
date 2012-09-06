.class public Landroid/net/wifi/WifiCtcwSipConfig;
.super Ljava/lang/Object;
.source "WifiCtcwSipConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiCtcwSipConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ACCOUNT:Ljava/lang/String; = "CTC-CW"

.field private static final DEFAULT_SERVER:Ljava/lang/String; = "chinanetcw.chinatelecom.cn"

.field private static final DEFAULT_SERVER_PORT:Ljava/lang/String; = "5060"

.field private static final PROPERTY_CTCW_SIP_SERVER:Ljava/lang/String; = "persist.sys.wifi.ctserver"


# instance fields
.field public account:Ljava/lang/String;

.field public default_server:Ljava/lang/String;

.field public port:Ljava/lang/String;

.field public proxy:Ljava/lang/String;

.field public proxyPort:Ljava/lang/String;

.field public server:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Landroid/net/wifi/WifiCtcwSipConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiCtcwSipConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiCtcwSipConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v1, "CTC-CW"

    iput-object v1, p0, Landroid/net/wifi/WifiCtcwSipConfig;->account:Ljava/lang/String;

    .line 35
    :try_start_0
    const-string v1, "persist.sys.wifi.ctserver"

    const-string v2, "chinanetcw.chinatelecom.cn"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiCtcwSipConfig;->server:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiCtcwSipConfig;->server:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiCtcwSipConfig;->server:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 40
    :cond_0
    const-string v1, "chinanetcw.chinatelecom.cn"

    iput-object v1, p0, Landroid/net/wifi/WifiCtcwSipConfig;->server:Ljava/lang/String;

    .line 41
    :cond_1
    const-string v1, "chinanetcw.chinatelecom.cn"

    iput-object v1, p0, Landroid/net/wifi/WifiCtcwSipConfig;->default_server:Ljava/lang/String;

    .line 42
    const-string v1, "5060"

    iput-object v1, p0, Landroid/net/wifi/WifiCtcwSipConfig;->port:Ljava/lang/String;

    .line 43
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "chinanetcw.chinatelecom.cn"

    iput-object v1, p0, Landroid/net/wifi/WifiCtcwSipConfig;->server:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 101
    check-cast v0, Landroid/net/wifi/WifiCtcwSipConfig;

    .line 102
    .local v0, other:Landroid/net/wifi/WifiCtcwSipConfig;
    iget-object v2, v0, Landroid/net/wifi/WifiCtcwSipConfig;->account:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/wifi/WifiCtcwSipConfig;->account:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, v0, Landroid/net/wifi/WifiCtcwSipConfig;->server:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/wifi/WifiCtcwSipConfig;->server:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, v0, Landroid/net/wifi/WifiCtcwSipConfig;->port:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/wifi/WifiCtcwSipConfig;->port:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, v0, Landroid/net/wifi/WifiCtcwSipConfig;->proxy:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/wifi/WifiCtcwSipConfig;->proxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, v0, Landroid/net/wifi/WifiCtcwSipConfig;->proxyPort:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/wifi/WifiCtcwSipConfig;->proxyPort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 49
    .local v0, sbuf:Ljava/lang/StringBuffer;
    const-string v1, "ACCOUNT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiCtcwSipConfig;->account:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "| SERVER: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiCtcwSipConfig;->server:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "| PORT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiCtcwSipConfig;->port:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "| PROXY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiCtcwSipConfig;->proxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "| PROXY_PORT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiCtcwSipConfig;->proxyPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writePref()Z
    .locals 3

    .prologue
    .line 88
    :try_start_0
    const-string v1, "persist.sys.wifi.ctserver"

    iget-object v2, p0, Landroid/net/wifi/WifiCtcwSipConfig;->server:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/net/wifi/WifiCtcwSipConfig;->account:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Landroid/net/wifi/WifiCtcwSipConfig;->server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Landroid/net/wifi/WifiCtcwSipConfig;->default_server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Landroid/net/wifi/WifiCtcwSipConfig;->port:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Landroid/net/wifi/WifiCtcwSipConfig;->proxy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Landroid/net/wifi/WifiCtcwSipConfig;->proxyPort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return-void
.end method
