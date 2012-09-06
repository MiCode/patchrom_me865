.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field static cdmaSubscription:I = 0x0

.field private static isCdmaGsmWorldPhoneEnabled:Z = false

.field static final preferredCdmaSubscription:I = 0x1

.field static final preferredNetworkMode:I

.field private static sCdmaPhoneIns:Lcom/android/internal/telephony/Phone;

.field private static sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private static sContext:Landroid/content/Context;

.field private static sGsmPhoneIns:Lcom/android/internal/telephony/Phone;

.field private static sIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

.field private static sLooper:Landroid/os/Looper;

.field private static sMadeDefaults:Z

.field private static sMadePhoneModeManager:Z

.field private static sModemConfigManager:Lcom/motorola/android/internal/telephony/ModemConfigManager;

.field private static sPhoneModeService:Lcom/motorola/android/internal/telephony/PhoneModeService;

.field private static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private static sProxyPhone:Lcom/android/internal/telephony/Phone;

.field private static sSignalLevelManager:Lcom/motorola/android/internal/telephony/SignalLevelManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneIns:Lcom/android/internal/telephony/Phone;

    .line 53
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneIns:Lcom/android/internal/telephony/Phone;

    .line 55
    const-string v0, "ro.mot.FTR.33857"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->isCdmaGsmWorldPhoneEnabled:Z

    .line 60
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 61
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 62
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneModeService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    .line 64
    sput-boolean v2, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 65
    sput-boolean v2, Lcom/android/internal/telephony/PhoneFactory;->sMadePhoneModeManager:Z

    .line 82
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/PhoneFactory;->cdmaSubscription:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 461
    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->isCdmaGsmWorldPhoneEnabled:Z

    if-eqz v1, :cond_0

    .line 462
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneIns:Lcom/android/internal/telephony/Phone;

    .line 479
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    :goto_0
    return-object v0

    .line 464
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 465
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 473
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 477
    .restart local v0       #phone:Lcom/android/internal/telephony/Phone;
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 467
    :pswitch_0
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    .restart local v0       #phone:Lcom/android/internal/telephony/Phone;
    goto :goto_1

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCdmaSubscription()I
    .locals 1

    .prologue
    .line 509
    sget v0, Lcom/android/internal/telephony/PhoneFactory;->cdmaSubscription:I

    return v0
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 444
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_0

    .line 445
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 449
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 486
    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->isCdmaGsmWorldPhoneEnabled:Z

    if-eqz v1, :cond_0

    .line 487
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneIns:Lcom/android/internal/telephony/Phone;

    .line 493
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    :goto_0
    return-object v0

    .line 491
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 492
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 493
    .restart local v0       #phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    goto :goto_0

    .line 494
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPhoneModeService()Lcom/motorola/android/internal/telephony/PhoneModeService;
    .locals 2

    .prologue
    .line 514
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 515
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getPhoneModeService must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadePhoneModeManager:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->isDmds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PhoneModeService hasn\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sPhoneModeService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    return-object v0
.end method

