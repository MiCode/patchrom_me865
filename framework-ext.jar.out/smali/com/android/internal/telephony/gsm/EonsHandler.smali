.class public Lcom/android/internal/telephony/gsm/EonsHandler;
.super Landroid/os/Handler;
.source "EonsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    }
.end annotation


# static fields
.field private static final EONS_DISABLED:I = 0x0

.field private static final EONS_UNKNOWN:I = -0x1

.field private static final EVENT_GET_ALL_OPL_RECORDS_DONE:I = 0x5

.field private static final EVENT_GET_ALL_PNN_RECORDS_DONE:I = 0x6

.field private static final EVENT_GET_SST_DONE:I = 0x4

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_SIM_READY:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final ONLY_PNN_ENABLED:I = 0x2

.field private static final PNN_OPL_ENABLED:I = 0x1

.field static final RAT_2G:Ljava/lang/String; = " 2G"

.field static final RAT_3G:Ljava/lang/String; = " 3G"

.field private static final TAG:Ljava/lang/String; = "EONS"

.field static localLOGV:Z

.field private static mEonsLoadedRegistrant:Landroid/os/Registrant;


# instance fields
.field mEONSFeatureOn:Z

.field mEONSUpdatedPLMN:Z

.field mOPLLoadFailed:Z

.field private mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

.field mPNNLoadFailed:Z

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private oplCache:Ljava/util/ArrayList;

.field private pnnCache:Ljava/util/ArrayList;

