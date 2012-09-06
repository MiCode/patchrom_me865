.class public Lcom/motorola/android/telephony/PhoneModeManager;
.super Ljava/lang/Object;
.source "PhoneModeManager.java"


# static fields
.field public static final ACTION_ICC_PRECACHE_STATUS_CHANGED:Ljava/lang/String; = "com.motorola.intent.action.ICC_PRECACHE_STATUS_CHANGED"

.field public static final ACTION_MODE_CHANGE_STATUS_CHANGED:Ljava/lang/String; = "com.motorola.intent.action.MODE_CHANGE_STATUS_CHANGED"

.field public static final ACTION_SECONDARY_ICC_PRECACHE_STATUS_CHANGED:Ljava/lang/String; = "com.motorola.intent.action.ICC_PRECACHE_STATUS_CHANGED_2"

.field public static final EXTRA_MODEM_ID:Ljava/lang/String; = "modemId"

.field public static final MODE_CHANGE_STATUS_DONE:Ljava/lang/String; = "DONE"

.field public static final MODE_CHANGE_STATUS_EXTRA_STATUS:Ljava/lang/String; = "status"

.field public static final MODE_CHANGE_STATUS_EXTRA_SWITCH:Ljava/lang/String; = "needswitch"

.field public static final MODE_CHANGE_STATUS_READYSWITCH:Ljava/lang/String; = "READY"

.field public static final MODE_CHANGE_STATUS_STARTED:Ljava/lang/String; = "STARTED"

.field public static final MODE_CHANGE_STATUS_SWITCHED:Ljava/lang/String; = "SWITCHED"

.field public static final PROPERTY_DEFAULT_MODEM_ID:Ljava/lang/String; = "gsm.default.modem.id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllModemIds()[I
    .locals 1

    .prologue
    .line 121
    :try_start_0
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->getIPhoneModeInfo()Lcom/motorola/android/internal/telephony/IPhoneModeInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo;->getAllModemIds()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 122
    :catch_0
    move-exception v0

    .line 124
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultModemId()I
    .locals 1

    .prologue
    .line 133
    :try_start_0
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->getIPhoneModeInfo()Lcom/motorola/android/internal/telephony/IPhoneModeInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo;->getDefaultModemId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 136
    :goto_0
    return v0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getDefaultPhoneType()I
    .locals 1

    .prologue
    .line 145
    :try_start_0
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->getIPhoneModeInfo()Lcom/motorola/android/internal/telephony/IPhoneModeInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo;->getDefaultPhoneType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 148
    :goto_0
    return v0

    .line 146
    :catch_0
    move-exception v0

    .line 148
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getIPhoneModeInfo()Lcom/motorola/android/internal/telephony/IPhoneModeInfo;
    .locals 1

    .prologue
    .line 233
    const-string v0, "phonemodeinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/internal/telephony/IPhoneModeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getModemIdBySlot(I)I
    .locals 1
    .parameter "slot"

    .prologue
    .line 173
    :try_start_0
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->getIPhoneModeInfo()Lcom/motorola/android/internal/telephony/IPhoneModeInfo;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo;->getModemIdBySlot(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 176
    :goto_0
    return v0

    .line 174
    :catch_0
    move-exception v0

    .line 176
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getPhoneTypeByModemId(I)I
    .locals 1
    .parameter "modem"

    .prologue
    .line 204
    :try_start_0
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->getIPhoneModeInfo()Lcom/motorola/android/internal/telephony/IPhoneModeInfo;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo;->getPhoneTypeByModemId(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 207
    :goto_0
    return v0

    .line 205
    :catch_0
    move-exception v0

    .line 207
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSlotByModemId(I)I
    .locals 1
    .parameter "modem"

    .prologue
    .line 187
    :try_start_0
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->getIPhoneModeInfo()Lcom/motorola/android/internal/telephony/IPhoneModeInfo;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo;->getSlotByModemId(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 190
    :goto_0
    return v0

    .line 188
    :catch_0
    move-exception v0

    .line 190
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getSubscriptionInfo(I)Lcom/motorola/android/telephony/SubscriptionInfo;
    .locals 1
    .parameter "modem"

    .prologue
    .line 218
    :try_start_0
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->getIPhoneModeInfo()Lcom/motorola/android/internal/telephony/IPhoneModeInfo;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo;->getSubscriptionInfo(I)Lcom/motorola/android/telephony/SubscriptionInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    .line 219
    :catch_0
    move-exception v0

    .line 221
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDefaultModemId(I)Z
    .locals 1
    .parameter "modem"

    .prologue
    .line 159
    :try_start_0
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->getIPhoneModeInfo()Lcom/motorola/android/internal/telephony/IPhoneModeInfo;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo;->isDefaultModemId(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 162
    :goto_0
    return v0

    .line 160
    :catch_0
    move-exception v0

    .line 162
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDmds()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 111
    const-string v0, "ro.telephony.secondary_network"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isModemEnabled(I)Z
    .locals 1
    .parameter "modem"

    .prologue
    .line 226
    :try_start_0
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->getIPhoneModeInfo()Lcom/motorola/android/internal/telephony/IPhoneModeInfo;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/motorola/android/internal/telephony/IPhoneModeInfo;->isModemEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 229
    :goto_0
    return v0

    .line 227
    :catch_0
    move-exception v0

    .line 229
    const/4 v0, 0x0

    goto :goto_0
.end method
