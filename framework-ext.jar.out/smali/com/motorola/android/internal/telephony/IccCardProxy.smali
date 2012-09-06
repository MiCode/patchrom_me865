.class public Lcom/motorola/android/internal/telephony/IccCardProxy;
.super Lcom/android/internal/telephony/IccCard;
.source "IccCardProxy.java"


# static fields
.field private static final EVENT_APP_READY:I = 0x6

.field private static final EVENT_ICC_ABSENT:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_ICC_LOCKED:I = 0x5

.field private static final EVENT_IMSI_READY:I = 0x8

.field private static final EVENT_NETWORK_LOCKED:I = 0x9

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x1

.field private static final EVENT_RADIO_ON:I = 0x2

.field private static final EVENT_RECORDS_LOADED:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_IccCardProxy"


# instance fields
.field private mActivePhoneType:I

.field private mAppRecords:Lcom/android/internal/telephony/IccRecords;

.field private mApplication:Lcom/android/internal/telephony/IccCard;

.field mHandler:Landroid/os/Handler;

.field private mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

.field private mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

.field private mModemId:I

.field private mQuietMode:Z

.field private mRadioOn:Z

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 9
    .parameter "mContext"
    .parameter "cm"
    .parameter "modemId"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 80
    const-string v6, "RIL_IccCardProxy"

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/motorola/android/internal/telephony/IccPhysicalCard;Lcom/android/internal/telephony/IccCardStatus;Lcom/android/internal/telephony/IccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;)V

    .line 66
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    .line 67
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    .line 68
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    .line 69
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/IccRecords;

    .line 71
    iput-boolean v7, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    .line 72
    iput-boolean v7, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 74
    iput-boolean v7, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mRegistered:Z

    .line 163
    new-instance v0, Lcom/motorola/android/internal/telephony/IccCardProxy$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/IccCardProxy$1;-><init>(Lcom/motorola/android/internal/telephony/IccCardProxy;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    .line 81
    iput p3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mModemId:I

    .line 82
    iput-boolean v8, p0, Lcom/android/internal/telephony/IccCard;->mIsAssigned:Z

    .line 84
    iput-boolean v8, p0, Lcom/android/internal/telephony/IccCard;->mIsActivated:Z

    .line 90
    const-string v0, "NOT_READY"

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method static synthetic access$002(Lcom/motorola/android/internal/telephony/IccCardProxy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/motorola/android/internal/telephony/IccCardProxy;)Landroid/os/RegistrantList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/internal/telephony/IccCardProxy;)Landroid/os/RegistrantList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/internal/telephony/IccCardProxy;)Landroid/os/RegistrantList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method private activateMe()V
    .locals 5

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    :goto_0
    return-void

    .line 102
    :cond_0
    iput-boolean v4, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mRegistered:Z

    .line 103
    invoke-static {}, Lcom/motorola/android/internal/telephony/IccCardManager;->getInstance()Lcom/motorola/android/internal/telephony/IccCardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    .line 104
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    if-nez v0, :cond_1

    .line 105
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "IccCardManager is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/IccCardManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private handleNoApplication()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 199
    const-string v1, "RIL_IccCardProxy"

    const-string v2, "there is no application assigned"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    iget v2, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mModemId:I

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/IccCardManager;->getDefaultPhysicalCard(I)Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    move-result-object v0

    .line 202
    .local v0, newPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eq v1, v0, :cond_1

    .line 203
    const-string v1, "RIL_IccCardProxy"

    const-string v2, "physical card changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v1, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->unregisterPhysicalCardEvents()V

    .line 207
    :cond_0
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    .line 208
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v1, :cond_3

    .line 209
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->registerPhysicalCardEvents()V

    .line 214
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v1, :cond_2

    .line 215
    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    if-eqz v1, :cond_5

    .line 216
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v1, v2, :cond_4

    .line 217
    const-string v1, "ERROR"

    invoke-virtual {p0, v1, v3}, Lcom/motorola/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_2
    :goto_1
    return-void

    .line 211
    :cond_3
    const-string v1, "RIL_IccCardProxy"

    const-string v2, "there is no card slot with the modem"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    :cond_4
    const-string v1, "ABSENT"

    invoke-virtual {p0, v1, v3}, Lcom/motorola/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 222
    :cond_5
    const-string v1, "NOT_READY"

    invoke-virtual {p0, v1, v3}, Lcom/motorola/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isDefault()Z
    .locals 2

    .prologue
    .line 622
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->isDmds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneModeService()Lcom/motorola/android/internal/telephony/PhoneModeService;

    move-result-object v0

    iget v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mModemId:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->isDefaultModemId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerAppEvents()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 297
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 300
    return-void
.end method

.method private registerPhysicalCardEvents()V
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 293
    return-void
.end method

