.class public final Lcom/motorola/android/telephony/SUPForAssistedDialing;
.super Ljava/lang/Object;
.source "SUPForAssistedDialing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/SUPForAssistedDialing$1;,
        Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_MOT_SETTING_UPDATE:I = 0x1

.field public static final mADLock:Ljava/lang/Object;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mCurrentMcc:I

.field mCurrentSid:I

.field private mMccTable:Lcom/motorola/android/telephony/MCCTables;

.field private mModemId:I

.field private mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneModeService:Lcom/motorola/android/internal/telephony/PhoneModeService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 106
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing;-><init>(Lcom/android/internal/telephony/Phone;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;I)V
    .locals 3
    .parameter "phone"
    .parameter "modemId"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "SUPForAssistedDialing"

    iput-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->LOG_TAG:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    .line 31
    iput v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    .line 32
    iput v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    .line 34
    iput v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mModemId:I

    .line 35
    iput-object v2, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mPhoneModeService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    .line 109
    iput-object p1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 110
    iput p2, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mModemId:I

    .line 111
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->isDmds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneModeService()Lcom/motorola/android/internal/telephony/PhoneModeService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mPhoneModeService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    .line 114
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/telephony/MCCTables;->getInstance(Landroid/content/Context;)Lcom/motorola/android/telephony/MCCTables;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    .line 115
    new-instance v0, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-direct {v0, p0, v2}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;-><init>(Lcom/motorola/android/telephony/SUPForAssistedDialing;Lcom/motorola/android/telephony/SUPForAssistedDialing$1;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    .line 116
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->start()V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/telephony/SUPForAssistedDialing;Lcom/motorola/android/telephony/MCCEntry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->updateMotoSettings(Lcom/motorola/android/telephony/MCCEntry;)V

    return-void
.end method

.method private updateCountryDetailsFromUserTable()V
    .locals 2

    .prologue
    .line 363
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/MCCTables;->getCountryFromUserTable()Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 365
    .local v0, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v0, :cond_0

    .line 367
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->update(Lcom/motorola/android/telephony/MCCEntry;)V

    .line 371
    :cond_0
    return-void
.end method

.method private updateCountryDetailsFromVZWTable(I)V
    .locals 2
    .parameter "mcc"

    .prologue
    .line 347
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v1, p1}, Lcom/motorola/android/telephony/MCCTables;->getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .line 349
    .local v0, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v0, :cond_0

    .line 351
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->update(Lcom/motorola/android/telephony/MCCEntry;)V

    .line 355
    :cond_0
    return-void
.end method

.method private updateMotoSettings(Lcom/motorola/android/telephony/MCCEntry;)V
    .locals 4
    .parameter "entry"

    .prologue
    .line 74
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 83
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v2

    .line 84
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->useDefaultSettings()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const-string v1, "cur_country_mcc"

    iget v3, p1, Lcom/motorola/android/telephony/MCCEntry;->MCC:I

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    const-string v1, "cur_country_code"

    iget v3, p1, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    const-string v1, "cur_country_name"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 88
    const-string v1, "cur_country_idd"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 89
    const-string v1, "cur_country_ndd"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    const-string v1, "cur_country_area_code"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 91
    const-string v1, "cur_country_mdn_len"

    iget v3, p1, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    :goto_0
    monitor-exit v2

    .line 102
    return-void

    .line 93
    :cond_0
    const-string v1, "cur_country_mcc_2"

    iget v3, p1, Lcom/motorola/android/telephony/MCCEntry;->MCC:I

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 94
    const-string v1, "cur_country_code_2"

    iget v3, p1, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    const-string v1, "cur_country_name_2"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    const-string v1, "cur_country_idd_2"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    const-string v1, "cur_country_ndd_2"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    const-string v1, "cur_country_area_code_2"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    const-string v1, "cur_country_mdn_len_2"

    iget v3, p1, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private useDefaultSettings()Z
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mPhoneModeService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mPhoneModeService:Lcom/motorola/android/internal/telephony/PhoneModeService;

    iget v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mModemId:I

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/PhoneModeService;->getSlotByModemId(I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addUnknownCountry(Lcom/motorola/android/telephony/MCCEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    iget v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    invoke-virtual {v0, p1, v1}, Lcom/motorola/android/telephony/MCCTables;->addUnknownCountry(Lcom/motorola/android/telephony/MCCEntry;I)V

    .line 300
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->update(Lcom/motorola/android/telephony/MCCEntry;)V

    goto :goto_0
.end method

.method public checkAndUpdateUnknownMcc(IIII)I
    .locals 5
    .parameter "mcc"
    .parameter "sid"
    .parameter "tz"
    .parameter "DSTFlag"

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, isUnknownMccNotified:I
    iput p1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    .line 199
    iget-object v3, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v3, :cond_0

    .line 200
    const-string v3, "SUPForAssistedDialing"

    const-string v4, " MCC lookup table not initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 251
    .end local v0           #isUnknownMccNotified:I
    .local v1, isUnknownMccNotified:I
    :goto_0
    return v1

    .line 204
    .end local v1           #isUnknownMccNotified:I
    .restart local v0       #isUnknownMccNotified:I
    :cond_0
    iget-object v3, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3, p2, p3, p4}, Lcom/motorola/android/telephony/MCCTables;->checkUnknownMcc(III)I

    move-result v2

    .line 208
    .local v2, tempMcc:I
    if-lez v2, :cond_1

    .line 210
    const/4 v0, 0x1

    .line 211
    iput p2, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    .line 213
    iget-object v3, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3}, Lcom/motorola/android/telephony/MCCTables;->removeUnknownCountry()V

    .line 214
    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->updateCountryDetailsFromVZWTable(I)V

    :goto_1
    move v1, v0

    .line 251
    .end local v0           #isUnknownMccNotified:I
    .restart local v1       #isUnknownMccNotified:I
    goto :goto_0

    .line 217
    .end local v1           #isUnknownMccNotified:I
    .restart local v0       #isUnknownMccNotified:I
    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 221
    iget v3, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    if-ne v3, p2, :cond_2

    .line 223
    const/4 v0, 0x2

    goto :goto_1

    .line 230
    :cond_2
    const/4 v0, 0x1

    .line 231
    iput p2, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    .line 232
    invoke-direct {p0}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->updateCountryDetailsFromUserTable()V

    goto :goto_1

    .line 239
    :cond_3
    iget v3, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    if-eq v3, p2, :cond_4

    .line 243
    iput p2, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    .line 246
    :cond_4
    iget-object v3, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3}, Lcom/motorola/android/telephony/MCCTables;->removeUnknownCountry()V

    .line 247
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public checkUnknownMcc(III)I
    .locals 1
    .parameter "sid"
    .parameter "tz"
    .parameter "DSTflag"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 285
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/android/telephony/MCCTables;->checkUnknownMcc(III)I

    move-result v0

    goto :goto_0
