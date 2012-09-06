.class public Lcom/motorola/net/wifi/ctcn/AccessNetInfo;
.super Ljava/lang/Object;
.source "AccessNetInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final COLON:Ljava/lang/String; = ":"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/net/wifi/ctcn/AccessNetInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessType:Ljava/lang/String;

.field private mCi:Ljava/lang/String;

.field private mMac:Ljava/lang/String;

.field private mSsid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/motorola/net/wifi/ctcn/AccessNetInfo$1;

    invoke-direct {v0}, Lcom/motorola/net/wifi/ctcn/AccessNetInfo$1;-><init>()V

    sput-object v0, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-direct {p0, p1}, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "at"
    .parameter "ssid"
    .parameter "mac"
    .parameter "ci"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->setAccessType(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->setSsid(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p3}, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->setMac(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p4}, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->setCi(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->mAccessType:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->mSsid:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->mMac:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->mCi:Ljava/lang/String;

    .line 125
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->mAccessType:Ljava/lang/String;

    return-object v0
.end method

.method public getCi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->mCi:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessType(Ljava/lang/String;)V
    .locals 1
    .parameter "accessType"

    .prologue
    .line 82
    if-eqz p1, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->mAccessType:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCi(Ljava/lang/String;)V
    .locals 1
    .parameter "ci"

    .prologue
    .line 91
    if-eqz p1, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->mCi:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 1
    .parameter "mac"

    .prologue
    .line 100
    if-eqz p1, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->mMac:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 1
    .parameter "ssid"

    .prologue
    .line 109
    if-eqz p1, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iput-object p1, p0, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->mSsid:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->mAccessType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->mSsid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->mMac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/motorola/net/wifi/ctcn/AccessNetInfo;->mCi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return-void
.end method
