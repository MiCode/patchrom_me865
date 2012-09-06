.class public abstract Lcom/android/internal/telephony/IccRecords;
.super Landroid/os/Handler;
.source "IccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field public static final EVENT_CFI:I = 0x1

.field public static final EVENT_GET_ICC_RECORD_DONE:I = 0x64

.field public static final EVENT_MWI:I = 0x0

.field protected static final EVENT_PRELOAD_ICCID:I = 0x66

.field protected static final EVENT_PRELOAD_IMSI:I = 0x65

.field protected static final EVENT_SET_MSISDN_DONE:I = 0x1e

.field protected static final SPN_RULE_SHOW_PLMN:I = 0x2

.field protected static final SPN_RULE_SHOW_SPN:I = 0x1

.field protected static final UNINITIALIZED:I = -0x1

.field protected static final UNKNOWN:I


# instance fields
.field protected adnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field protected countVoiceMessages:I

.field public iccid:Ljava/lang/String;

.field protected isVoiceMailFixed:Z

.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field protected mFh:Lcom/android/internal/telephony/IccFileHandler;

.field protected mIsCdmaGsmWorldPhone:Z

.field protected mIsNewArch:Z

.field protected mIsSwitchedToCdma:Z

.field protected mNewSmsRegistrants:Landroid/os/RegistrantList;

.field protected mParentApp:Lcom/android/internal/telephony/IccCard;

.field protected mParentCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

.field protected mRecordsEventsRegistrants:Landroid/os/RegistrantList;

.field protected mailboxIndex:I

.field protected mncLength:I

.field protected msisdn:Ljava/lang/String;

.field protected msisdn2:Ljava/lang/String;

.field protected msisdn3:Ljava/lang/String;

.field protected msisdn4:Ljava/lang/String;

.field protected msisdnTag:Ljava/lang/String;

.field protected msisdnTag2:Ljava/lang/String;

.field protected msisdnTag3:Ljava/lang/String;

.field protected msisdnTag4:Ljava/lang/String;

.field protected newVoiceMailNum:Ljava/lang/String;

.field protected newVoiceMailTag:Ljava/lang/String;

.field protected phone:Lcom/android/internal/telephony/PhoneBase;

.field protected recordsLoadedRegistrants:Landroid/os/RegistrantList;

.field protected recordsRequested:Z

.field protected recordsToLoad:I

.field protected smsCache:Lcom/android/internal/telephony/SmsRecordCache;

.field protected spn:Ljava/lang/String;

.field protected spnDisplayCondition:I

.field protected voiceMailNum:Ljava/lang/String;

.field protected voiceMailTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccCard;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .parameter "parent"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->mIsNewArch:Z

    .line 52
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 64
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 67
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->msisdn2:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag2:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->msisdn3:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag3:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->msisdn4:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag4:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 82
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    .line 83
    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 86
    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    .line 115
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    .line 116
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    .line 121
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->mIsCdmaGsmWorldPhone:Z

    .line 126
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->mIsSwitchedToCdma:Z

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->mIsNewArch:Z

    .line 164
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    .line 165
    iput-object p3, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 166
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getCard()Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mParentCard:Lcom/motorola/android/internal/telephony/IccPhysicalCard;

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->mIsNewArch:Z

    .line 52
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 64
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 67
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->msisdn2:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag2:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->msisdn3:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag3:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->msisdn4:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag4:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailNum:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/android/internal/telephony/IccRecords;->newVoiceMailTag:Ljava/lang/String;

    .line 82
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->isVoiceMailFixed:Z

    .line 83
    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 86
    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->mailboxIndex:I

    .line 115
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    .line 116
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    .line 121
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->mIsCdmaGsmWorldPhone:Z

    .line 126
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->mIsSwitchedToCdma:Z

    .line 151
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 154
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 155
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 158
    return-void
.end method

.method protected static final isValidImsi(Ljava/lang/String;)Z
    .locals 5
    .parameter "imsi"

    .prologue
    const/4 v2, 0x0

    .line 604
    if-nez p0, :cond_1

    .line 618
    :cond_0
    :goto_0
    return v2

    .line 608
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-gt v3, v4, :cond_0

    .line 612
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 613
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 614
    .local v0, c:C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_0

    const/16 v3, 0x39

    if-gt v0, v3, :cond_0

    .line 612
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 618
    .end local v0           #c:C
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract activate()V
.end method

.method public abstract deactivate()V
.end method

.method public abstract dispose()V
.end method

.method public fetchIccMncLength(Landroid/os/Message;)V
    .locals 3
    .parameter "onComplete"

    .prologue
    .line 598
    const/4 v0, 0x0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 600
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 601
    return-void
