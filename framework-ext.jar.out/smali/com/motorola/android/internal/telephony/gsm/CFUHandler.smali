.class public Lcom/motorola/android/internal/telephony/gsm/CFUHandler;
.super Landroid/os/Handler;
.source "CFUHandler.java"


# static fields
.field private static final CHECK_CFU_POWERON:Ljava/lang/String; = "check_cfu_poweron"

.field private static DEBUG:Z = false

.field private static final EVENT_GET_CFU:I = 0x64

.field private static final EVENT_ICC_ABSENT:I = 0x67

.field private static final EVENT_ICC_CHANGED:I = 0x66

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x65


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCheckCFUDone:Z

.field private mIccCard:Lcom/android/internal/telephony/IccCard;

.field private mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

.field private mIsNewArch:Z

.field private mIsSwitchedToCdma:Z

.field private mNeed2CheckCFU:Z

.field private mNoSim:Z

.field private mOwnerModemId:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mQueryCFUInProcess:Z

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 25
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
    sput-boolean v0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "ownerModemId"
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 24
    const-string v0, "GSM"

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->TAG:Ljava/lang/String;

    .line 29
    iput v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mState:I

    .line 30
    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mCheckCFUDone:Z

    .line 31
    iput-boolean v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNeed2CheckCFU:Z

    .line 32
    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mQueryCFUInProcess:Z

    .line 33
    iput-object v3, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    .line 34
    iput-object v3, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mOwnerModemId:I

    .line 36
    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIsNewArch:Z

    .line 37
    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIsSwitchedToCdma:Z

    .line 38
    iput-boolean v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNoSim:Z

    .line 47
    iput p1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mOwnerModemId:I

    .line 48
    iput-boolean v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIsNewArch:Z

    .line 49
    invoke-static {}, Lcom/motorola/android/internal/telephony/IccCardManager;->getInstance()Lcom/motorola/android/internal/telephony/IccCardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    .line 50
    invoke-direct {p0, p2}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->init(Lcom/android/internal/telephony/Phone;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 24
    const-string v0, "GSM"

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->TAG:Ljava/lang/String;

    .line 29
    iput v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mState:I

    .line 30
    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mCheckCFUDone:Z

    .line 31
    iput-boolean v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNeed2CheckCFU:Z

    .line 32
    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mQueryCFUInProcess:Z

    .line 33
    iput-object v3, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    .line 34
    iput-object v3, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mOwnerModemId:I

    .line 36
    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIsNewArch:Z

    .line 37
    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIsSwitchedToCdma:Z

    .line 38
    iput-boolean v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNoSim:Z

    .line 54
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 55
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->init(Lcom/android/internal/telephony/Phone;)V

    .line 56
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->activateMe()V

    .line 57
    return-void
.end method

.method public constructor <init>(ZZLcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "isCdmaGsmWorldPhone"
    .parameter "isSwitchedToCdma"
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 24
    const-string v0, "GSM"

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->TAG:Ljava/lang/String;

    .line 29
    iput v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mState:I

    .line 30
    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mCheckCFUDone:Z

    .line 31
    iput-boolean v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNeed2CheckCFU:Z

    .line 32
    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mQueryCFUInProcess:Z

    .line 33
    iput-object v3, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    .line 34
    iput-object v3, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mOwnerModemId:I

    .line 36
    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIsNewArch:Z

    .line 37
    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIsSwitchedToCdma:Z

    .line 38
    iput-boolean v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNoSim:Z

    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CdmaGsmWorldPhone has been deprecated"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCFU(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 107
    .local v0, newState:I
    if-nez v0, :cond_0

    iget v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mState:I

    if-eqz v1, :cond_0

    .line 109
    iput-boolean v3, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNoSim:Z

    .line 111
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNeed2CheckCFU:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mCheckCFUDone:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mQueryCFUInProcess:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    iget v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mState:I

    if-eqz v1, :cond_2

    .line 114
    sget-boolean v1, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "GSM"

    const-string v2, "CFUHandler: start query CFU"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mQueryCFUInProcess:Z

    .line 120
    :cond_2
    return-void
.end method

.method private init(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v0, 0x1

    .line 64
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 65
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "check_cfu_poweron"

    invoke-static {v1, v2, v0}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNeed2CheckCFU:Z

    .line 67
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onIccAbsent()V
    .locals 2

    .prologue
    .line 167
    sget-boolean v0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GSM"

    const-string v1, "CFUHandler: onIccAbsent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNoSim:Z

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mCheckCFUDone:Z

    .line 170
    return-void
.end method

.method private updateIccAvailability()V
    .locals 4

    .prologue
    .line 153
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    if-nez v1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    iget v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mOwnerModemId:I

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/motorola/android/internal/telephony/IccCardManager;->getApplication(II)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 160
    .local v0, newIccCard:Lcom/android/internal/telephony/IccCard;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIccCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->onIccAbsent()V

    .line 163
    :cond_1
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIccCard:Lcom/android/internal/telephony/IccCard;

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->activateMe()V

    .line 71
    return-void
.end method

.method public activateMe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNeed2CheckCFU:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0x65

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 80
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIsNewArch:Z

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    const/16 v1, 0x66

    invoke-virtual {v0, p0, v1, v2}, Lcom/motorola/android/internal/telephony/IccCardManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIccCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIccCard:Lcom/android/internal/telephony/IccCard;

    const/16 v1, 0x67

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->dispose()V

    .line 75
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNeed2CheckCFU:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 93
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIsNewArch:Z

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    invoke-virtual {v0, p0}, Lcom/motorola/android/internal/telephony/IccCardManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 101
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mState:I

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mCheckCFUDone:Z

    .line 103
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIccCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccCard;->unregisterForAbsent(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 125
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 127
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 128
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ServiceState;

    .line 129
    .local v1, serviceState:Landroid/telephony/ServiceState;
    invoke-direct {p0, v1}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->checkCFU(Landroid/telephony/ServiceState;)V

    .line 130
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    iput v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mState:I

    goto :goto_0

    .line 133
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #serviceState:Landroid/telephony/ServiceState;
    :pswitch_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mQueryCFUInProcess:Z

    .line 134
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 135
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 137
    sget-boolean v2, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "GSM"

    const-string v3, "CFUHandler: query CFU done"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    iget-boolean v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNoSim:Z

    if-nez v2, :cond_0

    .line 139
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mCheckCFUDone:Z

    goto :goto_0

    .line 143
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->updateIccAvailability()V

    goto :goto_0

    .line 146
    :pswitch_3
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->onIccAbsent()V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
