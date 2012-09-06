.class public Lcom/android/internal/telephony/cdma/CDMAPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "CDMAPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CDMAPhone$2;
    }
.end annotation


# static fields
.field static final CANCEL_ECM_TIMER:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field private static final EVENT_NETWORK_SCAN_COMPLETED:I = 0x190

.field private static final INVALID_SYSTEM_SELECTION_CODE:I = -0x1

.field private static final IS683A_FEATURE_CODE:Ljava/lang/String; = "*228"

.field private static final IS683A_FEATURE_CODE_NUM_DIGITS:I = 0x4

.field private static final IS683A_SYS_SEL_CODE_NUM_DIGITS:I = 0x2

.field private static final IS683A_SYS_SEL_CODE_OFFSET:I = 0x4

.field private static final IS683_CONST_1900MHZ_A_BLOCK:I = 0x2

.field private static final IS683_CONST_1900MHZ_B_BLOCK:I = 0x3

.field private static final IS683_CONST_1900MHZ_C_BLOCK:I = 0x4

.field private static final IS683_CONST_1900MHZ_D_BLOCK:I = 0x5

.field private static final IS683_CONST_1900MHZ_E_BLOCK:I = 0x6

.field private static final IS683_CONST_1900MHZ_F_BLOCK:I = 0x7

.field private static final IS683_CONST_800MHZ_A_BAND:I = 0x0

.field private static final IS683_CONST_800MHZ_B_BAND:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field static PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String; = null

.field static final RESTART_ECM_TIMER:I = 0x0

.field static final VM_COUNT_CDMA:Ljava/lang/String; = "vm_count_key_cdma"

.field private static final VM_NUMBER_CDMA:Ljava/lang/String; = "vm_number_key_cdma"

.field public static final VM_PRIORITY_CDMA:Ljava/lang/String; = "vm_priority_key_cdma"

.field private static pOtaSpNumSchema:Ljava/util/regex/Pattern;


# instance fields
.field final LTE_AVAILABLE_ON_CDMA:Z

.field public mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

.field private mCarrierOtaSpNumSchema:Ljava/lang/String;

.field mCcatService:Lcom/android/internal/telephony/cat/CatService;

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;

.field private final mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private final mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

.field mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

.field private mEsn:Ljava/lang/String;

.field private mExitEcmRunnable:Ljava/lang/Runnable;

.field protected mImei:Ljava/lang/String;

.field protected mImeiSv:Ljava/lang/String;

.field private mIsCdmaGsmWorldPhone:Z

.field private mIsNewArch:Z

.field private mIsPhoneInEcmState:Z

.field private mIsSwitchedToCdma:Z

.field private mIsWifiEnabledBeforeEcm:Z

.field private mMeid:Ljava/lang/String;

.field private final mNvLoadedRegistrants:Landroid/os/RegistrantList;

.field mPendingMmis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field mPostDialHandler:Landroid/os/Registrant;

.field mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

.field mRuimSmsInterfaceManager:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

.field public mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field private mSyncNvService:Z

.field private mTurnOffWifiOnECM:Z

