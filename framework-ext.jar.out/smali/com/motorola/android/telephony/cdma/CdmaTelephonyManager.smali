.class public Lcom/motorola/android/telephony/cdma/CdmaTelephonyManager;
.super Ljava/lang/Object;
.source "CdmaTelephonyManager.java"


# static fields
.field public static final CDMA_MODEM_CONFIG_SOURCE_DEVICE:I = 0x1

.field public static final CDMA_MODEM_CONFIG_SOURCE_ICC:I = 0x0

.field public static final CDMA_RADIO_AUTHENTICATION_ALGORITHM_CAVE:I = 0x1

.field public static final CDMA_RADIO_AUTHENTICATION_ALGORITHM_MD5:I = 0x2


# instance fields
.field private mCdmaTelephonyManager:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v1, "ro.debuggable"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    .line 35
    .local v0, match:I
    if-eqz v0, :cond_0

    .line 36
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "No permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    .end local v0           #match:I
    :cond_0
    new-instance v1, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;

    invoke-direct {v1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;-><init>()V

    iput-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaTelephonyManager;->mCdmaTelephonyManager:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;

    .line 41
    return-void
.end method


# virtual methods
.method public confirmSsdUpdate(Ljava/lang/String;)Z
    .locals 1
    .parameter "authbs"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaTelephonyManager;->mCdmaTelephonyManager:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->confirmSsdUpdate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public generateKey()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaTelephonyManager;->mCdmaTelephonyManager:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->generateKey()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallProcessStatus()Lcom/motorola/android/telephony/cdma/CdmaCallProcessStatus;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaTelephonyManager;->mCdmaTelephonyManager:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->getCallProcessStatus()Lcom/motorola/android/telephony/cdma/CdmaCallProcessStatus;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlSource()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaTelephonyManager;->mCdmaTelephonyManager:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->getCdmaPrlSource()I

    move-result v0

    return v0
.end method

.method public getMd5Digest(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "chapId"
    .parameter "challenge"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaTelephonyManager;->mCdmaTelephonyManager:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->getMd5Digest(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaTelephonyManager;->mCdmaTelephonyManager:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedAuthenticationAlgorithms()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaTelephonyManager;->mCdmaTelephonyManager:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->getSupportedAuthenticationAlgorithms()I

    move-result v0

    return v0
.end method

.method public getUimid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaTelephonyManager;->mCdmaTelephonyManager:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->getUimid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEsnChanged()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaTelephonyManager;->mCdmaTelephonyManager:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->isEsnChanged()Z

    move-result v0

    return v0
.end method

.method public performCaveAuthentication(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "randu"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaTelephonyManager;->mCdmaTelephonyManager:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->performCaveAuthentication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public performSsdUpdate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "randssd"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaTelephonyManager;->mCdmaTelephonyManager:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->performSsdUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCdmaPrlSource(I)Z
    .locals 1
    .parameter "source"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaTelephonyManager;->mCdmaTelephonyManager:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->setCdmaPrlSource(I)Z

    move-result v0

    return v0
.end method
