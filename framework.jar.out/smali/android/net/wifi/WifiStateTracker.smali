.class public Landroid/net/wifi/WifiStateTracker;
.super Ljava/lang/Object;
.source "WifiStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiStateTracker$1;,
        Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LOGV:Z = true

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI"

.field private static final TAG:Ljava/lang/String; = "WifiStateTracker"

.field private static sCttpDnsPropNames:[Ljava/lang/String;


# instance fields
.field private isDmds:Z

.field private mApn:Ljava/lang/String;

.field private mApnTypes:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCsHandler:Landroid/os/Handler;

.field private mCtcwNetworkInfo:Landroid/net/NetworkInfo;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsCtcwApConnected:Z

.field private mLastState:Landroid/net/NetworkInfo$State;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPreloadedSsidConnected:Z

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTeardownRequestedForEthernet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Landroid/net/wifi/WifiStateTracker;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 7
    .parameter "netType"
    .parameter "networkName"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mTeardownRequestedForEthernet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    .line 87
    new-instance v0, Landroid/net/NetworkInfo;

    const-string v1, ""

    invoke-direct {v0, p1, v4, p2, v1}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 89
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "vpn.ctcn.dns1"

    aput-object v1, v0, v4

    const-string/jumbo v1, "vpn.ctcn.dns2"

    aput-object v1, v0, v5

    sput-object v0, Landroid/net/wifi/WifiStateTracker;->sCttpDnsPropNames:[Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->isDmds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->isDmds:Z

    .line 95
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mPreloadedSsidConnected:Z

    .line 96
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mIsCtcwApConnected:Z

    .line 97
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const-string v2, "mobile_mms"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v6, v1, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mCtcwNetworkInfo:Landroid/net/NetworkInfo;

    .line 101
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mCtcwNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v5}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 103
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 104
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 106
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 107
    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiStateTracker;->setTeardownRequested(Z)V

    .line 108
    return-void
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/WifiStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mPreloadedSsidConnected:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/net/wifi/WifiStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mPreloadedSsidConnected:Z

    return p1
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/net/wifi/WifiStateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->getTypeMobileForSecMms()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mCtcwNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkCapabilities;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    return-object v0
.end method

.method static synthetic access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    return-object p1
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method static synthetic access$402(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    return-object p1
.end method

.method static synthetic access$502(Landroid/net/wifi/WifiStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mIsCtcwApConnected:Z

    return p1
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Landroid/net/wifi/WifiStateTracker;->DBG:Z

    return v0
.end method

.method static synthetic access$800(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mApn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Landroid/net/wifi/WifiStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mApn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Landroid/net/wifi/WifiStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mApnTypes:Ljava/lang/String;

    return-object p1
.end method

.method private getTypeMobileForSecMms()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 186
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->isDmds:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->isCdmaDefaultData()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x29

    goto :goto_0
.end method

.method private isApnTypeIncluded(I)Z
    .locals 7
    .parameter "networkType"

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mApnTypes:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v3

    .line 144
    :cond_1
    invoke-static {p1}, Landroid/net/wifi/WifiStateTracker;->networkTypeToApnType(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, apnType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 147
    sget-boolean v4, Landroid/net/wifi/WifiStateTracker;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "WifiStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apnType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mApnTypes:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, list:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 150
    aget-object v4, v2, v1

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    aget-object v4, v2, v1

    const-string v5, "*"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 152
    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 149
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isCdmaDefaultData()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 159
    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->isDmds:Z

    if-nez v2, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 163
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_data_network"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 167
    .local v0, modemIdOfDefaultDataConn:I
    invoke-static {v0}, Lcom/motorola/android/telephony/PhoneModeManager;->getPhoneTypeByModemId(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 169
    sget-boolean v2, Landroid/net/wifi/WifiStateTracker;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiStateTracker"

    const-string v3, "isCdmaDefaultData: default data network type is cdma"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_2
    sget-boolean v1, Landroid/net/wifi/WifiStateTracker;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "WifiStateTracker"

    const-string v2, "isCdmaDefaultData: default data network type is NOT cdma"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static networkTypeToApnType(I)Ljava/lang/String;
    .locals 3
    .parameter "netType"

    .prologue
    .line 113
    sparse-switch p0, :sswitch_data_0

    .line 136
    sget-boolean v0, Landroid/net/wifi/WifiStateTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error mapping networkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to apnType."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 115
    :sswitch_0
    const-string v0, "default"

    goto :goto_0

    .line 118
    :sswitch_1
    const-string v0, "mms"

    goto :goto_0

    .line 120
    :sswitch_2
    const-string/jumbo v0, "supl"

    goto :goto_0

    .line 122
    :sswitch_3
    const-string v0, "dun"

    goto :goto_0

    .line 124
    :sswitch_4
    const-string v0, "hipri"

    goto :goto_0

    .line 126
    :sswitch_5
    const-string v0, "entitle"

    goto :goto_0

    .line 128
    :sswitch_6
    const-string v0, "agps"

    goto :goto_0

    .line 130
    :sswitch_7
    const-string v0, "fota"

    goto :goto_0

    .line 132
    :sswitch_8
    const-string v0, "ims"

    goto :goto_0

    .line 134
    :sswitch_9
    const-string v0, "cbs"

    goto :goto_0

    .line 113
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0xc -> :sswitch_9
        0x1e -> :sswitch_6
        0x22 -> :sswitch_5
        0x29 -> :sswitch_1
    .end sparse-switch
.end method

.method private takeOverFeatures(I)Z
    .locals 2
    .parameter "networkType"

    .prologue
    const/16 v1, 0x29

    .line 178
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsCtcwApConnected:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->isDmds:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->isCdmaDefaultData()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eq p1, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    if-eq p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canHandleType(I)I
    .locals 3
    .parameter "networkType"

    .prologue
    .line 192
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateTracker;->takeOverFeatures(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    sget-boolean v0, Landroid/net/wifi/WifiStateTracker;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsCtcwApConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mIsCtcwApConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPreloadedSsidConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mPreloadedSsidConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", detailState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mPreloadedSsidConnected:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateTracker;->isApnTypeIncluded(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    .line 198
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 200
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public defaultRouteSet(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 414
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 415
    return-void
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 400
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 13

    .prologue
    .line 364
    new-instance v7, Landroid/net/LinkProperties;

    iget-object v10, p0, Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v7, v10}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 366
    .local v7, lp:Landroid/net/LinkProperties;
    iget-boolean v10, p0, Landroid/net/wifi/WifiStateTracker;->mPreloadedSsidConnected:Z

    if-eqz v10, :cond_4

    .line 367
    const-string/jumbo v10, "vpn.ctcn.ifname"

    const-string v11, "ppp0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, iface:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 369
    invoke-virtual {v7, v4}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 371
    :cond_0
    const/4 v5, 0x0

    .line 372
    .local v5, isCleared:Z
    sget-object v0, Landroid/net/wifi/WifiStateTracker;->sCttpDnsPropNames:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_4

    aget-object v8, v0, v3

    .line 373
    .local v8, name:Ljava/lang/String;
    const-string v10, ""

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 374
    .local v9, value:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "0.0.0.0"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 376
    :try_start_0
    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 377
    .local v1, dns:Ljava/net/InetAddress;
    if-nez v5, :cond_1

    .line 378
    invoke-virtual {v7}, Landroid/net/LinkProperties;->clearDns()V

    .line 379
    const/4 v5, 0x1

    .line 381
    :cond_1
    sget-boolean v10, Landroid/net/wifi/WifiStateTracker;->DBG:Z

    if-eqz v10, :cond_2

    const-string v10, "WifiStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "new C+W DNS="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_2
    invoke-virtual {v7, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v1           #dns:Ljava/net/InetAddress;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 383
    :catch_0
    move-exception v2

    .line 385
    .local v2, e:Ljava/lang/Exception;
    sget-boolean v10, Landroid/net/wifi/WifiStateTracker;->DBG:Z

    if-eqz v10, :cond_3

    const-string v10, "WifiStateTracker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "new C+W DNS("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") invalid, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 390
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v5           #isCleared:Z
    .end local v6           #len$:I
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :cond_4
    return-object v7
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 357
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    const-string v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 345
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 346
    return-void
.end method

.method public reconnect()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 278
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mTeardownRequestedForEthernet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 280
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mTeardownRequestedForEthernet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 289
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsCtcwApConnected:Z

    if-eqz v0, :cond_3

    .line 290
    invoke-static {}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getInstance()Lcom/motorola/net/wifi/ctcn/CtcnController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 291
    sget-boolean v0, Landroid/net/wifi/WifiStateTracker;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiStateTracker"

    const-string v1, "reconnect MMS"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1
    invoke-static {}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getInstance()Lcom/motorola/net/wifi/ctcn/CtcnController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/net/wifi/ctcn/CtcnController;->requestMMS()V

    .line 299
    :cond_2
    :goto_0
    return v3

    .line 297
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 298
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startWifi()Z

    goto :goto_0
.end method

.method public setDependencyMet(Z)V
    .locals 0
    .parameter "met"

    .prologue
    .line 533
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 331
    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setPolicyDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void
.end method

.method public setRadio(Z)Z
    .locals 1
    .parameter "turnOn"

    .prologue
    .line 307
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 308
    const/4 v0, 0x1

    return v0
.end method

.method public setTeardownRequested(Z)V
    .locals 1
    .parameter "isRequested"

    .prologue
    .line 206
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 207
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 326
    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setUserDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "target"

    .prologue
    const/4 v1, 0x0

    .line 217
    iput-object p2, p0, Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;

    .line 218
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    .line 221
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mPreloadedSsidConnected:Z

    .line 222
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mIsCtcwApConnected:Z

    .line 225
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 226
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 227
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v1, "android.net.wifi.WIFI_CTCW_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    new-instance v1, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/net/wifi/WifiStateTracker$1;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 233
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    return-void
.end method

.method public teardown()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 243
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 244
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 245
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 246
    .local v1, nIf:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 248
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mTeardownRequestedForEthernet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 269
    .end local v1           #nIf:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v4

    .line 259
    :cond_1
    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mIsCtcwApConnected:Z

    if-eqz v2, :cond_3

    .line 260
    invoke-static {}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getInstance()Lcom/motorola/net/wifi/ctcn/CtcnController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 261
    sget-boolean v2, Landroid/net/wifi/WifiStateTracker;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "WifiStateTracker"

    const-string/jumbo v3, "teardown MMS"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_2
    invoke-static {}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getInstance()Lcom/motorola/net/wifi/ctcn/CtcnController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->stopMMS()V

    goto :goto_0

    .line 267
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 268
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->stopWifi()Z

    goto :goto_0
.end method