.field private sstPlmnOplValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 31
    const-string v2, "ro.debuggable"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    const-string v2, "ro.debuggable.v"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sput-boolean v0, Lcom/android/internal/telephony/gsm/EonsHandler;->localLOGV:Z

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSFeatureOn:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSUpdatedPLMN:Z

    .line 100
    new-instance v0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;-><init>(Lcom/android/internal/telephony/gsm/EonsHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    .line 108
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 113
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSFeatureOn:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEONSFeatureOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSFeatureOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->onRadioOffOrNotAvailable()V

    .line 119
    return-void

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isEONSDataLoadingDone()Z
    .locals 2

    .prologue
    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEONSDataLoadingDone: mPNNLoadFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPNNLoadFailed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOPLLoadFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLLoadFailed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",oplCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pnnCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPNNLoadFailed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLLoadFailed:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setEonsLoadedRegistrant(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 134
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEonsLoadedRegistrant:Landroid/os/Registrant;

    .line 135
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "servicestate"

    .prologue
    const/4 v4, 0x1

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, longname:Ljava/lang/String;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSUpdatedPLMN:Z

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isNeedToWaitEONSName()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    const-string v3, "updateServiceState: data not loaded, no longname till data loaded"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 283
    :goto_0
    const/4 v2, 0x0

    .line 284
    .local v2, shortname:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isNeedToWaitEONSName()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 285
    const-string v3, "updateServiceState: data not loaded, no shortname till data loaded"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 299
    :goto_1
    const/4 v1, 0x0

    .line 300
    .local v1, numeric:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isNeedToWaitEONSName()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 301
    const-string v3, "updateServiceState: data not loaded, no numeric till data loaded"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 305
    :goto_2
    invoke-virtual {p1, v0, v2, v1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateServiceState: servicestate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 307
    return-void

    .line 272
    .end local v1           #numeric:Ljava/lang/String;
    .end local v2           #shortname:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 273
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iget-object v0, v3, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    .line 274
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSUpdatedPLMN:Z

    goto :goto_0

    .line 275
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 277
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 287
    .restart local v2       #shortname:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 289
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iget-object v2, v3, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    .line 290
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSUpdatedPLMN:Z

    goto :goto_1

    .line 291
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 293
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 295
    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    goto/16 :goto_1

    .line 303
    .restart local v1       #numeric:Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method


# virtual methods
.method getEONSName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    return-object v0
.end method

.method getNameFromPnnRecord(I)Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    .locals 9
    .parameter "record"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 384
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: record="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 385
    new-instance v4, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;-><init>(Lcom/android/internal/telephony/gsm/EonsHandler;)V

    .line 386
    .local v4, ret:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    if-ge p1, v8, :cond_1

    .line 387
    :cond_0
    const-string v5, "getNameFromPnnRecord: invalid record/pnnCache"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    .line 419
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 420
    return-object v4

    .line 389
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: pnnCache.size()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 391
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v1, v0

    .line 392
    .local v1, data:[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PNN record[ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 396
    const/4 v5, 0x0

    aget-byte v5, v1, v5

    if-eq v5, v7, :cond_3

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    if-eq v5, v7, :cond_3

    .line 398
    const/4 v5, 0x1

    aget-byte v3, v1, v5

    .line 399
    .local v3, length:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: longname length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 400
    const/4 v5, 0x2

    invoke-static {v1, v5, v3}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    .line 401
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: longname="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 402
    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v1, v5

    if-eq v5, v7, :cond_2

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v1, v5

    if-eq v5, v7, :cond_2

    .line 403
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: shortname length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 404
    add-int/lit8 v5, v3, 0x4

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v1, v6

    invoke-static {v1, v5, v6}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    .line 406
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: shortname="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 415
    .end local v1           #data:[B
    .end local v3           #length:I
    :catch_0
    move-exception v2

    .line 416
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: Exception while processing PNN data "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 409
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #data:[B
    .restart local v3       #length:I
    :cond_2
    :try_start_1
    const-string v5, "getNameFromPnnRecord: no short name"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 413
    .end local v3           #length:I
    :cond_3
    const-string v5, "getNameFromPnnRecord: invalid EF_PNN Data"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 185
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 241
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown msg.what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 187
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isEONSFeatureOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v3, 0x6f38

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/EonsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 190
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v3, 0x6fc6

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/EonsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 192
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    const/16 v3, 0x6fc5

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/EonsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto :goto_0

    .line 197
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->onRadioOffOrNotAvailable()V

    goto :goto_0

    .line 200
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 201
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 203
    .local v1, data:[B
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    .line 205
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 206
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->handleSstData([B)V

    .line 208
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/EonsHandler;->mEonsLoadedRegistrant:Landroid/os/Registrant;

    if-eqz v2, :cond_0

    .line 209
    sget-object v2, Lcom/android/internal/telephony/gsm/EonsHandler;->mEonsLoadedRegistrant:Landroid/os/Registrant;

    invoke-virtual {v2}, Landroid/os/Registrant;->notifyRegistrant()V

    goto :goto_0

    .line 213
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #data:[B
    :pswitch_4
    const-string v2, "OPL loaded"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 214
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 215
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in fetching OPL Records "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    .line 217
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    .line 218
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLLoadFailed:Z

    goto/16 :goto_0

    .line 221
    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    .line 222
    sget-object v2, Lcom/android/internal/telephony/gsm/EonsHandler;->mEonsLoadedRegistrant:Landroid/os/Registrant;

    if-eqz v2, :cond_0

    .line 223
    sget-object v2, Lcom/android/internal/telephony/gsm/EonsHandler;->mEonsLoadedRegistrant:Landroid/os/Registrant;

    invoke-virtual {v2}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 227
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    const-string v2, "PNN loaded"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 228
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 229
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in fetching PNN Records "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    .line 231
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    .line 232
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPNNLoadFailed:Z

    goto/16 :goto_0

    .line 235
    :cond_3
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    .line 236
    sget-object v2, Lcom/android/internal/telephony/gsm/EonsHandler;->mEonsLoadedRegistrant:Landroid/os/Registrant;

    if-eqz v2, :cond_0

    .line 237
    sget-object v2, Lcom/android/internal/telephony/gsm/EonsHandler;->mEonsLoadedRegistrant:Landroid/os/Registrant;

    invoke-virtual {v2}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method handleSimRefresh([I)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isEONSFeatureOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    :goto_0
    :pswitch_0
    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSimRefresh: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 143
    aget v0, p1, v2

    packed-switch v0, :pswitch_data_0

    .line 177
    const-string v0, "handleSimRefresh: unknown operation"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :pswitch_1
    aget v0, p1, v5

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 147
    :sswitch_0
    iput v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f38

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/EonsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 152
    :sswitch_1
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    .line 153
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPNNLoadFailed:Z

    .line 154
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fc5

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/EonsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto :goto_0

    .line 158
    :sswitch_2
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    .line 159
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLLoadFailed:Z

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fc6

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/EonsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto :goto_0

    .line 166
    :pswitch_2
    new-instance v0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;-><init>(Lcom/android/internal/telephony/gsm/EonsHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    .line 167
    iput v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    .line 168
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    .line 169
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    .line 170
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLLoadFailed:Z

    .line 171
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPNNLoadFailed:Z

    .line 172
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/EonsHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 145
    :sswitch_data_0
    .sparse-switch
        0x6f38 -> :sswitch_0
        0x6fc5 -> :sswitch_1
        0x6fc6 -> :sswitch_2
    .end sparse-switch
.end method

.method handleSstData([B)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSstData data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 470
    const/16 v1, 0xc

    aget-byte v1, p1, v1

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    .line 471
    iget v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    .line 472
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    .line 476
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSstData: 2G Sim sstPlmnOplValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSstData: sstPlmnOplValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 495
    return-void

    .line 473
    :cond_2
    :try_start_1
    iget v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    if-ne v1, v4, :cond_0

    .line 474
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSstData: Exception in processing SST Data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 477
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    const/4 v1, 0x5

    aget-byte v1, p1, v1

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    .line 484
    iget v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    if-ne v1, v4, :cond_5

    .line 485
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    .line 489
    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSstData: 3G Sim sstPlmnOplValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 486
    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    if-ne v1, v3, :cond_4

    .line 487
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method isEONSEnabledOnSIM()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 549
    iget v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEONSFeatureOn()Z
    .locals 1

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSFeatureOn:Z

    return v0
.end method

.method isEONSUpdatedPLMN()Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSUpdatedPLMN:Z

    return v0
.end method

.method isNeedToWaitEONSName()Z
    .locals 2

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isEONSFeatureOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isEONSEnabledOnSIM()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isEONSDataLoadingDone()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 573
    sget-boolean v0, Lcom/android/internal/telephony/gsm/EonsHandler;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EONS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_0
    return-void
.end method

.method loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 577
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EONS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-void
.end method

.method lookupEONSName(Ljava/lang/String;IZ)Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    .locals 15
    .parameter "operatorNumeric"
    .parameter "lac"
    .parameter "need2MatchLAC"

    .prologue
    .line 310
    new-instance v10, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    invoke-direct {v10, p0}, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;-><init>(Lcom/android/internal/telephony/gsm/EonsHandler;)V

    .line 311
    .local v10, ret:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lookupEONSName: operatorNumeric="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", lac="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", need2MatchLAC="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 313
    iget-object v13, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    if-eqz v13, :cond_a

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    if-eqz v13, :cond_a

    .line 314
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1

    .line 315
    :cond_0
    const-string v13, "lookupEONSName: operatorNumeric is null or empty."

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    move-object v11, v10

    .line 380
    .end local v10           #ret:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    .local v11, ret:Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 318
    .end local v11           #ret:Ljava/lang/Object;
    .restart local v10       #ret:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    :cond_1
    if-eqz p3, :cond_2

    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_2

    .line 319
    const-string v13, "lookupEONSName: invalid lac"

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    move-object v11, v10

    .line 320
    .restart local v11       #ret:Ljava/lang/Object;
    goto :goto_0

    .line 323
    .end local v11           #ret:Ljava/lang/Object;
    :cond_2
    const/4 v13, 0x6

    new-array v12, v13, [I

    fill-array-data v12, :array_0

    .line 324
    .local v12, simPlmn:[I
    const/4 v13, 0x6

    new-array v1, v13, [I

    fill-array-data v1, :array_1

    .line 326
    .local v1, bcchPlmn:[I
    iget-object v13, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 327
    .local v2, count:I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lookupEONSName: oplCache.size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 330
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_5

    .line 331
    :try_start_0
    iget-object v13, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    move-object v0, v13

    check-cast v0, [B

    move-object v3, v0

    .line 332
    .local v3, data:[B
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lookupEONSName: oplCache["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 335
    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-byte v14, v3, v14

    and-int/lit8 v14, v14, 0xf

    aput v14, v12, v13

    .line 336
    const/4 v13, 0x1

    const/4 v14, 0x0

    aget-byte v14, v3, v14

    shr-int/lit8 v14, v14, 0x4

    and-int/lit8 v14, v14, 0xf

    aput v14, v12, v13

    .line 337
    const/4 v13, 0x2

    const/4 v14, 0x1

    aget-byte v14, v3, v14

    and-int/lit8 v14, v14, 0xf

    aput v14, v12, v13

    .line 338
    const/4 v13, 0x3

    const/4 v14, 0x2

    aget-byte v14, v3, v14

    and-int/lit8 v14, v14, 0xf

    aput v14, v12, v13

    .line 339
    const/4 v13, 0x4

    const/4 v14, 0x2

    aget-byte v14, v3, v14

    shr-int/lit8 v14, v14, 0x4

    and-int/lit8 v14, v14, 0xf

    aput v14, v12, v13

    .line 340
    const/4 v13, 0x5

    const/4 v14, 0x1

    aget-byte v14, v3, v14

    shr-int/lit8 v14, v14, 0x4

    and-int/lit8 v14, v14, 0xf

    aput v14, v12, v13

    .line 343
    const/4 v6, 0x0

    .local v6, ind1:I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v6, v13, :cond_3

    .line 344
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    aput v13, v1, v6

    .line 343
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 348
    :cond_3
    const/4 v13, 0x3

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    const/4 v14, 0x4

    aget-byte v14, v3, v14

    and-int/lit16 v14, v14, 0xff

    or-int v7, v13, v14

    .line 349
    .local v7, oplDataLac1:I
    const/4 v13, 0x5

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    const/4 v14, 0x6

    aget-byte v14, v3, v14

    and-int/lit16 v14, v14, 0xff

    or-int v8, v13, v14

    .line 350
    .local v8, oplDataLac2:I
    const/4 v13, 0x7

    aget-byte v13, v3, v13

    and-int/lit16 v13, v13, 0xff

    int-to-short v9, v13

    .line 351
    .local v9, oplDataPnnNum:S
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lookupEONSName: lac1="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", lac2="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", lac="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", pnn rec num="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {p0, v12, v1, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->matchSimPlmn([I[II)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 357
    if-eqz p3, :cond_4

    move/from16 v0, p2

    if-gt v7, v0, :cond_9

    move/from16 v0, p2

    if-gt v0, v8, :cond_9

    .line 358
    :cond_4
    const-string v13, "lookupEONSName: lac in range"

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 359
    if-lez v9, :cond_6

    const/16 v13, 0xff

    if-ge v9, v13, :cond_6

    .line 361
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/EonsHandler;->getNameFromPnnRecord(I)Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    move-result-object v10

    .end local v1           #bcchPlmn:[I
    .end local v2           #count:I
    .end local v3           #data:[B
    .end local v5           #i:I
    .end local v6           #ind1:I
    .end local v7           #oplDataLac1:I
    .end local v8           #oplDataLac2:I
    .end local v9           #oplDataPnnNum:S
    .end local v12           #simPlmn:[I
    :cond_5
    :goto_3
    move-object v11, v10

    .line 380
    .restart local v11       #ret:Ljava/lang/Object;
    goto/16 :goto_0

    .line 363
    .end local v11           #ret:Ljava/lang/Object;
    .restart local v1       #bcchPlmn:[I
    .restart local v2       #count:I
    .restart local v3       #data:[B
    .restart local v5       #i:I
    .restart local v6       #ind1:I
    .restart local v7       #oplDataLac1:I
    .restart local v8       #oplDataLac2:I
    .restart local v9       #oplDataPnnNum:S
    .restart local v12       #simPlmn:[I
    :cond_6
    if-nez v9, :cond_7

    .line 364
    const-string v13, "lookupEONSName: pnn rec num is 0"

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 374
    .end local v3           #data:[B
    .end local v6           #ind1:I
    .end local v7           #oplDataLac1:I
    .end local v8           #oplDataLac2:I
    .end local v9           #oplDataPnnNum:S
    :catch_0
    move-exception v4

    .line 375
    .local v4, e:Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lookupEONSName: Exception while processing OPL data "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 367
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v3       #data:[B
    .restart local v6       #ind1:I
    .restart local v7       #oplDataLac1:I
    .restart local v8       #oplDataLac2:I
    .restart local v9       #oplDataPnnNum:S
    :cond_7
    :try_start_1
    const-string v13, "lookupEONSName: invalid pnn rec num"

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 330
    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 370
    :cond_9
    const-string v13, "lookupEONSName: hLac not in range"

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 378
    .end local v1           #bcchPlmn:[I
    .end local v2           #count:I
    .end local v3           #data:[B
    .end local v5           #i:I
    .end local v6           #ind1:I
    .end local v7           #oplDataLac1:I
    .end local v8           #oplDataLac2:I
    .end local v9           #oplDataPnnNum:S
    .end local v12           #simPlmn:[I
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lookupEONSName: can not lookup, oplCache="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", pnnCache="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 323
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 324
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method matchSimPlmn([I[II)Z
    .locals 10
    .parameter "simPlmn"
    .parameter "bcchPlmn"
    .parameter "length"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v3, 0x1

    const/4 v7, 0x5

    const/4 v4, 0x0

    .line 424
    const-string v5, "Enter matchSimPlmn"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 425
    const/16 v2, 0xd

    .line 426
    .local v2, wildCardDigit:I
    const/4 v1, 0x0

    .line 427
    .local v1, match:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "matchSimPlmn: simPlmn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bcchPlmn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 430
    aget v5, p1, v7

    const/16 v6, 0xf

    if-ne v5, v6, :cond_0

    .line 431
    aput v4, p1, v7

    .line 436
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 437
    aget v5, p1, v0

    if-ne v5, v2, :cond_1

    .line 438
    aget v5, p2, v0

    aput v5, p1, v0

    .line 436
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_2
    aget v5, p1, v4

    aget v6, p2, v4

    if-ne v5, v6, :cond_3

    aget v5, p1, v3

    aget v6, p2, v3

    if-ne v5, v6, :cond_3

    const/4 v5, 0x2

    aget v5, p1, v5

    const/4 v6, 0x2

    aget v6, p2, v6

    if-ne v5, v6, :cond_3

    .line 446
    if-ne p3, v7, :cond_5

    .line 449
    aget v5, p1, v8

    aget v6, p2, v8

    if-ne v5, v6, :cond_4

    aget v5, p1, v9

    aget v6, p2, v9

    if-ne v5, v6, :cond_4

    move v1, v3

    .line 458
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Leave matchSimPlmn match="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 459
    return v1

    :cond_4
    move v1, v4

    .line 449
    goto :goto_1

    .line 453
    :cond_5
    aget v5, p1, v8

    aget v6, p2, v8

    if-ne v5, v6, :cond_6

    aget v5, p1, v9

    aget v6, p2, v9

    if-ne v5, v6, :cond_6

    aget v5, p1, v7

    aget v6, p2, v7

    if-ne v5, v6, :cond_6

    move v1, v3

    :goto_2
    goto :goto_1

    :cond_6
    move v1, v4

    goto :goto_2
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    .line 123
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    .line 124
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    .line 125
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLLoadFailed:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPNNLoadFailed:Z

    .line 127
    return-void
.end method

.method unregister()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 131
    return-void
.end method

.method public updateAvailableNetworksWithEONS(Ljava/util/ArrayList;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, operators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isEONSEnabledOnSIM()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 503
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_7

    .line 504
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/OperatorInfo;

    .line 505
    .local v8, operator:Lcom/android/internal/telephony/OperatorInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAailableNetworksWithEONS: before operator="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 507
    .local v7, numeric:Ljava/lang/String;
    const/4 v3, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v7, v3, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->lookupEONSName(Ljava/lang/String;IZ)Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    move-result-object v9

    .line 508
    .local v9, pnnname:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    if-eqz v9, :cond_2

    .line 509
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v11

    .line 510
    .local v11, str:Ljava/lang/String;
    const-string v10, ""

    .line 511
    .local v10, rat:Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 512
    const-string v3, " 2G"

    invoke-virtual {v11, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, " 2G"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 513
    :cond_0
    const-string v10, " 2G"

    .line 519
    :cond_1
    :goto_1
    const/4 v4, 0x0

    .line 520
    .local v4, usedPnn:Z
    iget-object v3, v9, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v9, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v9, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, longname:Ljava/lang/String;
    const/4 v4, 0x1

    .line 527
    :goto_2
    iget-object v3, v9, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v9, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 528
    iget-object v2, v9, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    .line 529
    .local v2, shortname:Ljava/lang/String;
    const/4 v4, 0x1

    .line 533
    :goto_3
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getState()Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/OperatorInfo$State;)V

    .line 537
    .local v0, newop:Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual {p1, v6, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAailableNetworksWithEONS: after operator="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 503
    .end local v0           #newop:Lcom/android/internal/telephony/OperatorInfo;
    .end local v1           #longname:Ljava/lang/String;
    .end local v2           #shortname:Ljava/lang/String;
    .end local v4           #usedPnn:Z
    .end local v10           #rat:Ljava/lang/String;
    .end local v11           #str:Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 514
    .restart local v10       #rat:Ljava/lang/String;
    .restart local v11       #str:Ljava/lang/String;
    :cond_3
    const-string v3, " 3G"

    invoke-virtual {v11, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, " 3G"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 515
    :cond_4
    const-string v10, " 3G"

    goto :goto_1

    .line 524
    .restart local v4       #usedPnn:Z
    :cond_5
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #longname:Ljava/lang/String;
    goto :goto_2

    .line 531
    :cond_6
    invoke-virtual {v8}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #shortname:Ljava/lang/String;
    goto :goto_3

    .line 542
    .end local v1           #longname:Ljava/lang/String;
    .end local v2           #shortname:Ljava/lang/String;
    .end local v4           #usedPnn:Z
    .end local v6           #i:I
    .end local v7           #numeric:Ljava/lang/String;
    .end local v8           #operator:Lcom/android/internal/telephony/OperatorInfo;
    .end local v9           #pnnname:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    .end local v10           #rat:Ljava/lang/String;
    .end local v11           #str:Ljava/lang/String;
    :cond_7
    return-void
.end method

.method updateEONSName(Landroid/telephony/ServiceState;Landroid/telephony/gsm/GsmCellLocation;)Z
    .locals 7
    .parameter "servicestate"
    .parameter "cellloc"

    .prologue
    const/4 v6, 0x1

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, changed:Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    .line 249
    .local v3, val:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    iget v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 250
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/EonsHandler;->getNameFromPnnRecord(I)Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    move-result-object v3

    .line 257
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 258
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    .line 259
    const/4 v0, 0x1

    .line 261
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/EonsHandler;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEONSName: mOPLPNNName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", changed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .line 263
    return v0

    .line 252
    :cond_2
    iget v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    if-ne v4, v6, :cond_0

    .line 253
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, operatorNumeric:Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 255
    .local v1, lac:I
    :goto_1
    invoke-virtual {p0, v2, v1, v6}, Lcom/android/internal/telephony/gsm/EonsHandler;->lookupEONSName(Ljava/lang/String;IZ)Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    move-result-object v3

    goto :goto_0

    .line 254
    .end local v1           #lac:I
    :cond_3
    const/4 v1, -0x1

    goto :goto_1
.end method
