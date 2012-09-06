.class public Lcom/motorola/android/internal/telephony/Precacher;
.super Ljava/lang/Object;
.source "Precacher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/Precacher$2;,
        Lcom/motorola/android/internal/telephony/Precacher$StateFetchingImsi;,
        Lcom/motorola/android/internal/telephony/Precacher$StateLockedFetchingInfo;,
        Lcom/motorola/android/internal/telephony/Precacher$StatePrecacheLocked;,
        Lcom/motorola/android/internal/telephony/Precacher$StateFetchingIccid;,
        Lcom/motorola/android/internal/telephony/Precacher$StateFetchingInfo;,
        Lcom/motorola/android/internal/telephony/Precacher$StateIdle;,
        Lcom/motorola/android/internal/telephony/Precacher$State;,
        Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;,
        Lcom/motorola/android/internal/telephony/Precacher$PrecacheStatus;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final EVENT_GET_ICCID_DONE:I = 0x7

.field private static final EVENT_GET_IMSI_DONE:I = 0x8

.field private static final EVENT_GET_MNC_LENGTH_DONE:I = 0xa

.field private static final EVENT_ICC_PRECACHE_STEP_DONE:I = 0x6

.field private static final EVENT_ICC_PRECACHE_TIMEOUT:I = 0x5

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x2

.field private static final EVENT_ICC_SWITCH_DONE:I = 0x4

.field private static final EVENT_ICC_SWITCH_START:I = 0x3

.field public static final INTENT_VALUE_FAST:Ljava/lang/String; = "FAST"

.field public static final INTENT_VALUE_FASTLOCKED:Ljava/lang/String; = "FASTLOCKED"

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field private static final PRECACHE_STEP_ICCID_DONE:I = 0x1f6

.field private static final PRECACHE_STEP_ICCINFO_DONE:I = 0x1f5

.field private static final PRECACHE_STEP_IMSI_DONE:I = 0x1f7

.field private static final PRECACHE_TIMEOUT:I = 0x1770

.field private static final STATE_ID_FETCHING_ICCID:I = 0x2

.field private static final STATE_ID_FETCHING_IMSI:I = 0x5

.field private static final STATE_ID_FETCHING_INFO:I = 0x1

.field private static final STATE_ID_IDLE:I = 0x0

.field private static final STATE_ID_LOCKED_FETCHING_INFO:I = 0x4

.field private static final STATE_ID_PRECACHE_LOCKED:I = 0x3


# instance fields
.field private final LOG_PREFIX:Ljava/lang/String;

.field private mCachedIccInfo:Lcom/motorola/android/telephony/IccCardInfo;

.field private mCurrentState:I

.field private mDormant:Z

.field private mHandler:Landroid/os/Handler;

.field private mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

.field private mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

.field private mIccid:Ljava/lang/String;