.end method

.method public fetchImsi(Landroid/os/Message;)V
    .locals 3
    .parameter "onComplete"

    .prologue
    .line 582
    const/4 v0, 0x0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 584
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 585
    return-void
.end method

.method public getAdnCache()Lcom/android/internal/telephony/AdnRecordCache;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    return-object v0
.end method

.method public abstract getDisplayRule(Ljava/lang/String;)I
.end method

.method public abstract getDisplayRule(Z)I
.end method

.method public getEuimid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/ims/IsimRecords;
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLanguageIndication()[B
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferredLanguage()[B
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadPlmnModeFlag()Z
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x0

    return v0
.end method

.method public getRecordsLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 356
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    if-ne v1, v0, :cond_0

    .line 359
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsCache()Lcom/android/internal/telephony/SmsRecordCache;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->smsCache:Lcom/android/internal/telephony/SmsRecordCache;

    return-object v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->voiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    return v0
.end method

.method public getVoiceMessageWaiting()Z
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 408
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 430
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 432
    :goto_0
    return-void

    .line 411
    :pswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 412
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;

    .line 413
    .local v2, recordLoaded:Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;->getEfName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LOADED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccRecords;->log(Ljava/lang/String;)V

    .line 415
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record Load Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccRecords;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #recordLoaded:Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccRecords;->onRecordLoaded()V

    goto :goto_0

    .line 418
    .restart local v0       #ar:Landroid/os/AsyncResult;
    .restart local v2       #recordLoaded:Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;
    :cond_0
    :try_start_1
    invoke-interface {v2, v0}, Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;->onRecordLoaded(Landroid/os/AsyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 420
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #recordLoaded:Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;
    :catch_0
    move-exception v1

    .line 422
    .local v1, exc:Ljava/lang/RuntimeException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception parsing SIM record: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccRecords;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 425
    .end local v1           #exc:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccRecords;->onRecordLoaded()V

    throw v3

    .line 408
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method protected isDefault()Z
    .locals 2

    .prologue
    .line 568
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->isDmds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneModeService()Lcom/motorola/android/internal/telephony/PhoneModeService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

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

.method public isProvisioned()Z
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x1

    return v0
.end method

.method protected loadFromEF(IIILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "response"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 396
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    .line 402
    :goto_0
    return-void

    .line 399
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected abstract onAllRecordsLoaded()V
.end method

.method protected abstract onRadioOffOrNotAvailable()V
.end method

.method protected abstract onRecordLoaded()V
.end method

.method public abstract onRefresh(Z[I)V
.end method

.method public preloadInfo()V
    .locals 3

    .prologue
    .line 442
    const-string v1, "reload iccid and imsi"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccRecords;->log(Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mParentApp:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 445
    .local v0, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const/16 v1, 0x2fe2

    const/16 v2, 0x66

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 447
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSI(Landroid/os/Message;)V

    .line 449
    .end local v0           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_0
    return-void
.end method

.method public declared-synchronized registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 230
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 229
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 222
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 221
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 195
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 196
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 198
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 199
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 201
    :cond_0
    return-void
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 260
    iput-object p2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    .line 261
    iput-object p1, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MSISDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccRecords;->log(Ljava/lang/String;)V

    .line 266
    new-instance v1, Lcom/android/internal/telephony/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->msisdnTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/IccRecords;->msisdn:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    const/16 v2, 0x6f40

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/IccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccRecords;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 273
    return-void
.end method

.method protected setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :goto_0
    return-void

    .line 370
    :cond_0
    const-string v0, "gsm.sim.operator.numeric"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gsm.sim.operator.numeric.2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    :cond_1
    const-string v0, "Sync method to set PROPERTY_ICC_OPERATOR_NUMBERIC"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccRecords;->log(Ljava/lang/String;)V

    .line 374
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :cond_2
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVoiceCallForwardingFlag(IZ)V
    .locals 0
    .parameter "line"
    .parameter "enable"

    .prologue
    .line 499
    return-void
.end method

.method public abstract setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setVoiceMessageWaiting(II)V
.end method

.method public abstract setVoiceMessageWaiting(III)V
.end method

.method public switchToCdma()V
    .locals 0

    .prologue
    .line 551
    return-void
.end method

.method public switchToGsm()V
    .locals 0

    .prologue
    .line 554
    return-void
.end method

.method public declared-synchronized unregisterForNewSms(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterForRecordsEvents(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 205
    return-void
.end method

.method protected updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "response"

    .prologue
    const/4 v5, 0x0

    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 385
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 391
    :goto_0
    return-void

    .line 388
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method