.method public static getPhoneType(I)I
    .locals 3
    .parameter "networkMode"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x2

    .line 396
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 438
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 411
    goto :goto_0

    .line 420
    :pswitch_3
    sget-boolean v1, Lcom/android/internal/telephony/PhoneFactory;->isCdmaGsmWorldPhoneEnabled:Z

    if-eqz v1, :cond_0

    .line 422
    const-string v1, "persist.radio.ap.phonetype"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 432
    :pswitch_4
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 435
    goto :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 272
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/SignalLevelManager;->getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/telephony/SignalLevelManager;

    move-result-object v7

    sput-object v7, Lcom/android/internal/telephony/PhoneFactory;->sSignalLevelManager:Lcom/motorola/android/internal/telephony/SignalLevelManager;

    .line 276
    sget-boolean v7, Lcom/android/internal/telephony/PhoneFactory;->isCdmaGsmWorldPhoneEnabled:Z

    if-eqz v7, :cond_0

    .line 277
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhoneForCdmaGsmWorldPhone(Landroid/content/Context;)V

    .line 386
    :goto_0
    return-void

    .line 284
    :cond_0
    const-string v7, "ro.mot.tmp.telephony.refactor"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 285
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeMotoDefaultPhone(Landroid/content/Context;)V

    goto :goto_0

    .line 290
    :cond_1
    const-class v8, Lcom/android/internal/telephony/Phone;

    monitor-enter v8

    .line 291
    :try_start_0
    sget-boolean v7, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v7, :cond_5

    .line 292
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    sput-object v7, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    .line 293
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 295
    sget-object v7, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v7, :cond_2

    .line 296
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v9, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    invoke-direct {v7, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 385
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 300
    :cond_2
    const/4 v6, 0x0

    .line 302
    .local v6, retryCount:I
    :goto_1
    const/4 v1, 0x0

    .line 303
    .local v1, hasException:Z
    add-int/lit8 v6, v6, 0x1

    .line 308
    :try_start_1
    new-instance v7, Landroid/net/LocalServerSocket;

    const-string v9, "com.android.internal.telephony"

    invoke-direct {v7, v9}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 313
    :goto_2
    if-nez v1, :cond_6

    .line 325
    :try_start_2
    new-instance v7, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v7}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v7, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 328
    const/4 v5, 0x0

    .line 329
    .local v5, preferredNetworkMode:I
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v7

    if-ne v7, v11, :cond_3

    .line 330
    const/4 v5, 0x7

    .line 332
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "preferred_network_mode"

    invoke-static {v7, v9, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 334
    .local v3, networkMode:I
    const-string v7, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Network Mode set to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v2

    .line 342
    .local v2, lteOnCdma:I
    packed-switch v2, :pswitch_data_0

    .line 351
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "preferred_cdma_subscription"

    const/4 v10, 0x1

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/android/internal/telephony/PhoneFactory;->cdmaSubscription:I

    .line 354
    const-string v7, "PHONE"

    const-string v9, "lteOnCdma not set, using PREFERRED_CDMA_SUBSCRIPTION"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_3
    const-string v7, "PHONE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cdma Subscription set to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/internal/telephony/PhoneFactory;->cdmaSubscription:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v7, Lcom/android/internal/telephony/RIL;

    sget v9, Lcom/android/internal/telephony/PhoneFactory;->cdmaSubscription:I

    invoke-direct {v7, p0, v3, v9}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    sput-object v7, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 362
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v4

    .line 363
    .local v4, phoneType:I
    if-ne v4, v11, :cond_8

    .line 364
    const-string v7, "PHONE"

    const-string v9, "Creating GSMPhone"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v7, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v9, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v10, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v11, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v9, p0, v10, v11}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v7, v9}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v7, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 383
    :cond_4
    :goto_4
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 385
    .end local v1           #hasException:Z
    .end local v2           #lteOnCdma:I
    .end local v3           #networkMode:I
    .end local v4           #phoneType:I
    .end local v5           #preferredNetworkMode:I
    .end local v6           #retryCount:I
    :cond_5
    monitor-exit v8

    goto/16 :goto_0

    .line 309
    .restart local v1       #hasException:Z
    .restart local v6       #retryCount:I
    :catch_0
    move-exception v0

    .line 310
    .local v0, ex:Ljava/io/IOException;
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 315
    .end local v0           #ex:Ljava/io/IOException;
    :cond_6
    const/4 v7, 0x3

    if-le v6, v7, :cond_7

    .line 316
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v9, "PhoneFactory probably already running"

    invoke-direct {v7, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 319
    :cond_7
    const-wide/16 v9, 0x7d0

    :try_start_3
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 320
    :catch_1
    move-exception v7

    goto/16 :goto_1

    .line 344
    .restart local v2       #lteOnCdma:I
    .restart local v3       #networkMode:I
    .restart local v5       #preferredNetworkMode:I
    :pswitch_0
    const/4 v7, 0x0

    :try_start_4
    sput v7, Lcom/android/internal/telephony/PhoneFactory;->cdmaSubscription:I

    .line 345
    const-string v7, "PHONE"

    const-string v9, "lteOnCdma is 1 use SUBSCRIPTION_FROM_RUIM"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 367
    .restart local v4       #phoneType:I
    :cond_8
    const/4 v7, 0x2

    if-ne v4, v7, :cond_4

    .line 368
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 376
    const-string v7, "PHONE"

    const-string v9, "Creating CDMAPhone"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v7, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v9, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v10, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v11, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v9, p0, v10, v11}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v7, v9}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v7, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_4

    .line 370
    :pswitch_1
    const-string v7, "PHONE"

    const-string v9, "Creating CDMALTEPhone"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v7, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v9, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v10, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v11, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v9, p0, v10, v11}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v7, v9}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v7, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 368
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static makeDefaultPhoneForCdmaGsmWorldPhone(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 96
    const-class v11, Lcom/android/internal/telephony/Phone;

    monitor-enter v11

    .line 97
    const/4 v1, 0x1

    .line 98
    .local v1, isCdmaGsmWorldPhone:Z
    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_2

    .line 99
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    .line 100
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 102
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 107
    :cond_0
    const/4 v10, 0x0

    .line 109
    .local v10, retryCount:I
    :goto_0
    const/4 v7, 0x0

    .line 110
    .local v7, hasException:Z
    add-int/lit8 v10, v10, 0x1

    .line 115
    :try_start_1
    new-instance v0, Landroid/net/LocalServerSocket;

    const-string v3, "com.android.internal.telephony"

    invoke-direct {v0, v3}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    :goto_1
    if-nez v7, :cond_3

    .line 132
    :try_start_2
    new-instance v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_network_mode"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 137
    .local v8, networkMode:I
    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network Mode set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_cdma_subscription"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/PhoneFactory;->cdmaSubscription:I

    .line 144
    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cdma Subscription set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/telephony/PhoneFactory;->cdmaSubscription:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v0, Lcom/android/internal/telephony/RIL;

    sget v3, Lcom/android/internal/telephony/PhoneFactory;->cdmaSubscription:I

    invoke-direct {v0, p0, v8, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 149
    const/4 v2, 0x1

    .line 150
    .local v2, isCdmaMode:Z
    invoke-static {v8}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v9

    .line 151
    .local v9, phoneType:I
    if-ne v9, v5, :cond_5

    .line 152
    const/4 v2, 0x0

    .line 153
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(ZZLandroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneIns:Lcom/android/internal/telephony/Phone;

    .line 155
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(ZZLandroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneIns:Lcom/android/internal/telephony/Phone;

    .line 157
    new-instance v0, Lcom/android/internal/telephony/PhoneProxy;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneIns:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/PhoneProxy;-><init>(ZLcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 158
    const-string v0, "PHONE"

    const-string v3, "Creating GSMPhone"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1
    :goto_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 171
    .end local v2           #isCdmaMode:Z
    .end local v7           #hasException:Z
    .end local v8           #networkMode:I
    .end local v9           #phoneType:I
    .end local v10           #retryCount:I
    :cond_2
    monitor-exit v11

    .line 172
    return-void

    .line 116
    .restart local v7       #hasException:Z
    .restart local v10       #retryCount:I
    :catch_0
    move-exception v6

    .line 117
    .local v6, ex:Ljava/io/IOException;
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 122
    .end local v6           #ex:Ljava/io/IOException;
    :cond_3
    const/4 v0, 0x3

    if-le v10, v0, :cond_4

    .line 123
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "PhoneFactory probably already running"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    :cond_4
    const-wide/16 v3, 0x7d0

    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 127
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 159
    .restart local v2       #isCdmaMode:Z
    .restart local v8       #networkMode:I
    .restart local v9       #phoneType:I
    :cond_5
    const/4 v0, 0x2

    if-ne v9, v0, :cond_1

    .line 160
    const/4 v2, 0x1

    .line 161
    :try_start_4
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(ZZLandroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sGsmPhoneIns:Lcom/android/internal/telephony/Phone;

    .line 163
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v5, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(ZZLandroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneIns:Lcom/android/internal/telephony/Phone;

    .line 165
    new-instance v0, Lcom/android/internal/telephony/PhoneProxy;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCdmaPhoneIns:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/PhoneProxy;-><init>(ZLcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 166
    const-string v0, "PHONE"

    const-string v3, "Creating CDMAPhone"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 88
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method private static makeMotoDefaultPhone(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x1

    .line 180
    const-class v10, Lcom/android/internal/telephony/Phone;

    monitor-enter v10

    .line 181
    :try_start_0
    sget-boolean v9, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v9, :cond_9

    .line 182
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    sput-object v9, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    .line 183
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 185
    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v9, :cond_0

    .line 186
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v11, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    invoke-direct {v9, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 263
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 190
    :cond_0
    const/4 v8, 0x0

    .line 192
    .local v8, retryCount:I
    :goto_0
    const/4 v3, 0x0

    .line 193
    .local v3, hasException:Z
    add-int/lit8 v8, v8, 0x1

    .line 198
    :try_start_1
    new-instance v9, Landroid/net/LocalServerSocket;

    const-string v11, "com.android.internal.telephony"

    invoke-direct {v9, v11}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 203
    :goto_1
    if-nez v3, :cond_3

    .line 216
    :try_start_2
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/IccCardManager;->getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/telephony/IccCardManager;

    move-result-object v9

    sput-object v9, Lcom/android/internal/telephony/PhoneFactory;->sIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    .line 218
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->isDmds()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 219
    invoke-static {}, Lcom/motorola/android/internal/telephony/PhoneModeService;->getDefault()Lcom/motorola/android/internal/telephony/PhoneModeService;

    move-result-object v9

    sput-object v9, Lcom/android/internal/telephony/PhoneFactory;->sPhoneModeService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    .line 220
    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sPhoneModeService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    invoke-virtual {v9, p0}, Lcom/motorola/android/internal/telephony/PhoneModeService;->setContext(Landroid/content/Context;)V

    .line 221
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/telephony/PhoneFactory;->sMadePhoneModeManager:Z

    .line 224
    :cond_1
    new-instance v9, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v9}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v9, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 225
    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v9}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/motorola/android/internal/telephony/ModemConfigManager;

    move-result-object v9

    sput-object v9, Lcom/android/internal/telephony/PhoneFactory;->sModemConfigManager:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    .line 226
    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sModemConfigManager:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    invoke-virtual {v9}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->initModems()V

    .line 228
    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sModemConfigManager:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    invoke-virtual {v9}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemInfos()[Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    move-result-object v0

    .local v0, arr$:[Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_7

    aget-object v6, v0, v4

    .line 229
    .local v6, modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    if-nez v6, :cond_5

    .line 228
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 199
    .end local v0           #arr$:[Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    :catch_0
    move-exception v2

    .line 200
    .local v2, ex:Ljava/io/IOException;
    const/4 v3, 0x1

    goto :goto_1

    .line 205
    .end local v2           #ex:Ljava/io/IOException;
    :cond_3
    const/4 v9, 0x3

    if-le v8, v9, :cond_4

    .line 206
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v11, "PhoneFactory probably already running"

    invoke-direct {v9, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    :cond_4
    const-wide/16 v11, 0x7d0

    :try_start_3
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 210
    :catch_1
    move-exception v9

    goto :goto_0

    .line 233
    .restart local v0       #arr$:[Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    :cond_5
    :try_start_4
    invoke-virtual {v6}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getCdmaSubscriptionSource()I

    move-result v9

    sput v9, Lcom/android/internal/telephony/PhoneFactory;->cdmaSubscription:I

    .line 235
    invoke-virtual {v6}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getRIL()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    .line 236
    .local v1, ci:Lcom/android/internal/telephony/CommandsInterface;
    new-instance v7, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v6}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getModemId()I

    move-result v9

    invoke-virtual {v6}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getDefaultActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-direct {v7, v9, v11}, Lcom/android/internal/telephony/PhoneProxy;-><init>(ILcom/android/internal/telephony/Phone;)V

    .line 238
    .local v7, phoneProxy:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v6, v7}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->setPhoneProxy(Lcom/android/internal/telephony/Phone;)V

    .line 242
    invoke-virtual {v6}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getCdmaSubscriptionSource()I

    move-result v9

    sput v9, Lcom/android/internal/telephony/PhoneFactory;->cdmaSubscription:I

    .line 243
    invoke-virtual {v6}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->isCdmaOnly()Z

    move-result v9

    if-eqz v9, :cond_6

    sget v9, Lcom/android/internal/telephony/PhoneFactory;->cdmaSubscription:I

    if-eq v9, v13, :cond_2

    .line 250
    :cond_6
    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sIccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;

    invoke-virtual {v6}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getModemId()I

    move-result v11

    invoke-virtual {v6}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getRIL()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/motorola/android/internal/telephony/IccCardManager;->addOwnerModemCardAssociation(ILcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_3

    .line 255
    .end local v1           #ci:Lcom/android/internal/telephony/CommandsInterface;
    .end local v6           #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    .end local v7           #phoneProxy:Lcom/android/internal/telephony/Phone;
    :cond_7
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->isDmds()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 256
    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sPhoneModeService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    invoke-virtual {v9}, Lcom/motorola/android/internal/telephony/PhoneModeService;->initialize()V

    .line 259
    :cond_8
    sget-object v9, Lcom/android/internal/telephony/PhoneFactory;->sModemConfigManager:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    invoke-virtual {v9}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getPrimaryPhoneProxy()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    sput-object v9, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 261
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 263
    .end local v0           #arr$:[Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    .end local v3           #hasException:Z
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v8           #retryCount:I
    :cond_9
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 264
    return-void
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2
    .parameter "sipUri"

    .prologue
    .line 504
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method