.method private unregisterAppEvents()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->unregisterForLocked(Landroid/os/Handler;)V

    .line 287
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCard;->unregisterForNetworkLocked(Landroid/os/Handler;)V

    .line 289
    return-void
.end method

.method private unregisterPhysicalCardEvents()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->unregisterForAbsent(Landroid/os/Handler;)V

    .line 282
    return-void
.end method

.method private updateQuietMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 152
    iget v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mActivePhoneType:I

    if-ne v1, v3, :cond_1

    .line 153
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-static {}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getInstance()Lcom/motorola/android/internal/telephony/ModemConfigManager;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mModemId:I

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    move-result-object v0

    .line 156
    .local v0, m:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->isCdmaOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getCdmaSubscriptionSource()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 158
    iput-boolean v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->activateMe()V

    .line 116
    return-void
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 324
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccCard;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    if-eqz p3, :cond_0

    .line 327
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 329
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 335
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    if-eqz p3, :cond_0

    .line 338
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 340
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->dispose()V

    .line 120
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mRegistered:Z

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mRegistered:Z

    .line 127
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/IccCardManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public getActiveApplicationTypeInIccCard()Lcom/android/internal/telephony/IccCardApplication$AppType;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getActiveApplicationTypeInIccCard()Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    goto :goto_0
.end method

