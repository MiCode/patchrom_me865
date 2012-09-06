.class public Lcom/motorola/android/internal/telephony/ModemConfigManager;
.super Ljava/lang/Object;
.source "ModemConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;,
        Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;,
        Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;,
        Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;,
        Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ICC_CHANGED:I = 0x1

.field private static final EVENT_SET_TEMPORARY_NETWORK_MODE_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_ModemConfigManager"

.field public static final MC_FROM_FILE_SYSTEM:I = 0x1

.field public static final MC_FROM_XML:I

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/motorola/android/internal/telephony/ModemConfigManager;

.field private static mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;


# instance fields
.field private isMCFileLoaded:Z

.field mHandler:Landroid/os/Handler;

.field private mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

.field private mMCFileSource:I

.field private mModemInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 1
    .parameter "c"
    .parameter "phoneNotifier"

    .prologue
    const/4 v0, 0x0

    .line 391
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFileSource:I

    .line 384
    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->isMCFileLoaded:Z

    .line 708
    new-instance v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$1;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mHandler:Landroid/os/Handler;

    .line 392
    sput-object p1, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    .line 393
    sput-object p2, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    .line 395
    new-instance v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    .line 396
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->loadModemConfig()V

    .line 397
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/internal/telephony/ModemConfigManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->isMCFileLoaded:Z

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/android/internal/telephony/ModemConfigManager;)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/internal/telephony/ModemConfigManager;I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemConfigInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/internal/telephony/ModemConfigManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/android/internal/telephony/ModemConfigManager;Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->switchRadioTechnologyIfNeed(Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;)V

    return-void
.end method