.end method

.method public getAllCountryList()[Lcom/motorola/android/telephony/MCCEntry;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 260
    const/4 v0, 0x0

    .line 262
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MCCTables;->getAllCountryListInDb()[Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;
    .locals 1
    .parameter "mcc"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 273
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public isCtryNameExist(Ljava/lang/String;)Z
    .locals 1
    .parameter "countryName"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 335
    const/4 v0, 0x0

    .line 338
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->isCtryNameExist(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isUnknownCountryExist()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 322
    const/4 v0, 0x0

    .line 325
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MCCTables;->isUnknownCountryExist()Z

    move-result v0

    goto :goto_0
.end method

.method public removeUnknownCountry()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MCCTables;->removeUnknownCountry()V

    goto :goto_0
.end method

.method public updateCurrentCountryDetails(IIII)I
    .locals 5
    .parameter "mcc"
    .parameter "sid"
    .parameter "tz"
    .parameter "DSTFlag"

    .prologue
    .line 127
    const/4 v0, 0x1

    .line 130
    .local v0, isUnknownMccNotified:I
    const/4 v2, 0x0

    .line 140
    .local v2, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    iget-object v3, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v3, :cond_0

    move v1, v0

    .line 185
    .end local v0           #isUnknownMccNotified:I
    .local v1, isUnknownMccNotified:I
    :goto_0
    return v1

    .line 147
    .end local v1           #isUnknownMccNotified:I
    .restart local v0       #isUnknownMccNotified:I
    :cond_0
    iget v3, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    if-ne v3, p1, :cond_1

    iget v3, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    if-ne v3, p2, :cond_1

    .line 149
    const/4 v0, 0x2

    move v1, v0

    .line 150
    .end local v0           #isUnknownMccNotified:I
    .restart local v1       #isUnknownMccNotified:I
    goto :goto_0

    .line 153
    .end local v1           #isUnknownMccNotified:I
    .restart local v0       #isUnknownMccNotified:I
    :cond_1
    iget-object v3, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3, p1}, Lcom/motorola/android/telephony/MCCTables;->getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v2

    .line 155
    if-eqz v2, :cond_3

    .line 159
    iget v3, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    if-eq p1, v3, :cond_2

    .line 160
    const/4 v0, 0x1

    .line 161
    iput p1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    .line 162
    const-string v3, "SUPForAssistedDialing"

    const-string v4, "Updating the Current country"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v3, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3}, Lcom/motorola/android/telephony/MCCTables;->removeUnknownCountry()V

    .line 165
    iget-object v3, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v3, v2}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->update(Lcom/motorola/android/telephony/MCCEntry;)V

    .line 172
    :goto_1
    iput p2, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    :goto_2
    move v1, v0

    .line 185
    .end local v0           #isUnknownMccNotified:I
    .restart local v1       #isUnknownMccNotified:I
    goto :goto_0

    .line 170
    .end local v1           #isUnknownMccNotified:I
    .restart local v0       #isUnknownMccNotified:I
    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    .line 181
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->checkAndUpdateUnknownMcc(IIII)I

    move-result v0

    goto :goto_2
.end method