.field private mVmNumber:Ljava/lang/String;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private needNBPCDRetry:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 226
    const-string v0, "ro.cdma.home.operator.numeric"

    sput-object v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    .line 2021
    const-string v0, "[,\\s]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 3
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    invoke-direct {p0, p3, p1, p2, v2}, Lcom/android/internal/telephony/PhoneBase;-><init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    .line 172
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    .line 175
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 189
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->LTE_AVAILABLE_ON_CDMA:Z

    .line 198
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone$1;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 209
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mTurnOffWifiOnECM:Z

    .line 210
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsWifiEnabledBeforeEcm:Z

    .line 214
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsNewArch:Z

    .line 215
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsCdmaGsmWorldPhone:Z

    .line 216
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsSwitchedToCdma:Z

    .line 220
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSyncNvService:Z

    .line 224
    const-string v0, "ro.cdma.nbpcd.retry"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->needNBPCDRetry:Z

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->initSstIcc()V

    .line 232
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 233
    return-void

    :cond_0
    move v0, v2

    .line 189
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V
    .locals 8
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "modemId"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 565
    move-object v0, p0

    move v1, p4

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneBase;-><init>(ILcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    .line 172
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    .line 175
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 189
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v0

    if-ne v0, v7, :cond_0

    move v0, v7

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->LTE_AVAILABLE_ON_CDMA:Z

    .line 198
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone$1;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 209
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mTurnOffWifiOnECM:Z

    .line 210
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsWifiEnabledBeforeEcm:Z

    .line 214
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsNewArch:Z

    .line 215
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsCdmaGsmWorldPhone:Z

    .line 216
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsSwitchedToCdma:Z

    .line 220
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSyncNvService:Z

    .line 224
    const-string v0, "ro.cdma.nbpcd.retry"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->needNBPCDRetry:Z

    .line 568
    invoke-static {}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getInstance()Lcom/motorola/android/internal/telephony/ModemConfigManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mModemId:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->isDualMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsCdmaGsmWorldPhone:Z

    .line 572
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsNewArch:Z

    .line 573
    iput-boolean v5, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    .line 577
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->initSst()V

    .line 580
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 581
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mModemId:I

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;-><init>(ILcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 583
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mModemId:I

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(ILcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    .line 584
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mModemId:I

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;-><init>(ILcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 585
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    .line 586
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimSmsInterfaceManager:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    .line 587
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 588
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager;

    invoke-direct {v0, p0, p1, v5}, Lcom/android/internal/telephony/cdma/EriManager;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 590
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 592
    .local v6, pm:Landroid/os/PowerManager;
    const-string v0, "CDMA"

    invoke-virtual {v6, v7, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 594
    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneExt:Lcom/motorola/android/internal/telephony/PhoneExt;

    .line 598
    return-void

    .end local v6           #pm:Landroid/os/PowerManager;
    :cond_0
    move v0, v5

    .line 189
    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V
    .locals 3
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "unitTestMode"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 237
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/android/internal/telephony/PhoneBase;-><init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    .line 172
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    .line 175
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 189
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->LTE_AVAILABLE_ON_CDMA:Z

    .line 198
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone$1;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 209
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mTurnOffWifiOnECM:Z

    .line 210
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsWifiEnabledBeforeEcm:Z

    .line 214
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsNewArch:Z

    .line 215
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsCdmaGsmWorldPhone:Z

    .line 216
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsSwitchedToCdma:Z

    .line 220
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSyncNvService:Z

    .line 224
    const-string v0, "ro.cdma.nbpcd.retry"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->needNBPCDRetry:Z

    .line 238
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->initSstIcc()V

    .line 239
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 240
    return-void

    :cond_0
    move v0, v2

    .line 189
    goto :goto_0
.end method

.method public constructor <init>(ZZLandroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 7
    .parameter "isCdmaGsmWorldPhone"
    .parameter "isSwitchedToCdma"
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"

    .prologue
    .line 249
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p5

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneBase;-><init>(ZLcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    .line 172
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    .line 175
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 189
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->LTE_AVAILABLE_ON_CDMA:Z

    .line 198
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone$1;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mTurnOffWifiOnECM:Z

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsWifiEnabledBeforeEcm:Z

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsNewArch:Z

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsCdmaGsmWorldPhone:Z

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsSwitchedToCdma:Z

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSyncNvService:Z

    .line 224
    const-string v0, "ro.cdma.nbpcd.retry"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->needNBPCDRetry:Z

    .line 251
    if-nez p1, :cond_1

    .line 252
    const-string v0, "CDMA"

    const-string v1, "CDMAPhone, this shouldn\'t be called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_1
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 256
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsCdmaGsmWorldPhone:Z

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 263
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/RuimFileHandler;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 265
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/internal/telephony/cdma/RuimRecords;-><init>(ZZLcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 266
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimCard;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/internal/telephony/cdma/RuimCard;-><init>(ZZLcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 270
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;-><init>(ZZLcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 271
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(ZZLcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 274
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    move v1, p1

    move v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(ZZLcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    .line 279
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;-><init>(ZZLcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 281
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    .line 282
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimSmsInterfaceManager:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    .line 284
    new-instance v0, Lcom/motorola/android/internal/telephony/ISIMFileHandler;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/ISIMFileHandler;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsimFileHandler:Lcom/motorola/android/internal/telephony/ISIMFileHandler;

    .line 285
    new-instance v0, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/ISIMInterfaceService;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsimService:Lcom/motorola/android/internal/telephony/ISIMInterfaceService;

    .line 290
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 292
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, v1}, Lcom/android/internal/telephony/cdma/EriManager;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 294
    const-string v0, "power"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 296
    .local v6, pm:Landroid/os/PowerManager;
    const/4 v0, 0x1

    const-string v1, "CDMA"

    invoke-virtual {v6, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 299
    new-instance v0, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneExt:Lcom/motorola/android/internal/telephony/PhoneExt;

    .line 301
    if-eqz p2, :cond_2

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsSwitchedToCdma:Z

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->switchToCdma()V

    goto/16 :goto_1

    .line 305
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsSwitchedToCdma:Z

    goto/16 :goto_1
.end method

.method private activateMe()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 344
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 346
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsNewArch:Z

    if-nez v5, :cond_5

    .line 347
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v6, 0x16

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 356
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x8

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 357
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x5

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 358
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0, v10, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 359
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v6, 0x13

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 360
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x17

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForNVReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 362
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x1d

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 363
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x19

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isDefault()Z

    move-result v3

    .line 367
    .local v3, isDefault:Z
    if-eqz v3, :cond_6

    const-string v5, "gsm.current.phone-type"

    :goto_1
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    if-eqz v3, :cond_7

    const-string v5, "ril.cdma.inecmmode"

    :goto_2
    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, inEcm:Ljava/lang/String;
    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    .line 375
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    if-eqz v5, :cond_1

    .line 377
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x1a

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 381
    :cond_1
    if-eqz v3, :cond_8

    const-string v5, "ro.cdma.otaspnumschema"

    :goto_3
    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    .line 386
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 390
    if-eqz v3, :cond_9

    const-string v5, "ril.gsm.rcv_ecb_msg"

    :goto_4
    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, gsmReceivedEcb:Ljava/lang/String;
    const-string v5, "true"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 394
    if-eqz v3, :cond_a

    const-string v5, "ril.gsm.rcv_ecb_msg"

    :goto_5
    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleEnterEmergencyCallbackMode(Landroid/os/Message;)V

    .line 404
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111005b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mTurnOffWifiOnECM:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_6
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mTurnOffWifiOnECM:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_disabled_by_ecm"

    invoke-static {v5, v6, v9}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v8, v5, :cond_4

    .line 413
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 414
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 415
    const-string v5, "CDMA"

    const-string v6, "Restore WiFi as disabled by ECM"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v4, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 417
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsWifiEnabledBeforeEcm:Z

    .line 419
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_disabled_by_ecm"

    invoke-static {v5, v6, v9}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 423
    .end local v4           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_4
    return-void

    .line 350
    .end local v1           #gsmReceivedEcb:Ljava/lang/String;
    .end local v2           #inEcm:Ljava/lang/String;
    .end local v3           #isDefault:Z
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v5, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForRuimRecordEvents()V

    goto/16 :goto_0

    .line 367
    .restart local v3       #isDefault:Z
    :cond_6
    const-string v5, "gsm.current.phone-type.2"

    goto/16 :goto_1

    .line 372
    :cond_7
    const-string v5, "ril.cdma.inecmmode.2"

    goto/16 :goto_2

    .line 381
    .restart local v2       #inEcm:Ljava/lang/String;
    :cond_8
    const-string v5, "ro.cdma.otaspnumschema.2"

    goto/16 :goto_3

    .line 390
    :cond_9
    const-string v5, "ril.gsm.rcv_ecb_msg.2"

    goto/16 :goto_4

    .line 394
    .restart local v1       #gsmReceivedEcb:Ljava/lang/String;
    :cond_a
    const-string v5, "ril.gsm.rcv_ecb_msg.2"

    goto :goto_5

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, e:Ljava/lang/Exception;
    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mTurnOffWifiOnECM:Z

    goto :goto_6
.end method

.method private checkNoSupportEmergencyCallbackMode()Z
    .locals 8

    .prologue
    .line 2580
    const/4 v0, 0x0

    .line 2581
    .local v0, emc:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v2, v3, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 2582
    .local v2, ss:Landroid/telephony/ServiceState;
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v5

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getNetworkId()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->getOperatorInfo(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    move-result-object v1

    .line 2585
    .local v1, info:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
    if-eqz v1, :cond_0

    .line 2586
    iget-object v3, v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mOtherInfo:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;

    iget-object v0, v3, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo$CdmaOperatorOtherInfo;->mEmergencyCallBack:Ljava/lang/String;

    .line 2588
    :cond_0
    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private static checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z
    .locals 8
    .parameter "sysSelCodeInt"
    .parameter "sch"

    .prologue
    .line 1995
    const/4 v2, 0x0

    .line 1998
    .local v2, isOtaSpNum:Z
    const/4 v6, 0x1

    :try_start_0
    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1999
    .local v5, selRc:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 2000
    add-int/lit8 v6, v1, 0x2

    aget-object v6, p1, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v6, v1, 0x3

    aget-object v6, p1, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2001
    add-int/lit8 v6, v1, 0x2

    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2002
    .local v4, selMin:I
    add-int/lit8 v6, v1, 0x3

    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2005
    .local v3, selMax:I
    if-lt p0, v4, :cond_1

    if-gt p0, v3, :cond_1

    .line 2006
    const/4 v2, 0x1

    .line 2016
    .end local v1           #i:I
    .end local v3           #selMax:I
    .end local v4           #selMin:I
    .end local v5           #selRc:I
    :cond_0
    :goto_1
    return v2

    .line 1999
    .restart local v1       #i:I
    .restart local v5       #selRc:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2011
    .end local v1           #i:I
    .end local v5           #selRc:I
    :catch_0
    move-exception v0

    .line 2014
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v6, "CDMA"

    const-string v7, "checkOtaSpNumBasedOnSysSelCode, error"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private deactivateMe()V
    .locals 1

    .prologue
    .line 497
    const-string v0, "dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 500
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsNewArch:Z

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    .line 502
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForRuimRecordEvents()V

    .line 508
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 509
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 511
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNVReady(Landroid/os/Handler;)V

    .line 513
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRUIMReady(Landroid/os/Handler;)V

    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 516
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 519
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private static extractSelCodeFromOtaSpNum(Ljava/lang/String;)I
    .locals 8
    .parameter "dialStr"

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x6

    .line 1961
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1962
    .local v0, dialStrLen:I
    const/4 v2, -0x1

    .line 1964
    .local v2, sysSelCodeInt:I
    const-string v4, "*228"

    invoke-virtual {p0, v5, v4, v5, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_3

    if-lt v0, v6, :cond_3

    .line 1970
    const/4 v1, 0x4

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 1971
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x39

    if-le v4, v5, :cond_1

    .line 1972
    :cond_0
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extractSelCodeFromOtaSpNum "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1985
    .end local v1           #i:I
    .end local v2           #sysSelCodeInt:I
    .local v3, sysSelCodeInt:I
    :goto_1
    return v3

    .line 1970
    .end local v3           #sysSelCodeInt:I
    .restart local v1       #i:I
    .restart local v2       #sysSelCodeInt:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1980
    :cond_2
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1984
    .end local v1           #i:I
    :cond_3
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extractSelCodeFromOtaSpNum "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1985
    .end local v2           #sysSelCodeInt:I
    .restart local v3       #sysSelCodeInt:I
    goto :goto_1
.end method

.method private findMatchedLocale([B[Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 12
    .parameter "cSimLanguageSettings"
    .parameter "locales"
    .parameter "currentLocale"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x2

    .line 2472
    const/4 v0, 0x0

    .line 2473
    .local v0, bestMatch:Ljava/lang/String;
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 2474
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2475
    .local v2, curLocaleStr:Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v2, 0x0

    .line 2477
    :cond_0
    array-length v7, p1

    shr-int/lit8 v1, v7, 0x1

    .line 2480
    .local v1, codeNum:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v1, :cond_5

    .line 2481
    mul-int/lit8 v7, v5, 0x2

    aget-byte v7, p1, v7

    const/16 v8, 0xff

    if-ne v7, v8, :cond_3

    .line 2480
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2474
    .end local v1           #codeNum:I
    .end local v2           #curLocaleStr:Ljava/lang/String;
    .end local v5           #j:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 2483
    .restart local v1       #codeNum:I
    .restart local v2       #curLocaleStr:Ljava/lang/String;
    .restart local v5       #j:I
    :cond_3
    :try_start_0
    new-instance v6, Ljava/lang/String;

    mul-int/lit8 v7, v5, 0x2

    const/4 v8, 0x2

    const-string v9, "ISO-8859-1"

    invoke-direct {v6, p1, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 2485
    .local v6, languageStr:Ljava/lang/String;
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cSimLanguageSettingStr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "currentLocaleStr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    array-length v7, p2

    if-ge v4, v7, :cond_4

    .line 2488
    aget-object v7, p2, v4

    if-eqz v7, :cond_7

    aget-object v7, p2, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v10, :cond_7

    aget-object v7, p2, v4

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2490
    aget-object v7, p2, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v11, :cond_6

    .line 2491
    aget-object v0, p2, v4

    .line 2494
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v11, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2501
    :cond_4
    if-eqz v0, :cond_1

    .line 2507
    .end local v1           #codeNum:I
    .end local v2           #curLocaleStr:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v6           #languageStr:Ljava/lang/String;
    :cond_5
    return-object v0

    .line 2497
    .restart local v1       #codeNum:I
    .restart local v2       #curLocaleStr:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v5       #j:I
    .restart local v6       #languageStr:Ljava/lang/String;
    :cond_6
    if-nez v0, :cond_7

    aget-object v0, p2, v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2487
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2502
    .end local v4           #i:I
    .end local v6           #languageStr:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2503
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const-string v7, "CDMA"

    const-string v8, "error parse cSimLanguageSettings"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private handleEnterEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    .line 1442
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleEnterEmergencyCallbackMode,mIsPhoneInEcmState= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    if-nez v4, :cond_0

    .line 1447
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    .line 1449
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendEmergencyCallbackModeChange()V

    .line 1450
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isDefault()Z

    move-result v2

    .line 1451
    .local v2, isDefault:Z
    if-eqz v2, :cond_1

    const-string v4, "ril.cdma.inecmmode"

    :goto_0
    const-string v5, "true"

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    if-eqz v2, :cond_2

    const-string v4, "ro.cdma.ecmexittimer"

    :goto_1
    const-wide/32 v5, 0x493e0

    invoke-static {v4, v5, v6}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1460
    .local v0, delayInMillis:J
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1462
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1466
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mTurnOffWifiOnECM:Z

    if-eqz v4, :cond_0

    .line 1467
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 1469
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_0

    .line 1470
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsWifiEnabledBeforeEcm:Z

    .line 1471
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsWifiEnabledBeforeEcm:Z

    if-eqz v4, :cond_0

    .line 1472
    const-string v4, "CDMA"

    const-string v5, "Disable WiFi on enter ECM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1474
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_disabled_by_ecm"

    invoke-static {v4, v5, v7}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1481
    .end local v0           #delayInMillis:J
    .end local v2           #isDefault:Z
    .end local v3           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    return-void

    .line 1451
    .restart local v2       #isDefault:Z
    :cond_1
    const-string v4, "ril.cdma.inecmmode.2"

    goto :goto_0

    .line 1456
    :cond_2
    const-string v4, "ro.cdma.ecmexittimer.2"

    goto :goto_1
.end method

.method private handleExitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1484
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1486
    .local v0, ar:Landroid/os/AsyncResult;
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleExitEmergencyCallbackMode,ar.exception , mIsPhoneInEcmState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1492
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    if-eqz v2, :cond_0

    .line 1493
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {v2, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1496
    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5

    .line 1497
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    if-eqz v2, :cond_1

    .line 1498
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    .line 1499
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "ril.cdma.inecmmode"

    :goto_0
    const-string v3, "false"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendEmergencyCallbackModeChange()V

    .line 1508
    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-eqz v2, :cond_2

    .line 1511
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->setInternalDataEnabled(Z)Z

    .line 1516
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mTurnOffWifiOnECM:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsWifiEnabledBeforeEcm:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_disabled_by_ecm"

    invoke-static {v2, v3, v5}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v6, v2, :cond_5

    .line 1518
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1520
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_4

    .line 1521
    const-string v2, "CDMA"

    const-string v3, "Restore WiFi on exit ECM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1524
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_disabled_by_ecm"

    invoke-static {v2, v3, v5}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1529
    .end local v1           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_5
    return-void

    .line 1499
    :cond_6
    const-string v2, "ril.cdma.inecmmode.2"

    goto :goto_0
.end method

.method private handleNetworkScanCompleted(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 1810
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 1811
    .local v0, onComplete:Landroid/os/Message;
    const-string v1, "CDMA"

    const-string v2, "network scan completed !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    if-eqz v0, :cond_0

    .line 1814
    const-string v1, "CDMA"

    const-string v2, "posting scan result back ..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1816
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1818
    :cond_0
    return-void
.end method

.method private isCarrierOtaSpNum(Ljava/lang/String;)Z
    .locals 12
    .parameter "dialStr"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 2042
    const/4 v2, 0x0

    .line 2043
    .local v2, isOtaSpNum:Z
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    move-result v6

    .line 2044
    .local v6, sysSelCodeInt:I
    if-ne v6, v11, :cond_0

    move v3, v2

    .line 2087
    .end local v2           #isOtaSpNum:Z
    .local v3, isOtaSpNum:I
    :goto_0
    return v3

    .line 2048
    .end local v3           #isOtaSpNum:I
    .restart local v2       #isOtaSpNum:Z
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2049
    sget-object v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2051
    .local v4, m:Ljava/util/regex/Matcher;
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCarrierOtaSpNum,schema"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2055
    sget-object v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    .line 2057
    .local v5, sch:[Ljava/lang/String;
    aget-object v7, v5, v10

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    aget-object v7, v5, v10

    const-string v8, "SELC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2058
    if-eq v6, v11, :cond_1

    .line 2059
    invoke-static {v6, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z

    move-result v2

    .end local v4           #m:Ljava/util/regex/Matcher;
    .end local v5           #sch:[Ljava/lang/String;
    :goto_1
    move v3, v2

    .line 2087
    .restart local v3       #isOtaSpNum:I
    goto :goto_0

    .line 2062
    .end local v3           #isOtaSpNum:I
    .restart local v4       #m:Ljava/util/regex/Matcher;
    .restart local v5       #sch:[Ljava/lang/String;
    :cond_1
    const-string v7, "CDMA"

    const-string v8, "isCarrierOtaSpNum,sysSelCodeInt is invalid"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2065
    :cond_2
    aget-object v7, v5, v10

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    aget-object v7, v5, v10

    const-string v8, "FC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2066
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2067
    .local v1, fcLen:I
    const/4 v7, 0x2

    aget-object v0, v5, v7

    .line 2068
    .local v0, fc:Ljava/lang/String;
    invoke-virtual {p1, v10, v0, v10, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2069
    const/4 v2, 0x1

    goto :goto_1

    .line 2071
    :cond_3
    const-string v7, "CDMA"

    const-string v8, "isCarrierOtaSpNum,not otasp number"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2075
    .end local v0           #fc:Ljava/lang/String;
    .end local v1           #fcLen:I
    :cond_4
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCarrierOtaSpNum,ota schema not supported"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2080
    .end local v5           #sch:[Ljava/lang/String;
    :cond_5
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCarrierOtaSpNum,ota schema pattern not right"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2085
    .end local v4           #m:Ljava/util/regex/Matcher;
    :cond_6
    const-string v7, "CDMA"

    const-string v8, "isCarrierOtaSpNum,ota schema pattern empty"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static isIs683OtaSpDialStr(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialStr"

    .prologue
    .line 1931
    const/4 v1, 0x0

    .line 1932
    .local v1, isOtaspDialString:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1934
    .local v0, dialStrLen:I
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 1935
    const-string v3, "*228"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1936
    const/4 v1, 0x1

    .line 1955
    :cond_0
    :goto_0
    return v1

    .line 1939
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    move-result v2

    .line 1940
    .local v2, sysSelCodeInt:I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1949
    :pswitch_0
    const/4 v1, 0x1

    .line 1950
    goto :goto_0

    .line 1940
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isNBPCDEnable()Z
    .locals 3

    .prologue
    .line 2348
    const-string v0, "1"

    const-string v1, "ro.cdma.nbpcd"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNBPCDEnabledForCalling()Z
    .locals 3

    .prologue
    .line 2356
    const-string v0, "0"

    const-string v1, "persist.cdma.nbpcd.call"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private processIccRecordEvents(I)V
    .locals 0
    .parameter "eventCode"

    .prologue
    .line 2559
    packed-switch p1, :pswitch_data_0

    .line 2564
    :goto_0
    return-void

    .line 2561
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyMessageWaitingIndicator()V

    goto :goto_0

    .line 2559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private registerForRuimRecordEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2549
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v1, 0x1c

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2550
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v1, 0x16

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2551
    return-void
.end method

.method private setIsoCountryProperty(Ljava/lang/String;)V
    .locals 5
    .parameter "operatorNumeric"

    .prologue
    .line 2202
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2203
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "gsm.sim.operator.iso-country"

    :goto_0
    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    :goto_1
    return-void

    .line 2203
    :cond_0
    const-string v2, "gsm.sim.operator.iso-country.2"

    goto :goto_0

    .line 2206
    :cond_1
    const-string v1, ""

    .line 2208
    .local v1, iso:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2216
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "gsm.sim.operator.iso-country"

    :goto_3
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2210
    :catch_0
    move-exception v0

    .line 2211
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countryCodeForMcc error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2212
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 2213
    .local v0, ex:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "countryCodeForMcc error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2216
    .end local v0           #ex:Ljava/lang/StringIndexOutOfBoundsException;
    :cond_2
    const-string v2, "gsm.sim.operator.iso-country.2"

    goto :goto_3
.end method

.method private setLanguageFromCsim()V
    .locals 13

    .prologue
    const/4 v12, 0x5

    .line 2395
    const-string v9, "CDMA"

    const-string v10, "setLanguageFromCsim"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    const-string v9, "persist.sys.language"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2399
    .local v8, sysLanguage:Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 2466
    :cond_0
    :goto_0
    return-void

    .line 2403
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v9, :cond_0

    .line 2407
    iget-object v9, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v6

    .line 2408
    .local v6, locales:[Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 2409
    const-string v9, "CDMA"

    const-string v10, "Supported locales:"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    const/4 v5, 0x0

    .local v5, l:I
    :goto_1
    array-length v9, v6

    if-ge v5, v9, :cond_2

    .line 2411
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2415
    .end local v5           #l:I
    :cond_2
    const/4 v3, 0x0

    .line 2417
    .local v3, efli:[B
    iget-object v9, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccRecords;->getLanguageIndication()[B

    move-result-object v3

    .line 2424
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2425
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2432
    .local v1, config:Landroid/content/res/Configuration;
    const/4 v7, 0x0

    .line 2433
    .local v7, matchedLocale:Ljava/lang/String;
    iget-object v9, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v3, v6, v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->findMatchedLocale([B[Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 2434
    if-eqz v7, :cond_3

    .line 2435
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set locale to best match of EFli="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    :cond_3
    if-nez v7, :cond_4

    .line 2440
    const/4 v4, 0x0

    .line 2442
    .local v4, efpl:[B
    iget-object v9, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccRecords;->getPreferredLanguage()[B

    move-result-object v4

    .line 2444
    iget-object v9, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v4, v6, v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->findMatchedLocale([B[Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 2445
    if-eqz v7, :cond_4

    .line 2446
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set locale to best match of EFpl ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    .end local v4           #efpl:[B
    :cond_4
    if-eqz v7, :cond_0

    .line 2453
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v12, :cond_5

    .line 2454
    new-instance v9, Ljava/util/Locale;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x5

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2459
    :goto_2
    const/4 v9, 0x0

    iput-boolean v9, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 2460
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2461
    :catch_0
    move-exception v2

    .line 2463
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "CDMA"

    const-string v10, "Failed to set language From CSIM!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2426
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v7           #matchedLocale:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 2428
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v9, "CDMA"

    const-string v10, "Failed to set language From CSIM!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2457
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #am:Landroid/app/IActivityManager;
    .restart local v1       #config:Landroid/content/res/Configuration;
    .restart local v7       #matchedLocale:Ljava/lang/String;
    :cond_5
    :try_start_2
    new-instance v9, Ljava/util/Locale;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v9, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 2191
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2192
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2193
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "vm_number_key_cdma"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2194
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2195
    return-void
.end method

.method private unregisterForRuimRecordEvents()V
    .locals 1

    .prologue
    .line 2554
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 2555
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2556
    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->acceptCall()V

    .line 826
    return-void
.end method

.method public activate()V
    .locals 3

    .prologue
    .line 522
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->activate()V

    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 528
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->activate()V

    .line 529
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->activate()V

    .line 530
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->activate()V

    .line 531
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->activate()V

    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->activate()V

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneExt:Lcom/motorola/android/internal/telephony/PhoneExt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneExt:Lcom/motorola/android/internal/telephony/PhoneExt;

    invoke-interface {v0}, Lcom/motorola/android/internal/telephony/PhoneExt;->activate()V

    .line 539
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->activateMe()V

    .line 540
    monitor-exit v1

    .line 541
    return-void

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 1882
    const-string v0, "CDMA"

    const-string v1, "[CDMAPhone] activateCellBroadcastSms() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1884
    return-void
.end method

.method public addUnknownCountry(Lcom/motorola/android/telephony/MCCEntry;)V
    .locals 1
    .parameter "entry"

    .prologue
    .line 2311
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->supForIAD:Lcom/motorola/android/telephony/SUPForAssistedDialing;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->addUnknownCountry(Lcom/motorola/android/telephony/MCCEntry;)V

    .line 2312
    return-void
.end method

.method public canConference()Z
    .locals 2

    .prologue
    .line 929
    const-string v0, "CDMA"

    const-string v1, "canConference: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const/4 v0, 0x0

    return v0
.end method

.method public canTransfer()Z
    .locals 2

    .prologue
    .line 702
    const-string v0, "CDMA"

    const-string v1, "canTransfer: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->clearDisconnected()V

    .line 733
    return-void
.end method

.method public conference()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 720
    const-string v0, "CDMA"

    const-string v1, "conference: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 544
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 545
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 547
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->deactivateMe()V

    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->deactivate()V

    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->deactivate()V

    .line 551
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->deactivate()V

    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->deactivate()V

    .line 554
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->deactivate()V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneExt:Lcom/motorola/android/internal/telephony/PhoneExt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneExt:Lcom/motorola/android/internal/telephony/PhoneExt;

    invoke-interface {v0}, Lcom/motorola/android/internal/telephony/PhoneExt;->deactivate()V

    .line 559
    :cond_1
    monitor-exit v1

    .line 560
    return-void

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 769
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, newDialString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 774
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Sending UUS information NOT supported in CDMA!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableDataConnectivity()Z
    .locals 2

    .prologue
    .line 2596
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setInternalDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->disableLocationUpdates()V

    .line 1210
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 608
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 609
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 610
    const-string v0, "dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 612
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->deactivateMe()V

    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dispose()V

    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->dispose()V

    .line 617
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dispose()V

    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 620
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->dispose()V

    .line 621
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->dispose()V

    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->dispose()V

    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimSmsInterfaceManager:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->dispose()V

    .line 624
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V

    .line 625
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->dispose()V

    .line 627
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCcatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCcatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 631
    :cond_0
    monitor-exit v1

    .line 632
    return-void

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2575
    iput-boolean p1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsEnabled:Z

    .line 2576
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setPowerStateToDesired()V

    .line 2577
    return-void
.end method

.method public enableDataConnectivity()Z
    .locals 2

    .prologue
    .line 2592
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setInternalDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredVoicePrivacy(ZLandroid/os/Message;)V

    .line 725
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->enableLocationUpdates()V

    .line 1206
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 2

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1437
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 1438
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 2

    .prologue
    .line 1355
    const-string v0, "CDMA"

    const-string v1, "explicitCallTransfer: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 658
    const-string v0, "CDMA"

    const-string v1, "CDMAPhone finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    const-string v0, "CDMA"

    const-string v1, "UNEXPECTED; mWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 663
    :cond_0
    return-void
.end method

.method public getAllCountryList()[Lcom/motorola/android/telephony/MCCEntry;
    .locals 1

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->supForIAD:Lcom/motorola/android/telephony/SUPForAssistedDialing;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->getAllCountryList()[Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1181
    const-string v0, "CDMA"

    const-string v1, "getAvailableNetworks: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getBackgroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    return-object v0
.end method

.method public getCallForwardingIndicator()Z
    .locals 2

    .prologue
    .line 1350
    const-string v0, "CDMA"

    const-string v1, "getCallForwardingIndicator: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const/4 v0, 0x0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 1332
    const-string v0, "CDMA"

    const-string v1, "getCallForwardingOption: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    return-void
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 862
    return-void
.end method

.method public getCdmaEriAlertUri()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 2143
    const/4 v1, 0x0

    .line 2144
    .local v1, ret:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v2

    .line 2145
    .local v2, roamInd:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaDefaultRoamingIndicator()I

    move-result v0

    .line 2152
    .local v0, defRoamInd:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 2153
    .local v3, state:I
    packed-switch v3, :pswitch_data_0

    .line 2169
    :goto_0
    return-object v1

    .line 2155
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v4, v2, v0}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriAlertUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 2156
    goto :goto_0

    .line 2159
    :pswitch_1
    new-instance v4, Ljava/io/File;

    const-string v5, "/system/media/audio/eri/LossofService.wav"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 2160
    goto :goto_0

    .line 2163
    :pswitch_2
    const-string v4, "CDMA"

    const-string v5, "Phone is in STATE_EMERGENCY_ONLY state"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getCdmaEriFileVersion()I
    .locals 1

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->getEriFileVersion()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 2113
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 2123
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2131
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v1

    .line 2132
    .local v1, roamInd:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaDefaultRoamingIndicator()I

    move-result v0

    .line 2133
    .local v0, defRoamInd:I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriText(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaSMSDispatcher()Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1892
    const-string v0, "CDMA"

    const-string v1, "[CDMAPhone] getCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1894
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    return-object v0
.end method

.method public getCellsInfo(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 2182
    return-void
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 3

    .prologue
    .line 736
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 738
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataActivityState;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-nez v1, :cond_0

    .line 740
    sget-object v1, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$Activity:[I

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 758
    :cond_0
    :goto_0
    return-object v0

    .line 742
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 743
    goto :goto_0

    .line 746
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 747
    goto :goto_0

    .line 750
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 751
    goto :goto_0

    .line 754
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 740
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 1214
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 3
    .parameter "apnType"

    .prologue
    .line 1079
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 1082
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataState;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v1, :cond_1

    .line 1086
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 1119
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataConnectionState apnType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 1120
    return-object v0

    .line 1087
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1090
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 1091
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1093
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 1095
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1098
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 1099
    goto :goto_0

    .line 1103
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1105
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 1107
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 1109
    goto :goto_0

    .line 1114
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 1095
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getMeid()Ljava/lang/String;

    move-result-object v0

    .line 880
    .local v0, id:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "^0*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 881
    :cond_0
    const-string v1, "CDMA"

    const-string v2, "getDeviceId(): MEID is not initialized use ESN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getEsn()Ljava/lang/String;

    move-result-object v0

    .line 884
    :cond_1
    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 888
    const-string v0, "CDMA"

    const-string v1, "getDeviceSvn(): return 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const-string v0, "0"

    return-object v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredVoicePrivacy(Landroid/os/Message;)V

    .line 729
    return-void
.end method

.method public getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;
    .locals 1
    .parameter "mcc"

    .prologue
    .line 2281
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->supForIAD:Lcom/motorola/android/telephony/SUPForAssistedDialing;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEsn:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getForegroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    return-object v0
.end method

.method public getGsmImei()Ljava/lang/String;
    .locals 2

    .prologue
    .line 895
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsCdmaGsmWorldPhone:Z

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImei:Ljava/lang/String;

    .line 899
    :goto_0
    return-object v0

    .line 898
    :cond_0
    const-string v0, "CDMA"

    const-string v1, "cdma phone, imei return 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const-string v0, "0"

    goto :goto_0
.end method

.method public getGsmImeiSv()Ljava/lang/String;
    .locals 2

    .prologue
    .line 904
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsCdmaGsmWorldPhone:Z

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImeiSv:Ljava/lang/String;

    .line 908
    :goto_0
    return-object v0

    .line 907
    :cond_0
    const-string v0, "CDMA"

    const-string v1, "cdma phone, imei sv return 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const-string v0, "0"

    goto :goto_0
.end method

.method public getHomeSystemId()[I
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getHomeSystemId()[I

    move-result-object v0

    return-object v0
.end method

.method public getIMSI(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2569
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getIMSI(Landroid/os/Message;)V

    .line 2570
    return-void
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    return-object v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 996
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsNewArch:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsCdmaGsmWorldPhone:Z

    if-eqz v3, :cond_3

    .line 997
    invoke-static {}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getInstance()Lcom/motorola/android/internal/telephony/ModemConfigManager;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/PhoneBase;->mModemId:I

    invoke-virtual {v3, v4}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getCdmaSubscriptionSource()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 1000
    .local v1, isCdmaFromNV:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1002
    invoke-static {}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getInstance()Lcom/motorola/android/internal/telephony/ModemConfigManager;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/PhoneBase;->mModemId:I

    invoke-virtual {v3, v4}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1004
    .local v0, gsmPhone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_3

    .line 1005
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 1013
    .end local v0           #gsmPhone:Lcom/android/internal/telephony/Phone;
    .end local v1           #isCdmaFromNV:Z
    :cond_0
    :goto_1
    return-object v2

    .line 997
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1008
    .restart local v1       #isCdmaFromNV:Z
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v2, v2, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    goto :goto_1

    .line 1013
    .end local v1           #isCdmaFromNV:Z
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v2, v2, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    goto :goto_1
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimSmsInterfaceManager:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 2

    .prologue
    .line 924
    const-string v0, "CDMA"

    const-string v1, "IMEI is not available in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsi_m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getIMSI_M()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1359
    const-string v0, "CDMA"

    const-string v1, "getLine1AlphaTag: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMeid:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getVoiceMessageCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1070
    if-eqz p1, :cond_0

    .line 1071
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1073
    .local v0, ce:Lcom/android/internal/telephony/CommandException;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1074
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1076
    .end local v0           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_0
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 1345
    const-string v0, "CDMA"

    const-string v1, "getOutgoingCallerIdDisplay: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 694
    const-string v0, "CDMA"

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x2

    return v0
.end method

.method public bridge synthetic getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getRingingCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->needsOtaServiceProvisioning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    const/4 v0, 0x0

    .line 920
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getImsi()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1319
    const-string v0, ""

    .line 1323
    .local v0, ret:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1324
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    const v2, 0x1040004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1328
    .end local v0           #ret:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1255
    const-string v1, "CDMA"

    const-string v2, "enter getVoiceMailNumber"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const/4 v0, 0x0

    .line 1257
    .local v0, vNumber:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vm_number_cdma"

    invoke-static {v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1258
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoiceMailnum"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    if-eqz v0, :cond_0

    .end local v0           #vNumber:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #vNumber:Ljava/lang/String;
    :cond_0
    const-string v0, "*86"

    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1283
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-nez v3, :cond_1

    move v1, v2

    .line 1287
    .local v1, voicemailCount:I
    :goto_0
    if-nez v1, :cond_0

    .line 1288
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1289
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v3, "vm_count_key_cdma"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1291
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return v1

    .line 1283
    .end local v1           #voicemailCount:I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccRecords;->getVoiceMessageCount()I

    move-result v1

    goto :goto_0
.end method

.method public getVoicemailPriority()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 1302
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    instance-of v2, v2, Lcom/android/internal/telephony/cdma/RuimRecords;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v2, Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->getVoicemailPriority()I

    move-result v1

    .line 1307
    .local v1, voicemailPriority:I
    :goto_0
    if-ne v1, v3, :cond_0

    .line 1308
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1309
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v2, "vm_priority_key_cdma"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1311
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voicemailPriority="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    return v1

    .end local v1           #voicemailPriority:I
    :cond_1
    move v1, v3

    .line 1302
    goto :goto_0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 2
    .parameter "dialString"

    .prologue
    .line 801
    const-string v0, "CDMA"

    const-string v1, "method handleInCallMmiCommands is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1576
    iget-boolean v8, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v8, :cond_1

    .line 1577
    const-string v8, "CDMA"

    const-string v9, "Ignore CDMA msgs since CDMA phone is inactive"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x1a

    if-ne v8, v9, :cond_0

    .line 1581
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleExitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 1806
    :cond_0
    :goto_0
    return-void

    .line 1588
    :cond_1
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 1803
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1590
    :sswitch_0
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x6

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 1592
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v9, 0x15

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 1596
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsCdmaGsmWorldPhone:Z

    if-eqz v8, :cond_2

    .line 1597
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v9, 0x9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 1598
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v9, 0xa

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    .line 1603
    :cond_2
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSyncNvService:Z

    if-nez v8, :cond_0

    .line 1604
    const-string v8, "CDMA"

    const-string v9, "add sync NV service"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    invoke-static {}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getInstance()Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    move-result-object v2

    .line 1607
    .local v2, mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    new-instance v3, Lcom/motorola/android/telephony/PhoneNVInfoProxy;

    invoke-direct {v3, v2}, Lcom/motorola/android/telephony/PhoneNVInfoProxy;-><init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)V

    .line 1608
    .local v3, nvproxy:Lcom/motorola/android/telephony/PhoneNVInfoProxy;
    iput-boolean v10, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSyncNvService:Z

    goto :goto_0

    .line 1616
    .end local v2           #mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;
    .end local v3           #nvproxy:Lcom/motorola/android/telephony/PhoneNVInfoProxy;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1618
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_0

    .line 1622
    const-string v8, "CDMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Baseband version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isDefault()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "gsm.version.baseband"

    move-object v9, v8

    :goto_1
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v9, v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v8, "gsm.version.baseband.2"

    move-object v9, v8

    goto :goto_1

    .line 1636
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1638
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_0

    .line 1641
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/String;

    move-object v7, v8

    check-cast v7, [Ljava/lang/String;

    .line 1644
    .local v7, respId:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v7, v8

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImei:Ljava/lang/String;

    .line 1645
    aget-object v8, v7, v10

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImeiSv:Ljava/lang/String;

    .line 1648
    const/4 v8, 0x2

    aget-object v8, v7, v8

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEsn:Ljava/lang/String;

    .line 1649
    const/4 v8, 0x3

    aget-object v8, v7, v8

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMeid:Ljava/lang/String;

    goto/16 :goto_0

    .line 1656
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v7           #respId:[Ljava/lang/String;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1658
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_0

    .line 1662
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImei:Ljava/lang/String;

    goto/16 :goto_0

    .line 1666
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1668
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_0

    .line 1672
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mImeiSv:Ljava/lang/String;

    goto/16 :goto_0

    .line 1678
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->checkNoSupportEmergencyCallbackMode()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1679
    iget-object v8, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v8, v11}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1681
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleEnterEmergencyCallbackMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1687
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleExitEmergencyCallbackMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1692
    :sswitch_7
    const-string v8, "CDMA"

    const-string v9, "Event EVENT_RUIM_RECORDS_LOADED Received"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider()Z

    .line 1695
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsNewArch:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccCard;->getAppType()Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v8, v9, :cond_0

    .line 1697
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setLanguageFromCsim()V

    goto/16 :goto_0

    .line 1712
    :sswitch_8
    const-string v8, "CDMA"

    const-string v9, "Event EVENT_RADIO_OFF_OR_NOT_AVAILABLE Received"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1717
    :sswitch_9
    const-string v8, "CDMA"

    const-string v9, "Event EVENT_RADIO_ON Received"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1722
    :sswitch_a
    const-string v8, "CDMA"

    const-string v9, "Event EVENT_SSN Received"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1727
    :sswitch_b
    const-string v8, "CDMA"

    const-string v9, "Event EVENT_REGISTERED_TO_NETWORK Received"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1733
    :sswitch_c
    const-string v8, "CDMA"

    const-string v9, "Event EVENT_RUIM_READY Received"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFile()V

    .line 1735
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1737
    const-string v8, "CDMA"

    const-string v9, "ERI read, notify registrants"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 1745
    :sswitch_d
    const-string v8, "CDMA"

    const-string v9, "Event EVENT_NV_READY Received"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isDefault()Z

    move-result v1

    .line 1749
    .local v1, isDefault:Z
    const-string v8, "ro.cdma.home.operator.alpha"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1750
    .local v5, operatorAlpha:Ljava/lang/String;
    if-eqz v1, :cond_5

    const-string v8, "gsm.sim.operator.alpha"

    :goto_2
    invoke-virtual {p0, v8, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    const-string v8, "ro.cdma.home.operator.numeric"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1755
    .local v6, operatorNumeric:Ljava/lang/String;
    if-eqz v1, :cond_6

    const-string v8, "gsm.sim.operator.numeric"

    :goto_3
    invoke-virtual {p0, v8, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setIsoCountryProperty(Ljava/lang/String;)V

    .line 1763
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    .line 1767
    invoke-static {p0, v6}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 1770
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1771
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->prepareEri()V

    goto/16 :goto_0

    .line 1750
    .end local v6           #operatorNumeric:Ljava/lang/String;
    :cond_5
    const-string v8, "gsm.sim.operator.alpha.2"

    goto :goto_2

    .line 1755
    .restart local v6       #operatorNumeric:Ljava/lang/String;
    :cond_6
    const-string v8, "gsm.sim.operator.numeric.2"

    goto :goto_3

    .line 1776
    .end local v1           #isDefault:Z
    .end local v5           #operatorAlpha:Ljava/lang/String;
    .end local v6           #operatorNumeric:Ljava/lang/String;
    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1777
    .restart local v0       #ar:Landroid/os/AsyncResult;
    const-class v8, Lcom/android/internal/telephony/IccException;

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1778
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 1779
    iput-object v11, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1781
    :cond_7
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    .line 1782
    .local v4, onComplete:Landroid/os/Message;
    if-eqz v4, :cond_0

    .line 1783
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v8, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1784
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1791
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v4           #onComplete:Landroid/os/Message;
    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1792
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->processIccRecordEvents(I)V

    goto/16 :goto_0

    .line 1798
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_10
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleNetworkScanCompleted(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1588
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_a
        0x5 -> :sswitch_9
        0x6 -> :sswitch_1
        0x8 -> :sswitch_8
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0x13 -> :sswitch_b
        0x14 -> :sswitch_e
        0x15 -> :sswitch_2
        0x16 -> :sswitch_7
        0x17 -> :sswitch_d
        0x19 -> :sswitch_5
        0x1a -> :sswitch_6
        0x1c -> :sswitch_f
        0x1d -> :sswitch_c
        0x190 -> :sswitch_10
    .end sparse-switch
.end method

.method public handleNBPCDAttmptResult(Z)V
    .locals 1
    .parameter "result"

    .prologue
    .line 2373
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pcdHandler:Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->handleNBPCDAttmptResult(Z)V

    .line 2374
    return-void
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 952
    invoke-static {p1, p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/cdma/CDMAPhone;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    move-result-object v0

    .line 954
    .local v0, mmi:Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    if-nez v0, :cond_0

    .line 955
    const-string v2, "CDMA"

    const-string v3, "Mmi is NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :goto_0
    return v1

    .line 957
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPukCommand()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 958
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 960
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->processCode()V

    .line 961
    const/4 v1, 0x1

    goto :goto_0

    .line 963
    :cond_1
    const-string v2, "CDMA"

    const-string v3, "Unrecognized mmi!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleTimerInEmergencyCallbackMode(I)V
    .locals 5
    .parameter "action"

    .prologue
    .line 1537
    packed-switch p1, :pswitch_data_0

    .line 1551
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTimerInEmergencyCallbackMode, unsupported action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :goto_0
    return-void

    .line 1539
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1540
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 1543
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ro.cdma.ecmexittimer"

    :goto_1
    const-wide/32 v3, 0x493e0

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1547
    .local v0, delayInMillis:J
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1548
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 1543
    .end local v0           #delayInMillis:J
    :cond_0
    const-string v2, "ro.cdma.ecmexittimer.2"

    goto :goto_1

    .line 1537
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected init(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 6
    .parameter "context"
    .parameter "notifier"

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 322
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 323
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    .line 324
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 325
    new-instance v1, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    .line 326
    new-instance v1, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimSmsInterfaceManager:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    .line 327
    new-instance v1, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 328
    new-instance v1, Lcom/android/internal/telephony/cdma/EriManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/internal/telephony/cdma/EriManager;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 329
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v5, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCcatService:Lcom/android/internal/telephony/cat/CatService;

    .line 332
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 334
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "CDMA"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 336
    new-instance v1, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/telephony/cdma/CdmaPhoneExt;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneExt:Lcom/motorola/android/internal/telephony/PhoneExt;

    .line 339
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->activateMe()V

    .line 340
    return-void
.end method

.method protected initSst()V
    .locals 2

    .prologue
    .line 603
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget v1, p0, Lcom/android/internal/telephony/PhoneBase;->mModemId:I

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(ILcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 604
    return-void
.end method

.method protected initSstIcc()V
    .locals 3

    .prologue
    .line 314
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 315
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/RuimRecords;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 316
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimCard;

    const-string v1, "CDMA"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/RuimCard;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 317
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/RuimFileHandler;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 318
    return-void
.end method

.method public isCtryNameExist(Ljava/lang/String;)Z
    .locals 1
    .parameter "countryName"

    .prologue
    .line 2333
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->supForIAD:Lcom/motorola/android/telephony/SUPForAssistedDialing;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->isCtryNameExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCurrentMccUnknown()Z
    .locals 1

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isCurrentMccUnknown()Z

    move-result v0

    return v0
.end method

.method public isEriFileLoaded()Z
    .locals 1

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    move-result v0

    return v0
.end method

.method isInCall()Z
    .locals 4

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getForegroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 807
    .local v1, foregroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getBackgroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 808
    .local v0, backgroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getRingingCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 810
    .local v2, ringingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isInEcm()Z
    .locals 1

    .prologue
    .line 1405
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->isInEmergencyCall()Z

    move-result v0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter "dialStr"

    .prologue
    .line 2099
    const/4 v1, 0x0

    .line 2100
    .local v1, isOtaSpNum:Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2101
    .local v0, dialableStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2102
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isIs683OtaSpDialStr(Ljava/lang/String;)Z

    move-result v1

    .line 2103
    if-nez v1, :cond_0

    .line 2104
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isCarrierOtaSpNum(Ljava/lang/String;)Z

    move-result v1

    .line 2107
    :cond_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOtaSpNumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    return v1
.end method

.method public isUnknownCountryExist()Z
    .locals 1

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->supForIAD:Lcom/motorola/android/telephony/SUPForAssistedDialing;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->isUnknownCountryExist()Z

    move-result v0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2272
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CDMAPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    return-void
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 2

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getOtasp()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "cn"

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1394
    return-void
.end method

.method notifyLocationChanged()V
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;)V

    .line 1385
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 1389
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 1390
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 1368
    return-void
.end method

.method notifyPreciseCallStateChanged()V
    .locals 0

    .prologue
    .line 1376
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 1377
    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "ss"

    .prologue
    .line 1380
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 1381
    return-void
.end method

.method notifySignalStrength()V
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    .line 764
    return-void
.end method

.method notifyUnknownConnection()V
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1398
    return-void
.end method

.method onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V
    .locals 3
    .parameter "mmi"

    .prologue
    const/4 v2, 0x0

    .line 978
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 981
    :cond_0
    return-void
.end method

.method public prepareEri()V
    .locals 1

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFile()V

    .line 2259
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2261
    const-string v0, "ERI read, notify registrants"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 2262
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2264
    :cond_0
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1054
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1030
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1563
    return-void
.end method

.method public registerForEriFileLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1852
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1853
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1854
    return-void
.end method

.method public registerForNvLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1843
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1844
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1845
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1038
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 793
    const-string v0, "CDMA"

    const-string v1, "method registerForSuppServiceNotification is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    return-void
.end method

.method public registerForUnknownMcc(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2288
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForUnknownMcc(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2289
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->rejectCall()V

    .line 831
    return-void
.end method

.method public removeReferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 636
    const-string v0, "removeReferences"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 637
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 638
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    .line 639
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimSmsInterfaceManager:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    .line 640
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    .line 641
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 642
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 643
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 644
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 645
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 646
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 647
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 648
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 649
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCcatService:Lcom/android/internal/telephony/cat/CatService;

    .line 650
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 652
    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mPhoneExt:Lcom/motorola/android/internal/telephony/PhoneExt;

    .line 654
    return-void
.end method

.method public removeUnknownCountry()V
    .locals 1

    .prologue
    .line 2318
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->supForIAD:Lcom/motorola/android/telephony/SUPForAssistedDialing;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->removeUnknownCountry()V

    .line 2319
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 2
    .parameter "network"
    .parameter "response"

    .prologue
    .line 944
    const-string v0, "CDMA"

    const-string v1, "selectNetworkManually: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 5
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "onComplete"

    .prologue
    .line 1159
    const/4 v0, 0x1

    .line 1160
    .local v0, check:Z
    const/4 v1, 0x0

    .local v1, itr:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1161
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1162
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendDtmf called with invalid character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    const/4 v0, 0x0

    .line 1175
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 1176
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1178
    :cond_1
    return-void

    .line 1160
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public sendDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 1128
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1129
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method sendEmergencyCallbackModeChange()V
    .locals 3

    .prologue
    .line 1410
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1413
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "phoneinECMState"

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1414
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1415
    const-string v1, "CDMA"

    const-string v2, "sendEmergencyCallbackModeChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    return-void

    .line 1410
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_2"

    goto :goto_0
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 2
    .parameter "ussdMessge"

    .prologue
    .line 1124
    const-string v0, "CDMA"

    const-string v1, "sendUssdResponse: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 1340
    const-string v0, "CDMA"

    const-string v1, "setCallForwardingOption: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 1017
    const-string v0, "CDMA"

    const-string v1, "method setCallWaiting is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 2
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 1902
    const-string v0, "CDMA"

    const-string v1, "[CDMAPhone] setCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1904
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataOnRoamingEnabled(Z)V

    .line 1026
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 984
    const-string v0, "CDMA"

    const-string v1, "setLine1Number: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "muted"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setMute(Z)V

    .line 712
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 816
    const-string v0, "CDMA"

    const-string v1, "method setNetworkSelectionModeAutomatic is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1045
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    .line 1046
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 948
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 949
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 1201
    const-string v0, "CDMA"

    const-string v1, "setOutgoingCallerIdDisplay: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .parameter "power"

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setRadioPower(Z)V

    .line 867
    return-void
.end method

.method public final setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "property"
    .parameter "value"

    .prologue
    .line 1865
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    .line 1226
    const-string v2, "CDMA"

    const-string v3, "enter setVoiceMailNumber"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vm_number_cdma"

    invoke-static {v2, v3, p2}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1230
    .local v1, result:Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1231
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1236
    :goto_0
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1238
    const-string v2, "CDMA"

    const-string v3, "leave setVoiceMailNumber"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    return-void

    .line 1233
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "set voicemail number failed."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1234
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public startDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 1146
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1147
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :goto_0
    return-void

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public startNetworkQuery(Landroid/os/Message;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 1189
    const-string v1, "CDMA"

    const-string v2, "startNetworkQuery in CDMA mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const/16 v1, 0x190

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1191
    .local v0, resp:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1193
    return-void
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 1156
    return-void
.end method

.method public stopNetworkQuery()V
    .locals 2

    .prologue
    .line 1196
    const-string v0, "CDMA"

    const-string v1, "stopNetworkQuery: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 836
    return-void
.end method

.method public switchToCdma()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 429
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsSwitchedToCdma:Z

    if-eqz v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 431
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    .line 432
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsSwitchedToCdma:Z

    .line 435
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->activate()V

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->switchToCdma()V

    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->switchToCdma()V

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->switchToCdma()V

    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->switchToCdma()V

    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->switchToCdma()V

    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->switchToCdma()V

    .line 448
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->activateMe()V

    goto :goto_0
.end method

.method public switchToGsm()V
    .locals 3

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsSwitchedToCdma:Z

    if-nez v0, :cond_0

    .line 492
    :goto_0
    return-void

    .line 454
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 455
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsSwitchedToCdma:Z

    .line 458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    .line 461
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->deactivateMe()V

    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->switchToGsm()V

    .line 465
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->switchToGsm()V

    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->switchToGsm()V

    .line 467
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->switchToGsm()V

    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 471
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->switchToGsm()V

    .line 472
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->switchToGsm()V

    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->dispose()V

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimSmsInterfaceManager:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->dispose()V

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V

    .line 481
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    if-eqz v0, :cond_1

    .line 483
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->exitEmergencyCallbackMode()V

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 488
    const-string v0, "CDMA"

    const-string v2, "UNEXPECTED; mWakeLock is held when switched out."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 491
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toAttmptNBPCD()Z
    .locals 1

    .prologue
    .line 2365
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->needNBPCDRetry:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1058
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 1034
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1567
    return-void
.end method

.method public unregisterForEriFileLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1858
    return-void
.end method

.method public unregisterForNvLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1849
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 1042
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 820
    const-string v0, "CDMA"

    const-string v1, "method unregisterForSuppServiceNotification is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return-void
.end method

.method public unregisterForUnknownMcc(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForUnknownMcc(Landroid/os/Handler;)V

    .line 2296
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1050
    return-void
.end method

.method updateCurrentCarrierInProvider()Z
    .locals 1

    .prologue
    .line 2254
    const/4 v0, 0x1

    return v0
.end method

.method updateCurrentCarrierInProvider(Ljava/lang/String;)Z
    .locals 5
    .parameter "operatorNumeric"

    .prologue
    .line 2228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2230
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "current"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2231
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2232
    .local v1, map:Landroid/content/ContentValues;
    const-string v3, "numeric"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCurrentCarrierInProvider from system: numeric="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    .line 2234
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2237
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2239
    const/4 v3, 0x1

    .line 2244
    .end local v1           #map:Landroid/content/ContentValues;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_0
    return v3

    .line 2240
    :catch_0
    move-exception v0

    .line 2241
    .local v0, e:Landroid/database/SQLException;
    const-string v3, "CDMA"

    const-string v4, "Can\'t store current operator"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2244
    .end local v0           #e:Landroid/database/SQLException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public updateIccAvailability(Lcom/android/internal/telephony/IccCard;)V
    .locals 4
    .parameter "iccCardApp"

    .prologue
    const/4 v3, 0x0

    .line 2515
    const-string v1, "CDMA"

    const-string v2, "updateIccAvailability"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    move-object v0, p1

    .line 2520
    .local v0, newIccCard:Lcom/android/internal/telephony/IccCard;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    if-eq v1, v0, :cond_2

    .line 2521
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    .line 2522
    const-string v1, "CDMA"

    const-string v2, "Removing stale CDMA Application."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_0

    .line 2524
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForRuimRecordEvents()V

    .line 2525
    iput-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 2526
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->updateRuimRecords(Lcom/android/internal/telephony/IccRecords;)V

    .line 2527
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimSmsInterfaceManager:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->updateRuimRecords(Lcom/android/internal/telephony/IccRecords;)V

    .line 2529
    :cond_0
    iput-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 2530
    iput-object v3, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 2532
    :cond_1
    if-eqz v0, :cond_2

    .line 2533
    const-string v1, "CDMA"

    const-string v2, "New CDMA application found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 2535
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getApplicationRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 2536
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 2537
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForRuimRecordEvents()V

    .line 2538
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->updateRuimRecords(Lcom/android/internal/telephony/IccRecords;)V

    .line 2539
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimSmsInterfaceManager:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->updateRuimRecords(Lcom/android/internal/telephony/IccRecords;)V

    .line 2541
    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-eqz v1, :cond_2

    .line 2542
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->activate()V

    .line 2547
    :cond_2
    return-void
.end method

.method updateMessageWaitingIndicator(II)V
    .locals 2
    .parameter "mwi"
    .parameter "vmPriority"

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    .line 1424
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/telephony/cdma/RuimRecords;->setVoiceMessageWaiting(III)V

    .line 1427
    :cond_0
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->enableSingleLocationUpdate()V

    .line 1022
    return-void
.end method
