.class public final Lcom/android/internal/telephony/cdma/RuimRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "RuimRecords.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_DONE:I = 0xa

.field private static final EVENT_GET_CSIM_CDMAHOME_DONE:I = 0x2d

.field private static final EVENT_GET_CSIM_EPRL_DONE:I = 0x2e

.field private static final EVENT_GET_CSIM_EUIMID_DONE:I = 0x2f

.field private static final EVENT_GET_CSIM_IMSIM_DONE:I = 0x2c

.field private static final EVENT_GET_CSIM_MDN_DONE:I = 0x2b

.field private static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x4

.field private static final EVENT_GET_EF_LI_DONE:I = 0x2a

.field private static final EVENT_GET_EF_PL_DONE:I = 0x29

.field private static final EVENT_GET_ICCID_DONE:I = 0x5

.field private static final EVENT_GET_IMSIM_DONE:I = 0x21

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_IMSI_FROM_EF_DONE:I = 0x30

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPN_DONE:I = 0xd

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_OTA_PROVISION_STATUS_CHANGE:I = 0x20

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_RUIM_READY:I = 0x1

.field private static final EVENT_RUIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_RUIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field static final SPN_RULE_SHOW_PLMN:I = 0x2

.field static final SPN_RULE_SHOW_SPN:I = 0x1