.method public static getInstance()Lcom/motorola/android/internal/telephony/ModemConfigManager;
    .locals 1

    .prologue
    .line 410
    sget-object v0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mInstance:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    if-nez v0, :cond_0

    .line 411
    const/4 v0, 0x0

    .line 413
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mInstance:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/motorola/android/internal/telephony/ModemConfigManager;
    .locals 1
    .parameter "c"
    .parameter "phoneNotifier"

    .prologue
    .line 400
    sget-object v0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mInstance:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Lcom/motorola/android/internal/telephony/ModemConfigManager;

    invoke-direct {v0, p0, p1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mInstance:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    .line 406
    :goto_0
    sget-object v0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mInstance:Lcom/motorola/android/internal/telephony/ModemConfigManager;

    return-object v0

    .line 403
    :cond_0
    sput-object p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    .line 404
    sput-object p1, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    goto :goto_0
.end method

.method private getModemConfigInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    .locals 2
    .parameter "mcInfoId"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->mMCInfoTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->mMCInfoTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;

    .line 575
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRadioModuleInfo(II)Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;
    .locals 4
    .parameter "mcInfoId"
    .parameter "rmInfoId"

    .prologue
    const/4 v1, 0x0

    .line 596
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemConfigInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;

    move-result-object v0

    .line 597
    .local v0, mcInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    if-eqz v0, :cond_0

    .line 598
    iget-object v2, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mRMInfoTable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mRMInfoTable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;

    .line 604
    :cond_0
    return-object v1
.end method

.method private getRadioModuleInfo(Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;I)Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;
    .locals 2
    .parameter "mcInfo"
    .parameter "rmInfoId"

    .prologue
    .line 584
    iget-object v0, p1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mRMInfoTable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mRMInfoTable:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;

    .line 587
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadModemConfig()V
    .locals 14

    .prologue
    .line 612
    sget-object v1, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_cdma_subscription"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 618
    .local v6, cdmaSubscriptionSource:I
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->loadModemConfigFileFromXml()V

    .line 620
    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->isMCFileLoaded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    iget v1, v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->mNumberOfMCEntries:I

    if-lez v1, :cond_1

    .line 621
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    iget v1, v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->mNumberOfMCEntries:I

    if-ge v11, v1, :cond_2

    .line 622
    invoke-direct {p0, v11}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemConfigInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;

    move-result-object v9

    .line 626
    .local v9, curMC:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    sget-object v1, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v9, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mPreferNetModeName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 628
    .local v5, networkMode:I
    new-instance v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    sget-object v2, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget v4, v9, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mMCInfoId:I

    iget v7, v9, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mRadioModuleNum:I

    iget v8, v9, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mSlot:I

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;IIIII)V

    .line 630
    .local v0, modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1
    iget v1, v9, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mRadioModuleNum:I

    if-ge v12, v1, :cond_0

    .line 631
    invoke-direct {p0, v9, v12}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getRadioModuleInfo(Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;I)Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;

    move-result-object v10

    .line 632
    .local v10, curRM:Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;
    new-instance v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    iget v2, v10, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;->mRMInfoId:I

    iget v3, v10, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;->mPhoneType:I

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;II)V

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->addRadioModule(Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;)V

    .line 630
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 634
    .end local v10           #curRM:Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 639
    .end local v0           #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    .end local v5           #networkMode:I
    .end local v9           #curMC:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    .end local v11           #i:I
    .end local v12           #j:I
    :cond_1
    const-string v1, "ro.telephony.default_network"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 643
    .local v13, networkModeFromSystem:I
    sget-object v1, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 646
    .restart local v5       #networkMode:I
    packed-switch v13, :pswitch_data_0

    .line 687
    :pswitch_0
    new-instance v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    sget-object v2, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;IIII)V

    .line 689
    .restart local v0       #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    new-instance v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;II)V

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->addRadioModule(Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;)V

    .line 690
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    .end local v0           #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    .end local v5           #networkMode:I
    .end local v13           #networkModeFromSystem:I
    :cond_2
    :goto_2
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_3
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_3

    .line 698
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->isDualMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 699
    const-string v1, "persist.radio.world_mode"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :cond_3
    return-void

    .line 650
    .end local v11           #i:I
    .restart local v5       #networkMode:I
    .restart local v13       #networkModeFromSystem:I
    :pswitch_1
    new-instance v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    sget-object v2, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v4, 0x0

    const/4 v7, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;IIII)V

    .line 652
    .restart local v0       #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    new-instance v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;II)V

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->addRadioModule(Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;)V

    .line 653
    new-instance v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;II)V

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->addRadioModule(Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;)V

    .line 654
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 661
    .end local v0           #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    :pswitch_2
    new-instance v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    sget-object v2, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;IIII)V

    .line 663
    .restart local v0       #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    new-instance v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;II)V

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->addRadioModule(Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;)V

    .line 664
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 669
    .end local v0           #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    :pswitch_3
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 670
    new-instance v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    sget-object v2, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;IIII)V

    .line 672
    .restart local v0       #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    new-instance v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;II)V

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->addRadioModule(Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;)V

    .line 673
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 675
    .end local v0           #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    :cond_4
    new-instance v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    sget-object v2, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;IIII)V

    .line 677
    .restart local v0       #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    new-instance v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;II)V

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->addRadioModule(Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;)V

    .line 678
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 703
    .end local v0           #modem:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    .end local v5           #networkMode:I
    .end local v13           #networkModeFromSystem:I
    .restart local v11       #i:I
    :cond_5
    const-string v1, "persist.radio.world_mode"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 646
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private loadModemConfigFileFromFileSystem()V
    .locals 0

    .prologue
    .line 474
    return-void
.end method

