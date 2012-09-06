.class public Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;
.super Ljava/lang/Object;
.source "MotorolaCdmaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private isDmds:Z

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 20
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->isDmds()Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->isDmds:Z

    .line 33
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->isDefautPhoneCDMA()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_0

    .line 40
    const-string v1, "mTelephony == null for TelephonyManager is not ready, try again !"

    invoke-direct {p0, v1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->log(Ljava/lang/String;)V

    .line 41
    monitor-enter p0

    .line 43
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->isDefautPhoneCDMA()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 49
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 56
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 58
    :try_start_2
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 65
    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v1, :cond_2

    .line 66
    const-string v1, "mTelephony == null"

    invoke-direct {p0, v1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->log(Ljava/lang/String;)V

    .line 68
    :cond_2
    return-void

    .line 37
    :cond_3
    const-string v1, "phone2"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 47
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 52
    :cond_4
    const-string v1, "phone2"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    goto :goto_2

    .line 61
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method private isDefautPhoneCDMA()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 25
    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->isDmds:Z

    if-nez v1, :cond_1

    .line 28
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->getDefaultPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 438
    sget-boolean v0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotorolaCdmaTelephonyManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    return-void
.end method


# virtual methods
.method public confirmSsdUpdate(Ljava/lang/String;)Z
    .locals 4
    .parameter "authbs"

    .prologue
    const/4 v0, 0x0

    .line 155
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_1

    .line 156
    const-string v3, "mTelephony == null"

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->log(Ljava/lang/String;)V

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, confirmed:Z
    const v3, 0x2090005

    invoke-static {v3, p1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->authbsToByteArray(ILjava/lang/String;)[B

    move-result-object v1

    .line 169
    .local v1, request:[B
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B)[B

    move-result-object v2

    .line 171
    .local v2, response:[B
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->byteArrayToBoolean([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 172
    .end local v2           #response:[B
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public generateKey()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 179
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_0

    .line 180
    const-string v3, "mTelephony == null"

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->log(Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    .line 184
    :cond_0
    const/4 v0, 0x0

    .line 186
    .local v0, key:[Ljava/lang/String;
    const v3, 0x2090006

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->createEmptyRequest(I)[B

    move-result-object v1

    .line 189
    .local v1, request:[B
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B)[B

    move-result-object v2

    .line 191
    .local v2, response:[B
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->byteArrayToSmekeyVpn([B)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 192
    .end local v2           #response:[B
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getCallProcessStatus()Lcom/motorola/android/telephony/cdma/CdmaCallProcessStatus;
    .locals 4

    .prologue
    .line 71
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_0

    .line 72
    const-string v3, "mTelephony == null"

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->log(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 78
    .local v0, cdmaCallProcessStatus:Lcom/motorola/android/telephony/cdma/CdmaCallProcessStatus;
    const v3, 0x2000011

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->writeHookHeader(I)[B

    move-result-object v1

    .line 81
    .local v1, request:[B
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B)[B

    move-result-object v2

    .line 83
    .local v2, response:[B
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->byteArrToCpStatus([B)Lcom/motorola/android/telephony/cdma/CdmaCallProcessStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 84
    .end local v2           #response:[B
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getCdmaPrlSource()I
    .locals 6

    .prologue
    .line 341
    const/4 v1, 0x0

    .line 342
    .local v1, prlSrc:I
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v5, :cond_0

    .line 343
    const v5, 0x209000b

    invoke-static {v5}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->createEmptyRequest(I)[B

    move-result-object v2

    .line 346
    .local v2, request:[B
    :try_start_0
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v5, v2}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B)[B

    move-result-object v4

    .line 347
    .local v4, response:[B
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    .line 348
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 349
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 350
    .local v3, resp:I
    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 351
    const/4 v1, 0x1

    .line 357
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    .end local v2           #request:[B
    .end local v3           #resp:I
    .end local v4           #response:[B
    :cond_0
    :goto_0
    return v1

    .line 354
    .restart local v2       #request:[B
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public getMd5Digest(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "chapId"
    .parameter "challenge"

    .prologue
    const/4 v0, 0x0

    .line 199
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_2

    .line 200
    const-string v3, "mTelephony == null"

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->log(Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->isDefautPhoneCDMA()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 207
    :goto_0
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_0

    .line 209
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 210
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    :goto_1
    return-object v0

    .line 205
    :cond_1
    const-string v3, "phone2"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    goto :goto_0

    .line 213
    :catch_0
    move-exception v3

    .line 220
    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    const/4 v0, 0x0

    .line 226
    .local v0, md5:Ljava/lang/String;
    const v3, 0x2090007

    invoke-static {v3, p1, p2}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->challengeToByteArray(IILjava/lang/String;)[B

    move-result-object v1

    .line 229
    .local v1, request:[B
    :try_start_1
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B)[B

    move-result-object v2

    .line 231
    .local v2, response:[B
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->byteArrayToMd5Digest([B)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    .line 232
    .end local v2           #response:[B
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public getMeid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 280
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_0

    .line 281
    const-string v3, "mTelephony == null"

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->log(Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x0

    .line 296
    :goto_0
    return-object v0

    .line 285
    :cond_0
    const/4 v0, 0x0

    .line 287
    .local v0, meid:Ljava/lang/String;
    const v3, 0x2000016

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->meidRequestToByteArray(I)[B

    move-result-object v1

    .line 290
    .local v1, request:[B
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B)[B

    move-result-object v2

    .line 292
    .local v2, response:[B
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->byteArrToMeid([B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 293
    .end local v2           #response:[B
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getSupportedAuthenticationAlgorithms()I
    .locals 4

    .prologue
    .line 239
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_0

    .line 240
    const-string v3, "mTelephony == null"

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->log(Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x0

    .line 256
    :goto_0
    return v0

    .line 244
    :cond_0
    const/4 v0, 0x0

    .line 246
    .local v0, authenticationAlgorithms:I
    const v3, 0x2090008

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->createEmptyRequest(I)[B

    move-result-object v1

    .line 249
    .local v1, request:[B
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B)[B

    move-result-object v2

    .line 251
    .local v2, response:[B
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->byteArrayToAuthenticationAlgorithm([B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 253
    .end local v2           #response:[B
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getUimid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 260
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_0

    .line 261
    const-string v3, "mTelephony == null"

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->log(Ljava/lang/String;)V

    .line 262
    const/4 v2, 0x0

    .line 276
    :goto_0
    return-object v2

    .line 265
    :cond_0
    const/4 v2, 0x0

    .line 267
    .local v2, uimid:Ljava/lang/String;
    const v3, 0x2090009

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->createEmptyRequest(I)[B

    move-result-object v0

    .line 270
    .local v0, request:[B
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v0}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B)[B

    move-result-object v1

    .line 272
    .local v1, response:[B
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->byteArrayToUimid([B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 273
    .end local v1           #response:[B
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public isEsnChanged()Z
    .locals 4

    .prologue
    .line 300
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_0

    .line 301
    const-string v3, "mTelephony == null"

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->log(Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    .line 305
    :cond_0
    const/4 v0, 0x0

    .line 307
    .local v0, esnChanged:Z
    const v3, 0x2090002

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->createEmptyRequest(I)[B

    move-result-object v1

    .line 312
    .local v1, request:[B
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B)[B

    move-result-object v2

    .line 314
    .local v2, response:[B
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->byteArrayToIsEsnChanged([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 315
    .end local v2           #response:[B
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public performCaveAuthentication(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "randu"

    .prologue
    const/4 v0, 0x0

    .line 91
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_2

    .line 92
    const-string v3, "mTelephony == null"

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->log(Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->isDefautPhoneCDMA()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 99
    :goto_0
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_0

    .line 101
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 102
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_0
    :goto_1
    return-object v0

    .line 97
    :cond_1
    const-string v3, "phone2"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    goto :goto_0

    .line 105
    :catch_0
    move-exception v3

    .line 112
    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 118
    .local v0, cave:Ljava/lang/String;
    const v3, 0x2090003

    invoke-static {v3, p1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->randuToByteArray(ILjava/lang/String;)[B

    move-result-object v1

    .line 121
    .local v1, request:[B
    :try_start_1
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B)[B

    move-result-object v2

    .line 123
    .local v2, response:[B
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->byteArrayToCave([B)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    .line 124
    .end local v2           #response:[B
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public performSsdUpdate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "randssd"

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_1

    .line 132
    const-string v3, "mTelephony == null"

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->log(Ljava/lang/String;)V

    .line 151
    :cond_0
    :goto_0
    return-object v0

    .line 136
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, randbs:Ljava/lang/String;
    const v3, 0x2090004

    invoke-static {v3, p1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->randuToByteArray(ILjava/lang/String;)[B

    move-result-object v1

    .line 145
    .local v1, request:[B
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B)[B

    move-result-object v2

    .line 147
    .local v2, response:[B
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->byteArrayToRandbs([B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 148
    .end local v2           #response:[B
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setCdmaPrlSource(I)Z
    .locals 4
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v3, :cond_0

    .line 336
    :goto_0
    return v2

    .line 326
    :cond_0
    const v3, 0x209000a

    invoke-static {v3, p1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->createIntRequest(II)[B

    move-result-object v1

    .line 333
    .local v1, request:[B
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    const/4 v2, 0x1

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method
