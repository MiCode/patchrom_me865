.class public Lcom/android/internal/telephony/cat/CatService;
.super Landroid/os/Handler;
.source "CatService.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatService$2;,
        Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;
    }
.end annotation


# static fields
.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field static final EVENT_ICC_CHANGED:I = 0x4

.field static final EVENT_IDLE_SCREEN_SET:I = 0x1

.field static final EVENT_LANG_SELECTION_SET:I = 0x2

.field static final EVENT_SCREEN_MODE_CHANGE:I = 0x3

.field private static final MAX_EVENTS_NUM:I = 0x12c

.field static final MSG_ID_CALL_SETUP:I = 0x4

.field static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field private static final MSG_ID_ICC_RECORDS_LOADED:I = 0x14

.field static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field public static final MSG_ID_RADIO_READY:I = 0x6c

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field static final MSG_ID_SESSION_END:I = 0x1

.field static final MSG_ID_SIM_READY:I = 0x7

.field public static final MSG_ID_SIM_REFRESH:I = 0x6b

.field static final STK_DEFAULT:Ljava/lang/String; = "Defualt Message"

.field private static sInstance:Lcom/android/internal/telephony/cat/CatService;

.field private static final sInstanceLock:Ljava/lang/Object;

.field private static sSecondaryInstance:Lcom/android/internal/telephony/cat/CatService;


# instance fields
.field private mAm:Landroid/app/IActivityManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mFh:Lcom/android/internal/telephony/IccFileHandler;

.field private mHandler:Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;

.field private mHasRegisted:Z

.field private mIccCard:Lcom/android/internal/telephony/IccCard;

.field private mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

.field private mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field private mIsPrimary:Z

.field private mLang:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private mOwnerModemId:I

.field private mRilInit:Z

.field private mStkAppInstalled:Z

