.class public Lcom/motorola/android/internal/telephony/PhoneModeService;
.super Ljava/lang/Object;
.source "PhoneModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/PhoneModeService$PhoneModeInfo;,
        Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;,
        Lcom/motorola/android/internal/telephony/PhoneModeService$MainThreadRequest;,
        Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;,
        Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;
    }
.end annotation


# static fields
.field private static final CMD_GET_SUBSCRIPTION_INFO:I = 0x64

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final EVENT_DEFAULT_ACTIVATE_COMPLETE:I = 0x1

.field private static final EVENT_DEFAULT_DEACTIVATE_COMPLETE:I = 0x3

.field private static final EVENT_SECONDARY_ACTIVATE_COMPLETE:I = 0x2

.field private static final EVENT_SECONDARY_DEACTIVATE_COMPLETE:I = 0x4

.field private static final EVENT_WAIT_TIMEOUT:I = 0x5

.field private static final ICC_SWITCH_DEVICE_FILE:Ljava/lang/String; = "/sys/class/radio/simswitch/command"

.field private static final ICC_SWITCH_OFF:[B = null

.field private static final ICC_SWITCH_ON:[B = null

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final MODE_CHANGE_AGAIN:I = 0x2

.field public static final MODE_CHANGE_ALREADY_DONE:I = 0x1

.field public static final MODE_CHANGE_INVALID:I = 0x0

.field public static final MODE_CHANGE_ONGOING:I = 0x3

.field private static final WAIT_TIMEOUT:I = 0x7d0

.field private static sInstance:Lcom/motorola/android/internal/telephony/PhoneModeService;

.field private static sLooper:Landroid/os/Looper;


# instance fields
.field private h:Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;

.field private mContext:Landroid/content/Context;

.field private mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

.field private mDesiredSlot1Type:I

.field private mDesiredSlot2Type:I

.field private mIsFirstModeChange:Z

.field private mIsModeChangeInProgress:Z

.field private mIsSwitched:Z

.field private mIsSwitching:Z

.field private mModeChangeDoneRegistrants:Landroid/os/RegistrantList;

.field private mModeInfoInSlot1:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

.field private mModeInfoInSlot2:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

.field private mOldIsSwitched:Z

.field private mPostModeChangeProcessing:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

.field private mSlot1Type:I

.field private mSlot2Type:I

.field private mStateMonitor:Ljava/lang/Object;

.field private mSwitchDoneRegistrants:Landroid/os/RegistrantList;

.field private mSwitchStartRegistrants:Landroid/os/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 97
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
    sput-boolean v0, Lcom/motorola/android/internal/telephony/PhoneModeService;->DBG:Z

    .line 112
    const-string v0, "on"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/motorola/android/internal/telephony/PhoneModeService;->ICC_SWITCH_ON:[B

    .line 113
    const-string v0, "off"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/motorola/android/internal/telephony/PhoneModeService;->ICC_SWITCH_OFF:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsFirstModeChange:Z

    .line 143
    new-instance v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    invoke-direct {v0, p0, v1}, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;-><init>(Lcom/motorola/android/internal/telephony/PhoneModeService;Lcom/motorola/android/internal/telephony/PhoneModeService$1;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    .line 144
    new-instance v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    invoke-direct {v0, p0, v1}, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;-><init>(Lcom/motorola/android/internal/telephony/PhoneModeService;Lcom/motorola/android/internal/telephony/PhoneModeService$1;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    .line 149
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeChangeDoneRegistrants:Landroid/os/RegistrantList;

    .line 150
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSwitchStartRegistrants:Landroid/os/RegistrantList;

    .line 151
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSwitchDoneRegistrants:Landroid/os/RegistrantList;

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    .line 157
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/internal/telephony/PhoneModeService;->sLooper:Landroid/os/Looper;

    .line 158
    new-instance v0, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;

    invoke-direct {v0, p0, p0}, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;-><init>(Lcom/motorola/android/internal/telephony/PhoneModeService;Lcom/motorola/android/internal/telephony/PhoneModeService;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->h:Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;

    .line 159
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->publish()V

    .line 160
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/android/internal/telephony/PhoneModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mPostModeChangeProcessing:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/motorola/android/internal/telephony/PhoneModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mOldIsSwitched:Z

    return v0
.end method

.method static synthetic access$102(Lcom/motorola/android/internal/telephony/PhoneModeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mPostModeChangeProcessing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/motorola/android/internal/telephony/PhoneModeService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->notifyModeChangeDone(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->notifySwitchStart()V

    return-void
.end method

.method static synthetic access$1302(Lcom/motorola/android/internal/telephony/PhoneModeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsSwitching:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/motorola/android/internal/telephony/PhoneModeService;)Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->h:Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;

    return-object v0
.end method

.method static synthetic access$1500(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/motorola/android/internal/telephony/PhoneModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->iccSwitch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/motorola/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->activatePhones()V

    return-void
.end method

.method static synthetic access$1800(Lcom/motorola/android/internal/telephony/PhoneModeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->onModeChangeDone()V

    return-void
.end method

.method static synthetic access$1900()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/motorola/android/internal/telephony/PhoneModeService;->sLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/internal/telephony/PhoneModeService;)Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/motorola/android/internal/telephony/PhoneModeService;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/internal/telephony/PhoneModeService;)Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSlot1Type:I

    return v0
.end method

.method static synthetic access$500(Lcom/motorola/android/internal/telephony/PhoneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSlot2Type:I

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/android/internal/telephony/PhoneModeService;Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->setRadioStateToDesired(Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/motorola/android/internal/telephony/PhoneModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsModeChangeInProgress:Z

    return v0
.end method

.method static synthetic access$802(Lcom/motorola/android/internal/telephony/PhoneModeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsModeChangeInProgress:Z

    return p1
.end method

.method static synthetic access$900(Lcom/motorola/android/internal/telephony/PhoneModeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsSwitched:Z

    return v0
.end method

.method private activatePhones()V
    .locals 3

    .prologue
    .line 905
    const-string v0, "Activate Phones..."

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 907
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->h:Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->activateIcc(Landroid/os/Message;)V

    .line 908
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->h:Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->activateIcc(Landroid/os/Message;)V

    .line 909
    return-void
.end method

.method private cardSupportsPhoneType(Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;I)Z
    .locals 6
    .parameter "modeInfo"
    .parameter "phoneType"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 699
    if-nez p2, :cond_1

    .line 717
    :cond_0
    :goto_0
    return v2

    .line 702
    :cond_1
    iget-object v4, p1, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->precacher:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-virtual {v4}, Lcom/motorola/android/internal/telephony/Precacher;->getSubscriptionInfo()Lcom/motorola/android/telephony/SubscriptionInfo;

    move-result-object v1

    .line 703
    .local v1, subscriptionInfo:Lcom/motorola/android/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Lcom/motorola/android/telephony/SubscriptionInfo;->getSubscriptionType()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 705
    if-eq p2, v5, :cond_0

    move v2, v3

    goto :goto_0

    .line 708
    :cond_2
    iget-object v0, v1, Lcom/motorola/android/telephony/SubscriptionInfo;->iccCardInfo:Lcom/motorola/android/telephony/IccCardInfo;

    .line 709
    .local v0, iccCardInfo:Lcom/motorola/android/telephony/IccCardInfo;
    if-ne p2, v2, :cond_3

    .line 710
    invoke-virtual {v0}, Lcom/motorola/android/telephony/IccCardInfo;->getGsmUmtsSubscriptionAppIndex()I

    move-result v4

    if-gez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 711
    :cond_3
    if-ne p2, v5, :cond_4

    .line 712
    invoke-virtual {v0}, Lcom/motorola/android/telephony/IccCardInfo;->getCdmaSubscriptionAppIndex()I

    move-result v4

    if-gez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 715
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cardSupportsPhoneType() Should not come here modem ID = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " phoneType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    move v2, v3

    .line 717
    goto :goto_0
.end method

.method public static getDefault()Lcom/motorola/android/internal/telephony/PhoneModeService;
    .locals 1

    .prologue
    .line 426
    sget-object v0, Lcom/motorola/android/internal/telephony/PhoneModeService;->sInstance:Lcom/motorola/android/internal/telephony/PhoneModeService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->isDmds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Lcom/motorola/android/internal/telephony/PhoneModeService;

    invoke-direct {v0}, Lcom/motorola/android/internal/telephony/PhoneModeService;-><init>()V

    sput-object v0, Lcom/motorola/android/internal/telephony/PhoneModeService;->sInstance:Lcom/motorola/android/internal/telephony/PhoneModeService;

    .line 429
    :cond_0
    sget-object v0, Lcom/motorola/android/internal/telephony/PhoneModeService;->sInstance:Lcom/motorola/android/internal/telephony/PhoneModeService;

    return-object v0
.end method

.method private iccSwitch()Z
    .locals 8

    .prologue
    .line 858
    const/4 v3, 0x0

    .line 861
    .local v3, retval:Z
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v6, "/sys/class/radio/simswitch/command"

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 862
    .local v2, fos:Ljava/io/FileOutputStream;
    const-string v6, "*** sim_switch opened ***"

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    :goto_0
    if-eqz v2, :cond_0

    .line 869
    :try_start_1
    const-string v6, "*** ICC SWITCH NOW ***"

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 870
    iget-boolean v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsSwitched:Z

    if-eqz v6, :cond_2

    sget-object v0, Lcom/motorola/android/internal/telephony/PhoneModeService;->ICC_SWITCH_OFF:[B

    .line 871
    .local v0, b:[B
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 872
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 873
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 874
    iget-boolean v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsSwitched:Z

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsSwitched:Z

    .line 876
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v4, v6, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->slotId:I

    .line 877
    .local v4, tmp:I
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v7, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v7, v7, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->slotId:I

    iput v7, v6, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->slotId:I

    .line 878
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iput v4, v6, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->slotId:I

    .line 879
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot1:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    .line 880
    .local v5, tmpModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot2:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iput-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot1:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    .line 881
    iput-object v5, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot2:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    .line 882
    const/4 v3, 0x1

    .line 883
    const-string v6, "*** ICC SWITCH DONE ***"

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 888
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 896
    .end local v0           #b:[B
    .end local v4           #tmp:I
    .end local v5           #tmpModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    :cond_0
    :goto_3
    if-eqz v3, :cond_1

    .line 897
    iget v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDesiredSlot1Type:I

    iput v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSlot1Type:I

    .line 898
    iget v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDesiredSlot2Type:I

    iput v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSlot2Type:I

    .line 901
    :cond_1
    return v3

    .line 863
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 864
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "*** fail to open sim_switch ***"

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 865
    const/4 v2, 0x0

    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 870
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_3
    sget-object v0, Lcom/motorola/android/internal/telephony/PhoneModeService;->ICC_SWITCH_ON:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 874
    .restart local v0       #b:[B
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 884
    .end local v0           #b:[B
    :catch_1
    move-exception v1

    .line 885
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_4
    const-string v6, "*** ICC SWITCH FAILED ***"

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 888
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 889
    :catch_2
    move-exception v1

    .line 890
    .local v1, e:Ljava/io/IOException;
    const-string v6, "*** CLOSE FAILED ***"

    :goto_4
    invoke-static {v6}, Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_3

    .line 887
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 888
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 887
    :goto_5
    throw v6

    .line 889
    :catch_3
    move-exception v1

    .line 890
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "*** CLOSE FAILED ***"

    invoke-static {v7}, Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_5

    .line 889
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #b:[B
    .restart local v4       #tmp:I
    .restart local v5       #tmpModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    :catch_4
    move-exception v1

    .line 890
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "*** CLOSE FAILED ***"

    goto :goto_4
.end method

.method private static final logd(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 1145
    sget-boolean v0, Lcom/motorola/android/internal/telephony/PhoneModeService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1146
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DMDS] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_0
    return-void
.end method

.method private static final loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1151
    sget-boolean v0, Lcom/motorola/android/internal/telephony/PhoneModeService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1152
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DMDS] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_0
    return-void
.end method

.method private modeChangeInternal(II)I
    .locals 12
    .parameter "slot1Type"
    .parameter "slot2Type"

    .prologue
    const/4 v11, -0x1

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 547
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "modeChangeInternal() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 548
    iget-object v9, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v9, v9, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v9, v9, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    if-nez v9, :cond_1

    .line 694
    :cond_0
    :goto_0
    return v7

    .line 552
    :cond_1
    iget-boolean v9, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsModeChangeInProgress:Z

    if-eqz v9, :cond_2

    move v7, v6

    .line 553
    goto :goto_0

    .line 557
    :cond_2
    if-eq p1, v6, :cond_3

    if-eq p1, v8, :cond_3

    if-nez p1, :cond_0

    :cond_3
    if-eq p2, v6, :cond_4

    if-eq p2, v8, :cond_4

    if-nez p2, :cond_0

    .line 565
    :cond_4
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot1:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v6, v6, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot1:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v6, v6, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    :goto_1
    iput v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSlot1Type:I

    .line 567
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot2:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v6, v6, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot2:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v6, v6, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    :goto_2
    iput v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSlot2Type:I

    .line 572
    iget v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSlot1Type:I

    if-ne p1, v6, :cond_7

    iget v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSlot2Type:I

    if-ne p2, v6, :cond_7

    iget-boolean v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsFirstModeChange:Z

    if-nez v6, :cond_7

    move v7, v8

    .line 573
    goto :goto_0

    :cond_5
    move v6, v7

    .line 565
    goto :goto_1

    :cond_6
    move v6, v7

    .line 567
    goto :goto_2

    .line 577
    :cond_7
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot1:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    invoke-direct {p0, v6, p1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->cardSupportsPhoneType(Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot2:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    invoke-direct {p0, v6, p2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->cardSupportsPhoneType(Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;I)Z

    move-result v6

    if-nez v6, :cond_9

    .line 579
    :cond_8
    const-string v6, "iccinfo not valid, cancel mode change"

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 584
    :cond_9
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot1:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    invoke-direct {p0, v6, p1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->modemSupportsPhoneType(Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;I)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot2:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    invoke-direct {p0, v6, p2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->modemSupportsPhoneType(Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 586
    const/4 v2, 0x0

    .line 598
    .local v2, needSwitch:Z
    :goto_3
    iget-boolean v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsFirstModeChange:Z

    if-eqz v6, :cond_13

    .line 601
    const-string v6, "gsm.default.modem.id"

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 605
    .local v1, defaultModemId:I
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v6, v6, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    if-ne v6, v1, :cond_d

    .line 606
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    .line 624
    .local v0, defaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    :goto_4
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    if-eq v0, v6, :cond_a

    .line 625
    const-string v6, "We exchange default / secondary phone here"

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 626
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    .line 627
    .local v5, tmp:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iput-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    .line 628
    iput-object v5, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    .line 630
    .end local v5           #tmp:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    :cond_a
    if-ne v1, v11, :cond_b

    .line 634
    const-string v6, "gsm.default.modem.id"

    iget v9, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :cond_b
    iget v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSlot1Type:I

    if-ne p1, v6, :cond_13

    iget v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSlot2Type:I

    if-ne p2, v6, :cond_13

    .line 641
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->onModeChangeDone()V

    move v7, v8

    .line 642
    goto/16 :goto_0

    .line 587
    .end local v0           #defaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    .end local v1           #defaultModemId:I
    .end local v2           #needSwitch:Z
    :cond_c
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot1:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    invoke-direct {p0, v6, p2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->modemSupportsPhoneType(Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot2:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    invoke-direct {p0, v6, p1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->modemSupportsPhoneType(Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 589
    const/4 v2, 0x1

    .restart local v2       #needSwitch:Z
    goto :goto_3

    .line 607
    .restart local v1       #defaultModemId:I
    :cond_d
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v6, v6, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    if-ne v6, v1, :cond_e

    .line 608
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    .restart local v0       #defaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    goto :goto_4

    .line 609
    .end local v0           #defaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    :cond_e
    if-nez p1, :cond_10

    if-eqz p2, :cond_10

    .line 610
    if-eqz v2, :cond_f

    .line 611
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot1:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    .restart local v0       #defaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    goto :goto_4

    .line 613
    .end local v0           #defaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    :cond_f
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot2:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    .restart local v0       #defaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    goto :goto_4

    .line 615
    .end local v0           #defaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    :cond_10
    if-eqz p1, :cond_12

    if-nez p2, :cond_12

    .line 616
    if-eqz v2, :cond_11

    .line 617
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot2:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    .restart local v0       #defaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    goto :goto_4

    .line 619
    .end local v0           #defaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    :cond_11
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot1:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    .restart local v0       #defaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    goto :goto_4

    .line 622
    .end local v0           #defaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    :cond_12
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    .restart local v0       #defaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    goto :goto_4

    .line 646
    .end local v0           #defaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;
    .end local v1           #defaultModemId:I
    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mode change *"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v2, :cond_14

    const-string v6, "WITH"

    :goto_5
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "* switch"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 647
    if-nez v2, :cond_19

    .line 648
    invoke-direct {p0, v7}, Lcom/motorola/android/internal/telephony/PhoneModeService;->notifyModeChangeStarted(Z)V

    .line 651
    iget v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSlot1Type:I

    if-ne p1, v6, :cond_15

    .line 652
    sget-object v3, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->RADIOSTATE_ASIS:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    .line 661
    .local v3, slot1State:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;
    :goto_6
    iget v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSlot2Type:I

    if-ne p2, v6, :cond_17

    .line 662
    sget-object v4, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->RADIOSTATE_ASIS:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    .line 670
    .local v4, slot2State:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;
    :goto_7
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot1:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    invoke-direct {p0, v6, v3}, Lcom/motorola/android/internal/telephony/PhoneModeService;->setRadioStateToDesired(Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;)V

    .line 671
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot2:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    invoke-direct {p0, v6, v4}, Lcom/motorola/android/internal/telephony/PhoneModeService;->setRadioStateToDesired(Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;)V

    .line 674
    iput p1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSlot1Type:I

    .line 675
    iput p2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSlot2Type:I

    .line 676
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->onModeChangeDone()V

    .line 694
    .end local v3           #slot1State:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;
    .end local v4           #slot2State:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;
    :goto_8
    const/4 v7, 0x3

    goto/16 :goto_0

    .line 646
    :cond_14
    const-string v6, "WITHOUT"

    goto :goto_5

    .line 654
    :cond_15
    if-nez p1, :cond_16

    .line 655
    sget-object v3, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->RADIOSTATE_OFF:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    .restart local v3       #slot1State:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;
    goto :goto_6

    .line 657
    .end local v3           #slot1State:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;
    :cond_16
    sget-object v3, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->RADIOSTATE_ON:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    .restart local v3       #slot1State:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;
    goto :goto_6

    .line 664
    :cond_17
    if-nez p2, :cond_18

    .line 665
    sget-object v4, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->RADIOSTATE_OFF:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    .restart local v4       #slot2State:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;
    goto :goto_7

    .line 667
    .end local v4           #slot2State:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;
    :cond_18
    sget-object v4, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->RADIOSTATE_ON:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    .restart local v4       #slot2State:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;
    goto :goto_7

    .line 678
    .end local v3           #slot1State:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;
    .end local v4           #slot2State:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;
    :cond_19
    invoke-direct {p0, v8}, Lcom/motorola/android/internal/telephony/PhoneModeService;->notifyModeChangeStarted(Z)V

    .line 679
    iput-boolean v8, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsModeChangeInProgress:Z

    .line 680
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v6, v6, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 681
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v6, v6, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/Phone;->enable(Z)V

    .line 683
    :cond_1a
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v6, v6, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 684
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v6, v6, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/Phone;->enable(Z)V

    .line 687
    :cond_1b
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->h:Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;

    iget-object v7, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->h:Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v7, v8, v9}, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 690
    iput p1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDesiredSlot1Type:I

    .line 691
    iput p2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDesiredSlot2Type:I

    goto :goto_8
.end method

.method private modemSupportsPhoneType(Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;I)Z
    .locals 5
    .parameter "modeInfo"
    .parameter "phoneType"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 722
    if-nez p2, :cond_1

    .line 731
    :cond_0
    :goto_0
    return v1

    .line 725
    :cond_1
    invoke-static {}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getInstance()Lcom/motorola/android/internal/telephony/ModemConfigManager;

    move-result-object v3

    iget v4, p1, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    invoke-virtual {v3, v4}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    move-result-object v0

    .line 726
    .local v0, modemInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    if-eqz v0, :cond_2

    .line 727
    invoke-virtual {v0, p2}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 729
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modemSupportsPhoneType() Should not come here modem ID = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " phoneType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    move v1, v2

    .line 731
    goto :goto_0
.end method

.method private notifyModeChangeDone(Z)V
    .locals 7
    .parameter "changed"

    .prologue
    .line 816
    const-string v1, "Notify mode change done..."

    invoke-static {v1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 818
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 819
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeChangeDoneRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 821
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    const-string v1, "DONE"

    invoke-direct {p0, v1, p1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->notifyModeChangeStatusChanged(Ljava/lang/String;Z)V

    .line 826
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.MODE_CHANGE_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 827
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "status"

    const-string v2, "DONE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    const-string v2, "SIMSWITCH"

    if-eqz p1, :cond_0

    const-string v1, "yes"

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 832
    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsSwitched:Z

    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mOldIsSwitched:Z

    .line 833
    return-void

    .line 821
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 829
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    const-string v1, "no"

    goto :goto_0
.end method

.method private notifyModeChangeStarted(Z)V
    .locals 2
    .parameter "needswitch"

    .prologue
    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyModeChangeStarted() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 812
    const-string v0, "STARTED"

    invoke-direct {p0, v0, p1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->notifyModeChangeStatusChanged(Ljava/lang/String;Z)V

    .line 813
    return-void
.end method

.method private notifyModeChangeStatusChanged(Ljava/lang/String;Z)V
    .locals 3
    .parameter "status"
    .parameter "needswitch"

    .prologue
    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyModeChangeStatusChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 837
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.MODE_CHANGE_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 838
    .local v0, statusIntent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 839
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    const-string v1, "needswitch"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 841
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 842
    return-void
.end method

.method private notifySwitchDone()V
    .locals 2

    .prologue
    .line 801
    const-string v0, "Notify switch done..."

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 803
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 804
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSwitchDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 805
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    const-string v0, "SWITCHED"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->notifyModeChangeStatusChanged(Ljava/lang/String;Z)V

    .line 808
    return-void

    .line 805
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private notifySwitchStart()V
    .locals 2

    .prologue
    .line 791
    const-string v0, "Notify switch start..."

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 793
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 794
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSwitchStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 795
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    const-string v0, "READY"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->notifyModeChangeStatusChanged(Ljava/lang/String;Z)V

    .line 798
    return-void

    .line 795
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onModeChangeDone()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 736
    iget-boolean v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsFirstModeChange:Z

    if-eqz v2, :cond_1

    .line 742
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v2, v2, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v3, v3, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    if-le v2, v3, :cond_0

    .line 744
    const-string v2, "gsm.current.phone-type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, oldPrimary:Ljava/lang/String;
    const-string v2, "gsm.current.phone-type.2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, oldSecondary:Ljava/lang/String;
    const-string v2, "gsm.current.phone-type"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v2, "gsm.current.phone-type.2"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v2, "gsm.version.baseband"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 753
    const-string v2, "gsm.version.baseband.2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 755
    const-string v2, "gsm.version.baseband"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v2, "gsm.version.baseband.2"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v2, "gsm.version.ril-impl"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 762
    const-string v2, "gsm.version.ril-impl.2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 764
    const-string v2, "gsm.version.ril-impl"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v2, "gsm.version.ril-impl.2"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v2, "ril.ecclist"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 770
    const-string v2, "ril.ecclist.2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 771
    const-string v2, "ril.ecclist"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v2, "ril.ecclist.2"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    .end local v0           #oldPrimary:Ljava/lang/String;
    .end local v1           #oldSecondary:Ljava/lang/String;
    :cond_0
    iput-boolean v4, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsFirstModeChange:Z

    .line 778
    :cond_1
    iget-boolean v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsSwitched:Z

    iget-boolean v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mOldIsSwitched:Z

    if-eq v2, v3, :cond_2

    .line 779
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mPostModeChangeProcessing:Z

    .line 780
    iput-boolean v4, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsSwitching:Z

    .line 783
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->notifySwitchDone()V

    .line 788
    :goto_0
    return-void

    .line 785
    :cond_2
    iput-boolean v4, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsModeChangeInProgress:Z

    .line 786
    invoke-direct {p0, v4}, Lcom/motorola/android/internal/telephony/PhoneModeService;->notifyModeChangeDone(Z)V

    goto :goto_0
.end method

.method private publish()V
    .locals 3

    .prologue
    .line 912
    new-instance v0, Lcom/motorola/android/internal/telephony/PhoneModeService$PhoneModeInfo;

    invoke-direct {v0, p0, p0}, Lcom/motorola/android/internal/telephony/PhoneModeService$PhoneModeInfo;-><init>(Lcom/motorola/android/internal/telephony/PhoneModeService;Lcom/motorola/android/internal/telephony/PhoneModeService;)V

    .line 913
    .local v0, modeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$PhoneModeInfo;
    const-string v1, "phonemodeinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 915
    const-string v1, "phonemodeinfo"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 917
    :cond_0
    return-void
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "command"
    .parameter "argument"

    .prologue
    .line 1045
    new-instance v1, Lcom/motorola/android/internal/telephony/PhoneModeService$MainThreadRequest;

    invoke-direct {v1, p2}, Lcom/motorola/android/internal/telephony/PhoneModeService$MainThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 1046
    .local v1, request:Lcom/motorola/android/internal/telephony/PhoneModeService$MainThreadRequest;
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->h:Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;

    invoke-virtual {v2, p1, v1}, Lcom/motorola/android/internal/telephony/PhoneModeService$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1047
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1050
    monitor-enter v1

    .line 1051
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/motorola/android/internal/telephony/PhoneModeService$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1053
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1054
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1058
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1059
    iget-object v2, v1, Lcom/motorola/android/internal/telephony/PhoneModeService$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 1058
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private setRadioStateToDesired(Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;)V
    .locals 2
    .parameter "modeInfo"
    .parameter "state"

    .prologue
    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRadioStateToDesired modem ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " slot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->slotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->logd(Ljava/lang/String;)V

    .line 847
    sget-object v0, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->RADIOSTATE_ON:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    if-ne p2, v0, :cond_1

    .line 848
    iget-object v0, p1, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->enable(Z)V

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    sget-object v0, Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;->RADIOSTATE_OFF:Lcom/motorola/android/internal/telephony/PhoneModeService$RadioState;

    if-ne p2, v0, :cond_0

    .line 850
    iget-object v0, p1, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->enable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getAllModemIds()[I
    .locals 3

    .prologue
    .line 198
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v2, v2, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v2, v2, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    aput v2, v0, v1

    return-object v0
.end method

.method public getAllModems()[I
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->getAllModemIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getDefaultModemId()I
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    return v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getDefaultPhoneType()I
    .locals 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 312
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    .line 313
    const/4 v1, 0x0

    .line 315
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    goto :goto_0
.end method

.method public getModemIdBySlot(I)I
    .locals 2
    .parameter "slot"

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsSwitching:Z

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mode change in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->slotId:I

    if-ne p1, v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    .line 225
    :goto_0
    return v0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->slotId:I

    if-ne p1, v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    goto :goto_0

    .line 224
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown slot ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    .line 225
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPhoneByModemId(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "modem"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    if-ne p1, v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 284
    :goto_0
    return-object v0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    if-ne p1, v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 284
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneBySlot(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "slot"

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->getModemIdBySlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->getPhoneByModemId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getSlotByModemId(I)I
    .locals 2
    .parameter "modemId"

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mIsSwitching:Z

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mode change in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    if-ne p1, v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->slotId:I

    .line 246
    :goto_0
    return v0

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    if-ne p1, v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->slotId:I

    goto :goto_0

    .line 245
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown modem ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    .line 246
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSubscriptionInfo(I)Lcom/motorola/android/telephony/SubscriptionInfo;
    .locals 2
    .parameter "modem"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    if-ne p1, v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->precacher:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/Precacher;->getSubscriptionInfo()Lcom/motorola/android/telephony/SubscriptionInfo;

    move-result-object v0

    .line 367
    :goto_0
    return-object v0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    if-ne p1, v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->precacher:Lcom/motorola/android/internal/telephony/Precacher;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/Precacher;->getSubscriptionInfo()Lcom/motorola/android/telephony/SubscriptionInfo;

    move-result-object v0

    goto :goto_0

    .line 366
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid modem ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    .line 367
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 509
    invoke-static {}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getInstance()Lcom/motorola/android/internal/telephony/ModemConfigManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemInfos()[Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    move-result-object v1

    .line 510
    .local v1, modems:[Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    array-length v0, v1

    .line 511
    .local v0, N:I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 512
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "It is NOT DMDS"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 515
    :cond_0
    aget-object v3, v1, v6

    iget v3, v3, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mModemId:I

    aget-object v4, v1, v5

    iget v4, v4, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mModemId:I

    if-ge v3, v4, :cond_1

    .line 516
    aget-object v2, v1, v5

    .line 517
    .local v2, tmp:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    aget-object v3, v1, v6

    aput-object v3, v1, v5

    .line 518
    aput-object v2, v1, v6

    .line 520
    .end local v2           #tmp:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    :cond_1
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    aget-object v4, v1, v5

    iget v4, v4, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mModemId:I

    iput v4, v3, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    .line 521
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    aget-object v4, v1, v5

    iget v4, v4, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mSlotId:I

    iput v4, v3, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->slotId:I

    .line 522
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    aget-object v4, v1, v5

    invoke-virtual {v4}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getPhoneProxy()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, v3, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 523
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    aget-object v4, v1, v6

    iget v4, v4, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mModemId:I

    iput v4, v3, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    .line 524
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    aget-object v4, v1, v6

    iget v4, v4, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mSlotId:I

    iput v4, v3, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->slotId:I

    .line 525
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    aget-object v4, v1, v6

    invoke-virtual {v4}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getPhoneProxy()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, v3, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 526
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v3, v3, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->slotId:I

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v4, v4, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->slotId:I

    if-ge v3, v4, :cond_2

    .line 527
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iput-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot1:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    .line 528
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iput-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot2:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    .line 536
    :goto_0
    const-string v3, "gsm.current.phone-type"

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v4, v4, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v3, "gsm.current.phone-type.2"

    iget-object v4, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v4, v4, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    new-instance v4, Lcom/motorola/android/internal/telephony/Precacher;

    iget-object v5, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v5, v5, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v6, v6, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    invoke-direct {v4, v5, v6}, Lcom/motorola/android/internal/telephony/Precacher;-><init>(Lcom/android/internal/telephony/Phone;I)V

    iput-object v4, v3, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->precacher:Lcom/motorola/android/internal/telephony/Precacher;

    .line 542
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    new-instance v4, Lcom/motorola/android/internal/telephony/Precacher;

    iget-object v5, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v5, v5, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v6, v6, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    invoke-direct {v4, v5, v6}, Lcom/motorola/android/internal/telephony/Precacher;-><init>(Lcom/android/internal/telephony/Phone;I)V

    iput-object v4, v3, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->precacher:Lcom/motorola/android/internal/telephony/Precacher;

    .line 544
    return-void

    .line 530
    :cond_2
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iput-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot1:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    .line 531
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iput-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeInfoInSlot2:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    goto :goto_0
.end method

.method public isDefaultModemId(I)Z
    .locals 1
    .parameter "modem"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultRil(Lcom/android/internal/telephony/CommandsInterface;)Z
    .locals 4
    .parameter "ci"

    .prologue
    const/4 v1, 0x1

    .line 344
    invoke-static {}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getInstance()Lcom/motorola/android/internal/telephony/ModemConfigManager;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v3, v3, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    invoke-virtual {v2, v3}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    move-result-object v0

    .line 346
    .local v0, modemInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    if-nez v0, :cond_1

    .line 347
    const-string v2, "Unable to get default RIL"

    invoke-static {v2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    .line 350
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getRIL()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    if-eq p1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFirstModemId(I)Z
    .locals 3
    .parameter "modem"

    .prologue
    .line 338
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v1, v1, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v2, v2, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v0, v1, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    .line 340
    .local v0, firstModemId:I
    :goto_0
    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 338
    .end local v0           #firstModemId:I
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v0, v1, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    goto :goto_0

    .line 340
    .restart local v0       #firstModemId:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isModemEnabled(I)Z
    .locals 2
    .parameter "modem"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    if-ne p1, v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mDefaultModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isEnabled()Z

    move-result v0

    .line 378
    :goto_0
    return v0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->modemId:I

    if-ne p1, v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSecondaryModeInfo:Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/PhoneModeService$ModeInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isEnabled()Z

    move-result v0

    goto :goto_0

    .line 377
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid modem ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->loge(Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public modeChange(II)I
    .locals 1
    .parameter "slot1Type"
    .parameter "slot2Type"

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->modeChangeInternal(II)I

    move-result v0

    return v0
.end method

.method public modeChangeByModemId(II)I
    .locals 1
    .parameter "modem1Type"
    .parameter "modem2Type"

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->modeChangeInternal(II)I

    move-result v0

    return v0
.end method

.method public registerIccSwitchDone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 412
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 414
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSwitchDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 416
    monitor-exit v2

    .line 417
    return-void

    .line 416
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerIccSwitchStart(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 398
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 400
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSwitchStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 402
    monitor-exit v2

    .line 403
    return-void

    .line 402
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerModeChangeComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 383
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 385
    .local v0, r:Landroid/os/Registrant;
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeChangeDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 387
    monitor-exit v2

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 433
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    .line 435
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 436
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.motorola.intent.action.ICC_PRECACHE_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 437
    const-string v1, "com.motorola.intent.action.ICC_PRECACHE_STATUS_CHANGED_2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    new-instance v1, Lcom/motorola/android/internal/telephony/PhoneModeService$1;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/telephony/PhoneModeService$1;-><init>(Lcom/motorola/android/internal/telephony/PhoneModeService;)V

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 504
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 505
    return-void
.end method

.method public unregisterIccSwitchDone(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 420
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSwitchDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 422
    monitor-exit v1

    .line 423
    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterIccSwitchStart(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 406
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mSwitchStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 408
    monitor-exit v1

    .line 409
    return-void

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterModeChangeComplete(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 392
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/PhoneModeService;->mModeChangeDoneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 394
    monitor-exit v1

    .line 395
    return-void

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