.field private mImsis:[Ljava/lang/String;

.field private mIsFastPrecache:Z

.field private mMncLengths:[I

.field private mModemId:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneModeService:Lcom/motorola/android/internal/telephony/PhoneModeService;

.field private mPrecacheRegistrants:Landroid/os/RegistrantList;

.field private mStates:[Lcom/motorola/android/internal/telephony/Precacher$State;

.field private mSubscriptionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 47
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
    sput-boolean v0, Lcom/motorola/android/internal/telephony/Precacher;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;I)V
    .locals 9
    .parameter "phone"
    .parameter "modemId"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mCurrentState:I

    .line 83
    iput-boolean v6, p0, Lcom/motorola/android/internal/telephony/Precacher;->mDormant:Z

    .line 85
    iput-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 87
    iput-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mCachedIccInfo:Lcom/motorola/android/telephony/IccCardInfo;

    .line 88
    iput-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    .line 89
    iput-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccid:Ljava/lang/String;

    .line 92
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPrecacheRegistrants:Landroid/os/RegistrantList;

    .line 806
    new-instance v2, Lcom/motorola/android/internal/telephony/Precacher$1;

    invoke-direct {v2, p0}, Lcom/motorola/android/internal/telephony/Precacher$1;-><init>(Lcom/motorola/android/internal/telephony/Precacher;)V

    iput-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mHandler:Landroid/os/Handler;

    .line 95
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneModeService()Lcom/motorola/android/internal/telephony/PhoneModeService;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPhoneModeService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    .line 96
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 97
    iput p2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mModemId:I

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DMDS] Precacher-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->LOG_PREFIX:Ljava/lang/String;

    .line 99
    const-string v2, "Precacher()"

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getInstance()Lcom/motorola/android/internal/telephony/ModemConfigManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    move-result-object v1

    .line 103
    .local v1, modemInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIsFastPrecache:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->isCdmaOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getCdmaSubscriptionSource()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 110
    iput v4, p0, Lcom/motorola/android/internal/telephony/Precacher;->mSubscriptionType:I

    .line 111
    iget-boolean v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIsFastPrecache:Z

    if-eqz v2, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->onIccPrecacheFast()V

    .line 116
    :goto_1
    const-string v2, "It\'s NV. Just broadcast ICC_PRECACHE_STATUE_CHANGED FAST!"

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 138
    :goto_2
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    iput-boolean v4, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIsFastPrecache:Z

    goto :goto_0

    .line 114
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->onIccPrecacheDone()V

    goto :goto_1

    .line 119
    :cond_1
    iput v6, p0, Lcom/motorola/android/internal/telephony/Precacher;->mSubscriptionType:I

    .line 121
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/motorola/android/internal/telephony/Precacher$State;

    iput-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mStates:[Lcom/motorola/android/internal/telephony/Precacher$State;

    .line 122
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mStates:[Lcom/motorola/android/internal/telephony/Precacher$State;

    new-instance v3, Lcom/motorola/android/internal/telephony/Precacher$StateIdle;

    invoke-direct {v3, p0}, Lcom/motorola/android/internal/telephony/Precacher$StateIdle;-><init>(Lcom/motorola/android/internal/telephony/Precacher;)V

    aput-object v3, v2, v6

    .line 123
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mStates:[Lcom/motorola/android/internal/telephony/Precacher$State;

    new-instance v3, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingInfo;

    invoke-direct {v3, p0}, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingInfo;-><init>(Lcom/motorola/android/internal/telephony/Precacher;)V

    aput-object v3, v2, v4

    .line 124
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mStates:[Lcom/motorola/android/internal/telephony/Precacher$State;

    new-instance v3, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingIccid;

    invoke-direct {v3, p0}, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingIccid;-><init>(Lcom/motorola/android/internal/telephony/Precacher;)V

    aput-object v3, v2, v7

    .line 125
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mStates:[Lcom/motorola/android/internal/telephony/Precacher$State;

    new-instance v3, Lcom/motorola/android/internal/telephony/Precacher$StatePrecacheLocked;

    invoke-direct {v3, p0}, Lcom/motorola/android/internal/telephony/Precacher$StatePrecacheLocked;-><init>(Lcom/motorola/android/internal/telephony/Precacher;)V

    aput-object v3, v2, v8

    .line 126
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mStates:[Lcom/motorola/android/internal/telephony/Precacher$State;

    const/4 v3, 0x4

    new-instance v4, Lcom/motorola/android/internal/telephony/Precacher$StateLockedFetchingInfo;

    invoke-direct {v4, p0}, Lcom/motorola/android/internal/telephony/Precacher$StateLockedFetchingInfo;-><init>(Lcom/motorola/android/internal/telephony/Precacher;)V

    aput-object v4, v2, v3

    .line 127
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mStates:[Lcom/motorola/android/internal/telephony/Precacher$State;

    const/4 v3, 0x5

    new-instance v4, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingImsi;

    invoke-direct {v4, p0}, Lcom/motorola/android/internal/telephony/Precacher$StateFetchingImsi;-><init>(Lcom/motorola/android/internal/telephony/Precacher;)V

    aput-object v4, v2, v3

    .line 128
    iput v6, p0, Lcom/motorola/android/internal/telephony/Precacher;->mCurrentState:I

    .line 129
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mStates:[Lcom/motorola/android/internal/telephony/Precacher$State;

    iget v3, p0, Lcom/motorola/android/internal/telephony/Precacher;->mCurrentState:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/Precacher$State;->enter()V

    .line 131
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->resetData()V

    .line 132
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->loadMask()V

    .line 134
    invoke-static {}, Lcom/motorola/android/internal/telephony/IccCardManager;->getInstance()Lcom/motorola/android/internal/telephony/IccCardManager;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/Precacher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v7, v5}, Lcom/motorola/android/internal/telephony/IccCardManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 136
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPhoneModeService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/Precacher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v8, v5}, Lcom/motorola/android/internal/telephony/PhoneModeService;->registerIccSwitchStart(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 137
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPhoneModeService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/Precacher;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4, v5}, Lcom/motorola/android/internal/telephony/PhoneModeService;->registerIccSwitchDone(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_2
.end method

.method static synthetic access$100(Lcom/motorola/android/internal/telephony/Precacher;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/motorola/android/internal/telephony/Precacher;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->LOG_PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/motorola/android/internal/telephony/Precacher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->updateIccInfo()V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/android/internal/telephony/Precacher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/motorola/android/internal/telephony/Precacher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->onIccPrecacheDone()V

    return-void
.end method

.method static synthetic access$1400(Lcom/motorola/android/internal/telephony/Precacher;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/Precacher;->onFetchIccInfoDone(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/motorola/android/internal/telephony/Precacher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->isCardInitialized()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/motorola/android/internal/telephony/Precacher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIsFastPrecache:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/motorola/android/internal/telephony/Precacher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->onIccPrecacheFast()V

    return-void
.end method

.method static synthetic access$1800(Lcom/motorola/android/internal/telephony/Precacher;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/Precacher;->fetchIccid(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/motorola/android/internal/telephony/Precacher;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/Precacher;->fetchImsi(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/android/internal/telephony/Precacher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->resetData()V

    return-void
.end method

.method static synthetic access$2000(Lcom/motorola/android/internal/telephony/Precacher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->onIccPrecacheNetworkLocked()V

    return-void
.end method

.method static synthetic access$2100(Lcom/motorola/android/internal/telephony/Precacher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->onIccPrecachePermPuk()V

    return-void
.end method

.method static synthetic access$2200(Lcom/motorola/android/internal/telephony/Precacher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->onIccPrecachePuk()V

    return-void
.end method

.method static synthetic access$2300(Lcom/motorola/android/internal/telephony/Precacher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->onIccPrecacheLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/android/internal/telephony/Precacher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mDormant:Z

    return v0
.end method

.method static synthetic access$302(Lcom/motorola/android/internal/telephony/Precacher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mDormant:Z

    return p1
.end method

.method static synthetic access$400(Lcom/motorola/android/internal/telephony/Precacher;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mModemId:I

    return v0
.end method

.method static synthetic access$500(Lcom/motorola/android/internal/telephony/Precacher;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/motorola/android/internal/telephony/Precacher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/motorola/android/internal/telephony/Precacher;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mImsis:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/android/internal/telephony/Precacher;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mMncLengths:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/android/internal/telephony/Precacher;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/motorola/android/internal/telephony/Precacher;->DBG:Z

    return v0
.end method

.method private appTypeToInt(Lcom/android/internal/telephony/IccCardApplication$AppType;)I
    .locals 3
    .parameter "type"

    .prologue
    .line 529
    sget-object v1, Lcom/motorola/android/internal/telephony/Precacher$2;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 546
    const/4 v0, 0x0

    .line 548
    .local v0, iType:I
    :goto_0
    return v0

    .line 531
    .end local v0           #iType:I
    :pswitch_0
    const/4 v0, 0x0

    .line 532
    .restart local v0       #iType:I
    goto :goto_0

    .line 534
    .end local v0           #iType:I
    :pswitch_1
    const/4 v0, 0x1

    .line 535
    .restart local v0       #iType:I
    goto :goto_0

    .line 537
    .end local v0           #iType:I
    :pswitch_2
    const/4 v0, 0x2

    .line 538
    .restart local v0       #iType:I
    goto :goto_0

    .line 540
    .end local v0           #iType:I
    :pswitch_3
    const/4 v0, 0x3

    .line 541
    .restart local v0       #iType:I
    goto :goto_0

    .line 543
    .end local v0           #iType:I
    :pswitch_4
    const/4 v0, 0x4

    .line 544
    .restart local v0       #iType:I
    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private dumpIccInfo(Lcom/motorola/android/telephony/IccCardInfo;)V
    .locals 4
    .parameter "iccInfo"

    .prologue
    .line 607
    sget-boolean v2, Lcom/motorola/android/internal/telephony/Precacher;->DBG:Z

    if-eqz v2, :cond_0

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iccid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/motorola/android/telephony/IccCardInfo;->iccid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "card_state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/motorola/android/telephony/IccCardInfo;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uni_pin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/motorola/android/telephony/IccCardInfo;->getUniversalPinState()Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdma idx = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/motorola/android/telephony/IccCardInfo;->getCdmaSubscriptionAppIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gsm idx = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/motorola/android/telephony/IccCardInfo;->getGsmUmtsSubscriptionAppIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num_apps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/motorola/android/telephony/IccCardInfo;->getNumApplications()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 614
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/motorola/android/telephony/IccCardInfo;->getNumApplications()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 615
    invoke-virtual {p1, v1}, Lcom/motorola/android/telephony/IccCardInfo;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/telephony/IccCardAppInfo;

    move-object v0, v2

    check-cast v0, Lcom/motorola/android/telephony/IccCardAppInfo;

    .line 616
    .local v0, appInfo:Lcom/motorola/android/telephony/IccCardAppInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perso_substate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pin1_replaced = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pin1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pin2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imsi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/android/telephony/IccCardAppInfo;->imsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operatorNumeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/android/telephony/IccCardAppInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 614
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 626
    .end local v0           #appInfo:Lcom/motorola/android/telephony/IccCardAppInfo;
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private fetchIccid(Landroid/os/Message;)V
    .locals 8
    .parameter "cb"

    .prologue
    .line 736
    invoke-static {}, Lcom/motorola/android/internal/telephony/IccCardManager;->getInstance()Lcom/motorola/android/internal/telephony/IccCardManager;

    move-result-object v4

    iget v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mModemId:I

    invoke-virtual {v4, v5}, Lcom/motorola/android/internal/telephony/IccCardManager;->getDefaultPhysicalCard(I)Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    move-result-object v3

    .line 738
    .local v3, iccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    if-eqz v3, :cond_1

    .line 739
    invoke-virtual {v3}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getNumApplications()I

    move-result v0

    .line 740
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 741
    invoke-virtual {v3, v1}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getIccCardApplication(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    .line 742
    .local v2, iccCard:Lcom/android/internal/telephony/IccCard;
    if-eqz v2, :cond_0

    .line 743
    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v4

    const/16 v5, 0x2fe2

    iget-object v6, p0, Lcom/motorola/android/internal/telephony/Precacher;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 750
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #iccCard:Lcom/android/internal/telephony/IccCard;
    :goto_1
    return-void

    .line 740
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v2       #iccCard:Lcom/android/internal/telephony/IccCard;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 749
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #iccCard:Lcom/android/internal/telephony/IccCard;
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method private fetchImsi(Landroid/os/Message;)V
    .locals 9
    .parameter "cb"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 753
    const-string v5, "fetchImsi"

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 754
    invoke-static {}, Lcom/motorola/android/internal/telephony/IccCardManager;->getInstance()Lcom/motorola/android/internal/telephony/IccCardManager;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/internal/telephony/Precacher;->mModemId:I

    invoke-virtual {v5, v6}, Lcom/motorola/android/internal/telephony/IccCardManager;->getDefaultPhysicalCard(I)Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    move-result-object v1

    .line 755
    .local v1, card:Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    if-nez v1, :cond_1

    .line 756
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to get physical card with modem ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/android/internal/telephony/Precacher;->mModemId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getNumApplications()I

    move-result v0

    .line 761
    .local v0, N:I
    new-array v5, v0, [Ljava/lang/String;

    iput-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mImsis:[Ljava/lang/String;

    .line 762
    new-array v5, v0, [I

    iput-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mMncLengths:[I

    .line 763
    iput v7, p1, Landroid/os/Message;->arg2:I

    .line 764
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 765
    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getIccCardApplication(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    .line 766
    .local v3, iccCard:Lcom/android/internal/telephony/IccCard;
    if-eqz v3, :cond_2

    .line 767
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->getApplicationRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v4

    .line 768
    .local v4, records:Lcom/android/internal/telephony/IccRecords;
    if-eqz v4, :cond_2

    .line 769
    iget v5, p1, Landroid/os/Message;->arg2:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Landroid/os/Message;->arg2:I

    .line 770
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x8

    invoke-virtual {v5, v6, v2, v8, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/IccRecords;->fetchImsi(Landroid/os/Message;)V

    .line 771
    iget v5, p1, Landroid/os/Message;->arg2:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Landroid/os/Message;->arg2:I

    .line 772
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v2, v8, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/IccRecords;->fetchIccMncLength(Landroid/os/Message;)V

    .line 764
    .end local v4           #records:Lcom/android/internal/telephony/IccRecords;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 777
    .end local v3           #iccCard:Lcom/android/internal/telephony/IccCard;
    :cond_3
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v7, :cond_0

    .line 778
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private getIccInfo()Lcom/motorola/android/telephony/IccCardInfo;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 640
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mCachedIccInfo:Lcom/motorola/android/telephony/IccCardInfo;

    if-nez v1, :cond_0

    .line 641
    new-instance v0, Lcom/motorola/android/telephony/IccCardInfo;

    invoke-direct {v0}, Lcom/motorola/android/telephony/IccCardInfo;-><init>()V

    .line 642
    .local v0, iccInfo:Lcom/motorola/android/telephony/IccCardInfo;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/motorola/android/telephony/IccCardInfo;->iccid:Ljava/lang/String;

    .line 643
    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/IccCardStatus$CardState;

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/IccCardInfo;->setCardState(Lcom/android/internal/telephony/IccCardStatus$CardState;)V

    .line 644
    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/IccCardInfo;->setUniversalPinState(Lcom/android/internal/telephony/IccCardStatus$PinState;)V

    .line 645
    invoke-virtual {v0, v2}, Lcom/motorola/android/telephony/IccCardInfo;->setGsmUmtsSubscriptionAppIndex(I)V

    .line 646
    invoke-virtual {v0, v2}, Lcom/motorola/android/telephony/IccCardInfo;->setCdmaSubscriptionAppIndex(I)V

    .line 647
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/IccCardInfo;->setNumApplications(I)V

    .line 650
    .end local v0           #iccInfo:Lcom/motorola/android/telephony/IccCardInfo;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/motorola/android/telephony/IccCardInfo;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mCachedIccInfo:Lcom/motorola/android/telephony/IccCardInfo;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/IccCardInfo;-><init>(Lcom/motorola/android/telephony/IccCardInfo;)V

    goto :goto_0
.end method

.method private getOperatorNumeric(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "imsi"
    .parameter "length"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 587
    if-nez p1, :cond_0

    .line 603
    :goto_0
    return-object v2

    .line 591
    :cond_0
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 592
    add-int/lit8 v2, p2, 0x3

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 599
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 603
    .local v1, mcc:I
    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 600
    .end local v1           #mcc:I
    :catch_0
    move-exception v0

    .line 601
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private hasIccCard()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v0, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 357
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardPresent()Z

    move-result v0

    goto :goto_0
.end method

.method private hotSwapSupported()Z
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isCardInitialized()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 366
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->hasIccCard()Z

    move-result v3

    if-nez v3, :cond_0

    .line 383
    :goto_0
    return v2

    .line 369
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 370
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 372
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v3, v4, :cond_2

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v3, v4, :cond_2

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v3, v4, :cond_2

    .line 369
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 377
    :cond_2
    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$AppState;

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/IccCardApplication$AppState;

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 383
    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isIccTypeSupported(Lcom/android/internal/telephony/IccCardStatus;)Z
    .locals 7
    .parameter "card"

    .prologue
    const/4 v4, 0x1

    .line 554
    const/4 v2, 0x0

    .line 556
    .local v2, pattern:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 557
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/Precacher;->appTypeToInt(Lcom/android/internal/telephony/IccCardApplication$AppType;)I

    move-result v0

    .line 558
    .local v0, exp:I
    shl-int v5, v4, v0

    add-int/2addr v2, v5

    .line 556
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    .end local v0           #exp:I
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->ourSlot()I

    move-result v3

    .line 563
    .local v3, slot:I
    if-ltz v3, :cond_1

    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-le v3, v5, :cond_2

    .line 583
    :cond_1
    :goto_1
    return v4

    .line 570
    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->whiteList:[I

    array-length v5, v5

    if-ge v1, v5, :cond_5

    .line 571
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->whiteList:[I

    aget v5, v5, v1

    if-eq v5, v2, :cond_3

    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->whiteList:[I

    aget v5, v5, v1

    if-nez v5, :cond_4

    .line 572
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pattern "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is allowed by white list of slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 570
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 576
    :cond_5
    const/4 v1, 0x0

    :goto_3
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->blackList:[I

    array-length v5, v5

    if-ge v1, v5, :cond_8

    .line 577
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->blackList:[I

    aget v5, v5, v1

    if-eq v5, v2, :cond_6

    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->blackList:[I

    aget v5, v5, v1

    if-nez v5, :cond_7

    .line 578
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pattern "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is denied by black list of slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 579
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 576
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 582
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pattern "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is allowed by default rule of slot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private isValidImsi(Ljava/lang/String;)Z
    .locals 5
    .parameter "imsi"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 503
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->ourSlot()I

    move-result v1

    .line 504
    .local v1, slot:I
    if-ltz v1, :cond_0

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-le v1, v4, :cond_1

    .line 516
    :cond_0
    :goto_0
    return v2

    .line 507
    :cond_1
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v4, v4, v1

    iget-object v0, v4, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->imsiPattern:Ljava/lang/String;

    .line 508
    .local v0, pattern:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 509
    goto :goto_0

    .line 510
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 513
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->negation:Z

    if-eqz v4, :cond_3

    .line 514
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 516
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private loadDefaultMask()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    new-array v0, v3, [Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    .line 171
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    new-instance v1, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    invoke-direct {v1, p0, v4}, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;-><init>(Lcom/motorola/android/internal/telephony/Precacher;Lcom/motorola/android/internal/telephony/Precacher$1;)V

    aput-object v1, v0, v2

    .line 172
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v0, v0, v2

    new-array v1, v3, [I

    iput-object v1, v0, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->whiteList:[I

    .line 173
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->whiteList:[I

    aput v2, v0, v2

    .line 174
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v0, v0, v2

    new-array v1, v2, [I

    iput-object v1, v0, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->blackList:[I

    .line 175
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v0, v0, v2

    iput-boolean v2, v0, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->negation:Z

    .line 176
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v0, v0, v2

    iput-object v4, v0, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->imsiPattern:Ljava/lang/String;

    .line 177
    return-void
.end method

.method private loadMask()V
    .locals 11

    .prologue
    .line 181
    :try_start_0
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107002f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, rawMask:[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v8, v6

    if-nez v8, :cond_2

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->loadDefaultMask()V

    .line 236
    .end local v6           #rawMask:[Ljava/lang/String;
    :cond_1
    return-void

    .line 187
    .restart local v6       #rawMask:[Ljava/lang/String;
    :cond_2
    array-length v8, v6

    new-array v8, v8, [Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    iput-object v8, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    .line 188
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v6

    if-ge v3, v8, :cond_7

    .line 189
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    new-instance v9, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;-><init>(Lcom/motorola/android/internal/telephony/Precacher;Lcom/motorola/android/internal/telephony/Precacher$1;)V

    aput-object v9, v8, v3

    .line 190
    aget-object v8, v6, v3

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, frags:[Ljava/lang/String;
    const-string v8, "*"

    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 193
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v8, v8, v3

    const/4 v9, 0x1

    new-array v9, v9, [I

    iput-object v9, v8, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->whiteList:[I

    .line 194
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->whiteList:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 206
    :cond_3
    :goto_1
    const-string v8, "*"

    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 207
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v8, v8, v3

    const/4 v9, 0x1

    new-array v9, v9, [I

    iput-object v9, v8, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->blackList:[I

    .line 208
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->blackList:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 220
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v8, v8, v3

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->negation:Z

    .line 221
    const/4 v5, 0x0

    .line 222
    .local v5, n:I
    const/4 v8, 0x2

    aget-object v8, v2, v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x21

    if-ne v8, v9, :cond_5

    .line 223
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v8, v8, v3

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->negation:Z

    .line 224
    add-int/lit8 v5, v5, 0x1

    .line 226
    :cond_5
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v8, v8, v3

    const/4 v9, 0x2

    aget-object v9, v2, v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->imsiPattern:Ljava/lang/String;

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    .end local v5           #n:I
    :cond_6
    const-string v8, "@"

    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 196
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v8, v8, v3

    const/4 v9, 0x1

    new-array v9, v9, [I

    iput-object v9, v8, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->whiteList:[I

    .line 197
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->whiteList:[I

    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v8, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 228
    .end local v2           #frags:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v6           #rawMask:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 229
    .local v1, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->loadDefaultMask()V

    .line 231
    .end local v1           #e:Ljava/lang/Exception;
    :cond_7
    sget-boolean v8, Lcom/motorola/android/internal/telephony/Precacher;->DBG:Z

    if-eqz v8, :cond_1

    .line 232
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    array-length v8, v8

    if-ge v3, v8, :cond_1

    .line 233
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "slot"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 232
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 199
    .restart local v2       #frags:[Ljava/lang/String;
    .restart local v6       #rawMask:[Ljava/lang/String;
    :cond_8
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v2, v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, whites:[Ljava/lang/String;
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v8, v8, v3

    array-length v9, v7

    new-array v9, v9, [I

    iput-object v9, v8, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->whiteList:[I

    .line 201
    const/4 v4, 0x0

    .local v4, j:I
    :goto_4
    array-length v8, v7

    if-ge v4, v8, :cond_3

    .line 202
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->whiteList:[I

    aget-object v9, v7, v4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v4

    .line 201
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 209
    .end local v4           #j:I
    .end local v7           #whites:[Ljava/lang/String;
    :cond_9
    const-string v8, "@"

    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 210
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v8, v8, v3

    const/4 v9, 0x1

    new-array v9, v9, [I

    iput-object v9, v8, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->blackList:[I

    .line 211
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->blackList:[I

    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v8, v9

    goto/16 :goto_2

    .line 213
    :cond_a
    const/4 v8, 0x1

    aget-object v8, v2, v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, blacks:[Ljava/lang/String;
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v8, v8, v3

    array-length v9, v0

    new-array v9, v9, [I

    iput-object v9, v8, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->blackList:[I

    .line 215
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_5
    array-length v8, v0

    if-ge v4, v8, :cond_4

    .line 216
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccMask:[Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/motorola/android/internal/telephony/Precacher$IccAppMask;->blackList:[I

    aget-object v9, v0, v4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    add-int/lit8 v4, v4, 0x1

    goto :goto_5
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 258
    sget-boolean v0, Lcom/motorola/android/internal/telephony/Precacher;->DBG:Z

    if-eqz v0, :cond_0

    .line 259
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->LOG_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    return-void
.end method

.method private notifyRegistrants(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "value"
    .parameter "reason"

    .prologue
    const/4 v3, 0x0

    .line 264
    new-instance v0, Lcom/motorola/android/internal/telephony/Precacher$PrecacheStatus;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/Precacher$PrecacheStatus;-><init>(Lcom/motorola/android/internal/telephony/Precacher;)V

    .line 265
    .local v0, status:Lcom/motorola/android/internal/telephony/Precacher$PrecacheStatus;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/internal/telephony/Precacher$PrecacheStatus;->phoneType:I

    .line 266
    iput-object p1, v0, Lcom/motorola/android/internal/telephony/Precacher$PrecacheStatus;->status:Ljava/lang/String;

    .line 267
    iput-object p2, v0, Lcom/motorola/android/internal/telephony/Precacher$PrecacheStatus;->reason:Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPrecacheRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 269
    return-void
.end method

.method private onFetchIccInfoDone(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 783
    invoke-static {}, Lcom/motorola/android/internal/telephony/IccCardManager;->getInstance()Lcom/motorola/android/internal/telephony/IccCardManager;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/internal/telephony/Precacher;->mModemId:I

    invoke-virtual {v3, v4}, Lcom/motorola/android/internal/telephony/IccCardManager;->getDefaultPhysicalCard(I)Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    move-result-object v2

    .line 785
    .local v2, iccPhysicalCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    if-eqz v2, :cond_0

    .line 786
    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getIccCardStatus()Lcom/android/internal/telephony/IccCardStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 788
    :cond_0
    sget-boolean v3, Lcom/motorola/android/internal/telephony/Precacher;->DBG:Z

    if-eqz v3, :cond_1

    .line 789
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 790
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> #apps="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 791
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 792
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 793
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> APP ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 794
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> APP_TYPE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 795
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> APP_STATE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 796
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> APP_pin1_repl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 797
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> APP_pin1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 798
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> APP_pin2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 791
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 801
    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private onIccPrecacheDone()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 388
    const-string v0, "LOADED"

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/internal/telephony/Precacher;->notifyRegistrants(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v0, "LOADED"

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/Precacher;->broadcastIccPrecacheStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method private onIccPrecacheFast()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 424
    const/4 v1, 0x4

    new-array v0, v1, [Z

    .line 425
    .local v0, locked:[Z
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/Precacher;->getLockStatus([Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 426
    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_0

    .line 427
    const-string v1, "FASTLOCKED"

    const-string v2, "NETWORK"

    invoke-direct {p0, v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->notifyRegistrants(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v1, "FASTLOCKED"

    const-string v2, "NETWORK"

    invoke-virtual {p0, v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->broadcastIccPrecacheStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :goto_0
    return-void

    .line 430
    :cond_0
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_1

    .line 431
    const-string v1, "FASTLOCKED"

    const-string v2, "PUK_PENALTY"

    invoke-direct {p0, v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->notifyRegistrants(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v1, "FASTLOCKED"

    const-string v2, "PUK_PENALTY"

    invoke-virtual {p0, v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->broadcastIccPrecacheStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_1
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_2

    .line 435
    const-string v1, "FASTLOCKED"

    const-string v2, "PUK"

    invoke-direct {p0, v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->notifyRegistrants(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v1, "FASTLOCKED"

    const-string v2, "PUK"

    invoke-virtual {p0, v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->broadcastIccPrecacheStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :cond_2
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_3

    .line 439
    const-string v1, "FASTLOCKED"

    const-string v2, "PIN"

    invoke-direct {p0, v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->notifyRegistrants(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v1, "FASTLOCKED"

    const-string v2, "PIN"

    invoke-virtual {p0, v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->broadcastIccPrecacheStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :cond_3
    const-string v1, "FAST"

    invoke-virtual {p0, v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->broadcastIccPrecacheStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 446
    :cond_4
    const-string v1, "FAST"

    invoke-direct {p0, v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->notifyRegistrants(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v1, "FAST"

    invoke-virtual {p0, v1, v2}, Lcom/motorola/android/internal/telephony/Precacher;->broadcastIccPrecacheStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onIccPrecacheLocked()V
    .locals 2

    .prologue
    .line 394
    const-string v0, "LOCKED"

    const-string v1, "PIN"

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/internal/telephony/Precacher;->notifyRegistrants(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v0, "LOCKED"

    const-string v1, "PIN"

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/Precacher;->broadcastIccPrecacheStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method private onIccPrecacheNetworkLocked()V
    .locals 2

    .prologue
    .line 417
    const-string v0, "LOCKED"

    const-string v1, "NETWORK"

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/internal/telephony/Precacher;->notifyRegistrants(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v0, "LOCKED"

    const-string v1, "NETWORK"

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/Precacher;->broadcastIccPrecacheStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method private onIccPrecachePermPuk()V
    .locals 2

    .prologue
    .line 409
    const-string v0, "LOCKED"

    const-string v1, "PUK_PENALTY"

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/internal/telephony/Precacher;->notifyRegistrants(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v0, "LOCKED"

    const-string v1, "PUK_PENALTY"

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/Precacher;->broadcastIccPrecacheStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method private onIccPrecachePuk()V
    .locals 2

    .prologue
    .line 401
    const-string v0, "LOCKED"

    const-string v1, "PUK"

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/internal/telephony/Precacher;->notifyRegistrants(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v0, "LOCKED"

    const-string v1, "PUK"

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/Precacher;->broadcastIccPrecacheStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method private otherModemSupportsAppType(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z
    .locals 7
    .parameter "apptype"

    .prologue
    const/4 v4, 0x1

    .line 472
    invoke-static {}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getInstance()Lcom/motorola/android/internal/telephony/ModemConfigManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemInfos()[Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    move-result-object v3

    .line 473
    .local v3, modemInfos:[Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    array-length v0, v3

    .line 474
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 475
    aget-object v2, v3, v1

    .line 476
    .local v2, modemInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    iget v5, v2, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mModemId:I

    iget v6, p0, Lcom/motorola/android/internal/telephony/Precacher;->mModemId:I

    if-eq v5, v6, :cond_0

    .line 477
    sget-object v5, Lcom/motorola/android/internal/telephony/Precacher$2;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 474
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 480
    :pswitch_0
    iget-object v5, v2, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v5, :cond_1

    .line 491
    .end local v2           #modemInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    :goto_1
    return v4

    .line 485
    .restart local v2       #modemInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    :cond_1
    :pswitch_1
    iget-object v5, v2, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v5, :cond_0

    goto :goto_1

    .line 491
    .end local v2           #modemInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private ourSlot()I
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPhoneModeService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    iget v1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mModemId:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->getSlotByModemId(I)I

    move-result v0

    return v0
.end method

.method private resetData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 165
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccid:Ljava/lang/String;

    .line 166
    return-void
.end method

.method private supportAppType(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z
    .locals 5
    .parameter "apptype"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 453
    invoke-static {}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getInstance()Lcom/motorola/android/internal/telephony/ModemConfigManager;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/internal/telephony/Precacher;->mModemId:I

    invoke-virtual {v3, v4}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    move-result-object v0

    .line 454
    .local v0, modemInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    if-nez v0, :cond_0

    .line 455
    const-string v1, "Failed to get modem information"

    invoke-direct {p0, v1}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 466
    :goto_0
    return v2

    .line 458
    :cond_0
    sget-object v3, Lcom/motorola/android/internal/telephony/Precacher$2;->$SwitchMap$com$android$internal$telephony$IccCardApplication$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardApplication$AppType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 461
    :pswitch_0
    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCdmaPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 464
    :pswitch_1
    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_2

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    .line 458
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateIccInfo()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 655
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v5, :cond_0

    .line 733
    :goto_0
    return-void

    .line 659
    :cond_0
    new-instance v3, Lcom/motorola/android/telephony/IccCardInfo;

    invoke-direct {v3}, Lcom/motorola/android/telephony/IccCardInfo;-><init>()V

    .line 660
    .local v3, iccInfo:Lcom/motorola/android/telephony/IccCardInfo;
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccid:Ljava/lang/String;

    iput-object v5, v3, Lcom/motorola/android/telephony/IccCardInfo;->iccid:Ljava/lang/String;

    .line 661
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/motorola/android/telephony/IccCardInfo;->setCardState(Lcom/android/internal/telephony/IccCardStatus$CardState;)V

    .line 662
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getUniversalPinState()Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/motorola/android/telephony/IccCardInfo;->setUniversalPinState(Lcom/android/internal/telephony/IccCardStatus$PinState;)V

    .line 666
    invoke-virtual {v3, v7}, Lcom/motorola/android/telephony/IccCardInfo;->setGsmUmtsSubscriptionAppIndex(I)V

    .line 667
    invoke-virtual {v3, v7}, Lcom/motorola/android/telephony/IccCardInfo;->setCdmaSubscriptionAppIndex(I)V

    .line 668
    invoke-virtual {v3, v7}, Lcom/motorola/android/telephony/IccCardInfo;->setImsSubscriptionAppIndex(I)V

    .line 670
    const/4 v4, 0x0

    .line 671
    .local v4, numApps:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v5

    if-ge v2, v5, :cond_b

    .line 672
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 674
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v6, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v5, v6, :cond_2

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v6, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v5, v6, :cond_2

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v6, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v5, v6, :cond_2

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v6, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v5, v6, :cond_2

    .line 678
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported application type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 671
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 681
    :cond_2
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mImsis:[Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mImsis:[Ljava/lang/String;

    array-length v5, v5

    if-lt v2, v5, :cond_4

    .line 682
    :cond_3
    const-string v5, "Can not get IMSI"

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 686
    :cond_4
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mImsis:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/Precacher;->isValidImsi(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 687
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid IMSI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/internal/telephony/Precacher;->mImsis:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 691
    :cond_5
    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/Precacher;->supportAppType(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->hotSwapSupported()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/Precacher;->otherModemSupportsAppType(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 693
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not support application type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    goto :goto_2

    .line 697
    :cond_7
    new-instance v1, Lcom/motorola/android/telephony/IccCardAppInfo;

    invoke-direct {v1}, Lcom/motorola/android/telephony/IccCardAppInfo;-><init>()V

    .line 698
    .local v1, appInfo:Lcom/motorola/android/telephony/IccCardAppInfo;
    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    iput-object v5, v1, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 699
    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    iput-object v5, v1, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    .line 700
    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    iput-object v5, v1, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    .line 701
    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    iput-object v5, v1, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    .line 702
    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->app_label:Ljava/lang/String;

    iput-object v5, v1, Lcom/android/internal/telephony/IccCardApplication;->app_label:Ljava/lang/String;

    .line 703
    iget v5, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    iput v5, v1, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    .line 704
    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v5, v1, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 705
    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v5, v1, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    .line 707
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mImsis:[Ljava/lang/String;

    aget-object v5, v5, v2

    iput-object v5, v1, Lcom/motorola/android/telephony/IccCardAppInfo;->imsi:Ljava/lang/String;

    .line 708
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mImsis:[Ljava/lang/String;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/motorola/android/internal/telephony/Precacher;->mMncLengths:[I

    aget v6, v6, v2

    invoke-direct {p0, v5, v6}, Lcom/motorola/android/internal/telephony/Precacher;->getOperatorNumeric(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/motorola/android/telephony/IccCardAppInfo;->operatorNumeric:Ljava/lang/String;

    .line 709
    invoke-virtual {v3, v1}, Lcom/motorola/android/telephony/IccCardInfo;->addApplication(Lcom/android/internal/telephony/IccCardApplication;)V

    .line 710
    add-int/lit8 v4, v4, 0x1

    .line 713
    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v6, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v5, v6, :cond_8

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v6, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v5, v6, :cond_9

    .line 715
    :cond_8
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v3, v5}, Lcom/motorola/android/telephony/IccCardInfo;->setCdmaSubscriptionAppIndex(I)V

    goto/16 :goto_2

    .line 716
    :cond_9
    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v6, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v5, v6, :cond_a

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v6, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v5, v6, :cond_1

    .line 718
    :cond_a
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v3, v5}, Lcom/motorola/android/telephony/IccCardInfo;->setGsmUmtsSubscriptionAppIndex(I)V

    goto/16 :goto_2

    .line 721
    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    .end local v1           #appInfo:Lcom/motorola/android/telephony/IccCardAppInfo;
    :cond_b
    invoke-virtual {v3, v4}, Lcom/motorola/android/telephony/IccCardInfo;->setNumApplications(I)V

    .line 723
    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/Precacher;->isIccTypeSupported(Lcom/android/internal/telephony/IccCardStatus;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 724
    const-string v5, "ICC type is not supported"

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v3}, Lcom/motorola/android/telephony/IccCardInfo;->clearApplications()V

    .line 726
    invoke-virtual {v3, v7}, Lcom/motorola/android/telephony/IccCardInfo;->setGsmUmtsSubscriptionAppIndex(I)V

    .line 727
    invoke-virtual {v3, v7}, Lcom/motorola/android/telephony/IccCardInfo;->setCdmaSubscriptionAppIndex(I)V

    .line 728
    invoke-virtual {v3, v7}, Lcom/motorola/android/telephony/IccCardInfo;->setImsSubscriptionAppIndex(I)V

    .line 731
    :cond_c
    iput-object v3, p0, Lcom/motorola/android/internal/telephony/Precacher;->mCachedIccInfo:Lcom/motorola/android/telephony/IccCardInfo;

    .line 732
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mCachedIccInfo:Lcom/motorola/android/telephony/IccCardInfo;

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/Precacher;->dumpIccInfo(Lcom/motorola/android/telephony/IccCardInfo;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public broadcastIccPrecacheStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "value"
    .parameter "reason"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPhoneModeService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPhoneModeService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    iget v1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mModemId:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->isDefaultModemId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.motorola.intent.action.ICC_PRECACHE_STATUS_CHANGED"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v2, intent:Landroid/content/Intent;
    :goto_0
    const/high16 v0, 0x2000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 279
    const-string v0, "phoneName"

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v0, "ss"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v0, "reason"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v0, "modemId"

    iget v1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mModemId:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broadcasting intent ACTION_ICC_PRECACHE_STATUE_CHANGED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_1
    return-void

    .line 276
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.motorola.intent.action.ICC_PRECACHE_STATUS_CHANGED_2"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 288
    :catch_0
    move-exception v11

    .line 289
    .local v11, ex:Landroid/os/RemoteException;
    const-string v0, "exception on broadcat ACTION_ICC_PRECACHE_STATUE_CHANGED!"

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    goto :goto_1
.end method

.method detect()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mStates:[Lcom/motorola/android/internal/telephony/Precacher$State;

    iget v1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mCurrentState:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/Precacher$State;->detect()V

    .line 251
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 142
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccStatusChanged(Landroid/os/Handler;)V

    .line 143
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPhoneModeService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->unregisterIccSwitchStart(Landroid/os/Handler;)V

    .line 144
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPhoneModeService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->unregisterIccSwitchDone(Landroid/os/Handler;)V

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/Precacher;->setState(I)V

    .line 146
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->resetData()V

    .line 147
    return-void
.end method

.method protected getLockStatus([Z)Z
    .locals 7
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 307
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v5, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v3

    .line 311
    :cond_1
    if-eqz p1, :cond_2

    .line 312
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    aput-boolean v6, p1, v5

    .line 313
    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-boolean v6, p1, v5

    .line 314
    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-boolean v6, p1, v5

    .line 315
    const/4 v5, 0x3

    const/4 v6, 0x0

    aput-boolean v6, p1, v5

    .line 317
    :cond_2
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getUniversalPinState()Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-ne v5, v6, :cond_3

    .line 318
    const/4 v5, 0x2

    const/4 v6, 0x1

    aput-boolean v6, p1, v5

    .line 321
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 322
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/Precacher;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 323
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    iget v5, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1_replaced:I

    if-nez v5, :cond_4

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v6, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-ne v5, v6, :cond_4

    .line 325
    const/4 v5, 0x2

    const/4 v6, 0x1

    aput-boolean v6, p1, v5

    .line 327
    :cond_4
    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    sget-object v6, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/IccCardApplication$AppState;

    if-ne v5, v6, :cond_6

    .line 328
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-boolean v6, p1, v5

    .line 321
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 329
    :cond_6
    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    sget-object v6, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/IccCardApplication$AppState;

    if-ne v5, v6, :cond_7

    .line 330
    const/4 v5, 0x1

    const/4 v6, 0x1

    aput-boolean v6, p1, v5

    goto :goto_2

    .line 343
    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NullPointerException;
    move v3, v4

    .line 346
    goto :goto_0

    .line 331
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v0       #app:Lcom/android/internal/telephony/IccCardApplication;
    .restart local v2       #i:I
    :cond_7
    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    sget-object v6, Lcom/android/internal/telephony/IccCardApplication$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/IccCardApplication$AppState;

    if-ne v5, v6, :cond_5

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    sget-object v6, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    if-eq v5, v6, :cond_5

    .line 333
    const/4 v5, 0x3

    const/4 v6, 0x1

    aput-boolean v6, p1, v5

    goto :goto_2

    .line 336
    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_8
    if-eqz p1, :cond_0

    .line 337
    const/4 v5, 0x0

    aget-boolean v5, p1, v5

    if-nez v5, :cond_9

    const/4 v5, 0x1

    aget-boolean v5, p1, v5

    if-nez v5, :cond_9

    const/4 v5, 0x2

    aget-boolean v5, p1, v5

    if-nez v5, :cond_9

    const/4 v5, 0x3

    aget-boolean v5, p1, v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    :cond_9
    move v3, v4

    goto/16 :goto_0
.end method

.method public getSubscriptionInfo()Lcom/motorola/android/telephony/SubscriptionInfo;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 629
    iget v1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mSubscriptionType:I

    if-ne v1, v2, :cond_0

    .line 630
    new-instance v0, Lcom/motorola/android/telephony/SubscriptionInfo;

    invoke-direct {v0, v2}, Lcom/motorola/android/telephony/SubscriptionInfo;-><init>(I)V

    .line 635
    :goto_0
    return-object v0

    .line 632
    :cond_0
    new-instance v0, Lcom/motorola/android/telephony/SubscriptionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/SubscriptionInfo;-><init>(I)V

    .line 634
    .local v0, subscriptionInfo:Lcom/motorola/android/telephony/SubscriptionInfo;
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/Precacher;->getIccInfo()Lcom/motorola/android/telephony/IccCardInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/SubscriptionInfo;->iccCardInfo:Lcom/motorola/android/telephony/IccCardInfo;

    goto :goto_0
.end method

.method handleEvent(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mStates:[Lcom/motorola/android/internal/telephony/Precacher$State;

    iget v1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mCurrentState:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/Precacher$State;->processEvent(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public registerForPrecacheStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 150
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 152
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPrecacheRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPrecacheRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 154
    monitor-exit v2

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setState(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 240
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mStates:[Lcom/motorola/android/internal/telephony/Precacher$State;

    iget v3, p0, Lcom/motorola/android/internal/telephony/Precacher;->mCurrentState:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/Precacher$State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") --> ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mStates:[Lcom/motorola/android/internal/telephony/Precacher$State;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/Precacher$State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mStates:[Lcom/motorola/android/internal/telephony/Precacher$State;

    iget v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mCurrentState:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/Precacher$State;->exit()V

    .line 242
    iput p1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mCurrentState:I

    .line 243
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mStates:[Lcom/motorola/android/internal/telephony/Precacher$State;

    iget v2, p0, Lcom/motorola/android/internal/telephony/Precacher;->mCurrentState:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/Precacher$State;->enter()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/android/internal/telephony/Precacher;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterForPrecacheStatusChanged(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 158
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPrecacheRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/Precacher;->mPrecacheRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 160
    monitor-exit v1

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
