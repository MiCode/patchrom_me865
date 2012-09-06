.class public abstract Lcom/android/internal/telephony/IccCard;
.super Ljava/lang/Object;
.source "IccCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCard$3;,
        Lcom/android/internal/telephony/IccCard$State;,
        Lcom/android/internal/telephony/IccCard$PinType;
    }
.end annotation


# static fields
.field private static final EVENT_CARD_ADDED:I = 0xe

.field private static final EVENT_CARD_REMOVED:I = 0xd

.field private static final EVENT_CHANGE_FACILITY_FDN_DONE:I = 0xb

.field private static final EVENT_CHANGE_FACILITY_LOCK_DONE:I = 0x8

.field private static final EVENT_CHANGE_ICC_PASSWORD_DONE:I = 0x9

.field private static final EVENT_CHANGE_NETWORK_LOCK_DONE:I = 0x10

.field protected static final EVENT_GET_ICC_STATUS_DONE:I = 0x2

.field protected static final EVENT_ICC_ERROR:I = 0xf

.field protected static final EVENT_ICC_LOCKED_OR_ABSENT:I = 0x1

.field protected static final EVENT_ICC_READY:I = 0x6

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0xc

.field private static final EVENT_PINPUK_DONE:I = 0x4

.field private static final EVENT_QUERY_FACILITY_FDN_DONE:I = 0xa

.field private static final EVENT_QUERY_FACILITY_LOCK_DONE:I = 0x7

.field private static final EVENT_QUERY_FACILITY_PN_LOCK_DONE:I = 0x11

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x66

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x3

.field private static final EVENT_REPOLL_STATUS_DONE:I = 0x5

.field protected static final EVENT_SIM_STATUS_CHANGED:I = 0x65

.field public static final INTENT_KEY_ICC_STATE:Ljava/lang/String; = "ss"

.field public static final INTENT_KEY_LOCKED_REASON:Ljava/lang/String; = "reason"

.field public static final INTENT_VALUE_ABSENT_ON_PERM_DISABLED:Ljava/lang/String; = "PERM_DISABLED"

.field public static final INTENT_VALUE_ICC_ABSENT:Ljava/lang/String; = "ABSENT"

.field public static final INTENT_VALUE_ICC_ERROR:Ljava/lang/String; = "ERROR"

.field public static final INTENT_VALUE_ICC_IMSI:Ljava/lang/String; = "IMSI"

.field public static final INTENT_VALUE_ICC_LOADED:Ljava/lang/String; = "LOADED"

.field public static final INTENT_VALUE_ICC_LOCKED:Ljava/lang/String; = "LOCKED"

.field public static final INTENT_VALUE_ICC_NOT_READY:Ljava/lang/String; = "NOT_READY"

.field public static final INTENT_VALUE_ICC_READY:Ljava/lang/String; = "READY"

.field public static final INTENT_VALUE_LOCKED_NETWORK:Ljava/lang/String; = "NETWORK"

.field public static final INTENT_VALUE_LOCKED_ON_PIN:Ljava/lang/String; = "PIN"

.field public static final INTENT_VALUE_LOCKED_ON_PUK:Ljava/lang/String; = "PUK"

.field public static final INTENT_VALUE_PERM_LOCKED_NETWORK:Ljava/lang/String; = "NETWORK_PENALTY"

.field public static final INTENT_VALUE_PERM_LOCKED_ON_PUK:Ljava/lang/String; = "PUK_PENALTY"


# instance fields
.field protected mAbsentRegistrants:Landroid/os/RegistrantList;

.field protected mAid:Ljava/lang/String;

.field protected mAppType:Lcom/android/internal/telephony/IccCardApplication$AppType;

.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field protected mDbg:Z

.field private mDesiredFdnEnabled:Z

.field private mDesiredNetworkLocked:Z

.field private mDesiredPinLocked:Z

.field protected mFh:Lcom/android/internal/telephony/IccFileHandler;

.field protected mHandler:Landroid/os/Handler;

.field protected mIccCardApplicationStatus:Lcom/android/internal/telephony/IccCardApplication;

.field protected mIccCardExt:Lcom/motorola/android/internal/telephony/IccCardExt;

.field protected mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

.field private mIccFdnEnabled:Z

.field private mIccNetworkLocked:Z

.field private mIccPinLocked:Z

.field protected mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field public mIsActivated:Z

.field protected mIsAssigned:Z

.field protected mIsCdmaGsmWorldPhone:Z

.field protected mIsNewArch:Z

.field private mIsPenaltyNetworkLock:Z

.field private mIsPermPukLock:Z

.field private mIsSSTPinDisableAllow:Z

.field protected mIsSwitchedToCdma:Z

.field protected mLogTag:Ljava/lang/String;

.field private mNeedPreload:Z

.field protected mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field protected mParentCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mPinLockedRegistrants:Landroid/os/RegistrantList;

.field public mServiceModem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

.field private mSimLoaded:Z