.method private loadModemConfigFileFromXml()V
    .locals 22

    .prologue
    .line 481
    const/16 v18, 0x0

    .line 482
    .local v18, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v20, 0x0

    .line 483
    .local v20, stream:Ljava/io/FileInputStream;
    sget-object v3, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 485
    .local v19, r:Landroid/content/res/Resources;
    const v3, 0x10f0003

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v18

    .line 488
    :try_start_0
    const-string v3, "ModemConfigFile"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    const/4 v11, 0x0

    const-string v21, "NumberOfModemEntries"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v11, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v3, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->mNumberOfMCEntries:I

    .line 492
    const/4 v2, 0x0

    .line 495
    .local v2, modemConfigInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    :goto_0
    invoke-static/range {v18 .. v18}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 496
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 497
    .local v17, name:Ljava/lang/String;
    if-nez v17, :cond_2

    .line 498
    const-string v3, "RIL_ModemConfigManager"

    const-string v11, "Reach the end"

    invoke-static {v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string v3, "RIL_ModemConfigManager"

    const-string v11, "loadModemConfigFileFromXml: ModemConfig parsing successful, file loaded"

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->isMCFileLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    move-object/from16 v0, v18

    instance-of v3, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v3, :cond_0

    .line 539
    check-cast v18, Landroid/content/res/XmlResourceParser;

    .end local v18           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    .line 542
    :cond_0
    if-eqz v20, :cond_1

    .line 543
    :try_start_1
    throw v20
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 549
    .end local v2           #modemConfigInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    .end local v17           #name:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 500
    .restart local v2       #modemConfigInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    .restart local v17       #name:Ljava/lang/String;
    .restart local v18       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :try_start_2
    const-string v3, "ModemConfigInfo"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 501
    const/4 v3, 0x0

    const-string v11, "Id"

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 502
    .local v4, mcInfoId:I
    const/4 v3, 0x0

    const-string v11, "Name"

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 503
    .local v5, mcInfoName:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v11, "NumberOfRadioModuleEntries"

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 505
    .local v6, radioModuleNum:I
    const/4 v3, 0x0

    const-string v11, "PreferredNetworkModeKeyName"

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 507
    .local v7, preferNetModeName:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v11, "IccCardSlotNum"

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 509
    .local v8, iccCardSlotNum:I
    const/4 v3, 0x0

    const-string v11, "slot"

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 511
    .local v9, slot:I
    new-instance v2, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;

    .end local v2           #modemConfigInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;ILjava/lang/String;ILjava/lang/String;II)V

    .line 513
    .restart local v2       #modemConfigInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    iget-object v3, v3, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->mMCInfoTable:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 535
    .end local v2           #modemConfigInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    .end local v4           #mcInfoId:I
    .end local v5           #mcInfoName:Ljava/lang/String;
    .end local v6           #radioModuleNum:I
    .end local v7           #preferNetModeName:Ljava/lang/String;
    .end local v8           #iccCardSlotNum:I
    .end local v9           #slot:I
    .end local v17           #name:Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 536
    .local v16, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "RIL_ModemConfigManager"

    const-string v11, "Got exception while loading ModemConfig file."

    move-object/from16 v0, v16

    invoke-static {v3, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 538
    move-object/from16 v0, v18

    instance-of v3, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v3, :cond_3

    .line 539
    check-cast v18, Landroid/content/res/XmlResourceParser;

    .end local v18           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    .line 542
    :cond_3
    if-eqz v20, :cond_1

    .line 543
    :try_start_4
    throw v20
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 545
    .end local v16           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto/16 :goto_1

    .line 514
    .restart local v2       #modemConfigInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    .restart local v17       #name:Ljava/lang/String;
    .restart local v18       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :try_start_5
    const-string v3, "RadioModule"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 515
    const/4 v3, 0x0

    const-string v11, "Id"

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 516
    .local v12, rmInfoId:I
    const/4 v3, 0x0

    const-string v11, "Name"

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 517
    .local v13, rmInfoName:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v11, "PhoneType"

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 518
    .local v14, phoneType:I
    const/4 v3, 0x0

    const-string v11, "Active"

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 519
    .local v15, activeMode:Ljava/lang/String;
    new-instance v10, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;-><init>(Lcom/motorola/android/internal/telephony/ModemConfigManager;ILjava/lang/String;ILjava/lang/String;)V

    .line 521
    .local v10, radioModuleInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;
    if-nez v2, :cond_7

    .line 522
    const-string v3, "RIL_ModemConfigManager"

    const-string v11, "Got RadioModule before ModemConfigInfo"

    invoke-static {v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 538
    .end local v2           #modemConfigInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    .end local v10           #radioModuleInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;
    .end local v12           #rmInfoId:I
    .end local v13           #rmInfoName:Ljava/lang/String;
    .end local v14           #phoneType:I
    .end local v15           #activeMode:Ljava/lang/String;
    .end local v17           #name:Ljava/lang/String;
    :catchall_0
    move-exception v3

    move-object/from16 v0, v18

    instance-of v11, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v11, :cond_5

    .line 539
    check-cast v18, Landroid/content/res/XmlResourceParser;

    .end local v18           #parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    .line 542
    :cond_5
    if-eqz v20, :cond_6

    .line 543
    :try_start_6
    throw v20
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 538
    :cond_6
    :goto_2
    throw v3

    .line 524
    .restart local v2       #modemConfigInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    .restart local v10       #radioModuleInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;
    .restart local v12       #rmInfoId:I
    .restart local v13       #rmInfoName:Ljava/lang/String;
    .restart local v14       #phoneType:I
    .restart local v15       #activeMode:Ljava/lang/String;
    .restart local v17       #name:Ljava/lang/String;
    .restart local v18       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_7
    :try_start_7
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mRMInfoTable:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 527
    .end local v10           #radioModuleInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModuleInfo;
    .end local v12           #rmInfoId:I
    .end local v13           #rmInfoName:Ljava/lang/String;
    .end local v14           #phoneType:I
    .end local v15           #activeMode:Ljava/lang/String;
    :cond_8
    const-string v3, "RIL_ModemConfigManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unknown tag "

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 545
    .end local v2           #modemConfigInfo:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;
    .end local v17           #name:Ljava/lang/String;
    .end local v18           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v11

    goto :goto_2
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 803
    const-string v0, "RIL_ModemConfigManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return-void
.end method

.method private switchRadioTechnologyIfNeed(Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;)V
    .locals 11
    .parameter "modemInfo"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x2

    .line 760
    iget v5, p1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModuleNum:I

    if-eq v5, v10, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    sget-object v5, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget v7, p1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mModemId:I

    invoke-direct {p0, v7}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->getModemConfigInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigInfo;->mPreferNetModeName:Ljava/lang/String;

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 767
    .local v4, preferredNetworkMode:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preferred network mode "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->log(Ljava/lang/String;)V

    .line 768
    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 772
    invoke-virtual {p1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getActivePhoneType()I

    move-result v1

    .line 773
    .local v1, activePhoneType:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Active phone type "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->log(Ljava/lang/String;)V

    .line 774
    if-ne v1, v10, :cond_2

    iget v5, p1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCdmaSource:I

    const/4 v7, 0x1

    if-eq v5, v7, :cond_0

    .line 779
    :cond_2
    invoke-virtual {p1, v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 780
    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    if-nez v5, :cond_0

    .line 785
    :cond_3
    if-ne v1, v10, :cond_4

    invoke-virtual {p1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 787
    .local v3, inactivePhone:Lcom/android/internal/telephony/Phone;
    :goto_1
    if-eqz v3, :cond_0

    .line 791
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    .line 792
    .local v2, iccCard:Lcom/android/internal/telephony/IccCard;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 794
    const-string v5, "Switch"

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->log(Ljava/lang/String;)V

    .line 795
    iget-object v7, p1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-ne v1, v10, :cond_5

    move v5, v6

    :goto_2
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mHandler:Landroid/os/Handler;

    iget-object v9, p1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v8, v10, v4, v6, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 785
    .end local v2           #iccCard:Lcom/android/internal/telephony/IccCard;
    .end local v3           #inactivePhone:Lcom/android/internal/telephony/Phone;
    :cond_4
    invoke-virtual {p1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    goto :goto_1

    .line 795
    .restart local v2       #iccCard:Lcom/android/internal/telephony/IccCard;
    .restart local v3       #inactivePhone:Lcom/android/internal/telephony/Phone;
    :cond_5
    const/4 v5, 0x4

    goto :goto_2
.end method


# virtual methods
.method public getModemConfigNumberOfEntries()I
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFile:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;

    iget v0, v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemConfigFile;->mNumberOfMCEntries:I

    return v0
.end method

.method public getModemInfo(I)Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    .locals 3
    .parameter "modemId"

    .prologue
    .line 424
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    .line 425
    .local v1, m:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getModemId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 429
    .end local v1           #m:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getModemInfos()[Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    .locals 3

    .prologue
    .line 418
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 419
    .local v1, size:I
    new-array v0, v1, [Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    .line 420
    .local v0, modems:[Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    return-object v2
.end method

.method public getPrimaryPhoneProxy()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getPhoneProxy()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 437
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initModems()V
    .locals 6

    .prologue
    .line 442
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    .line 443
    .local v1, m:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    if-eqz v1, :cond_0

    .line 444
    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->initPhoneInstances()V

    goto :goto_0

    .line 448
    .end local v1           #m:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    :cond_1
    const-string v2, "registerForIccChanged, ModemConfigManager"

    invoke-direct {p0, v2}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->log(Ljava/lang/String;)V

    .line 449
    invoke-static {}, Lcom/motorola/android/internal/telephony/IccCardManager;->getInstance()Lcom/motorola/android/internal/telephony/IccCardManager;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/motorola/android/internal/telephony/IccCardManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 450
    return-void
.end method

.method public isModemConfigFileLoaded()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->isMCFileLoaded:Z

    return v0
.end method

.method public loadModemConfigFile()V
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mMCFileSource:I

    packed-switch v0, :pswitch_data_0

    .line 461
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->loadModemConfigFileFromXml()V

    .line 464
    :goto_0
    return-void

    .line 456
    :pswitch_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->loadModemConfigFileFromFileSystem()V

    goto :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method updateIccAvailability()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 733
    const-string v6, "updateIccAvailability"

    invoke-direct {p0, v6}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->log(Ljava/lang/String;)V

    .line 734
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/ModemConfigManager;->mModemInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;

    .line 735
    .local v4, m:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    iget-object v6, v4, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mRadioModules:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;

    .line 736
    .local v5, r:Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;
    iget v6, v5, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->mPhoneType:I

    if-ne v6, v9, :cond_1

    iget v6, v4, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mCdmaSource:I

    if-eq v6, v8, :cond_0

    .line 738
    :cond_1
    invoke-static {}, Lcom/motorola/android/internal/telephony/IccCardManager;->getInstance()Lcom/motorola/android/internal/telephony/IccCardManager;

    move-result-object v3

    .line 739
    .local v3, iccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;
    iget v6, v4, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mModemId:I

    iget v7, v5, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->mPhoneType:I

    invoke-virtual {v3, v6, v7}, Lcom/motorola/android/internal/telephony/IccCardManager;->getApplication(II)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 742
    .local v0, app:Lcom/android/internal/telephony/IccCard;
    if-nez v0, :cond_2

    iget v6, v5, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->mPhoneType:I

    if-ne v6, v9, :cond_2

    invoke-virtual {v4}, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    instance-of v6, v6, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    if-eqz v6, :cond_2

    .line 745
    iget v6, v4, Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;->mModemId:I

    invoke-virtual {v3, v6, v8}, Lcom/motorola/android/internal/telephony/IccCardManager;->getApplication(II)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 749
    :cond_2
    iget-object v6, v5, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->mIccCardApp:Lcom/android/internal/telephony/IccCard;

    if-eq v6, v0, :cond_0

    .line 750
    iget-object v6, v5, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->mPhoneObj:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/PhoneBase;->updateIccAvailability(Lcom/android/internal/telephony/IccCard;)V

    .line 751
    iput-object v0, v5, Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;->mIccCardApp:Lcom/android/internal/telephony/IccCard;

    goto :goto_1

    .line 755
    .end local v0           #app:Lcom/android/internal/telephony/IccCard;
    .end local v3           #iccCardManager:Lcom/motorola/android/internal/telephony/IccCardManager;
    .end local v5           #r:Lcom/motorola/android/internal/telephony/ModemConfigManager$RadioModule;
    :cond_3
    invoke-direct {p0, v4}, Lcom/motorola/android/internal/telephony/ModemConfigManager;->switchRadioTechnologyIfNeed(Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;)V

    goto :goto_0

    .line 757
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #m:Lcom/motorola/android/internal/telephony/ModemConfigManager$ModemInfo;
    :cond_4
    return-void
.end method
