.class public Lcom/motorola/net/wifi/ctcn/RegistrationInfo;
.super Ljava/lang/Object;
.source "RegistrationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/net/wifi/ctcn/RegistrationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ip:Ljava/net/InetAddress;

.field private nat:Z

.field private port:I

.field private streamid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/motorola/net/wifi/ctcn/RegistrationInfo$1;

    invoke-direct {v0}, Lcom/motorola/net/wifi/ctcn/RegistrationInfo$1;-><init>()V

    sput-object v0, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-direct {p0, p1}, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;IIZ)V
    .locals 0
    .parameter "ip"
    .parameter "port"
    .parameter "sid"
    .parameter "nat"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->ip:Ljava/net/InetAddress;

    .line 29
    iput p2, p0, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->port:I

    .line 30
    iput p3, p0, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->streamid:I

    .line 31
    iput-boolean p4, p0, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->nat:Z

    .line 32
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    .line 78
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->ip:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->port:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->streamid:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_1
    iput-boolean v1, p0, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->nat:Z

    .line 85
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/net/UnknownHostException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->ip:Ljava/net/InetAddress;

    goto :goto_0

    .line 84
    .end local v0           #e:Ljava/net/UnknownHostException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getIp()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->ip:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->port:I

    return v0
.end method

.method public getStreamid()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->streamid:I

    return v0
.end method

.method public isNat()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->nat:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->getIp()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streamId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->getStreamid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NAT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->isNat()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->ip:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    iget v1, p0, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->port:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v1, p0, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->streamid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-boolean v1, p0, Lcom/motorola/net/wifi/ctcn/RegistrationInfo;->nat:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method