.field protected mState:Lcom/android/internal/telephony/IccCard$State;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "phone"
    .parameter "logTag"
    .parameter "dbg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 331
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIsNewArch:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIsAssigned:Z

    .line 74
    iput-object v2, p0, Lcom/android/internal/telephony/IccCard;->mParentCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    .line 75
    iput-object v2, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 76
    iput-object v2, p0, Lcom/android/internal/telephony/IccCard;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 77
    iput-object v2, p0, Lcom/android/internal/telephony/IccCard;->mAid:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAppType:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 79
    iput-object v2, p0, Lcom/android/internal/telephony/IccCard;->mIccCardApplicationStatus:Lcom/android/internal/telephony/IccCardApplication;

    .line 84
    iput-object v2, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 85
    iput-object v2, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 88
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 89
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 90
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 98
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccNetworkLocked:Z

    .line 100
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    .line 101
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    .line 105
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mIsSSTPinDisableAllow:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIsPenaltyNetworkLock:Z

    .line 113
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIsPermPukLock:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mSimLoaded:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIsActivated:Z

    .line 130
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIsCdmaGsmWorldPhone:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIsSwitchedToCdma:Z

    .line 1212
    new-instance v0, Lcom/android/internal/telephony/IccCard$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccCard$2;-><init>(Lcom/android/internal/telephony/IccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    .line 332
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 333
    iput-object p2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    .line 334
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mContext:Landroid/content/Context;

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 345
    const-string v0, "NOT_READY"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public constructor <init>(Lcom/motorola/android/internal/telephony/IccPhysicalCard;Lcom/android/internal/telephony/IccCardStatus;Lcom/android/internal/telephony/IccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;)V
    .locals 8
    .parameter "parentCard"
    .parameter "ics"
    .parameter "appStatus"
    .parameter "context"
    .parameter "ci"
    .parameter "logTag"

    .prologue
    .line 354
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/IccCard;-><init>(Lcom/motorola/android/internal/telephony/IccPhysicalCard;Lcom/android/internal/telephony/IccCardStatus;Lcom/android/internal/telephony/IccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 355
    return-void
.end method

.method public constructor <init>(Lcom/motorola/android/internal/telephony/IccPhysicalCard;Lcom/android/internal/telephony/IccCardStatus;Lcom/android/internal/telephony/IccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "parentCard"
    .parameter "ics"
    .parameter "appStatus"
    .parameter "context"
    .parameter "ci"
    .parameter "logTag"
    .parameter "dbg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 358
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIsNewArch:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIsAssigned:Z

    .line 74
    iput-object v2, p0, Lcom/android/internal/telephony/IccCard;->mParentCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    .line 75
    iput-object v2, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 76
    iput-object v2, p0, Lcom/android/internal/telephony/IccCard;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 77
    iput-object v2, p0, Lcom/android/internal/telephony/IccCard;->mAid:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplication$AppType;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAppType:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 79
    iput-object v2, p0, Lcom/android/internal/telephony/IccCard;->mIccCardApplicationStatus:Lcom/android/internal/telephony/IccCardApplication;

    .line 84
    iput-object v2, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 85
    iput-object v2, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 88
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 89
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 90
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 98
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccNetworkLocked:Z

    .line 100
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    .line 101
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    .line 105
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mIsSSTPinDisableAllow:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIsPenaltyNetworkLock:Z

    .line 113
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIsPermPukLock:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mSimLoaded:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIsActivated:Z

    .line 130
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIsCdmaGsmWorldPhone:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIsSwitchedToCdma:Z

    .line 1212
    new-instance v0, Lcom/android/internal/telephony/IccCard$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccCard$2;-><init>(Lcom/android/internal/telephony/IccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    .line 359
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mIsNewArch:Z

    .line 360
    iput-object p2, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 361
    iput-object p1, p0, Lcom/android/internal/telephony/IccCard;->mParentCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    .line 362
    iput-object p4, p0, Lcom/android/internal/telephony/IccCard;->mContext:Landroid/content/Context;

    .line 363
    iput-object p5, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 364
    iput-object p3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardApplicationStatus:Lcom/android/internal/telephony/IccCardApplication;

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardApplicationStatus:Lcom/android/internal/telephony/IccCardApplication;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardApplicationStatus:Lcom/android/internal/telephony/IccCardApplication;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAppType:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardApplicationStatus:Lcom/android/internal/telephony/IccCardApplication;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAid:Ljava/lang/String;

    .line 370
    :cond_0
    iput-object p6, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    .line 371
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mNeedPreload:Z

    .line 372
    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    .line 374
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/IccCard;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/IccCard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/IccCard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mSimLoaded:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDesiredPinLocked:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/telephony/IccCard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDesiredFdnEnabled:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/IccCard;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->onIccSwap(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCard;->isDefault()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/IccCard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCard;->getIccCardStatusFromRil()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->getIccCardStatusDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->onQueryFacilityLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/IccCard;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->onQueryFacilityPnLock(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccNetworkLocked:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/IccCard;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mIccNetworkLocked:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/IccCard;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDesiredNetworkLocked:Z

    return v0
.end method

.method private getAppState(I)Lcom/android/internal/telephony/IccCard$State;
    .locals 4
    .parameter "appIndex"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1620
    if-ltz p1, :cond_0

    const/16 v1, 0x8

    if-ge p1, v1, :cond_0

    .line 1621
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 1627
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-nez v0, :cond_1

    .line 1628
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "[IccCard] Subscription Application in not present"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->MISSING:Lcom/android/internal/telephony/IccCard$State;

    .line 1673
    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    :goto_0
    return-object v1

    .line 1623
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IccCard] Invalid Subscription Application index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1634
    .restart local v0       #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardStatus$PinState;->isPermBlocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1635
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1637
    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isPinRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1638
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1643
    :cond_3
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isPukRequired()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardStatus$PinState;->isPermBlocked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1646
    :cond_4
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardStatus$PinState;->isPermBlocked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1647
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mIsPermPukLock:Z

    .line 1648
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1650
    :cond_5
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIsPermPukLock:Z

    .line 1651
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1655
    :cond_6
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isSubscriptionPersoEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1657
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->perso_substate:Lcom/android/internal/telephony/IccCardApplication$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$PersoSubState;->isPenaltyPersoNetworkLocked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1658
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mIsPenaltyNetworkLock:Z

    .line 1659
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1662
    :cond_7
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIsPenaltyNetworkLock:Z

    .line 1663
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1667
    :cond_8
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isAppReady()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1668
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1670
    :cond_9
    iget-object v1, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplication$AppState;->isAppNotReady()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1671
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1673
    :cond_a
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0
.end method

.method private getConsolidatedState(Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/telephony/IccCard$State;
    .locals 1
    .parameter "left"
    .parameter "right"
    .parameter "preferredState"

    .prologue
    .line 1678
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v0, :cond_1

    .line 1698
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1679
    .restart local p1
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_2

    move-object p1, p2

    goto :goto_0

    .line 1682
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v0, :cond_3

    .line 1683
    sget-object p1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1687
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v0, :cond_4

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq p1, v0, :cond_5

    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_6

    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p2, v0, :cond_6

    .line 1689
    :cond_5
    sget-object p1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1693
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq p2, v0, :cond_0

    .line 1694
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_7

    move-object p1, p2

    goto :goto_0

    :cond_7
    move-object p1, p3

    .line 1698
    goto :goto_0
.end method

.method private getIccCardStatusDone(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 778
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 785
    :goto_0
    return-void

    .line 784
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/IccCardStatus;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;->handleIccCardStatus(Lcom/android/internal/telephony/IccCardStatus;)V

    goto :goto_0
.end method

.method private getIccCardStatusFromRil()V
    .locals 3

    .prologue
    .line 1467
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsNewArch:Z

    if-eqz v0, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mParentCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->triggerIccStatusChange(Ljava/lang/Object;)V

    .line 1472
    :goto_0
    return-void

    .line 1470
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private handleIccCardStatus(Lcom/android/internal/telephony/IccCardStatus;)V
    .locals 24
    .parameter "newCardStatus"

    .prologue
    .line 844
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/internal/telephony/IccCard;->mIsPenaltyNetworkLock:Z

    .line 854
    .local v8, oldPenaltyNetworkLockState:Z
    const/16 v18, 0x0

    .line 857
    .local v18, transitionedIntoReady:Z
    const/4 v14, 0x0

    .line 863
    .local v14, transitionedIntoNotReady:Z
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/internal/telephony/IccCard;->mIsPermPukLock:Z

    .line 866
    .local v9, oldPukSubState:Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 867
    .local v10, oldState:Lcom/android/internal/telephony/IccCard$State;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    .line 868
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v7

    .line 869
    .local v7, newState:Lcom/android/internal/telephony/IccCard$State;
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 871
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/IccCard;->mIsPenaltyNetworkLock:Z

    .line 875
    .local v5, newPenaltyNetworkLockState:Z
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/IccCard;->mIsPermPukLock:Z

    .line 878
    .local v6, newPukSubState:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->updateStateProperty()V

    .line 881
    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-eq v10, v0, :cond_12

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_12

    const/16 v16, 0x1

    .line 882
    .local v16, transitionedIntoPinLocked:Z
    :goto_0
    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-eq v10, v0, :cond_0

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsPermPukLock:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    :cond_0
    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v10, v0, :cond_13

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsPermPukLock:Z

    move/from16 v21, v0

    if-nez v21, :cond_13

    if-eq v9, v6, :cond_13

    :cond_1
    const/16 v17, 0x1

    .line 887
    .local v17, transitionedIntoPukLocked:Z
    :goto_1
    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-eq v10, v0, :cond_2

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v10, v0, :cond_14

    :cond_2
    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_14

    const/4 v14, 0x1

    .line 893
    :goto_2
    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-eq v10, v0, :cond_15

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->MISSING:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-eq v10, v0, :cond_15

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-eq v7, v0, :cond_3

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->MISSING:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_15

    :cond_3
    const/4 v11, 0x1

    .line 896
    .local v11, transitionedIntoAbsent:Z
    :goto_3
    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-eq v10, v0, :cond_16

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_16

    const/4 v12, 0x1

    .line 900
    .local v12, transitionedIntoError:Z
    :goto_4
    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-eq v10, v0, :cond_4

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsPenaltyNetworkLock:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    :cond_4
    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v10, v0, :cond_17

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsPenaltyNetworkLock:Z

    move/from16 v21, v0

    if-nez v21, :cond_17

    if-eq v8, v5, :cond_17

    :cond_5
    const/4 v13, 0x1

    .line 906
    .local v13, transitionedIntoNetworkLocked:Z
    :goto_5
    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-eq v10, v0, :cond_6

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsPenaltyNetworkLock:Z

    move/from16 v21, v0

    if-nez v21, :cond_7

    :cond_6
    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v10, v0, :cond_18

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsPenaltyNetworkLock:Z

    move/from16 v21, v0

    if-eqz v21, :cond_18

    if-eq v8, v5, :cond_18

    :cond_7
    const/16 v19, 0x1

    .line 914
    .local v19, transitonedIntoPenaltyNetworkLocked:Z
    :goto_6
    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-eq v10, v0, :cond_8

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsPermPukLock:Z

    move/from16 v21, v0

    if-nez v21, :cond_9

    :cond_8
    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v10, v0, :cond_19

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsPermPukLock:Z

    move/from16 v21, v0

    if-eqz v21, :cond_19

    if-eq v9, v6, :cond_19

    :cond_9
    const/16 v20, 0x1

    .line 918
    .local v20, transitonedIntoPermPukLocked:Z
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "transitonedIntoPermPukLocked="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", oldState="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", newState="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mIsPermPukLock="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsPermPukLock:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mIsNewArch="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsNewArch:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", worldphone ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsCdmaGsmWorldPhone:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", isAssigned="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsAssigned:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", isActivated"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsActivated:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsNewArch:Z

    move/from16 v21, v0

    if-nez v21, :cond_1b

    .line 930
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsCdmaGsmWorldPhone:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsSwitchedToCdma:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1a

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_1a

    const/16 v18, 0x1

    .line 946
    :cond_b
    :goto_8
    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-eq v10, v0, :cond_1e

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_1e

    const/4 v15, 0x1

    .line 948
    .local v15, transitionedIntoPermBlocked:Z
    :goto_9
    if-eqz v10, :cond_1f

    invoke-virtual {v10}, Lcom/android/internal/telephony/IccCard$State;->iccCardExist()Z

    move-result v21

    if-eqz v21, :cond_1f

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_1f

    const/4 v4, 0x1

    .line 950
    .local v4, isIccCardRemoved:Z
    :goto_a
    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v10, v0, :cond_20

    if-eqz v7, :cond_20

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCard$State;->iccCardExist()Z

    move-result v21

    if-eqz v21, :cond_20

    const/4 v3, 0x1

    .line 953
    .local v3, isIccCardAdded:Z
    :goto_b
    if-eqz v16, :cond_21

    .line 955
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    const-string v21, "Notify SIM pin locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 956
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 957
    const-string v21, "LOCKED"

    const-string v22, "PIN"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    :cond_d
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mNeedPreload:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "preloadInfo"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/IccRecords;->preloadInfo()V

    .line 1049
    :cond_e
    if-eqz v4, :cond_37

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "EVENT_CARD_REMOVED, do we support hot-swap? "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_f
    :goto_d
    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v10, v0, :cond_10

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-eq v7, v0, :cond_10

    .line 1067
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/IccCard;->mSimLoaded:Z

    .line 1070
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsActivated:Z

    move/from16 v21, v0

    if-eqz v21, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mSimLoaded:Z

    move/from16 v21, v0

    if-nez v21, :cond_11

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-eq v10, v0, :cond_11

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_11

    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v21, v0

    if-eqz v21, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    move/from16 v21, v0

    if-eqz v21, :cond_11

    .line 1074
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/IccCard;->mSimLoaded:Z

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SIMRecords;->onSimReady()V

    .line 1078
    :cond_11
    return-void

    .line 881
    .end local v3           #isIccCardAdded:Z
    .end local v4           #isIccCardRemoved:Z
    .end local v11           #transitionedIntoAbsent:Z
    .end local v12           #transitionedIntoError:Z
    .end local v13           #transitionedIntoNetworkLocked:Z
    .end local v15           #transitionedIntoPermBlocked:Z
    .end local v16           #transitionedIntoPinLocked:Z
    .end local v17           #transitionedIntoPukLocked:Z
    .end local v19           #transitonedIntoPenaltyNetworkLocked:Z
    .end local v20           #transitonedIntoPermPukLocked:Z
    :cond_12
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 882
    .restart local v16       #transitionedIntoPinLocked:Z
    :cond_13
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 887
    .restart local v17       #transitionedIntoPukLocked:Z
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 893
    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 896
    .restart local v11       #transitionedIntoAbsent:Z
    :cond_16
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 900
    .restart local v12       #transitionedIntoError:Z
    :cond_17
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 906
    .restart local v13       #transitionedIntoNetworkLocked:Z
    :cond_18
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 914
    .restart local v19       #transitonedIntoPenaltyNetworkLocked:Z
    :cond_19
    const/16 v20, 0x0

    goto/16 :goto_7

    .line 930
    .restart local v20       #transitonedIntoPermPukLocked:Z
    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_8

    .line 934
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsCdmaGsmWorldPhone:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsAssigned:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsActivated:Z

    move/from16 v21, v0

    if-nez v21, :cond_1c

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_1c

    const/16 v18, 0x1

    .line 937
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mNeedPreload:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 938
    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-eq v10, v0, :cond_1d

    sget-object v21, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v21

    if-ne v7, v0, :cond_1d

    const/16 v18, 0x1

    .line 939
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "transitionedIntoReady"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 934
    :cond_1c
    const/16 v18, 0x0

    goto :goto_e

    .line 938
    :cond_1d
    const/16 v18, 0x0

    goto :goto_f

    .line 946
    :cond_1e
    const/4 v15, 0x0

    goto/16 :goto_9

    .line 948
    .restart local v15       #transitionedIntoPermBlocked:Z
    :cond_1f
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 950
    .restart local v4       #isIccCardRemoved:Z
    :cond_20
    const/4 v3, 0x0

    goto/16 :goto_b

    .line 960
    .restart local v3       #isIccCardAdded:Z
    :cond_21
    if-eqz v11, :cond_25

    .line 961
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v21, v0

    if-eqz v21, :cond_22

    const-string v21, "Notify SIM missing."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 963
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsNewArch:Z

    move/from16 v21, v0

    if-nez v21, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v21, v0

    if-eqz v21, :cond_24

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/IccRecords;->getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;

    move-result-object v21

    if-eqz v21, :cond_23

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "!NewArch, Sim card is unpluged, clear cache."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/IccRecords;->getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 969
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/IccRecords;->getSmsCache()Lcom/android/internal/telephony/SmsRecordCache;

    move-result-object v21

    if-eqz v21, :cond_24

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "!NewArch, Sim card is unpluged, clear sms cache."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/IccRecords;->getSmsCache()Lcom/android/internal/telephony/SmsRecordCache;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/SmsRecordCache;->reset()V

    .line 976
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 977
    const-string v21, "ABSENT"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 978
    :cond_25
    if-eqz v13, :cond_27

    .line 979
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v21, v0

    if-eqz v21, :cond_26

    const-string v21, "Notify SIM network locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 980
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 981
    const-string v21, "LOCKED"

    const-string v22, "NETWORK"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 983
    :cond_27
    if-eqz v15, :cond_29

    .line 984
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v21, v0

    if-eqz v21, :cond_28

    const-string v21, "Notify SIM permanently disabled."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 985
    :cond_28
    const-string v21, "ABSENT"

    const-string v22, "PERM_DISABLED"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 988
    :cond_29
    if-eqz v17, :cond_2b

    .line 989
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2a

    const-string v21, "Notify SIM puk locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 990
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 991
    const-string v21, "LOCKED"

    const-string v22, "PUK"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 994
    :cond_2b
    if-eqz v20, :cond_2d

    .line 995
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2c

    const-string v21, "Notify SIM puk perm locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 996
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 997
    const-string v21, "LOCKED"

    const-string v22, "PUK_PENALTY"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1001
    :cond_2d
    if-eqz v19, :cond_2f

    .line 1002
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2e

    const-string v21, "Notify SIM penalty network locked."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1003
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1004
    const-string v21, "LOCKED"

    const-string v22, "NETWORK_PENALTY"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1008
    :cond_2f
    if-eqz v12, :cond_31

    .line 1009
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v21, v0

    if-eqz v21, :cond_30

    const-string v21, "Notify SIM error."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1010
    :cond_30
    const-string v21, "ERROR"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1014
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsNewArch:Z

    move/from16 v21, v0

    if-eqz v21, :cond_33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsActivated:Z

    move/from16 v21, v0

    if-nez v21, :cond_33

    if-eqz v18, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->getServicePhoneType()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_33

    .line 1016
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v21, v0

    if-eqz v21, :cond_32

    const-string v21, "fetch common items in SimCard when it is not activated."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1017
    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->handleSimReadyInCdma()V

    goto/16 :goto_c

    .line 1025
    :cond_33
    if-eqz v18, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->getServicePhoneType()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mIsSwitchedToCdma:Z

    move/from16 v21, v0

    if-eqz v21, :cond_35

    .line 1028
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaSubscription()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 1029
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v21, v0

    if-eqz v21, :cond_34

    const-string v21, "Notify SIM ready in cdma mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1030
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/IccCard;->handleSimReadyInCdma()V

    goto/16 :goto_c

    .line 1036
    :cond_35
    if-eqz v14, :cond_d

    .line 1037
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    move/from16 v21, v0

    if-eqz v21, :cond_36

    const-string v21, "NotReady after PIN/PUK unlock"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1038
    :cond_36
    const-string v21, "NOT_READY"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1056
    :cond_37
    if-eqz v3, :cond_f

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "EVENT_CARD_ADDED, do we support hot-swap? "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d
.end method

.method private final isDefault()Z
    .locals 2

    .prologue
    .line 1830
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->isDmds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneModeService()Lcom/motorola/android/internal/telephony/PhoneModeService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->isDefaultRil(Lcom/android/internal/telephony/CommandsInterface;)Z

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

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccCard] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    return-void
.end method

.method private onIccSwap(Z)V
    .locals 8
    .parameter "isAdded"

    .prologue
    .line 1115
    const/4 v2, 0x0

    .line 1121
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/internal/telephony/IccCard$1;

    .end local v2           #listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/IccCard$1;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 1134
    .restart local v2       #listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 1136
    .local v4, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    const v6, 0x104040b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1138
    .local v5, title:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    const v6, 0x104040c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1140
    .local v3, message:Ljava/lang/String;
    :goto_1
    const v6, 0x104040d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1142
    .local v0, buttonTxt:Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/internal/telephony/IccCard;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1147
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d3

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 1148
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1149
    return-void

    .line 1136
    .end local v0           #buttonTxt:Ljava/lang/String;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v3           #message:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_0
    const v6, 0x1040408

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1138
    .restart local v5       #title:Ljava/lang/String;
    :cond_1
    const v6, 0x1040409

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private onQueryFacilityLock(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    const/4 v2, 0x0

    .line 1175
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1176
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in querying facility lock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1187
    :cond_0
    :goto_0
    return-void

    .line 1180
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 1181
    .local v0, ints:[I
    array-length v1, v0

    if-eqz v1, :cond_3

    .line 1182
    aget v1, v0, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    .line 1183
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query facility lock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1182
    goto :goto_1

    .line 1185
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "[IccCard] Bogus facility lock response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onQueryFacilityPnLock(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    const/4 v2, 0x0

    .line 1095
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1096
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in querying facility PN lock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1107
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 1101
    .local v0, ints:[I
    array-length v1, v0

    if-eqz v1, :cond_3

    .line 1102
    aget v1, v0, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccNetworkLocked:Z

    .line 1103
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query facility PN lock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIccNetworkLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1102
    goto :goto_1

    .line 1105
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "[IccCard] Bogus facility PN lock response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    const/4 v2, 0x0

    .line 1156
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1157
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in querying facility lock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1161
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 1162
    .local v0, ints:[I
    array-length v1, v0

    if-eqz v1, :cond_3

    .line 1163
    aget v1, v0, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    .line 1164
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query facility lock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1163
    goto :goto_1

    .line 1166
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v2, "[IccCard] Bogus facility lock response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsActivated:Z

    if-eqz v0, :cond_1

    .line 418
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "IccCard has been activated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "this icc card is activated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsActivated:Z

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->activate()V

    .line 430
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    .line 432
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCard;->getIccCardStatusFromRil()V

    goto :goto_0
.end method

.method public assign(I)V
    .locals 3
    .parameter "serviceModemId"

    .prologue
    const/4 v2, 0x1

    .line 383
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsAssigned:Z

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "this icc card has been assigned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "this icc card app is assigned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIsAssigned:Z

    .line 390
    invoke-static {}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getInstance()Lcom/motorola/android/internal/telephony/ModemConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mServiceModem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mServiceModem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mServiceModem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->isDualMode()Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsCdmaGsmWorldPhone:Z

    .line 394
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsCdmaGsmWorldPhone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mServiceModem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getCdmaSubscriptionSource()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCard;->getIccCardStatusFromRil()V

    goto :goto_0

    .line 393
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "value"
    .parameter "reason"

    .prologue
    .line 1193
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIsNewArch:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIsActivated:Z

    if-nez v1, :cond_0

    .line 1194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "card "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mAppType:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not active, don\'t broadcast anything"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1210
    :goto_0
    return-void

    .line 1200
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/internal/telephony/IccCard;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    :goto_1
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1202
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1204
    const-string v1, "phoneName"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getServicePhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1205
    const-string v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1206
    const-string v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1207
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1209
    :cond_1
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 1200
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const-string v1, "android.intent.action.SIM_STATE_CHANGED_2"

    goto :goto_1
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 731
    return-void
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 713
    return-void
.end method

.method public deactivate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 436
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsActivated:Z

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "IccCard has been deactivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "this icc card is deactivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIsActivated:Z

    .line 442
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mSimLoaded:Z

    .line 443
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->dispose()V

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_2

    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "NewArch, Sim card is unpluged, clear cache."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getSmsCache()Lcom/android/internal/telephony/SmsRecordCache;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "NewArch, Sim card is unpluged, clear sms cache."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getSmsCache()Lcom/android/internal/telephony/SmsRecordCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsRecordCache;->reset()V

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 462
    :cond_2
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "IccCard finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    return-void
.end method

.method public getActiveApplicationTypeInIccCard()Lcom/android/internal/telephony/IccCardApplication$AppType;
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAppType:Lcom/android/internal/telephony/IccCardApplication$AppType;

    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public getAppOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1815
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
    .line 1820
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAppType:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne p1, v0, :cond_0

    .line 1821
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getAppOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 1825
    :goto_0
    return-object v0

    .line 1822
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mParentCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    if-eqz v0, :cond_1

    .line 1823
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mParentCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getAppOperatorNumeric(Lcom/android/internal/telephony/IccCardApplication$AppType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1825
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppType()Lcom/android/internal/telephony/IccCardApplication$AppType;
    .locals 1

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAppType:Lcom/android/internal/telephony/IccCardApplication$AppType;

    return-object v0
.end method

.method public getApplicationRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 1

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    return-object v0
.end method

.method public getApplicationTypesInIccCard()[Lcom/android/internal/telephony/IccCardApplication$AppType;
    .locals 4

    .prologue
    .line 1765
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v1

    .line 1766
    .local v1, nums:I
    :goto_0
    if-gtz v1, :cond_2

    .line 1768
    const/4 v2, 0x0

    .line 1774
    :cond_0
    return-object v2

    .line 1765
    .end local v1           #nums:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1770
    .restart local v1       #nums:I
    :cond_2
    new-array v2, v1, [Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 1771
    .local v2, ret:[Lcom/android/internal/telephony/IccCardApplication$AppType;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 1772
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    aput-object v3, v2, v0

    .line 1771
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getCard()Lcom/motorola/android/internal/telephony/IccPhysicalCard;
    .locals 1

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mParentCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    return-object v0
.end method

.method public abstract getIccAppIndex()I
.end method

.method public getIccCardState()Lcom/android/internal/telephony/IccCard$State;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1476
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v5, :cond_0

    .line 1477
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v6, "[IccCard] IccCardStatus is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .line 1574
    :goto_0
    return-object v5

    .line 1486
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardPresent()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1488
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardError()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1489
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v6, "[IccCard] IccCardStatus is CARDSTATE_ERROR"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1492
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1499
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    iget-object v6, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 1500
    .local v0, a:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v0, :cond_4

    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus$PinState;->isPermBlocked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1501
    iput-boolean v7, p0, Lcom/android/internal/telephony/IccCard;->mIsPermPukLock:Z

    .line 1502
    iget-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v6, "pin1 is PukPermBlocked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1508
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    .line 1510
    .local v2, currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v2, v5, :cond_6

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v2, v5, :cond_6

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v2, v5, :cond_6

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v2, v5, :cond_5

    iget-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mNeedPreload:Z

    if-eqz v5, :cond_6

    :cond_5
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v2, v5, :cond_6

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v2, v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getLteOnCdmaMode()I

    move-result v5

    if-eq v5, v7, :cond_7

    .line 1520
    :cond_6
    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1523
    :cond_7
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v2, v5, :cond_9

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v2, v5, :cond_9

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v2, v5, :cond_9

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v2, v5, :cond_8

    iget-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mNeedPreload:Z

    if-nez v5, :cond_9

    :cond_8
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v2, v5, :cond_9

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v2, v5, :cond_11

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getLteOnCdmaMode()I

    move-result v5

    if-ne v5, v7, :cond_11

    .line 1535
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->updateIccLockEnabled()V

    .line 1538
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getLteOnCdmaMode()I

    move-result v5

    if-ne v5, v7, :cond_b

    .line 1540
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/IccCard;->getAppState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    .line 1542
    .local v1, csimState:Lcom/android/internal/telephony/IccCard$State;
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/IccCard;->getAppState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    .line 1545
    .local v4, usimState:Lcom/android/internal/telephony/IccCard$State;
    iget-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mDbg:Z

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USIM="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CSIM="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1547
    :cond_a
    invoke-direct {p0, v1, v4, v1}, Lcom/android/internal/telephony/IccCard;->getConsolidatedState(Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v5

    goto/16 :goto_0

    .line 1553
    .end local v1           #csimState:Lcom/android/internal/telephony/IccCard$State;
    .end local v4           #usimState:Lcom/android/internal/telephony/IccCard$State;
    :cond_b
    const/4 v3, -0x1

    .line 1554
    .local v3, index:I
    iget-boolean v5, p0, Lcom/android/internal/telephony/IccCard;->mIsNewArch:Z

    if-eqz v5, :cond_e

    .line 1555
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mAppType:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v6, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v5, v6, :cond_c

    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mAppType:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v6, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v5, v6, :cond_d

    .line 1556
    :cond_c
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v3

    .line 1570
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[IccCard] getIccCardState index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCard;->getAppState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v5

    goto/16 :goto_0

    .line 1558
    :cond_d
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v3

    goto :goto_1

    .line 1562
    :cond_e
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v2, v5, :cond_f

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v2, v5, :cond_10

    .line 1564
    :cond_f
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v3

    goto :goto_1

    .line 1566
    :cond_10
    iget-object v5, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v3

    goto :goto_1

    .line 1574
    .end local v3           #index:I
    :cond_11
    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0
.end method

.method public getIccCardSubsidyLockState()Lcom/android/internal/telephony/IccCard$State;
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    .line 790
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsPenaltyNetworkLock:Z

    if-eqz v0, :cond_0

    .line 791
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_PENALTY_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 796
    :goto_0
    return-object v0

    .line 793
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method public getIccFdnEnabled()Z
    .locals 1

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccFdnEnabled:Z

    return v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    return-object v0
.end method

.method public getIccLockEnabled()Z
    .locals 1

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    return v0
.end method

.method public getIccLockRetryAttemps(Lcom/android/internal/telephony/IccCard$PinType;Landroid/os/Message;)V
    .locals 3
    .parameter "type"
    .parameter "result"

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardExt:Lcom/motorola/android/internal/telephony/IccCardExt;

    if-nez v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "getIccLockRetryAttemps() mIccCardExt == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1742
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1746
    :goto_0
    return-void

    .line 1744
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardExt:Lcom/motorola/android/internal/telephony/IccCardExt;

    invoke-interface {v0, p1, p2}, Lcom/motorola/android/internal/telephony/IccCardExt;->getIccLockRetryAttemps(Lcom/android/internal/telephony/IccCard$PinType;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getIccNetworkLockEnabled()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIccNetworkLocked:Z

    return v0
.end method

.method public getSSTPinDisableAllow()Z
    .locals 1

    .prologue
    .line 1728
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsSSTPinDisableAllow:Z

    return v0
.end method

.method protected abstract getServicePhoneName()Ljava/lang/String;
.end method

.method public abstract getServicePhoneType()I
.end method

.method public abstract getServiceProviderName()Ljava/lang/String;
.end method

.method public getSimPin2Puk2Required()Z
    .locals 5

    .prologue
    .line 263
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-eqz v3, :cond_5

    .line 264
    const/4 v2, 0x0

    .line 265
    .local v2, index:I
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCard;->mIsNewArch:Z

    if-eqz v3, :cond_2

    .line 266
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mAppType:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mAppType:Lcom/android/internal/telephony/IccCardApplication$AppType;

    sget-object v4, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v3, v4, :cond_1

    .line 267
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v2

    .line 281
    :goto_0
    if-ltz v2, :cond_5

    .line 282
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 283
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v4, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-ne v3, v4, :cond_5

    .line 285
    const/4 v3, 0x1

    .line 290
    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    .end local v2           #index:I
    :goto_1
    return v3

    .line 269
    .restart local v2       #index:I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v2

    goto :goto_0

    .line 272
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .line 273
    .local v1, currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v3, :cond_3

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_4

    .line 275
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v2

    goto :goto_0

    .line 277
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v2

    goto :goto_0

    .line 290
    .end local v1           #currentRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .end local v2           #index:I
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getState()Lcom/android/internal/telephony/IccCard$State;
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    if-nez v0, :cond_0

    .line 297
    sget-object v0, Lcom/android/internal/telephony/IccCard$3;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "IccCard.getState(): case should never be reached"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    :goto_0
    return-object v0

    .line 307
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 311
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 315
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 319
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 321
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected handleSimReadyInCdma()V
    .locals 2

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "handleSimReadyInCdma shouldn\'t be called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    return-void
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1718
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardStatus$CardState;->isCardPresent()Z

    move-result v0

    goto :goto_0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z
    .locals 4
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 1702
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    if-nez v3, :cond_1

    .line 1710
    :cond_0
    :goto_0
    return v2

    .line 1704
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1705
    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 1706
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v3, p1, :cond_2

    .line 1707
    const/4 v2, 0x1

    goto :goto_0

    .line 1704
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isAssigned()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsAssigned:Z

    return v0
.end method

.method public isPenaltyNetworkLocked()Z
    .locals 2

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getIccCardSubsidyLockState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_PENALTY_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_0

    .line 812
    const/4 v0, 0x1

    .line 814
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequireNetworkLock()Z
    .locals 2

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getIccCardSubsidyLockState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_0

    .line 804
    const/4 v0, 0x1

    .line 806
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 482
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 484
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 487
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->MISSING:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_1

    .line 488
    :cond_0
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 490
    :cond_1
    return-void
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 517
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 519
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 521
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 524
    :cond_0
    return-void
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 500
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 502
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 504
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    .line 505
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 507
    :cond_0
    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 684
    const/16 v4, 0xf

    .line 689
    .local v4, serviceClassX:I
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mDesiredFdnEnabled:Z

    .line 692
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "FD"

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 695
    return-void
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 630
    const/4 v4, 0x7

    .line 634
    .local v4, serviceClassX:I
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mDesiredPinLocked:Z

    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "SC"

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 640
    return-void
.end method

.method public setIccNetworkLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 657
    const/4 v4, 0x7

    .line 661
    .local v4, serviceClassX:I
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mDesiredNetworkLocked:Z

    .line 664
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "PN"

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 667
    return-void
.end method

.method public setSSTPinDisableAllow(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1724
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccCard;->mIsSSTPinDisableAllow:Z

    .line 1725
    return-void
.end method

.method protected setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    :goto_0
    return-void

    .line 1797
    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 579
    return-void
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 555
    return-void
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 567
    return-void
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 561
    return-void
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 573
    return-void
.end method

.method public switchToCdma()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public switchToGsm()V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public unassign()V
    .locals 2

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsAssigned:Z

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "icc Card has been unassigned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "this icc card is unassigned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCard;->mIsAssigned:Z

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mServiceModem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    .line 409
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->deactivate()V

    goto :goto_0
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 494
    return-void
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 528
    return-void
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 511
    return-void
.end method

.method public update(Lcom/android/internal/telephony/IccCardStatus;Lcom/android/internal/telephony/IccCardApplication;)V
    .locals 1
    .parameter "ics"
    .parameter "appStatus"

    .prologue
    .line 821
    iput-object p2, p0, Lcom/android/internal/telephony/IccCard;->mIccCardApplicationStatus:Lcom/android/internal/telephony/IccCardApplication;

    .line 822
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardApplicationStatus:Lcom/android/internal/telephony/IccCardApplication;

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardApplicationStatus:Lcom/android/internal/telephony/IccCardApplication;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAppType:Lcom/android/internal/telephony/IccCardApplication$AppType;

    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/IccCard;->mIccCardApplicationStatus:Lcom/android/internal/telephony/IccCardApplication;

    iget-object v0, v0, Lcom/android/internal/telephony/IccCardApplication;->aid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCard;->mAid:Ljava/lang/String;

    .line 826
    :cond_0
    const-string v0, "IccCard update"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 827
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccCard;->handleIccCardStatus(Lcom/android/internal/telephony/IccCardStatus;)V

    .line 828
    return-void
.end method

.method protected updateIccLockEnabled()V
    .locals 5

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getIccAppIndex()I

    move-result v1

    .line 1585
    .local v1, appIndex:I
    if-ltz v1, :cond_1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 1586
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 1592
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    if-nez v0, :cond_2

    .line 1593
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    const-string v3, "[IccCard] updateIccLockEnabled: Application in not present"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    .end local v0           #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_0
    :goto_0
    return-void

    .line 1588
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IccCard] updateIccLockEnabled: Invalid Application index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1599
    .restart local v0       #app:Lcom/android/internal/telephony/IccCardApplication;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pin state update. Card state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCard;->mIccCardStatus:Lcom/android/internal/telephony/IccCardStatus;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardStatus;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " App index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " App type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_type:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " App state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->app_state:Lcom/android/internal/telephony/IccCardApplication$AppState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Pin1State is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Pin2State is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 1607
    iget-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v3, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/IccCardStatus$PinState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1608
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    goto :goto_0

    .line 1610
    :cond_3
    iget-object v2, v0, Lcom/android/internal/telephony/IccCardApplication;->pin1:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v3, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/IccCardStatus$PinState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1611
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccCard;->mIccPinLocked:Z

    goto/16 :goto_0
.end method

.method protected updateStateProperty()V
    .locals 3

    .prologue
    .line 755
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIsNewArch:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCard;->mIsActivated:Z

    if-nez v1, :cond_0

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "card "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccCard;->mAppType:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not active, don\'t setSystemProperty for PROPERTY_SIM_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 775
    :goto_0
    return-void

    .line 762
    :cond_0
    const-string v1, "IccCard updateStateProperty"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccCard;->log(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->MISSING:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_1

    .line 767
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, value:Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCard;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "gsm.sim.state"

    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/IccCard;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 769
    .end local v0           #value:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #value:Ljava/lang/String;
    goto :goto_1

    .line 772
    :cond_2
    const-string v1, "gsm.sim.state.2"

    goto :goto_2
.end method