# instance fields
.field private mEFli:[B

.field private mEFpl:[B

.field private mHomeNetworkId:Ljava/lang/String;

.field private mHomeSystemId:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mImsi_m:Ljava/lang/String;

.field private mIsFeature33531Enabled:Z

.field private mMin2Min1:Ljava/lang/String;

.field private mMyMobileNumber:Ljava/lang/String;

.field private mPrlVersion:Ljava/lang/String;

.field private mSfEuimid:Ljava/lang/String;

.field private m_ota_commited:Z

.field protected smsCache:Lcom/android/internal/telephony/SmsRecordCache;

.field spnCharEncoding:I

.field spnLanguage:I

.field private voicemailPriority:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .parameter "parent"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v3, 0x0

    .line 212
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 93
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->m_ota_commited:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->voicemailPriority:I

    .line 173
    const-string v0, "ro.mot.fid.33531.keylock_ecm"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIsFeature33531Enabled:Z

    .line 214
    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const-string v2, "CDMA"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/IccFileHandler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 216
    new-instance v0, Lcom/android/internal/telephony/SmsRecordCache;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsRecordCache;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->smsCache:Lcom/android/internal/telephony/SmsRecordCache;

    .line 218
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 221
    iput v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 222
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 3
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 93
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->m_ota_commited:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->voicemailPriority:I

    .line 173
    const-string v0, "ro.mot.fid.33531.keylock_ecm"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIsFeature33531Enabled:Z

    .line 180
    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 182
    new-instance v0, Lcom/android/internal/telephony/SmsRecordCache;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsRecordCache;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->smsCache:Lcom/android/internal/telephony/SmsRecordCache;

    .line 184
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 187
    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 189
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->activateMe()V

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRadioOffOrNotAvailable()V

    .line 192
    return-void
.end method

.method constructor <init>(ZZLcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 3
    .parameter "isCdmaGsmWorldPhone"
    .parameter "isSwitchedToCdma"
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    .line 247
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 93
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->m_ota_commited:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->voicemailPriority:I

    .line 173
    const-string v0, "ro.mot.fid.33531.keylock_ecm"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIsFeature33531Enabled:Z

    .line 248
    if-nez p1, :cond_0

    .line 249
    const-string v0, "CDMA"

    const-string v1, "SIMRecords, this shouldn\'t be called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_0
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->mIsCdmaGsmWorldPhone:Z

    .line 253
    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 254
    new-instance v0, Lcom/android/internal/telephony/SmsRecordCache;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsRecordCache;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->smsCache:Lcom/android/internal/telephony/SmsRecordCache;

    .line 256
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 259
    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 260
    if-eqz p2, :cond_1

    .line 261
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->mIsSwitchedToCdma:Z

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->switchToCdma()V

    .line 268
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRadioOffOrNotAvailable()V

    goto :goto_0

    .line 264
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->mIsSwitchedToCdma:Z

    goto :goto_1
.end method

.method private activateMe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 204
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIsFeature33531Enabled:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x20

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 209
    :cond_0
    return-void
.end method

.method private adjstMinDigits(I)I
    .locals 1
    .parameter "digits"

    .prologue
    .line 1349
    add-int/lit8 p1, p1, 0x6f

    .line 1350
    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, -0xa

    .line 1351
    :cond_0
    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1

    add-int/lit8 p1, p1, -0x64

    .line 1352
    :cond_1
    div-int/lit8 v0, p1, 0x64

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_2

    add-int/lit16 p1, p1, -0x3e8

    .line 1353
    :cond_2
    return p1
.end method

.method private fetchRuimRecords()V
    .locals 7

    .prologue
    const/16 v6, 0x6f41

    const/16 v5, 0x6f22

    const/16 v4, 0xd

    const/4 v3, 0x1

    .line 1030
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 1032
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RuimRecords:fetchRuimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x2fe2

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1037
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1043
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Ljava/lang/String;Landroid/os/Message;)V

    .line 1046
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1049
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->mIsNewArch:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getAppType()Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v0, v1, :cond_1

    .line 1050
    const-string v0, "CDMA"

    const-string v1, "[CsimRecords] fetch for Csim Special Records "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x2f05

    const/16 v2, 0x29

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1053
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1055
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f3a

    const/16 v2, 0x2a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1056
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1058
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1059
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1062
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x21

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1063
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1069
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f44

    const/16 v2, 0x2b

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1070
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1072
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1073
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1075
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f28

    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1077
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1079
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f5a

    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1080
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1082
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f74

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1083
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 1093
    :goto_1
    return-void

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getAid()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1088
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1089
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_1
.end method

.method private getServicePhone()Lcom/android/internal/telephony/Phone;
    .locals 6

    .prologue
    .line 1204
    iget-object v4, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getCard()Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/android/internal/telephony/IccPhysicalCard;->getUniqueSlotId()I

    move-result v3

    .line 1205
    .local v3, slotId:I
    invoke-static {}, Lcom/motorola/android/internal/telephony/IccCardManager;->getInstance()Lcom/motorola/android/internal/telephony/IccCardManager;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v5}, Lcom/motorola/android/internal/telephony/IccCardManager;->getServiceModemId(II)I

    move-result v1

    .line 1207
    .local v1, serviceModemId:I
    invoke-static {}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getInstance()Lcom/motorola/android/internal/telephony/ModemConfigManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    move-result-object v0

    .line 1208
    .local v0, modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1209
    .local v2, servicePhone:Lcom/android/internal/telephony/Phone;
    if-nez v2, :cond_0

    .line 1210
    const-string v4, "CDMA"

    const-string v5, "service phone is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_0
    return-object v2
.end method

.method private handleRuimRefresh([I)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1217
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 1218
    :cond_0
    const-string v3, "handleRuimRefresh without input"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1267
    :goto_0
    return-void

    .line 1222
    :cond_1
    aget v3, p1, v5

    packed-switch v3, :pswitch_data_0

    .line 1264
    const-string v3, "handleRuimRefresh with unknown operation"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1224
    :pswitch_0
    const-string v3, "handleRuimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1225
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1226
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    goto :goto_0

    .line 1229
    :pswitch_1
    const-string v3, "handleRuimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1232
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 1233
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    goto :goto_0

    .line 1236
    :pswitch_2
    const-string v3, "handleRuimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1239
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1244
    .local v1, needReboot:Z
    :goto_1
    if-eqz v1, :cond_2

    .line 1245
    const-string v3, "Reboot phone for SIM_REFRESH_RESET"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1246
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 1248
    .local v2, pm:Landroid/os/PowerManager;
    invoke-virtual {v2, v6}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_0

    .line 1241
    .end local v1           #needReboot:Z
    .end local v2           #pm:Landroid/os/PowerManager;
    :catch_0
    move-exception v0

    .line 1242
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1       #needReboot:Z
    goto :goto_1

    .line 1252
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1260
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    goto :goto_0

    .line 1222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleSms(I[B)V
    .locals 5
    .parameter "index"
    .parameter "ba"

    .prologue
    .line 900
    const/4 v3, 0x0

    aget-byte v3, p2, v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 901
    array-length v1, p2

    .line 905
    .local v1, n:I
    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/SmsRawData;

    invoke-direct {v2, p2}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    .line 906
    .local v2, smsData:Lcom/android/internal/telephony/SmsRawData;
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->smsCache:Lcom/android/internal/telephony/SmsRecordCache;

    iget-object v3, v3, Lcom/android/internal/telephony/SmsRecordCache;->mOldSmsDataList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 907
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->smsCache:Lcom/android/internal/telephony/SmsRecordCache;

    iget-object v3, v3, Lcom/android/internal/telephony/SmsRecordCache;->mOldSmsDataList:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 910
    :cond_0
    invoke-static {p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 913
    .local v0, message:Lcom/android/internal/telephony/cdma/SmsMessage;
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v3, :cond_2

    .line 914
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mSMS:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    .line 923
    .end local v0           #message:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v1           #n:I
    .end local v2           #smsData:Lcom/android/internal/telephony/SmsRawData;
    :cond_1
    :goto_0
    return-void

    .line 916
    .restart local v0       #message:Lcom/android/internal/telephony/cdma/SmsMessage;
    .restart local v1       #n:I
    .restart local v2       #smsData:Lcom/android/internal/telephony/SmsRawData;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3, v0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 920
    .end local v0           #message:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v2           #smsData:Lcom/android/internal/telephony/SmsRawData;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 2
    .parameter "plmn"

    .prologue
    const/4 v0, 0x0

    .line 1135
    if-nez p1, :cond_1

    .line 1140
    :cond_0
    :goto_0
    return v0

    .line 1137
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1138
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyMessageWaitingIndicator()V
    .locals 2

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyMessageWaitingIndicator()V

    .line 1171
    :goto_0
    return-void

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onGetCSimCdmaHomeDone(Landroid/os/AsyncResult;)V
    .locals 9
    .parameter "ar"

    .prologue
    .line 1358
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 1359
    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CSIM_CDMAHOME data size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1380
    :goto_0
    return-void

    .line 1363
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1364
    .local v6, sidBuf:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1366
    .local v4, nidBuf:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1367
    .local v0, data:[B
    array-length v7, v0

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    .line 1368
    const/4 v7, 0x1

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    const/4 v8, 0x0

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    or-int v5, v7, v8

    .line 1369
    .local v5, sid:I
    const/4 v7, 0x3

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    const/4 v8, 0x2

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    or-int v3, v7, v8

    .line 1370
    .local v3, nid:I
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1375
    .end local v0           #data:[B
    .end local v3           #nid:I
    .end local v5           #sid:I
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1376
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1378
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    .line 1379
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    goto :goto_0
.end method

.method private onGetCSimEprlDone(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x3

    .line 1385
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 1386
    .local v0, data:[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSIM_EPRL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1389
    array-length v2, v0

    if-le v2, v4, :cond_0

    .line 1390
    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 1391
    .local v1, prlId:I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 1393
    .end local v1           #prlId:I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSIM PRL version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1394
    return-void
.end method

.method private onGetCSimImsimDone(Landroid/os/AsyncResult;)V
    .locals 13
    .parameter "ar"

    .prologue
    const/4 v11, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1318
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    move-object v1, v7

    check-cast v1, [B

    .line 1319
    .local v1, data:[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CSIM_IMSIM="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1322
    const/4 v7, 0x7

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0x80

    const/16 v10, 0x80

    if-ne v7, v10, :cond_1

    move v5, v8

    .line 1324
    .local v5, provisioned:Z
    :goto_0
    if-eqz v5, :cond_2

    .line 1325
    const/4 v7, 0x2

    aget-byte v7, v1, v7

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x8

    aget-byte v10, v1, v8

    and-int/lit16 v10, v10, 0xff

    add-int v3, v7, v10

    .line 1326
    .local v3, first3digits:I
    const/4 v7, 0x5

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    aget-byte v10, v1, v11

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v7, v10

    shr-int/lit8 v6, v7, 0x6

    .line 1327
    .local v6, second3digits:I
    aget-byte v7, v1, v11

    shr-int/lit8 v7, v7, 0x2

    and-int/lit8 v2, v7, 0xf

    .line 1328
    .local v2, digit7:I
    const/16 v7, 0x9

    if-le v2, v7, :cond_0

    const/4 v2, 0x0

    .line 1329
    :cond_0
    aget-byte v7, v1, v11

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x8

    const/4 v10, 0x3

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    or-int v4, v7, v10

    .line 1330
    .local v4, last3digits:I
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->adjstMinDigits(I)I

    move-result v3

    .line 1331
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/RuimRecords;->adjstMinDigits(I)I

    move-result v6

    .line 1332
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->adjstMinDigits(I)I

    move-result v4

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1335
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v7, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v7, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%d"

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v7, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%03d"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-static {v7, v10, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "min present="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    .line 1345
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #digit7:I
    .end local v3           #first3digits:I
    .end local v4           #last3digits:I
    .end local v6           #second3digits:I
    :goto_1
    return-void

    .end local v5           #provisioned:Z
    :cond_1
    move v5, v9

    .line 1322
    goto/16 :goto_0

    .line 1343
    .restart local v5       #provisioned:Z
    :cond_2
    const-string v7, "min not present"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onGetCSimMdnDone(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 1310
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 1311
    .local v0, data:[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSIM_MDN="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1312
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    and-int/lit8 v1, v2, 0xf

    .line 1313
    .local v1, mdnDigitsNum:I
    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/internal/telephony/IccUtils;->cdmaBcdToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    .line 1314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSIM MDN="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1315
    return-void
.end method

.method private onGetCsimEuimidDone(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 1398
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 1400
    .local v0, data:[B
    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSfEuimid:Ljava/lang/String;

    .line 1402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSIM SF_EUIMID is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSfEuimid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1403
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 226
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->activateMe()V

    .line 229
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRadioOffOrNotAvailable()V

    .line 231
    iput-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 234
    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 236
    return-void
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRadioOffOrNotAvailable()V

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->dispose()V

    .line 242
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRUIMReady(Landroid/os/Handler;)V

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 297
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIsFeature33531Enabled:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 301
    :cond_0
    return-void
.end method

.method public fetchImsi(Landroid/os/Message;)V
    .locals 3
    .parameter "onComplete"

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f22

    const/16 v2, 0x30

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1434
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 305
    const-string v0, "CDMA"

    const-string v1, "RuimRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method public getAppOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 1
    .parameter "plmn"

    .prologue
    .line 1106
    const-string v0, "00000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "11111"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "42113"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    :cond_0
    const/4 v0, 0x1

    .line 1109
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/RuimRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getDisplayRule(Z)I

    move-result v0

    goto :goto_0
.end method

.method public getDisplayRule(Z)I
    .locals 3
    .parameter "onHomeNetwork"

    .prologue
    .line 1118
    const/4 v0, 0x2

    .line 1120
    .local v0, rule:I
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->spnDisplayCondition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->spnDisplayCondition:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1125
    const/4 v0, 0x1

    .line 1128
    :cond_0
    return v0
.end method

.method public getEuimid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mSfEuimid:Ljava/lang/String;

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getIMSI_M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi_m:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageIndication()[B
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B

    return-object v0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 411
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 412
    const/4 v1, 0x0

    .line 425
    :goto_0
    return-object v1

    .line 415
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 424
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 425
    .local v0, mcc:I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPreferredLanguage()[B
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mEFpl:[B

    return-object v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRUIMOperatorAlpha()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsCache()Lcom/android/internal/telephony/SmsRecordCache;
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->smsCache:Lcom/android/internal/telephony/SmsRecordCache;

    return-object v0
.end method

.method public getVoicemailPriority()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->voicemailPriority:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .parameter "msg"

    .prologue
    .line 452
    const/4 v14, 0x0

    .line 455
    .local v14, isRecordLoadResponse:Z
    const/4 v13, 0x0

    .line 457
    .local v13, isPreloadMsg:Z
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    sparse-switch v21, :sswitch_data_0

    .line 890
    :cond_0
    :goto_0
    :sswitch_0
    if-eqz v14, :cond_1

    .line 891
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRecordLoaded()V

    .line 894
    :cond_1
    return-void

    .line 459
    :sswitch_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRuimReady()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 885
    :catch_0
    move-exception v7

    .line 887
    .local v7, exc:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v21, "CDMA"

    const-string v22, "Exception parsing RUIM record"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 890
    if-eqz v14, :cond_1

    goto :goto_1

    .line 463
    .end local v7           #exc:Ljava/lang/RuntimeException;
    :sswitch_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRadioOffOrNotAvailable()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 890
    :catchall_0
    move-exception v21

    if-eqz v14, :cond_2

    .line 891
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRecordLoaded()V

    .line 890
    :cond_2
    throw v21

    .line 467
    :sswitch_3
    :try_start_4
    const-string v21, "CDMA"

    const-string v22, "Event EVENT_GET_DEVICE_IDENTITY_DONE Received"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 473
    :sswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccRecords;->mIsNewArch:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/IccCard;->getAppType()Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 474
    const/4 v14, 0x1

    .line 477
    :cond_3
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 478
    .local v4, ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [Ljava/lang/String;

    move-object/from16 v0, v21

    check-cast v0, [Ljava/lang/String;

    move-object v15, v0

    .line 479
    .local v15, localTemp:[Ljava/lang/String;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 483
    const/16 v21, 0x0

    aget-object v21, v15, v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    .line 484
    const/16 v21, 0x3

    aget-object v21, v15, v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    .line 485
    const/16 v21, 0x4

    aget-object v21, v15, v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 487
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MDN: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " MIN: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 493
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v15           #localTemp:[Ljava/lang/String;
    :sswitch_5
    const/4 v13, 0x1

    .line 495
    :sswitch_6
    if-nez v13, :cond_4

    .line 496
    const/4 v14, 0x1

    .line 500
    :cond_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 501
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [B

    move-object/from16 v0, v21

    check-cast v0, [B

    move-object v5, v0

    .line 503
    .local v5, data:[B
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 507
    const/16 v21, 0x0

    array-length v0, v5

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v5, v0, v1}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    .line 509
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "iccid: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 515
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v5           #data:[B
    :sswitch_7
    const-string v21, "CDMA"

    const-string v22, "[CsimRecords] EF_GET_EF_PL_DONE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v14, 0x1

    .line 519
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 520
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [B

    move-object/from16 v0, v21

    check-cast v0, [B

    move-object v5, v0

    .line 522
    .restart local v5       #data:[B
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 523
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[CsimRecords] "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 527
    :cond_5
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mEFpl:[B

    .line 529
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[CsimRecords] EF_PL="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mEFpl:[B

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 534
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v5           #data:[B
    :sswitch_8
    const-string v21, "CDMA"

    const-string v22, "[CsimRecords] EF_GET_EF_LI_DONE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v14, 0x1

    .line 538
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 539
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [B

    move-object/from16 v0, v21

    check-cast v0, [B

    move-object v5, v0

    .line 541
    .restart local v5       #data:[B
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 542
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[CsimRecords] "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 547
    :cond_6
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    array-length v0, v5

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_7

    .line 548
    add-int/lit8 v21, v8, 0x1

    aget-byte v21, v5, v21

    packed-switch v21, :pswitch_data_0

    .line 556
    const/16 v21, 0x20

    aput-byte v21, v5, v8

    add-int/lit8 v21, v8, 0x1

    const/16 v22, 0x20

    aput-byte v22, v5, v21

    .line 547
    :goto_3
    add-int/lit8 v8, v8, 0x2

    goto :goto_2

    .line 549
    :pswitch_0
    const/16 v21, 0x65

    aput-byte v21, v5, v8

    add-int/lit8 v21, v8, 0x1

    const/16 v22, 0x6e

    aput-byte v22, v5, v21

    goto :goto_3

    .line 550
    :pswitch_1
    const/16 v21, 0x66

    aput-byte v21, v5, v8

    add-int/lit8 v21, v8, 0x1

    const/16 v22, 0x72

    aput-byte v22, v5, v21

    goto :goto_3

    .line 551
    :pswitch_2
    const/16 v21, 0x65

    aput-byte v21, v5, v8

    add-int/lit8 v21, v8, 0x1

    const/16 v22, 0x73

    aput-byte v22, v5, v21

    goto :goto_3

    .line 552
    :pswitch_3
    const/16 v21, 0x6a

    aput-byte v21, v5, v8

    add-int/lit8 v21, v8, 0x1

    const/16 v22, 0x61

    aput-byte v22, v5, v21

    goto :goto_3

    .line 553
    :pswitch_4
    const/16 v21, 0x6b

    aput-byte v21, v5, v8

    add-int/lit8 v21, v8, 0x1

    const/16 v22, 0x6f

    aput-byte v22, v5, v21

    goto :goto_3

    .line 554
    :pswitch_5
    const/16 v21, 0x7a

    aput-byte v21, v5, v8

    add-int/lit8 v21, v8, 0x1

    const/16 v22, 0x68

    aput-byte v22, v5, v21

    goto :goto_3

    .line 555
    :pswitch_6
    const/16 v21, 0x68

    aput-byte v21, v5, v8

    add-int/lit8 v21, v8, 0x1

    const/16 v22, 0x65

    aput-byte v22, v5, v21

    goto :goto_3

    .line 560
    :cond_7
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B

    .line 562
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[CsimRecords] EF_LI="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mEFli:[B

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 570
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v5           #data:[B
    .end local v8           #i:I
    :sswitch_9
    const/4 v13, 0x1

    .line 572
    :sswitch_a
    const-string v21, "EVENT_GET_IMSI_DONE..."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 573
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 574
    .restart local v4       #ar:Landroid/os/AsyncResult;
    if-nez v13, :cond_8

    .line 575
    const/4 v14, 0x1

    .line 579
    :cond_8
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    .line 580
    const-string v21, "CDMA"

    const-string v22, "[RuimRecords]1st IMSI load failed!"

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 584
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 585
    .local v17, oldImsi:Ljava/lang/String;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    .line 586
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "1st IMSI "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/RuimRecords;->isValidImsi(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 589
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "invalid 1st IMSI "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    .line 592
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v21

    if-nez v21, :cond_b

    .line 599
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x3

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 600
    .local v16, mcc:I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 609
    .end local v16           #mcc:I
    :cond_b
    :goto_4
    if-nez v13, :cond_0

    .line 611
    :try_start_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move/from16 v21, v0

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    .line 621
    .local v19, servicePhone:Lcom/android/internal/telephony/Phone;
    :goto_5
    check-cast v19, Lcom/android/internal/telephony/PhoneBase;

    .end local v19           #servicePhone:Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x3

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 628
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v21, v0

    const-string v22, "IMSI"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 601
    :catch_1
    move-exception v6

    .line 602
    .local v6, e:Ljava/lang/NumberFormatException;
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 603
    const-string v21, "CDMA"

    const-string v22, "[RuimRecords]: Corrupt IMSI!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 619
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getServicePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    .restart local v19       #servicePhone:Lcom/android/internal/telephony/Phone;
    goto :goto_5

    .line 632
    .end local v19           #servicePhone:Lcom/android/internal/telephony/Phone;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    move-object/from16 v21, v0

    const-string v22, "IMSI"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 641
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v17           #oldImsi:Ljava/lang/String;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 642
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 643
    const-string v21, "CDMA"

    const-string v22, "RuimRecords update failed"

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 653
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_c
    const/4 v14, 0x0

    .line 655
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 657
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [I

    move-object/from16 v0, v21

    check-cast v0, [I

    move-object v11, v0

    .line 659
    .local v11, index:[I
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_f

    array-length v0, v11

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    .line 660
    :cond_f
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[RuimRecords] Error on RuimRecords with exp "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " length "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    array-length v0, v11

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 663
    :cond_10
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "READ EF_SMS RECORD index="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    aget v23, v11, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x6f3c

    const/16 v23, 0x0

    aget v23, v11, v23

    const/16 v24, 0x16

    const/16 v25, 0x0

    aget v25, v11, v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v21 .. v24}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 672
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v11           #index:[I
    :sswitch_d
    const-string v21, "CDMA"

    const-string v22, "EVENT_GET_SMS_DONE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v14, 0x0

    .line 674
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 675
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_11

    .line 676
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    .line 677
    .local v9, id:I
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "id = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [B

    check-cast v21, [B

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v9, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->handleSms(I[B)V

    goto/16 :goto_0

    .line 680
    .end local v9           #id:I
    :cond_11
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[RuimRecords] Error on GET_SMS with exp "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 687
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_e
    const-string v21, "EVENT_GET_IMSIM_DONE Received"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 688
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 689
    .restart local v4       #ar:Landroid/os/AsyncResult;
    const/4 v14, 0x1

    .line 691
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_12

    .line 692
    const-string v21, "CDMA"

    const-string v22, "[RuimRecords]IMSI_M load failed!"

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 695
    :cond_12
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [B

    check-cast v21, [B

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi_m:Ljava/lang/String;

    .line 696
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "IMSI_M "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi_m:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 701
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_f
    const-string v21, "CDMA"

    const-string v22, "Event EVENT_GET_SST_DONE Received"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 705
    :sswitch_10
    const/4 v14, 0x0

    .line 706
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 707
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 708
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [I

    check-cast v21, [I

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->handleRuimRefresh([I)V

    goto/16 :goto_0

    .line 715
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->mIsFeature33531Enabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 716
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 717
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 718
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [I

    move-object/from16 v0, v21

    check-cast v0, [I

    move-object v12, v0

    .line 719
    .local v12, ints:[I
    const/16 v21, 0x0

    aget v18, v12, v21

    .line 720
    .local v18, otaStatus:I
    const/16 v21, 0x8

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_13

    const/16 v21, 0xa

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 723
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v21, v0

    const/16 v22, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 734
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v12           #ints:[I
    .end local v18           #otaStatus:I
    :sswitch_12
    const-string v21, "EVENT_GET_SPN_DONE..."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 735
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 736
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    if-nez v21, :cond_14

    const/4 v14, 0x1

    .line 738
    :goto_6
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_15

    .line 739
    const-string v21, "CDMA"

    const-string v22, "[RuimRecords] Error on loading SPN"

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 736
    :cond_14
    const/4 v14, 0x0

    goto :goto_6

    .line 743
    :cond_15
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [B

    move-object/from16 v0, v21

    check-cast v0, [B

    move-object v5, v0

    .line 745
    .restart local v5       #data:[B
    const/16 v20, 0x0

    .local v20, spnLength:I
    :goto_7
    array-length v0, v5

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_16

    .line 747
    aget-byte v21, v5, v20

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    .line 749
    :cond_16
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "spn raw data="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 752
    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    .line 756
    add-int/lit8 v20, v20, -0x3

    .line 758
    const/16 v21, 0x0

    :try_start_7
    aget-byte v21, v5, v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/IccRecords;->spnDisplayCondition:I

    .line 759
    const/16 v21, 0x1

    aget-byte v21, v5, v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->spnCharEncoding:I

    .line 760
    const/16 v21, 0x2

    aget-byte v21, v5, v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/RuimRecords;->spnLanguage:I

    .line 762
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->spnCharEncoding:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_1

    .line 776
    :pswitch_7
    const-string v21, "SPN encoding not supported"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 786
    :goto_8
    :try_start_8
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "spn="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->isDefault()Z

    move-result v21

    if-eqz v21, :cond_18

    const-string v21, "gsm.sim.operator.alpha"

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 745
    :cond_17
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_7

    .line 765
    :pswitch_8
    :try_start_9
    new-instance v21, Ljava/lang/String;

    const/16 v22, 0x3

    const-string v23, "ISO-8859-1"

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    move-object/from16 v3, v23

    invoke-direct {v0, v5, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_8

    .line 779
    :catch_2
    move-exception v6

    .line 780
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    :try_start_a
    const-string v21, "CDMA"

    const-string v22, "[RuimRecords] encoding is not supported"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_8

    .line 770
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    :pswitch_9
    const/16 v21, 0x3

    mul-int/lit8 v22, v20, 0x8

    :try_start_b
    div-int/lit8 v22, v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v5, v0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_8

    .line 782
    :catch_3
    move-exception v6

    .line 783
    .local v6, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_c
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[RuimRecords] SPN length "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "is out of boundary"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_8

    .line 773
    .end local v6           #e:Ljava/lang/IndexOutOfBoundsException;
    :pswitch_a
    :try_start_d
    new-instance v21, Ljava/lang/String;

    const/16 v22, 0x3

    const-string v23, "utf-16"

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    move-object/from16 v3, v23

    invoke-direct {v0, v5, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_8

    .line 791
    :cond_18
    :try_start_e
    const-string v21, "gsm.sim.operator.alpha.2"

    goto/16 :goto_9

    .line 799
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v5           #data:[B
    .end local v20           #spnLength:I
    :sswitch_13
    const-string v21, "EVENT_GET_CSIM_MDN_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 800
    const/4 v14, 0x1

    .line 801
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 802
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_19

    .line 803
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ar.exception="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 806
    :cond_19
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->onGetCSimMdnDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 809
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_14
    const-string v21, "EVENT_GET_CSIM_IMSIM_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 810
    const/4 v14, 0x1

    .line 811
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 812
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1a

    .line 813
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ar.exception="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 816
    :cond_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->onGetCSimImsimDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 819
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_15
    const-string v21, "EVENT_GET_CSIM_CDMAHOME_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 820
    const/4 v14, 0x1

    .line 821
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 822
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1b

    .line 823
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ar.exception="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 826
    :cond_1b
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->onGetCSimCdmaHomeDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 829
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_16
    const-string v21, "EVENT_GET_CSIM_EPRL_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 830
    const/4 v14, 0x1

    .line 831
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 832
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1c

    .line 833
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ar.exception="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 836
    :cond_1c
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->onGetCSimEprlDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 840
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_17
    const-string v21, "EVENT_GET_CSIM_EPRL_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 841
    const/4 v14, 0x1

    .line 842
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 843
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1d

    .line 844
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ar.exception="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 847
    :cond_1d
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->onGetCsimEuimidDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 853
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_18
    const-string v21, "EVENT_GET_IMSI_FROM_EF_DONE..."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 854
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 855
    .restart local v4       #ar:Landroid/os/AsyncResult;
    const/4 v14, 0x0

    .line 856
    const/4 v10, 0x0

    .line 857
    .local v10, imsi:Ljava/lang/String;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1f

    .line 858
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[RuimRecords] IMSI load failed"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_1e
    :goto_a
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 876
    if-eqz v10, :cond_20

    .line 877
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v10, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 882
    :goto_b
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_0

    .line 861
    :cond_1f
    :try_start_f
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [B

    check-cast v21, [B

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/IccUtils;->cdmaBytesToImsi([B)Ljava/lang/String;

    move-result-object v10

    .line 863
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "IMSI: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    .line 869
    :goto_c
    :try_start_10
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/RuimRecords;->isValidImsi(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1e

    .line 870
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "invalid IMSI "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/4 v10, 0x0

    goto :goto_a

    .line 864
    :catch_4
    move-exception v6

    .line 865
    .local v6, e:Ljava/lang/Exception;
    const-string v21, "CDMA"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "wronly encoded IMSI "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v10, 0x0

    goto :goto_c

    .line 879
    .end local v6           #e:Ljava/lang/Exception;
    :cond_20
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    const/16 v22, 0x0

    new-instance v23, Lcom/android/internal/telephony/CommandException;

    sget-object v24, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct/range {v23 .. v24}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static/range {v21 .. v23}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_b

    .line 457
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_a
        0x4 -> :sswitch_3
        0x5 -> :sswitch_6
        0xa -> :sswitch_4
        0xd -> :sswitch_12
        0xe -> :sswitch_b
        0x11 -> :sswitch_f
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x15 -> :sswitch_c
        0x16 -> :sswitch_d
        0x1f -> :sswitch_10
        0x20 -> :sswitch_11
        0x21 -> :sswitch_e
        0x29 -> :sswitch_7
        0x2a -> :sswitch_8
        0x2b -> :sswitch_13
        0x2c -> :sswitch_14
        0x2d -> :sswitch_15
        0x2e -> :sswitch_16
        0x2f -> :sswitch_17
        0x30 -> :sswitch_18
        0x65 -> :sswitch_9
        0x66 -> :sswitch_5
    .end sparse-switch

    .line 548
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 762
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public isProvisioned()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1419
    const-string v2, "persist.radio.test-csim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1426
    :cond_0
    :goto_0
    return v0

    .line 1422
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->mIsNewArch:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getAppType()Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 1424
    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1271
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1276
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 942
    const-string v5, "CDMA"

    const-string v6, "RuimRecords: record load complete"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 946
    .local v4, operator:Ljava/lang/String;
    const/4 v3, 0x0

    .line 948
    .local v3, mccmnc:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 954
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/motorola/android/telephony/cdma/CdmaOperatorHelper;->getOperatorInfo(Landroid/content/Context;I)Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;

    move-result-object v1

    .line 955
    .local v1, info:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
    const-string v5, "1"

    iget-object v6, v1, Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;->mIgnoreSpn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 956
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/IccRecords;->spnDisplayCondition:I

    .line 960
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->isDefault()Z

    move-result v2

    .line 962
    .local v2, isDefault:Z
    if-eqz v2, :cond_3

    const-string v5, "gsm.sim.operator.numeric"

    :goto_1
    invoke-virtual {p0, v5, v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 967
    if-eqz v2, :cond_4

    :try_start_1
    const-string v5, "gsm.sim.operator.iso-country"

    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/cdma/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 978
    :cond_1
    :goto_3
    if-eqz v2, :cond_5

    const-string v5, "gsm.sim.operator.numeric"

    :goto_4
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 982
    if-eqz v2, :cond_6

    const-string v5, "gsm.sim.operator.iso-country"

    :goto_5
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/AsyncResult;

    invoke-direct {v6, v9, v9, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v5, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 990
    iget-object v5, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v5, :cond_7

    .line 991
    iget-object v5, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    const-string v6, "LOADED"

    invoke-virtual {v5, v6, v9}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    :goto_6
    return-void

    .line 949
    .end local v1           #info:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
    .end local v2           #isDefault:Z
    :catch_0
    move-exception v0

    .line 950
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "CDMA"

    const-string v6, "mccmnc is invalid"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 962
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #info:Lcom/motorola/android/telephony/cdma/CdmaOperatorInfo;
    .restart local v2       #isDefault:Z
    :cond_3
    const-string v5, "gsm.sim.operator.numeric.2"

    goto :goto_1

    .line 967
    :cond_4
    :try_start_2
    const-string v5, "gsm.sim.operator.iso-country.2"
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 978
    :cond_5
    const-string v5, "gsm.sim.operator.numeric.2"

    goto :goto_4

    .line 982
    :cond_6
    const-string v5, "gsm.sim.operator.iso-country.2"

    goto :goto_5

    .line 994
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    const-string v6, "LOADED"

    invoke-virtual {v5, v6, v9}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 970
    :catch_1
    move-exception v5

    goto :goto_3
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 310
    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 311
    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 312
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    .line 314
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    .line 315
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    .line 316
    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->spnDisplayCondition:I

    .line 317
    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->spnCharEncoding:I

    .line 318
    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->spnLanguage:I

    .line 326
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaSubscription()I

    move-result v0

    if-nez v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    const-string v0, "gsm.sim.operator.numeric"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v0, "gsm.sim.operator.alpha"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 350
    return-void

    .line 333
    :cond_1
    const-string v0, "gsm.sim.operator.numeric.2"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v0, "gsm.sim.operator.alpha.2"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v0, "gsm.sim.operator.iso-country.2"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 930
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 932
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 933
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onAllRecordsLoaded()V

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-gez v0, :cond_0

    .line 935
    const-string v0, "CDMA"

    const-string v1, "RuimRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 398
    if-eqz p1, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    .line 404
    :cond_0
    return-void
.end method

.method public onRuimReady()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1007
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_2

    .line 1008
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccCard:Lcom/android/internal/telephony/IccCard;

    const-string v1, "READY"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    .line 1020
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->mIsNewArch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getAppType()Lcom/android/internal/telephony/IccCardApplication$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    if-eq v0, v1, :cond_1

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 1025
    :cond_1
    return-void

    .line 1011
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    const-string v1, "READY"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    .line 385
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/IccException;

    const-string v2, "setVoiceMailNumber not implemented"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/IccException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 387
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 388
    const-string v0, "CDMA"

    const-string v1, "method setVoiceMailNumber is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 1
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    .line 1146
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1163
    :goto_0
    return-void

    .line 1152
    :cond_0
    if-gez p2, :cond_2

    .line 1153
    const/4 p2, -0x1

    .line 1159
    :cond_1
    :goto_1
    iput p2, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 1162
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->notifyMessageWaitingIndicator()V

    goto :goto_0

    .line 1154
    :cond_2
    const/16 v0, 0xff

    if-le p2, v0, :cond_1

    .line 1157
    const/16 p2, 0xff

    goto :goto_1
.end method

.method public setVoiceMessageWaiting(III)V
    .locals 1
    .parameter "line"
    .parameter "countWaiting"
    .parameter "vmPriority"

    .prologue
    .line 1178
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1196
    :goto_0
    return-void

    .line 1184
    :cond_0
    if-gez p2, :cond_2

    .line 1185
    const/4 p2, -0x1

    .line 1191
    :cond_1
    :goto_1
    iput p2, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 1192
    iput p3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->voicemailPriority:I

    .line 1195
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->notifyMessageWaitingIndicator()V

    goto :goto_0

    .line 1186
    :cond_2
    const/16 v0, 0xff

    if-le p2, v0, :cond_1

    .line 1189
    const/16 p2, 0xff

    goto :goto_1
.end method

.method public switchToCdma()V
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->mIsSwitchedToCdma:Z

    if-eqz v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->mIsSwitchedToCdma:Z

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->activate()V

    goto :goto_0
.end method

.method public switchToGsm()V
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->mIsSwitchedToCdma:Z

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 282
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->mIsSwitchedToCdma:Z

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRadioOffOrNotAvailable()V

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->dispose()V

    goto :goto_0
.end method