.method public getAppOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getAppOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 610
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppOperatorNumeric(Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;
    .locals 1
    .parameter "appType"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getAppOperatorNumeric(Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v0

    .line 617
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppType()Lcom/android/internal/telephony/IccCardApplication$AppType;
    .locals 2

    .prologue
    .line 462
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getAppType()Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v0

    .line 464
    .local v0, retValue:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :goto_0
    return-object v0

    .line 462
    .end local v0           #retValue:Lcom/android/internal/telephony/IccCardApplication$AppType;
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    goto :goto_0
.end method

.method public getApplicationRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getApplicationRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationTypesInIccCard()[Lcom/android/internal/telephony/IccCardApplication$AppType;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getApplicationTypesInIccCard()[Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v0

    .line 483
    :goto_0
    return-object v0

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getApplicationTypes()[Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v0

    goto :goto_0

    .line 483
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCard()Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    return-object v0
.end method

.method public getIccAppIndex()I
    .locals 2

    .prologue
    .line 628
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccAppIndex()I

    move-result v0

    .line 629
    .local v0, retValue:I
    :goto_0
    return v0

    .line 628
    .end local v0           #retValue:I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIccCardState()Lcom/android/internal/telephony/IccCard$State;
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-nez v0, :cond_0

    .line 349
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "IccPhysicalCard is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 368
    :goto_0
    return-object v0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getIccCardStatus()Lcom/android/internal/telephony/IccCardStatus;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 355
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardPresent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 359
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_3

    .line 363
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    goto :goto_0

    .line 365
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->MISSING:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 368
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public getIccCardSubsidyLockState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getIccCardStatus()Lcom/android/internal/telephony/IccCardStatus;

    move-result-object v0

    if-nez v0, :cond_1

    .line 385
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 387
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccCardSubsidyLockState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    goto :goto_0
.end method

.method public getIccFdnEnabled()Z
    .locals 2

    .prologue
    .line 394
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 395
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 394
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccLockEnabled()Z
    .locals 2

    .prologue
    .line 400
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 401
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 400
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getIccLockRetryAttemps(Lcom/android/internal/telephony/IccCard$PinType;Landroid/os/Message;)V
    .locals 3
    .parameter "type"
    .parameter "result"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccCard;->getIccLockRetryAttemps(Lcom/android/internal/telephony/IccCard$PinType;Landroid/os/Message;)V

    .line 459
    :goto_0
    return-void

    .line 454
    :cond_0
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "icc card is absent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 457
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public getIccNetworkLockEnabled()Z
    .locals 2

    .prologue
    .line 413
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccNetworkLockEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 414
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 413
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getSSTPinDisableAllow()Z
    .locals 2

    .prologue
    .line 446
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getSSTPinDisableAllow()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 447
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 446
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected getServicePhoneName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 592
    iget v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mActivePhoneType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 593
    const-string v0, "CDMA"

    .line 596
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "GSM"

    goto :goto_0
.end method

.method public getServicePhoneType()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mActivePhoneType:I

    return v0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 419
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, retValue:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 419
    .end local v0           #retValue:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getIccCardStatus()Lcom/android/internal/telephony/IccCardStatus;

    move-result-object v0

    if-nez v0, :cond_1

    .line 376
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 378
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-nez v0, :cond_2

    invoke-super {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    goto :goto_0
.end method

.method public hasIccCard()Z
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v0, v1, :cond_0

    .line 425
    const/4 v0, 0x1

    .line 427
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 431
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v1, p1}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 432
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 431
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActivePhoneType(I)V
    .locals 3
    .parameter "phoneType"

    .prologue
    .line 137
    const-string v0, "RIL_IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActivePhoneType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iput p1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mActivePhoneType:I

    .line 139
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->updateQuietMode()V

    .line 141
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->activateMe()V

    .line 142
    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 494
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    if-eqz p3, :cond_0

    .line 497
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 498
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 499
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 506
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    .line 507
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    if-eqz p3, :cond_0

    .line 509
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 510
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 511
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setIccNetworkLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 519
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    .line 520
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccCard;->setIccNetworkLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    if-eqz p3, :cond_0

    .line 522
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 523
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 524
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setSSTPinDisableAllow(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccCard;->setSSTPinDisableAllow(Z)V

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "setSSTPinDisableAllow, sim care is absend"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 534
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    .line 535
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/IccCard;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    if-eqz p2, :cond_0

    .line 537
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CommandsInterface is not set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 538
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 539
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 545
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/IccCard;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    if-eqz p2, :cond_0

    .line 548
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 549
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 550
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 556
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    .line 557
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/IccCard;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    if-eqz p2, :cond_0

    .line 559
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 560
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 561
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    .line 567
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    .line 568
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccCard;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    if-eqz p3, :cond_0

    .line 570
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 571
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 572
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    .line 578
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    .line 580
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    if-eqz p3, :cond_0

    .line 582
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 583
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 584
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public update(Lcom/android/internal/telephony/IccCardStatus;Lcom/android/internal/telephony/IccCardApplication;)V
    .locals 2
    .parameter "ics"
    .parameter "appStatus"

    .prologue
    .line 145
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "update shouldn\'t be called in icccardproxy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method updateIccAvailability()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 230
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    iget v4, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mModemId:I

    iget v5, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mActivePhoneType:I

    invoke-virtual {v3, v4, v5}, Lcom/motorola/android/internal/telephony/IccCardManager;->getApplication(II)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 234
    .local v1, newApplication:Lcom/android/internal/telephony/IccCard;
    invoke-static {}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getInstance()Lcom/motorola/android/internal/telephony/ModemConfigManager;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mModemId:I

    invoke-virtual {v3, v4}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    move-result-object v0

    .line 235
    .local v0, modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    iget v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mActivePhoneType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    if-eqz v3, :cond_0

    .line 237
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    iget v4, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mModemId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/motorola/android/internal/telephony/IccCardManager;->getApplication(II)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 238
    const-string v3, "RIL_IccCardProxy"

    const-string v4, "get SIMCard from IccCardProxy for CDMALTEPhone"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    const-string v3, "RIL_IccCardProxy"

    const-string v4, "updateIccAvailability "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    if-nez v1, :cond_1

    iget-boolean v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    if-nez v3, :cond_1

    .line 245
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->handleNoApplication()V

    .line 248
    :cond_1
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eq v3, v1, :cond_6

    iget-boolean v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    if-nez v3, :cond_6

    .line 249
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-eqz v3, :cond_3

    .line 251
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->unregisterAppEvents()V

    .line 252
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->deactivate()V

    .line 254
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v3, :cond_2

    .line 255
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->unregisterPhysicalCardEvents()V

    .line 256
    iput-object v6, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    .line 259
    :cond_2
    iput-object v6, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/IccRecords;

    .line 260
    iput-object v6, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    .line 262
    :cond_3
    if-eqz v1, :cond_6

    .line 263
    iput-object v1, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    .line 265
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getCard()Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    move-result-object v2

    .line 266
    .local v2, newPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eq v3, v2, :cond_5

    .line 267
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v3, :cond_4

    .line 268
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->unregisterPhysicalCardEvents()V

    .line 270
    :cond_4
    iput-object v2, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    .line 271
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->registerPhysicalCardEvents()V

    .line 273
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getApplicationRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mAppRecords:Lcom/android/internal/telephony/IccRecords;

    .line 274
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->registerAppEvents()V

    .line 278
    .end local v2           #newPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    :cond_6
    return-void
.end method

.method protected updateStateProperty()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-nez v0, :cond_2

    .line 305
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "gsm.sim.state"

    :goto_0
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_0
    :goto_1
    return-void

    .line 305
    :cond_1
    const-string v0, "gsm.sim.state.2"

    goto :goto_0

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mIccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v0, v1, :cond_4

    .line 310
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "gsm.sim.state"

    :goto_2
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "gsm.sim.state.2"

    goto :goto_2

    .line 312
    :cond_4
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/IccCardProxy;->mApplication:Lcom/android/internal/telephony/IccCard;

    if-nez v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IccCardProxy;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "gsm.sim.state"

    :goto_3
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "gsm.sim.state.2"

    goto :goto_3
.end method