.field private m_eventList:[Z

.field private m_thread:Landroid/os/HandlerThread;

.field private sms_send_cmd:Lcom/android/internal/telephony/cat/CommandParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;I)V
    .locals 1
    .parameter "ci"
    .parameter "context"
    .parameter "modemId"

    .prologue
    .line 295
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;IZ)V

    .line 296
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;IZ)V
    .locals 5
    .parameter "ci"
    .parameter "context"
    .parameter "modemId"
    .parameter "isPrimary"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 298
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 144
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 145
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 147
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 148
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    .line 152
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mAm:Landroid/app/IActivityManager;

    .line 198
    const/16 v1, 0x12c

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->m_eventList:[Z

    .line 199
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->m_thread:Landroid/os/HandlerThread;

    .line 200
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mHandler:Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;

    .line 201
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mLock:Ljava/lang/Object;

    .line 202
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mHasRegisted:Z

    .line 204
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->sms_send_cmd:Lcom/android/internal/telephony/cat/CommandParams;

    .line 211
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    .line 213
    iput-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 215
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mRilInit:Z

    .line 223
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mIsPrimary:Z

    .line 415
    new-instance v1, Lcom/android/internal/telephony/cat/CatService$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatService$1;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 300
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Service: Input parameters must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 305
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    .line 306
    iput p3, p0, Lcom/android/internal/telephony/cat/CatService;->mOwnerModemId:I

    .line 307
    iput-boolean p4, p0, Lcom/android/internal/telephony/cat/CatService;->mIsPrimary:Z

    .line 309
    const-string v1, "StkService: is running"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Stk Telephony service"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->m_thread:Landroid/os/HandlerThread;

    .line 311
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 312
    new-instance v1, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;-><init>(Lcom/android/internal/telephony/cat/CatService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHandler:Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;

    .line 314
    const-string v1, "gsm.stk.event.useractivity"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v1, "Initialize gsm.stk.event.useractivity to 0"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/motorola/android/internal/telephony/IccCardManager;->getInstance()Lcom/motorola/android/internal/telephony/IccCardManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    .line 318
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mHandler:Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v4}, Lcom/motorola/android/internal/telephony/IccCardManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 320
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->isStkAppInstalled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STK app installed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mAm:Landroid/app/IActivityManager;

    .line 323
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mAm:Landroid/app/IActivityManager;

    if-eqz v1, :cond_2

    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 326
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mLang:Ljava/lang/String;

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the initial locale is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_2
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)V
    .locals 5
    .parameter "ci"
    .parameter "ir"
    .parameter "context"
    .parameter "fh"
    .parameter "ic"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 227
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 144
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 145
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 147
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 148
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    .line 152
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mAm:Landroid/app/IActivityManager;

    .line 198
    const/16 v1, 0x12c

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->m_eventList:[Z

    .line 199
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->m_thread:Landroid/os/HandlerThread;

    .line 200
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mHandler:Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;

    .line 201
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mLock:Ljava/lang/Object;

    .line 202
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mHasRegisted:Z

    .line 204
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->sms_send_cmd:Lcom/android/internal/telephony/cat/CommandParams;

    .line 211
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    .line 213
    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 215
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mRilInit:Z

    .line 223
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mIsPrimary:Z

    .line 415
    new-instance v1, Lcom/android/internal/telephony/cat/CatService$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatService$1;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 228
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 230
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Service: Input parameters must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 234
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    .line 237
    invoke-static {p0, p4}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 240
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 241
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 242
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 243
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 249
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x6c

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 253
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 256
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v2, 0x14

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 259
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->isStkAppInstalled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running CAT service. STK app installed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    .line 263
    const-string v1, "StkService: is running"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Stk Telephony service"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->m_thread:Landroid/os/HandlerThread;

    .line 266
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 267
    new-instance v1, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;-><init>(Lcom/android/internal/telephony/cat/CatService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHandler:Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;

    .line 269
    const-string v1, "gsm.stk.event.useractivity"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v1, "Initialize gsm.stk.event.useractivity to 0"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mAm:Landroid/app/IActivityManager;

    .line 279
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mAm:Landroid/app/IActivityManager;

    if-eqz v1, :cond_2

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 282
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mLang:Ljava/lang/String;

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the initial locale is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_2
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->onConfigurationChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cat/CatService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cat/CatService;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->m_eventList:[Z

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cat/CatService;III[BZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 132
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cat/CatService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->resetBroadcastReceiver()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cat/CatService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->isIdleScreenOnTop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cat/CatService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cat/CatService;)Landroid/app/IActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mAm:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/cat/CatService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mLang:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/cat/CatService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->onScreenModeChange(Z)V

    return-void
.end method

.method private encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Ljava/io/ByteArrayOutputStream;)V
    .locals 4
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "buf"

    .prologue
    .line 1023
    iget v2, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    .line 1024
    .local v1, cmdType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v1, :cond_2

    .line 1025
    sget-object v2, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1030
    :pswitch_0
    const/4 v0, 0x0

    .line 1031
    .local v0, cmdInput:Lcom/android/internal/telephony/cat/Input;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v2, :cond_1

    .line 1032
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v0

    .line 1034
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v3

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    if-eqz v2, :cond_0

    .line 1036
    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/cat/CatService;->getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V

    goto :goto_0

    .line 1051
    .end local v0           #cmdInput:Lcom/android/internal/telephony/cat/Input;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encodeOptionalTags() bad Cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1025
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method private eventDownload(III[BZ)V
    .locals 11
    .parameter "event"
    .parameter "sourceId"
    .parameter "destinationId"
    .parameter "additionalInfo"
    .parameter "oneShot"

    .prologue
    .line 1123
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1126
    .local v2, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0xd6

    .line 1127
    .local v8, tag:I
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1130
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1133
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 1134
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1135
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1136
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1139
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 1140
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1141
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1142
    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1143
    invoke-virtual {v2, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1146
    if-eqz p4, :cond_0

    .line 1147
    move-object v0, p4

    .local v0, arr$:[B
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-byte v1, v0, v4

    .line 1148
    .local v1, b:B
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1147
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1152
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v4           #i$:I
    .end local v6           #len$:I
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 1155
    .local v7, rawData:[B
    array-length v9, v7

    add-int/lit8 v5, v9, -0x2

    .line 1156
    .local v5, len:I
    const/4 v9, 0x1

    int-to-byte v10, v5

    aput-byte v10, v7, v9

    .line 1158
    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 1159
    .local v3, hexString:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Event download : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1160
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 1161
    return-void
.end method

.method private forbidLaunchBrowser(Lcom/android/internal/telephony/cat/CommandParams;)Z
    .locals 16
    .parameter "cmdParams"

    .prologue
    .line 693
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "need_gcf_test"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v12, 0x1

    .line 695
    .local v12, needGCFTest:Z
    :goto_0
    if-nez v12, :cond_1

    .line 696
    const/4 v1, 0x0

    .line 738
    :goto_1
    return v1

    .line 693
    .end local v12           #needGCFTest:Z
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .restart local v12       #needGCFTest:Z
    :cond_1
    move-object/from16 v9, p1

    .line 698
    check-cast v9, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    .line 699
    .local v9, cmdLaunchBrowser:Lcom/android/internal/telephony/cat/LaunchBrowserParams;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    iget-object v1, v9, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    sget-object v2, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 701
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 702
    .local v14, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 705
    .local v7, am:Landroid/app/ActivityManager;
    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v15

    .line 708
    .local v15, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v14, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 711
    .local v8, browerInfo:Landroid/content/pm/ResolveInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "browerInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v13

    .line 715
    .local v13, numTasks:I
    if-lez v13, :cond_3

    .line 716
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 718
    .local v10, info:Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Top RecentTaskInfo.baseIntent= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RecentTaskInfo.origActivity= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    new-instance v11, Landroid/content/Intent;

    iget-object v1, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 720
    .local v11, intent:Landroid/content/Intent;
    iget-object v1, v10, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    .line 721
    iget-object v1, v10, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 724
    :cond_2
    if-eqz v8, :cond_3

    .line 725
    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " browser running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 731
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x1

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 733
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 738
    .end local v7           #am:Landroid/app/ActivityManager;
    .end local v8           #browerInfo:Landroid/content/pm/ResolveInfo;
    .end local v10           #info:Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v13           #numTasks:I
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    .end local v15           #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V
    .locals 2
    .parameter "buf"
    .parameter "cmdInput"

    .prologue
    .line 1056
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 1058
    .local v0, tag:I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1059
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1060
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->value()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1061
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1062
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cat/AppInterface;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1238
    invoke-static {v0, v0, v0, v0, v0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;I)Lcom/android/internal/telephony/cat/CatService;
    .locals 2
    .parameter "ci"
    .parameter "context"
    .parameter "modemId"

    .prologue
    const/4 v0, 0x0

    .line 1206
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->isDmds()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneModeService()Lcom/motorola/android/internal/telephony/PhoneModeService;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/motorola/android/internal/telephony/PhoneModeService;->isFirstModemId(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1208
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sSecondaryInstance:Lcom/android/internal/telephony/cat/CatService;

    if-nez v1, :cond_2

    .line 1209
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1228
    :cond_0
    :goto_0
    return-object v0

    .line 1212
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cat/CatService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;IZ)V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sSecondaryInstance:Lcom/android/internal/telephony/cat/CatService;

    .line 1213
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sSecondaryInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "NEW sSecondaryInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1217
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sSecondaryInstance:Lcom/android/internal/telephony/cat/CatService;

    goto :goto_0

    .line 1215
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sSecondaryInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "Return current sSecondaryInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1219
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    if-nez v1, :cond_4

    .line 1220
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1223
    new-instance v0, Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    .line 1224
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "NEW sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1228
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    goto :goto_0

    .line 1226
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "Return current sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;
    .locals 7
    .parameter "ci"
    .parameter "ir"
    .parameter "context"
    .parameter "fh"
    .parameter "ic"

    .prologue
    const/4 v0, 0x0

    .line 1175
    sget-object v6, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1176
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    if-nez v1, :cond_2

    .line 1177
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 1179
    :cond_0
    monitor-exit v6

    .line 1199
    :goto_0
    return-object v0

    .line 1187
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cat/CatService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    .line 1188
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "NEW sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1199
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    monitor-exit v6

    goto :goto_0

    .line 1200
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1189
    :cond_2
    if-eqz p1, :cond_3

    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eq v0, p1, :cond_3

    .line 1190
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "Reinitialize the Service with SIMRecords"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1191
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 1194
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1195
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "sr changed reinitialize and return current sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1197
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:Lcom/android/internal/telephony/cat/CatService;

    const-string v1, "Return current sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private getPliResponse(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .parameter "buf"

    .prologue
    .line 1067
    const-string v2, "persist.sys.language"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    .local v0, lang:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1071
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 1072
    .local v1, tag:I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1073
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/internal/telephony/cat/ResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    .line 1074
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1076
    .end local v1           #tag:I
    :cond_0
    return-void
.end method

.method public static getSecondaryInstance()Lcom/android/internal/telephony/cat/AppInterface;
    .locals 1

    .prologue
    .line 1242
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sSecondaryInstance:Lcom/android/internal/telephony/cat/CatService;

    return-object v0
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 14
    .parameter "resMsg"

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 1392
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1484
    :goto_0
    return-void

    .line 1395
    :cond_0
    const/4 v11, 0x0

    .line 1396
    .local v11, resp:Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v12, 0x0

    .line 1397
    .local v12, helpRequired:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v1

    .line 1399
    .local v1, cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 1464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unhandled resMsg.resCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1401
    :pswitch_0
    const/4 v12, 0x1

    .line 1413
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget v2, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    .line 1473
    :cond_1
    :goto_1
    :pswitch_2
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    if-eq v0, v2, :cond_2

    iget v0, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLoadIconSuccess:Z

    if-nez v0, :cond_2

    .line 1477
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1482
    :cond_2
    iget-object v8, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v6, p0

    move-object v7, v1

    move v10, v9

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1483
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_0

    .line 1415
    :pswitch_3
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v0, v2, :cond_3

    move v12, v3

    .line 1416
    :goto_2
    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    invoke-direct {p0, v0, v12}, Lcom/android/internal/telephony/cat/CatService;->sendMenuSelection(IZ)V

    goto :goto_0

    :cond_3
    move v12, v9

    .line 1415
    goto :goto_2

    .line 1419
    :pswitch_4
    new-instance v11, Lcom/android/internal/telephony/cat/SelectItemResponseData;

    .end local v11           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersMenuSelection:I

    invoke-direct {v11, v0}, Lcom/android/internal/telephony/cat/SelectItemResponseData;-><init>(I)V

    .line 1420
    .restart local v11       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 1423
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v13

    .line 1424
    .local v13, input:Lcom/android/internal/telephony/cat/Input;
    iget-boolean v0, v13, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-nez v0, :cond_4

    .line 1427
    if-nez v12, :cond_1

    .line 1428
    new-instance v11, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v11           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersInput:Ljava/lang/String;

    iget-boolean v2, v13, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    iget-boolean v3, v13, Lcom/android/internal/telephony/cat/Input;->packed:Z

    invoke-direct {v11, v0, v2, v3}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .restart local v11       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 1432
    :cond_4
    new-instance v11, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v11           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersYesNoSelection:Z

    invoke-direct {v11, v0}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Z)V

    .line 1435
    .restart local v11       #resp:Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 1440
    .end local v13           #input:Lcom/android/internal/telephony/cat/Input;
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->usersConfirm:Z

    invoke-interface {v0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    .line 1444
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 1452
    :pswitch_7
    const/4 v11, 0x0

    .line 1453
    goto :goto_1

    .line 1458
    :pswitch_8
    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1459
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 1399
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1413
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method private handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V
    .locals 12
    .parameter "cmdParams"
    .parameter "isProactiveCmd"

    .prologue
    const v2, 0x10404e7

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 749
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    new-instance v7, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v7, p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 753
    .local v7, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    sget-object v0, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 919
    const-string v0, "Unsupported command"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 927
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 755
    .restart local p1
    :pswitch_0
    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 756
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 765
    :goto_1
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconSuccess:Z

    if-eqz v0, :cond_3

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_2
    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 922
    .end local p1
    :cond_1
    :goto_3
    :pswitch_1
    iput-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 923
    new-instance v8, Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mIsPrimary:Z

    if-eqz v0, :cond_a

    const-string v0, "android.intent.action.stk.command"

    :goto_4
    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 925
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "STK CMD"

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 926
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 758
    .end local v8           #intent:Landroid/content/Intent;
    .restart local p1
    :cond_2
    iput-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_1

    .line 765
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_2

    .line 772
    :pswitch_2
    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v0, :cond_1

    .line 778
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconSuccess:Z

    if-eqz v0, :cond_4

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_5
    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_5

    .line 787
    :pswitch_3
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    goto :goto_3

    .line 795
    :pswitch_4
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconSuccess:Z

    if-eqz v0, :cond_5

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_6
    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_3

    :cond_5
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_6

    .line 802
    :pswitch_5
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    packed-switch v0, :pswitch_data_1

    .line 812
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 804
    :pswitch_6
    new-instance v10, Lcom/android/internal/telephony/cat/DTTZResponseData;

    invoke-direct {v10, v5}, Lcom/android/internal/telephony/cat/DTTZResponseData;-><init>(Ljava/util/Calendar;)V

    .line 805
    .local v10, resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 808
    .end local v10           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_7
    new-instance v5, Lcom/android/internal/telephony/cat/LanguageResponseData;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/LanguageResponseData;-><init>(Ljava/lang/String;)V

    .line 809
    .local v5, resp:Lcom/android/internal/telephony/cat/ResponseData;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 818
    .end local v5           #resp:Lcom/android/internal/telephony/cat/ResponseData;
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CatService;->forbidLaunchBrowser(Lcom/android/internal/telephony/cat/CommandParams;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    .line 821
    check-cast v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v1, "Defualt Message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v1, 0x10404e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 824
    .local v9, message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    .end local p1
    iget-object v0, p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_3

    .end local v9           #message:Ljava/lang/CharSequence;
    .restart local p1
    :pswitch_9
    move-object v0, p1

    .line 835
    check-cast v0, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v1, "Defualt Message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 838
    .restart local v9       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1
    iget-object v0, p1, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_3

    .end local v9           #message:Ljava/lang/CharSequence;
    .restart local p1
    :pswitch_a
    move-object v0, p1

    .line 844
    check-cast v0, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, p1

    .line 845
    check-cast v0, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CallSetupParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v2, 0x10404ea

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    .end local p1
    iget-object v11, p1, Lcom/android/internal/telephony/cat/CallSetupParams;->address:Ljava/lang/String;

    aput-object v11, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_3

    .restart local p1
    :pswitch_b
    move-object v0, p1

    .line 854
    check-cast v0, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v1, "Defualt Message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .restart local v9       #message:Ljava/lang/CharSequence;
    move-object v0, p1

    .line 857
    check-cast v0, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 859
    .end local v9           #message:Ljava/lang/CharSequence;
    :cond_6
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->sms_send_cmd:Lcom/android/internal/telephony/cat/CommandParams;

    goto/16 :goto_3

    .line 864
    :pswitch_c
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :pswitch_d
    move-object v0, p1

    .line 872
    check-cast v0, Lcom/android/internal/telephony/cat/SetUpEventListParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/SetUpEventListParams;->eventList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->setupEventList(Ljava/util/List;)V

    .line 873
    if-eqz p2, :cond_0

    .line 874
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :pswitch_e
    move-object v6, p1

    .line 883
    check-cast v6, Lcom/android/internal/telephony/cat/BIPClientParams;

    .line 884
    .local v6, cmd:Lcom/android/internal/telephony/cat/BIPClientParams;
    iget-boolean v0, v6, Lcom/android/internal/telephony/cat/BIPClientParams;->bHasAlphaId:Z

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/android/internal/telephony/cat/BIPClientParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with null alpha id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 887
    if-eqz p2, :cond_0

    .line 888
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 893
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    if-nez v0, :cond_8

    .line 894
    const-string v0, "No STK application found."

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 895
    if-eqz p2, :cond_8

    .line 896
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 908
    :cond_8
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v0, v1, :cond_9

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v0, v1, :cond_9

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v0, v1, :cond_1

    .line 912
    :cond_9
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_3

    .line 916
    .end local v6           #cmd:Lcom/android/internal/telephony/cat/BIPClientParams;
    :pswitch_f
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 923
    .end local p1
    :cond_a
    const-string v0, "android.intent.action.stk.command_2"

    goto/16 :goto_4

    .line 753
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 802
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 9
    .parameter "rilMsg"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 633
    if-nez p1, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rilMsg.mResCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 638
    const/4 v7, 0x0

    .line 639
    .local v7, cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 682
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    goto :goto_0

    .line 641
    :pswitch_2
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-eq v1, v2, :cond_2

    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_0

    .line 643
    :cond_2
    iget-object v7, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cat/CommandParams;

    .line 644
    .restart local v7       #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_0

    .line 645
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 651
    :pswitch_3
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cat/CommandParams;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    if-eqz v7, :cond_0

    .line 660
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-eq v1, v2, :cond_3

    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_4

    .line 665
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v7, v1}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 652
    :catch_0
    move-exception v8

    .line 654
    .local v8, e:Ljava/lang/ClassCastException;
    const-string v1, "Fail to parse proactive command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 655
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 670
    .end local v8           #e:Ljava/lang/ClassCastException;
    :cond_4
    iget-object v2, v7, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 676
    :pswitch_4
    iget-object v7, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/cat/CommandParams;

    .line 677
    .restart local v7       #cmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_0

    .line 678
    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 639
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 2

    .prologue
    .line 934
    const-string v1, "SESSION END"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 936
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 937
    new-instance v0, Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mIsPrimary:Z

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.stk.session_end"

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 939
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 940
    return-void

    .line 937
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const-string v1, "android.intent.action.stk.session_end_2"

    goto :goto_0
.end method

.method private isIdleScreenOnTop()Z
    .locals 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 548
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v13, "activity"

    invoke-virtual {v10, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 549
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v12}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 550
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez v5, :cond_0

    move v10, v11

    .line 566
    :goto_0
    return v10

    .line 553
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    .local v2, home:Landroid/content/Intent;
    const-string v10, "android.intent.category.HOME"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    iget-object v10, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 557
    .local v6, pm:Landroid/content/pm/PackageManager;
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v10, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 558
    .local v1, cn:Landroid/content/ComponentName;
    invoke-virtual {v6, v2, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 559
    .local v3, homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 560
    .local v8, r:Landroid/content/pm/ResolveInfo;
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 561
    .local v7, pn:Ljava/lang/String;
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 562
    .local v9, ta:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v12

    .line 563
    goto :goto_0

    .end local v7           #pn:Ljava/lang/String;
    .end local v8           #r:Landroid/content/pm/ResolveInfo;
    .end local v9           #ta:Ljava/lang/String;
    :cond_2
    move v10, v11

    .line 566
    goto :goto_0
.end method

.method private isStkAppInstalled()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1487
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.stk.command"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1488
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1489
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1491
    .local v0, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_1

    move v2, v4

    .line 1493
    .local v2, numReceiver:I
    :goto_0
    if-lez v2, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    .line 1491
    .end local v2           #numReceiver:I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0
.end method

.method private onConfigurationChanged()V
    .locals 13

    .prologue
    .line 393
    const-string v0, "receives config changed notification"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 396
    .local v7, config:Landroid/content/res/Configuration;
    iget-object v0, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    .line 397
    .local v12, newLang:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "now the locale is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mLang:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    .line 400
    .local v11, len:I
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    .line 401
    .local v6, cTag:I
    const/4 v0, 0x2

    new-array v9, v0, [B

    const/4 v0, 0x0

    int-to-byte v1, v6

    aput-byte v1, v9, v0

    const/4 v0, 0x1

    int-to-byte v1, v11

    aput-byte v1, v9, v0

    .line 402
    .local v9, header:[B
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V

    .line 403
    .local v10, lang:Ljava/lang/String;
    invoke-virtual {v10, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 404
    sget-object v8, Lcom/android/internal/telephony/cat/SetUpEvent;->LANGUAGE_SELECTION:Lcom/android/internal/telephony/cat/SetUpEvent;

    .line 405
    .local v8, e:Lcom/android/internal/telephony/cat/SetUpEvent;
    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/SetUpEvent;->value()I

    move-result v1

    const/16 v2, 0x82

    const/16 v3, 0x81

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    .line 407
    iput-object v12, p0, Lcom/android/internal/telephony/cat/CatService;->mLang:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v6           #cTag:I
    .end local v7           #config:Landroid/content/res/Configuration;
    .end local v8           #e:Lcom/android/internal/telephony/cat/SetUpEvent;
    .end local v9           #header:[B
    .end local v10           #lang:Ljava/lang/String;
    .end local v11           #len:I
    .end local v12           #newLang:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onScreenModeChange(Z)V
    .locals 8
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    .line 531
    sget-object v6, Lcom/android/internal/telephony/cat/SetUpEvent;->IDLE_SCREEN_AVAIL:Lcom/android/internal/telephony/cat/SetUpEvent;

    .line 532
    .local v6, e:Lcom/android/internal/telephony/cat/SetUpEvent;
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->m_eventList:[Z

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/SetUpEvent;->value()I

    move-result v1

    aget-boolean v0, v0, v1

    if-ne v0, v2, :cond_0

    if-ne p1, v2, :cond_0

    .line 536
    const-string v0, "Receives idle screen available, sent to sim"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/SetUpEvent;->value()I

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x81

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    .line 541
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->m_eventList:[Z

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/SetUpEvent;->value()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 543
    :cond_0
    monitor-exit v7

    .line 544
    return-void

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeIdleTextNotification()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 1250
    new-instance v0, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 1251
    .local v0, cmdDetail:Lcom/android/internal/telephony/cat/CommandDetails;
    iput-boolean v6, v0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    .line 1252
    iput v6, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    .line 1253
    sget-object v6, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 1254
    const/4 v6, 0x0

    iput v6, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    .line 1256
    new-instance v5, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v5}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 1257
    .local v5, textMsg:Lcom/android/internal/telephony/cat/TextMessage;
    new-instance v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    invoke-direct {v2, v0, v5}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 1259
    .local v2, cmdParams:Lcom/android/internal/telephony/cat/DisplayTextParams;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/DisplayTextParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    .line 1260
    .local v3, commandType:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v3, :cond_0

    .line 1261
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in removeIdleTextNotification"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1265
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 1266
    .local v1, cmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;
    new-instance v4, Landroid/content/Intent;

    iget-boolean v6, p0, Lcom/android/internal/telephony/cat/CatService;->mIsPrimary:Z

    if-eqz v6, :cond_1

    const-string v6, "android.intent.action.stk.command"

    :goto_0
    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1268
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "STK CMD"

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1269
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1270
    return-void

    .line 1266
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1
    const-string v6, "android.intent.action.stk.command_2"

    goto :goto_0
.end method

.method private removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1371
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 1378
    :goto_0
    return v1

    .line 1374
    :catch_0
    move-exception v0

    .line 1375
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "Unable to get Menu\'s items size"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    move v1, v2

    .line 1378
    goto :goto_0
.end method

.method private resetBroadcastReceiver()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 465
    const-string v2, "reset Broadcast Receiver"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mHasRegisted:Z

    if-ne v2, v6, :cond_0

    .line 467
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 468
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mHasRegisted:Z

    .line 471
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 472
    .local v1, newFilter:Landroid/content/IntentFilter;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x12c

    if-ge v0, v2, :cond_3

    .line 473
    invoke-static {v0}, Lcom/android/internal/telephony/cat/SetUpEvent;->fromInt(I)Lcom/android/internal/telephony/cat/SetUpEvent;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/SetUpEvent;->USER_ACTIVITY:Lcom/android/internal/telephony/cat/SetUpEvent;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->m_eventList:[Z

    aget-boolean v2, v2, v0

    if-ne v2, v6, :cond_2

    .line 475
    const-string v2, "android.intent.action.stk.user_activity"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    const-string v2, "Add user activity receiver"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 477
    :cond_2
    invoke-static {v0}, Lcom/android/internal/telephony/cat/SetUpEvent;->fromInt(I)Lcom/android/internal/telephony/cat/SetUpEvent;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/SetUpEvent;->LANGUAGE_SELECTION:Lcom/android/internal/telephony/cat/SetUpEvent;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->m_eventList:[Z

    aget-boolean v2, v2, v0

    if-ne v2, v6, :cond_1

    .line 479
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    const-string v2, "Add Language Selection receiver"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 483
    :cond_3
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    if-lez v2, :cond_4

    .line 484
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mHandler:Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 485
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/CatService;->mHasRegisted:Z

    .line 487
    :cond_4
    return-void
.end method

.method private sendMenuSelection(IZ)V
    .locals 8
    .parameter "menuId"
    .parameter "helpRequired"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1080
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1083
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    .line 1084
    .local v4, tag:I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1087
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1090
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 1091
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1092
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1093
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1094
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1097
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 1098
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1099
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1100
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1103
    if-eqz p2, :cond_0

    .line 1104
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .line 1105
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1106
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1109
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1112
    .local v3, rawData:[B
    array-length v5, v3

    add-int/lit8 v2, v5, -0x2

    .line 1113
    .local v2, len:I
    int-to-byte v5, v2

    aput-byte v5, v3, v6

    .line 1115
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1117
    .local v1, hexString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 1118
    return-void
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 7
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "includeAdditionalInfo"
    .parameter "additionalInfo"
    .parameter "resp"

    .prologue
    const/4 v2, 0x2

    .line 964
    if-nez p1, :cond_0

    .line 1019
    :goto_0
    return-void

    .line 967
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 970
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .line 971
    .local v4, tag:I
    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v5, :cond_1

    .line 972
    or-int/lit16 v4, v4, 0x80

    .line 974
    :cond_1
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 975
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 976
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 977
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 978
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 987
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .line 988
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 989
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 990
    const/16 v5, 0x82

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 991
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 994
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 995
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 996
    if-eqz p3, :cond_3

    .line 997
    .local v2, length:I
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 998
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1001
    if-eqz p3, :cond_2

    .line 1002
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1006
    :cond_2
    if-eqz p5, :cond_4

    .line 1007
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 1012
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1013
    .local v3, rawData:[B
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, hexString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TERMINAL RESPONSE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1018
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 996
    .end local v1           #hexString:Ljava/lang/String;
    .end local v2           #length:I
    .end local v3           #rawData:[B
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 1009
    .restart local v2       #length:I
    :cond_4
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/cat/CatService;->encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Ljava/io/ByteArrayOutputStream;)V

    goto :goto_2
.end method

.method private setupEventList(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, eList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x1

    .line 490
    if-eqz p1, :cond_4

    .line 491
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 492
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 493
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 494
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 498
    .local v0, event:I
    const/16 v3, 0x12c

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->m_eventList:[Z

    aget-boolean v3, v3, v0

    if-eq v3, v7, :cond_0

    .line 502
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->m_eventList:[Z

    const/4 v5, 0x1

    aput-boolean v5, v3, v0

    .line 503
    invoke-static {v0}, Lcom/android/internal/telephony/cat/SetUpEvent;->fromInt(I)Lcom/android/internal/telephony/cat/SetUpEvent;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/cat/SetUpEvent;->IDLE_SCREEN_AVAIL:Lcom/android/internal/telephony/cat/SetUpEvent;

    if-ne v3, v5, :cond_1

    .line 504
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mHandler:Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 505
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 506
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mHandler:Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v2, v5, v6}, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 507
    const-string v3, "Set Idle Screen Avail Event"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 517
    .end local v0           #event:I
    .end local v2           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 508
    .restart local v0       #event:I
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/android/internal/telephony/cat/SetUpEvent;->fromInt(I)Lcom/android/internal/telephony/cat/SetUpEvent;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/cat/SetUpEvent;->LANGUAGE_SELECTION:Lcom/android/internal/telephony/cat/SetUpEvent;

    if-ne v3, v5, :cond_2

    .line 509
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mHandler:Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 510
    .restart local v2       #msg:Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 511
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mHandler:Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v2, v5, v6}, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 512
    .end local v2           #msg:Landroid/os/Message;
    :cond_2
    invoke-static {v0}, Lcom/android/internal/telephony/cat/SetUpEvent;->fromInt(I)Lcom/android/internal/telephony/cat/SetUpEvent;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/cat/SetUpEvent;->USER_ACTIVITY:Lcom/android/internal/telephony/cat/SetUpEvent;

    if-ne v3, v5, :cond_0

    .line 513
    const-string v3, "gsm.stk.event.useractivity"

    const-string v5, "1"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v3, "Set system property for useractivity"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 517
    .end local v0           #event:I
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->resetBroadcastReceiver()V

    .line 520
    return-void
.end method

.method private validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z
    .locals 2
    .parameter "resMsg"

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CommandDetails;->compareTo(Lcom/android/internal/telephony/cat/CommandDetails;)Z

    move-result v0

    .line 1366
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatSessionEnd(Landroid/os/Handler;)V

    .line 448
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatProactiveCmd(Landroid/os/Handler;)V

    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatEvent(Landroid/os/Handler;)V

    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCallSetUp(Landroid/os/Handler;)V

    .line 452
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->dispose()V

    .line 454
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 455
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 458
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 1277
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 1349
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized CAT command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 1282
    :sswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim refresh msg.arg1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1283
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eq v4, v8, :cond_0

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v6, :cond_1

    .line 1285
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->removeIdleTextNotification()V

    .line 1288
    :cond_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v6, :cond_2

    .line 1289
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.android.stk"

    const-string v5, "com.android.stk.StkLauncherActivity"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    .local v1, cName:Landroid/content/ComponentName;
    :try_start_0
    const-string v4, "sim refresh: disable STK app"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1293
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1351
    .end local v1           #cName:Landroid/content/ComponentName;
    :cond_2
    :goto_0
    :sswitch_1
    return-void

    .line 1297
    .restart local v1       #cName:Landroid/content/ComponentName;
    :catch_0
    move-exception v3

    .line 1298
    .local v3, e:Ljava/lang/Exception;
    const-string v4, "Could not change STK app state"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1310
    .end local v1           #cName:Landroid/content/ComponentName;
    .end local v3           #e:Ljava/lang/Exception;
    :sswitch_2
    const-string v4, "ril message arrived"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1311
    const/4 v2, 0x0

    .line 1312
    .local v2, data:Ljava/lang/String;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 1313
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1314
    .local v0, ar:Landroid/os/AsyncResult;
    if-eqz v0, :cond_3

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 1316
    :try_start_1
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v2           #data:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1322
    .end local v0           #ar:Landroid/os/AsyncResult;
    .restart local v2       #data:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    new-instance v5, Lcom/android/internal/telephony/cat/RilMessage;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-direct {v5, v6, v2}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    .line 1317
    .end local v2           #data:Ljava/lang/String;
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :catch_1
    move-exception v3

    .line 1318
    .local v3, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1325
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #e:Ljava/lang/ClassCastException;
    :sswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    new-instance v5, Lcom/android/internal/telephony/cat/RilMessage;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-direct {v5, v6, v7}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    .line 1330
    :sswitch_4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/CatService;->handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    .line 1333
    :sswitch_5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/cat/CatResponseMessage;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0

    .line 1336
    :sswitch_6
    const-string v4, "SIM ready. Reporting STK service running now..."

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1337
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    goto :goto_0

    .line 1343
    :sswitch_7
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    goto :goto_0

    .line 1277
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0xa -> :sswitch_4
        0x14 -> :sswitch_1
        0x6b -> :sswitch_0
        0x6c -> :sswitch_7
    .end sparse-switch
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 2
    .parameter "resMsg"

    .prologue
    .line 1354
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1360
    :goto_0
    monitor-exit p0

    return-void

    .line 1358
    :cond_0
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1359
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1354
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendTerminalResponse(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 6
    .parameter "resultCode"

    .prologue
    .line 947
    const/4 v3, 0x0

    .line 948
    .local v3, includeAdditionalInfo:Z
    const/4 v4, 0x0

    .line 949
    .local v4, additionalInfo:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v0

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 950
    const/4 v3, 0x1

    .line 951
    const/4 v4, 0x1

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->sms_send_cmd:Lcom/android/internal/telephony/cat/CommandParams;

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 956
    return-void
.end method

.method public setIdleScreenMode(Z)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Idle screen mode turn to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHandler:Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 525
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 526
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 527
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHandler:Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cat/CatService$CatServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 528
    return-void

    .line 526
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method updateIccAvailability()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 335
    const-string v2, "updateIccAvailability"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    if-nez v2, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    invoke-static {}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getInstance()Lcom/motorola/android/internal/telephony/ModemConfigManager;

    move-result-object v0

    .line 342
    .local v0, modemConfigManager:Lcom/motorola/android/internal/telephony/ModemConfigManager;
    if-eqz v0, :cond_0

    .line 346
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mOwnerModemId:I

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mOwnerModemId:I

    invoke-virtual {v0, v4}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getActivePhoneType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/android/internal/telephony/IccCardManager;->getApplication(II)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 352
    .local v1, newIccCard:Lcom/android/internal/telephony/IccCard;
    if-nez v1, :cond_2

    .line 353
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mOwnerModemId:I

    invoke-virtual {v2, v3, v6}, Lcom/motorola/android/internal/telephony/IccCardManager;->getApplication(II)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 358
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mIccCard:Lcom/android/internal/telephony/IccCard;

    if-eq v2, v1, :cond_0

    .line 359
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mIccCard:Lcom/android/internal/telephony/IccCard;

    if-eqz v2, :cond_4

    .line 360
    const-string v2, "Removing stale 3gpp Application."

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v2, :cond_3

    .line 362
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 363
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 365
    :cond_3
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 366
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 368
    :cond_4
    if-eqz v1, :cond_0

    .line 369
    const-string v2, "New 3gpp application found"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mIccCard:Lcom/android/internal/telephony/IccCard;

    .line 371
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getApplicationRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 372
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mIccCard:Lcom/android/internal/telephony/IccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 374
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 375
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v3, 0x14

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 376
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/CatService;->mRilInit:Z

    if-nez v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v6, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 379
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x2

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 380
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x3

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 381
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x4

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 382
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x6c

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 383
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    .line 384
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/CatService;->mRilInit:Z

    goto/16 :goto_0
.end method
