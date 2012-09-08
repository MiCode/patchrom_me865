.class public Lcom/android/providers/telephony/TelephonyProvider;
.super Landroid/content/ContentProvider;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final APN_CONFIG_CHECKSUM:Ljava/lang/String; = "apn_conf_checksum"

.field private static final APN_INDEX:I = 0x1

.field private static final CARRIERS_TABLE:Ljava/lang/String; = "carriers"

.field private static final COLUMN_APN2_ID:Ljava/lang/String; = "apn2_id"

.field private static final COLUMN_APN_ID:Ljava/lang/String; = "apn_id"

.field private static final COLUMN_STREAMINGAPN_ID:Ljava/lang/String; = "streamingapn_id"

.field private static final DATABASE_NAME:Ljava/lang/String; = "telephony.db"

.field private static final DATABASE_VERSION:I = 0x100000

.field private static final DBG:Z = true

.field private static final ID_INDEX:I = 0x0

.field private static final PARTNER_APNS_PATH:Ljava/lang/String; = "etc/apns-conf.xml"

.field private static final PREF_FILE:Ljava/lang/String; = "preferred-apn"

.field private static final PRELOADED_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TelephonyProvider"

.field private static final TELE_DB_UPDATE:Ljava/lang/String; = "TELE_DB_UPDATE"

.field private static final URL_CURRENT:I = 0x2

.field private static final URL_DEFAULTSTREAMINGAPN:I = 0x8

.field private static final URL_ID:I = 0x3

.field private static final URL_PREFERAPN:I = 0x5

.field private static final URL_PREFERAPN2:I = 0x9

.field private static final URL_PREFERAPN2_NO_UPDATE:I = 0xc

.field private static final URL_PREFERAPN_NO_UPDATE:I = 0xb

.field private static final URL_PREFERSTREAMINGAPN:I = 0x6

.field private static final URL_RESTOREAPN:I = 0x4

.field private static final URL_RESTOREAPN2:I = 0xa

.field private static final URL_RESTORESTREAMINGAPN:I = 0x7

.field private static final URL_TELEPHONY:I = 0x1

.field private static final s_currentNullMap:Landroid/content/ContentValues;

.field private static final s_currentSetMap:Landroid/content/ContentValues;

.field private static final s_urlMatcher:Landroid/content/UriMatcher;

.field private static final spnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private entitleUpdate:I

.field private mDoCorpsyncCheck:Z

.field private mDoDunapnCheck:Z

.field private mDoEntitlementCheck:Z

.field private mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 123
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "TESCO"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "fastweb"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/providers/telephony/TelephonyProvider;->spnList:Ljava/util/ArrayList;

    .line 165
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v2, "carriers"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 166
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v2, "carriers/current"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v2, "carriers/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v2, "carriers/restore"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v2, "carriers/preferapn"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 170
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v2, "carriers/preferapn_no_update"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 171
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v2, "carriers/preferapn2_no_update"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v2, "carriers/restore2"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 174
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v2, "carriers/preferapn2"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v2, "carriers/streamingrestore"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v2, "carriers/preferstreamingapn"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "telephony"

    const-string v2, "carriers/defaultstreamingapn"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 182
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_currentNullMap:Landroid/content/ContentValues;

    .line 183
    sget-object v1, Lcom/android/providers/telephony/TelephonyProvider;->s_currentNullMap:Landroid/content/ContentValues;

    const-string v2, "current"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 185
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_currentSetMap:Landroid/content/ContentValues;

    .line 186
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_currentSetMap:Landroid/content/ContentValues;

    const-string v1, "current"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 129
    iput v0, p0, Lcom/android/providers/telephony/TelephonyProvider;->entitleUpdate:I

    .line 132
    iput-boolean v0, p0, Lcom/android/providers/telephony/TelephonyProvider;->mDoEntitlementCheck:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/providers/telephony/TelephonyProvider;->mDoDunapnCheck:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/providers/telephony/TelephonyProvider;->mDoCorpsyncCheck:Z

    .line 189
    return-void
.end method

.method private static addEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 160
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkPermission()V
    .locals 3

    .prologue
    .line 1723
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_APN_SETTINGS"

    const-string v2, "No permission to write APN settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    return-void
.end method

.method private static checkSpn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "spn"

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 150
    sget-object v1, Lcom/android/providers/telephony/TelephonyProvider;->spnList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    move-object v0, p0

    .line 155
    :cond_0
    return-object v0
.end method

.method private getAPNConfigCheckSum()J
    .locals 4

    .prologue
    .line 970
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "preferred-apn"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 971
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "apn_conf_checksum"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private getDefaultStreamingApnId()Ljava/lang/String;
    .locals 13

    .prologue
    .line 1770
    const/4 v9, 0x0

    .line 1771
    .local v9, defaultApnId:Ljava/lang/String;
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1772
    .local v11, numeric:Ljava/lang/String;
    const-string v6, "(numeric=?) AND ((type=?) OR (type LIKE ?))"

    .line 1773
    .local v6, Selection:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v11, v4, v0

    const/4 v0, 0x1

    const-string v1, "default"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "default,%"

    aput-object v1, v4, v0

    .line 1774
    .local v4, selectionArgs:[Ljava/lang/String;
    const-string v0, "TelephonyProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "apn"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "preloaded"

    aput-object v3, v2, v0

    const-string v3, "(numeric=?) AND ((type=?) OR (type LIKE ?))"

    const-string v5, "name ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/telephony/TelephonyProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1778
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1780
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1782
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1783
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1784
    .local v7, apn:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1785
    .local v10, key:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1787
    .local v12, preloaded:Ljava/lang/String;
    if-eqz v12, :cond_2

    if-eqz v7, :cond_2

    .line 1788
    const-string v0, "cmwap"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "true"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1789
    const-string v0, "TelephonyProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " preloaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    move-object v9, v10

    .line 1796
    .end local v7           #apn:Ljava/lang/String;
    .end local v10           #key:Ljava/lang/String;
    .end local v12           #preloaded:Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1798
    :cond_1
    const-string v0, "TelephonyProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultStreamingApnId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    return-object v9

    .line 1794
    .restart local v7       #apn:Ljava/lang/String;
    .restart local v10       #key:Ljava/lang/String;
    .restart local v12       #preloaded:Ljava/lang/String;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method private getPreferredApn2Id()J
    .locals 4

    .prologue
    .line 939
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "preferred-apn"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 940
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "apn2_id"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private getPreferredApnId()J
    .locals 4

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "preferred-apn"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 966
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "apn_id"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private getPreferredStreamingApnId()J
    .locals 4

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "preferred-apn"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 960
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "streamingapn_id"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private static getSpnOnSim(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "numeric"

    .prologue
    const/4 v4, 0x0

    .line 992
    const/4 v2, 0x0

    .line 993
    .local v2, spnOnSim:Ljava/lang/String;
    if-nez p0, :cond_2

    .line 994
    const/4 v2, 0x0

    .line 1007
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1008
    const-string v3, "\\s+"

    const-string v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1010
    :cond_1
    return-object v2

    .line 996
    :cond_2
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 997
    .local v0, firstNumeric:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 998
    const-string v3, "gsm.sim.operator.alpha"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1000
    :cond_3
    const-string v3, "gsm.sim.operator.numeric.2"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1001
    .local v1, secondNumeric:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1002
    const-string v3, "gsm.sim.operator.alpha.2"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private initSpnListFromDb(Ljava/util/AbstractList;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, spnList:Ljava/util/AbstractList;,"Ljava/util/AbstractList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 891
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 892
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "carriers"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 893
    const-string v1, "not (spn is null or spn LIKE \'\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 895
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "spn"

    aput-object v1, v2, v5

    .line 896
    .local v2, projectionIn:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 897
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 898
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 900
    .local v7, sort:Ljava/lang/String;
    const/4 v8, 0x0

    .line 902
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 903
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 905
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 906
    .local v9, spn:Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 907
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 908
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 909
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    .line 912
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 917
    .end local v9           #spn:Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_3

    .line 918
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 921
    :cond_3
    :goto_0
    return-void

    .line 914
    :catch_0
    move-exception v10

    .line 915
    .local v10, t:Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "TelephonyProvider"

    const-string v5, "exception happened: "

    invoke-static {v1, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 917
    if-eqz v8, :cond_3

    .line 918
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 917
    .end local v10           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_4

    .line 918
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method private isLteOnCdma()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 886
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "inVal"

    .prologue
    const/16 v7, 0x27

    const/16 v6, 0x22

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1804
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1805
    .local v0, len:I
    move-object v1, p1

    .line 1806
    .local v1, retVal:Ljava/lang/String;
    if-le v0, v3, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_2

    .line 1807
    if-ne v0, v5, :cond_1

    .line 1808
    const/4 v1, 0x0

    .line 1817
    :cond_0
    :goto_0
    return-object v1

    .line 1810
    :cond_1
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1811
    :cond_2
    if-le v0, v3, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_0

    .line 1812
    if-ne v0, v5, :cond_3

    .line 1813
    const/4 v1, 0x0

    goto :goto_0

    .line 1815
    :cond_3
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private restoreDefaultAPN()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 1730
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1732
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "carriers"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1733
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApnId(Ljava/lang/Long;)V

    .line 1735
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApn2Id(Ljava/lang/Long;)V

    .line 1737
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    #calls: Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v1, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->access$000(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1738
    return-void
.end method

.method private restoreDefaultAPN2()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 1742
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1744
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "carriers"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1745
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApnId(Ljava/lang/Long;)V

    .line 1746
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApn2Id(Ljava/lang/Long;)V

    .line 1747
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    #calls: Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v1, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->access$000(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1748
    return-void
.end method

.method private restoreDefaultStreamingAPN()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1753
    const-string v2, "TelephonyProvider"

    const-string v3, "restoreDefaultStreamingAPN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1755
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 1757
    .local v0, apnId:Ljava/lang/String;
    const-string v2, "carriers"

    invoke-virtual {v1, v2, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1758
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    #calls: Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v2, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->access$000(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1759
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getDefaultStreamingApnId()Ljava/lang/String;

    move-result-object v0

    .line 1760
    if-eqz v0, :cond_0

    .line 1761
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredStreamingApnId(Ljava/lang/Long;)V

    .line 1766
    :goto_0
    return-void

    .line 1763
    :cond_0
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredStreamingApnId(Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private setAPNConfigCheckSum(J)V
    .locals 5
    .parameter "id"

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "preferred-apn"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 976
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 977
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "apn_conf_checksum"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 978
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 979
    return-void
.end method

.method private setPreferredApn2Id(Ljava/lang/Long;)V
    .locals 5
    .parameter "id"

    .prologue
    .line 933
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "preferred-apn"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 934
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 935
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "apn2_id"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 936
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 937
    return-void

    .line 935
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private setPreferredApnId(Ljava/lang/Long;)V
    .locals 5
    .parameter "id"

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "preferred-apn"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 926
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 927
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "apn_id"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 928
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 929
    return-void

    .line 927
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private setPreferredStreamingApnId(Ljava/lang/Long;)V
    .locals 5
    .parameter "id"

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "preferred-apn"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 953
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 954
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "streamingapn_id"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 955
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 956
    return-void

    .line 954
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private switchPreferredApnId()V
    .locals 4

    .prologue
    .line 943
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getPreferredApnId()J

    move-result-wide v0

    .line 944
    .local v0, preferApnIdSwitch:J
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getPreferredApn2Id()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApnId(Ljava/lang/Long;)V

    .line 945
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApn2Id(Ljava/lang/Long;)V

    .line 946
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const-wide/16 v8, -0x1

    .line 1421
    const/4 v0, 0x0

    .line 1423
    .local v0, count:I
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->checkPermission()V

    .line 1425
    iget-object v3, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1426
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 1427
    .local v2, match:I
    packed-switch v2, :pswitch_data_0

    .line 1508
    :pswitch_0
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot delete that URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1431
    :pswitch_1
    const-string v3, "carriers"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1512
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 1513
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1516
    :cond_1
    return v0

    .line 1437
    :pswitch_2
    const-string v3, "carriers"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1438
    goto :goto_0

    .line 1443
    :pswitch_3
    const-string v3, "carriers"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1446
    if-lez v0, :cond_0

    .line 1447
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getPreferredStreamingApnId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 1448
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredStreamingApnId(Ljava/lang/Long;)V

    goto :goto_0

    .line 1451
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getPreferredApn2Id()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 1452
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApn2Id(Ljava/lang/Long;)V

    goto :goto_0

    .line 1461
    :pswitch_4
    const/4 v0, 0x1

    .line 1462
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->restoreDefaultAPN()V

    goto :goto_0

    .line 1469
    :pswitch_5
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApnId(Ljava/lang/Long;)V

    .line 1470
    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1477
    :pswitch_6
    const/4 v0, 0x1

    .line 1478
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->restoreDefaultAPN2()V

    goto :goto_0

    .line 1485
    :pswitch_7
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApn2Id(Ljava/lang/Long;)V

    .line 1486
    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1494
    :pswitch_8
    const/4 v0, 0x1

    .line 1495
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->restoreDefaultStreamingAPN()V

    goto/16 :goto_0

    .line 1501
    :pswitch_9
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredStreamingApnId(Ljava/lang/Long;)V

    .line 1502
    const/4 v0, 0x1

    .line 1503
    goto/16 :goto_0

    .line 1427
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 1153
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1174
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1155
    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/telephony-carrier"

    .line 1170
    :goto_0
    return-object v0

    .line 1158
    :pswitch_2
    const-string v0, "vnd.android.cursor.item/telephony-carrier"

    goto :goto_0

    .line 1162
    :pswitch_3
    const-string v0, "vnd.android.cursor.item/telephony-carrier"

    goto :goto_0

    .line 1165
    :pswitch_4
    const-string v0, "vnd.android.cursor.item/telephony-carrier"

    goto :goto_0

    .line 1170
    :pswitch_5
    const-string v0, "vnd.android.cursor.item/telephony-carrier"

    goto :goto_0

    .line 1153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 26
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 1181
    const/4 v15, 0x0

    .line 1183
    .local v15, result:Landroid/net/Uri;
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->checkPermission()V

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 1186
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v22, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 1187
    .local v12, match:I
    const/4 v13, 0x0

    .line 1188
    .local v13, notify:Z
    const/4 v14, 0x0

    .line 1189
    .local v14, numeric:Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v22, "numeric"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1190
    const-string v22, "numeric"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1196
    :cond_0
    invoke-static {v14}, Lcom/android/providers/telephony/TelephonyProvider;->getSpnOnSim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1199
    .local v18, spnOnSim:Ljava/lang/String;
    packed-switch v12, :pswitch_data_0

    .line 1411
    :cond_1
    :goto_0
    :pswitch_0
    if-eqz v13, :cond_2

    .line 1412
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    sget-object v23, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1415
    :cond_2
    return-object v15

    .line 1204
    :pswitch_1
    if-eqz p2, :cond_17

    .line 1205
    new-instance v21, Landroid/content/ContentValues;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1212
    .local v21, values:Landroid/content/ContentValues;
    :goto_1
    const-string v22, "name"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 1213
    const-string v22, "name"

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    :cond_3
    const-string v22, "apn"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 1216
    const-string v22, "apn"

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    :cond_4
    const-string v22, "port"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 1219
    const-string v22, "port"

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    :cond_5
    const-string v22, "proxy"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 1222
    const-string v22, "proxy"

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    :cond_6
    const-string v22, "user"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 1225
    const-string v22, "user"

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    :cond_7
    const-string v22, "server"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 1228
    const-string v22, "server"

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    :cond_8
    const-string v22, "password"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 1231
    const-string v22, "password"

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    :cond_9
    const-string v22, "mmsport"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 1234
    const-string v22, "mmsport"

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    :cond_a
    const-string v22, "mmsproxy"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 1237
    const-string v22, "mmsproxy"

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    :cond_b
    const-string v22, "authtype"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 1240
    const-string v22, "authtype"

    const/16 v23, -0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1242
    :cond_c
    const-string v22, "protocol"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 1243
    const-string v22, "protocol"

    const-string v23, "IP"

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    :cond_d
    const-string v22, "roaming_protocol"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_e

    .line 1246
    const-string v22, "roaming_protocol"

    const-string v23, "IP"

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    :cond_e
    const-string v22, "carrier_enabled"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_f

    .line 1249
    const-string v22, "carrier_enabled"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1251
    :cond_f
    const-string v22, "bearer"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_10

    .line 1252
    const-string v22, "bearer"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1257
    :cond_10
    const-string v22, "preloaded"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_11

    .line 1258
    const-string v22, "preloaded"

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    :cond_11
    invoke-static/range {v18 .. v18}, Lcom/android/providers/telephony/TelephonyProvider;->checkSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1265
    if-eqz v18, :cond_12

    .line 1266
    const-string v22, "spn"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    :cond_12
    const/4 v7, 0x0

    .line 1272
    .local v7, corpsyncFlag:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/providers/telephony/CorpSyncApnUtils;->isCorpSyncFlexEnabled(Landroid/content/Context;)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/providers/telephony/TelephonyProvider;->mDoCorpsyncCheck:Z

    .line 1273
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/TelephonyProvider;->mDoCorpsyncCheck:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 1274
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/providers/telephony/CorpSyncApnUtils;->validateCorpSyncApnInsert(Landroid/content/Context;Landroid/content/ContentValues;)Z

    move-result v7

    .line 1279
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "entitlement_check"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    const/16 v22, 0x1

    :goto_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/providers/telephony/TelephonyProvider;->mDoEntitlementCheck:Z

    .line 1283
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "dun_apn_changable"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    if-nez v22, :cond_19

    const/16 v22, 0x1

    :goto_3
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/providers/telephony/TelephonyProvider;->mDoDunapnCheck:Z

    .line 1287
    const-wide/16 v16, 0x0

    .line 1288
    .local v16, rowID:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/TelephonyProvider;->mDoEntitlementCheck:Z

    move/from16 v22, v0

    if-nez v22, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/TelephonyProvider;->mDoDunapnCheck:Z

    move/from16 v22, v0

    if-nez v22, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/TelephonyProvider;->mDoCorpsyncCheck:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1d

    .line 1289
    :cond_14
    const/16 v19, 0x1

    .line 1290
    .local v19, updateDB:Z
    const-string v22, "type"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1291
    .local v5, apn_type:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "TELE_DB_UPDATE"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/providers/telephony/TelephonyProvider;->entitleUpdate:I

    .line 1293
    if-eqz v5, :cond_15

    .line 1294
    const-string v22, ","

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1295
    .local v4, apn_list:[Ljava/lang/String;
    move-object v6, v4

    .local v6, arr$:[Ljava/lang/String;
    array-length v11, v6

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_4
    if-ge v10, v11, :cond_15

    aget-object v9, v6, v10

    .line 1296
    .local v9, i:Ljava/lang/String;
    const-string v22, "entitle"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 1297
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/TelephonyProvider;->mDoEntitlementCheck:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/telephony/TelephonyProvider;->entitleUpdate:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1a

    .line 1298
    const-string v22, "TelephonyProvider"

    const-string v23, "APN type \'entitle\' inserted by 3rd party App"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const/16 v19, 0x0

    .line 1325
    .end local v4           #apn_list:[Ljava/lang/String;
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v9           #i:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :cond_15
    :goto_5
    if-eqz v19, :cond_16

    .line 1326
    const-string v22, "carriers"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    .line 1332
    .end local v5           #apn_type:Ljava/lang/String;
    .end local v19           #updateDB:Z
    :cond_16
    :goto_6
    const-wide/16 v22, 0x0

    cmp-long v22, v16, v22

    if-lez v22, :cond_1

    .line 1333
    sget-object v22, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 1334
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 1207
    .end local v7           #corpsyncFlag:Z
    .end local v16           #rowID:J
    .end local v21           #values:Landroid/content/ContentValues;
    :cond_17
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .restart local v21       #values:Landroid/content/ContentValues;
    goto/16 :goto_1

    .line 1279
    .restart local v7       #corpsyncFlag:Z
    :cond_18
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 1283
    :cond_19
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 1305
    .restart local v4       #apn_list:[Ljava/lang/String;
    .restart local v5       #apn_type:Ljava/lang/String;
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v9       #i:Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v16       #rowID:J
    .restart local v19       #updateDB:Z
    :cond_1a
    const-string v22, "dun"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 1306
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/TelephonyProvider;->mDoDunapnCheck:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1b

    .line 1307
    const-string v22, "TelephonyProvider"

    const-string v23, "Can not add new entry of APN type DUN."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const/16 v19, 0x0

    .line 1309
    goto :goto_5

    .line 1314
    :cond_1b
    const-string v22, "corpsync"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 1315
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/TelephonyProvider;->mDoCorpsyncCheck:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1c

    if-eqz v7, :cond_1c

    .line 1316
    const-string v22, "TelephonyProvider"

    const-string v23, "Can not add more than one entry of APN type corpsync."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    const/16 v19, 0x0

    .line 1319
    goto :goto_5

    .line 1295
    :cond_1c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 1329
    .end local v4           #apn_list:[Ljava/lang/String;
    .end local v5           #apn_type:Ljava/lang/String;
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v9           #i:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v19           #updateDB:Z
    :cond_1d
    const-string v22, "carriers"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    goto :goto_6

    .line 1344
    .end local v7           #corpsyncFlag:Z
    .end local v16           #rowID:J
    .end local v21           #values:Landroid/content/ContentValues;
    :pswitch_2
    const-string v22, "carriers"

    sget-object v23, Lcom/android/providers/telephony/TelephonyProvider;->s_currentNullMap:Landroid/content/ContentValues;

    const-string v24, "current IS NOT NULL"

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1349
    const/16 v20, -0x1

    .line 1350
    .local v20, updated:I
    invoke-static/range {v18 .. v18}, Lcom/android/providers/telephony/TelephonyProvider;->checkSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1351
    if-eqz v18, :cond_1e

    .line 1352
    const-string v22, "carriers"

    sget-object v23, Lcom/android/providers/telephony/TelephonyProvider;->s_currentSetMap:Landroid/content/ContentValues;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "numeric = \'"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\' AND spn like \'"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static/range {v18 .. v18}, Lcom/android/providers/telephony/TelephonyProvider;->addEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\'"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    .line 1361
    :goto_7
    if-gtz v20, :cond_1

    .line 1369
    const-string v22, "TelephonyProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Failed setting numeric \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\' to the current operator"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1355
    :cond_1e
    const-string v22, "carriers"

    sget-object v23, Lcom/android/providers/telephony/TelephonyProvider;->s_currentSetMap:Landroid/content/ContentValues;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "numeric = \'"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\' AND spn is null"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v20

    goto :goto_7

    .line 1377
    .end local v20           #updated:I
    :pswitch_3
    if-eqz p2, :cond_1

    .line 1378
    const-string v22, "apn_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1379
    const-string v22, "apn_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApnId(Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 1389
    :pswitch_4
    if-eqz p2, :cond_1

    .line 1390
    const-string v22, "apn2_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1391
    const-string v22, "apn2_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApn2Id(Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 1401
    :pswitch_5
    if-eqz p2, :cond_1

    .line 1402
    const-string v22, "streamingapn_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 1403
    const-string v22, "streamingapn_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredStreamingApnId(Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 1199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 9

    .prologue
    .line 828
    const-wide/16 v4, -0x1

    .line 830
    .local v4, oldCheckSum:J
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "etc/apns-conf.xml"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 831
    .local v0, confFile:Ljava/io/File;
    const-wide/16 v2, -0x1

    .line 834
    .local v2, newCheckSum:J
    const-string v6, "TelephonyProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate: confFile="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " oldCheckSum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance v6, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    .line 840
    sget-object v6, Lcom/android/providers/telephony/TelephonyProvider;->spnList:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/providers/telephony/TelephonyProvider;->initSpnListFromDb(Ljava/util/AbstractList;)V

    .line 850
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->isLteOnCdma()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 862
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->getAPNConfigCheckSum()J

    move-result-wide v4

    .line 864
    const-string v6, "TelephonyProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate: confFile="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " oldCheckSum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-static {v0}, Landroid/os/FileUtils;->checksumCrc32(Ljava/io/File;)J

    move-result-wide v2

    .line 870
    const-string v6, "TelephonyProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate: newCheckSum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    .line 872
    const-string v6, "TelephonyProvider"

    const-string v7, "Rebuilding Telephony.db"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider;->restoreDefaultAPN()V

    .line 874
    invoke-direct {p0, v2, v3}, Lcom/android/providers/telephony/TelephonyProvider;->setAPNConfigCheckSum(J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 882
    :cond_0
    :goto_0
    const/4 v6, 0x1

    return v6

    .line 876
    :catch_0
    move-exception v1

    .line 877
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v6, "TelephonyProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileNotFoundException: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 878
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 879
    .local v1, e:Ljava/io/IOException;
    const-string v6, "TelephonyProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 26
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 1016
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1017
    .local v2, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v4, "carriers"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1019
    sget-object v4, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 1020
    .local v13, match:I
    packed-switch v13, :pswitch_data_0

    .line 1136
    :pswitch_0
    const/16 v21, 0x0

    .line 1147
    :cond_0
    :goto_0
    return-object v21

    .line 1024
    :pswitch_1
    const/16 v22, 0x0

    .line 1025
    .local v22, spn:Ljava/lang/String;
    const/16 v18, 0x0

    .line 1033
    .local v18, numeric:Ljava/lang/String;
    if-eqz p3, :cond_4

    .line 1039
    const-string v4, "(?i)AND"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 1040
    .local v24, tokens:[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v14, v0

    .line 1042
    .local v14, n:I
    :cond_1
    add-int/lit8 v14, v14, -0x1

    if-ltz v14, :cond_2

    .line 1043
    aget-object v20, v24, v14

    .line 1044
    .local v20, param:Ljava/lang/String;
    const-string v4, "="

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 1046
    .local v19, pair:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1050
    const/4 v4, 0x0

    aget-object v4, v19, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 1051
    .local v12, key:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v19, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .line 1053
    .local v25, val:Ljava/lang/String;
    const-string v4, "numeric"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1054
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1055
    const-string v4, "TelephonyProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numeric found in selection, numeric = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    .end local v12           #key:Ljava/lang/String;
    .end local v19           #pair:[Ljava/lang/String;
    .end local v20           #param:Ljava/lang/String;
    .end local v25           #val:Ljava/lang/String;
    :cond_2
    const-string v10, " AND spn LIKE \'"

    .line 1061
    .local v10, begTag:Ljava/lang/String;
    const-string v4, " AND spn LIKE \'"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 1062
    .local v11, begTagIndex:I
    const/4 v4, -0x1

    if-le v11, v4, :cond_4

    .line 1063
    const-string v4, "TelephonyProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "spn found in selection, original selection=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const-string v4, " AND spn LIKE \'"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v15, v11, v4

    .line 1066
    .local v15, nIndexAfterBegTag:I
    const-string v4, "\'"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 1067
    .local v17, nIndexRightQuot:I
    const/4 v4, -0x1

    move/from16 v0, v17

    if-le v0, v4, :cond_3

    .line 1068
    add-int/lit8 v16, v17, 0x1

    .line 1069
    .local v16, nIndexAfterRightQuot:I
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 1070
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1073
    .end local v16           #nIndexAfterRightQuot:I
    :cond_3
    const-string v4, "TelephonyProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "spn=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\", new selection=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    .end local v10           #begTag:Ljava/lang/String;
    .end local v11           #begTagIndex:I
    .end local v14           #n:I
    .end local v15           #nIndexAfterBegTag:I
    .end local v17           #nIndexRightQuot:I
    .end local v24           #tokens:[Ljava/lang/String;
    :cond_4
    if-nez v22, :cond_5

    .line 1078
    invoke-static/range {v18 .. v18}, Lcom/android/providers/telephony/TelephonyProvider;->getSpnOnSim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1083
    :cond_5
    invoke-static/range {v22 .. v22}, Lcom/android/providers/telephony/TelephonyProvider;->checkSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1084
    .local v23, spnChecked:Ljava/lang/String;
    if-eqz v23, :cond_6

    .line 1085
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "spn LIKE \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v23 .. v23}, Lcom/android/providers/telephony/TelephonyProvider;->addEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1140
    .end local v18           #numeric:Ljava/lang/String;
    .end local v22           #spn:Ljava/lang/String;
    .end local v23           #spnChecked:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1141
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1143
    .local v21, ret:Landroid/database/Cursor;
    if-eqz v21, :cond_0

    .line 1144
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-interface {v0, v4, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 1088
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v21           #ret:Landroid/database/Cursor;
    .restart local v18       #numeric:Ljava/lang/String;
    .restart local v22       #spn:Ljava/lang/String;
    .restart local v23       #spnChecked:Ljava/lang/String;
    :cond_6
    const-string v4, "spn is null or spn LIKE \'\'"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1098
    .end local v18           #numeric:Ljava/lang/String;
    .end local v22           #spn:Ljava/lang/String;
    .end local v23           #spnChecked:Ljava/lang/String;
    :pswitch_2
    const-string v4, "current IS NOT NULL"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1105
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1111
    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getPreferredApnId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1118
    :pswitch_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getPreferredApn2Id()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1125
    :pswitch_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getPreferredStreamingApnId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1130
    :pswitch_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getDefaultStreamingApnId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1020
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 26
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1522
    const/4 v7, 0x0

    .line 1524
    .local v7, count:I
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->checkPermission()V

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/TelephonyProvider;->mOpenHelper:Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 1527
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v21, Lcom/android/providers/telephony/TelephonyProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 1529
    .local v12, match:I
    const/4 v6, 0x0

    .line 1532
    .local v6, corpsyncFlag:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/providers/telephony/CorpSyncApnUtils;->isCorpSyncFlexEnabled(Landroid/content/Context;)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/providers/telephony/TelephonyProvider;->mDoCorpsyncCheck:Z

    .line 1533
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/TelephonyProvider;->mDoCorpsyncCheck:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/providers/telephony/CorpSyncApnUtils;->corpSyncApnCount(Landroid/content/Context;)I

    move-result v21

    if-lez v21, :cond_0

    .line 1534
    const/4 v6, 0x1

    .line 1537
    :cond_0
    const/4 v14, 0x0

    .line 1538
    .local v14, numeric:Ljava/lang/String;
    const/16 v19, 0x0

    .line 1539
    .local v19, spnOnSim:Ljava/lang/String;
    if-eqz p2, :cond_1

    const-string v21, "numeric"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1540
    const-string v21, "numeric"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1541
    if-eqz v14, :cond_1

    .line 1542
    invoke-static {v14}, Lcom/android/providers/telephony/TelephonyProvider;->getSpnOnSim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1543
    invoke-static/range {v19 .. v19}, Lcom/android/providers/telephony/TelephonyProvider;->checkSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1548
    :cond_1
    if-eqz v19, :cond_3

    .line 1549
    if-eqz p2, :cond_2

    .line 1550
    new-instance v13, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1554
    .local v13, newValues:Landroid/content/ContentValues;
    :goto_0
    const-string v21, "spn"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    :goto_1
    packed-switch v12, :pswitch_data_0

    .line 1710
    :pswitch_0
    new-instance v21, Ljava/lang/UnsupportedOperationException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cannot update that URL: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1552
    .end local v13           #newValues:Landroid/content/ContentValues;
    :cond_2
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .restart local v13       #newValues:Landroid/content/ContentValues;
    goto :goto_0

    .line 1556
    .end local v13           #newValues:Landroid/content/ContentValues;
    :cond_3
    move-object/from16 v13, p2

    .restart local v13       #newValues:Landroid/content/ContentValues;
    goto :goto_1

    .line 1568
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "entitlement_check"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    const/16 v21, 0x1

    :goto_2
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/providers/telephony/TelephonyProvider;->mDoEntitlementCheck:Z

    .line 1572
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "dun_apn_changable"

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-nez v21, :cond_9

    const/16 v21, 0x1

    :goto_3
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/providers/telephony/TelephonyProvider;->mDoDunapnCheck:Z

    .line 1577
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/TelephonyProvider;->mDoEntitlementCheck:Z

    move/from16 v21, v0

    if-nez v21, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/TelephonyProvider;->mDoDunapnCheck:Z

    move/from16 v21, v0

    if-nez v21, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/TelephonyProvider;->mDoCorpsyncCheck:Z

    move/from16 v21, v0

    if-eqz v21, :cond_d

    .line 1578
    :cond_4
    const/16 v20, 0x1

    .line 1579
    .local v20, updateDB:Z
    const-string v21, "type"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1580
    .local v4, apn_type:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "TELE_DB_UPDATE"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/providers/telephony/TelephonyProvider;->entitleUpdate:I

    .line 1582
    if-eqz v4, :cond_5

    .line 1583
    const-string v21, ","

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1584
    .local v3, apn_list:[Ljava/lang/String;
    move-object v5, v3

    .local v5, arr$:[Ljava/lang/String;
    array-length v11, v5

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_4
    if-ge v10, v11, :cond_5

    aget-object v9, v5, v10

    .line 1585
    .local v9, i:Ljava/lang/String;
    const-string v21, "entitle"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 1586
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/TelephonyProvider;->mDoEntitlementCheck:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/telephony/TelephonyProvider;->entitleUpdate:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_a

    .line 1587
    const-string v21, "TelephonyProvider"

    const-string v22, "\'entitle\' APN can\'t be inserted by 3rd party App"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    const/16 v20, 0x0

    .line 1614
    .end local v3           #apn_list:[Ljava/lang/String;
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v9           #i:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    :cond_5
    :goto_5
    if-eqz v20, :cond_6

    .line 1615
    const-string v21, "carriers"

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v8, v0, v13, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1714
    .end local v4           #apn_type:Ljava/lang/String;
    .end local v20           #updateDB:Z
    :cond_6
    :goto_6
    if-lez v7, :cond_7

    .line 1715
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    sget-object v22, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1718
    :cond_7
    return v7

    .line 1568
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 1572
    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 1594
    .restart local v3       #apn_list:[Ljava/lang/String;
    .restart local v4       #apn_type:Ljava/lang/String;
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v9       #i:Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v20       #updateDB:Z
    :cond_a
    const-string v21, "dun"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 1595
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/TelephonyProvider;->mDoDunapnCheck:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    .line 1596
    const-string v21, "TelephonyProvider"

    const-string v22, "Can not add new entry of APN type DUN."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    const/16 v20, 0x0

    .line 1598
    goto :goto_5

    .line 1603
    :cond_b
    const-string v21, "corpsync"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 1604
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/TelephonyProvider;->mDoCorpsyncCheck:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    if-eqz v6, :cond_c

    .line 1605
    const-string v21, "TelephonyProvider"

    const-string v22, "Can not add more than one entry of APN type corpsync."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    const/16 v20, 0x0

    .line 1608
    goto :goto_5

    .line 1584
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 1618
    .end local v3           #apn_list:[Ljava/lang/String;
    .end local v4           #apn_type:Ljava/lang/String;
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v9           #i:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v20           #updateDB:Z
    :cond_d
    const-string v21, "carriers"

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v8, v0, v13, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1622
    goto :goto_6

    .line 1627
    :pswitch_2
    const-string v21, "carriers"

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v8, v0, v13, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1628
    goto :goto_6

    .line 1633
    :pswitch_3
    if-nez p3, :cond_e

    if-eqz p4, :cond_f

    .line 1634
    :cond_e
    new-instance v21, Ljava/lang/UnsupportedOperationException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cannot update URL "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " with a where clause"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1637
    :cond_f
    const-string v21, "carriers"

    const-string v22, "_id=?"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v8, v0, v13, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1639
    goto/16 :goto_6

    .line 1645
    :pswitch_4
    if-eqz p2, :cond_6

    .line 1646
    const-string v21, "apn_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 1650
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/telephony/TelephonyProvider;->mDoCorpsyncCheck:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    .line 1651
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/providers/telephony/CorpSyncApnUtils;->validateCorpSyncApnPreference(Landroid/content/Context;Landroid/content/ContentValues;)Z

    move-result v6

    .line 1655
    :cond_10
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v6, v0, :cond_6

    .line 1656
    const-string v21, "apn_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApnId(Ljava/lang/Long;)V

    .line 1657
    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v12, v0, :cond_6

    const/4 v7, 0x1

    goto/16 :goto_6

    .line 1661
    :cond_11
    const-string v21, "prefer_apn_switch"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 1662
    const-string v21, "prefer_apn_switch"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const-wide/16 v23, 0x1

    cmp-long v21, v21, v23

    if-nez v21, :cond_6

    .line 1663
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->switchPreferredApnId()V

    .line 1664
    const/4 v7, 0x1

    goto/16 :goto_6

    .line 1675
    :pswitch_5
    if-eqz p2, :cond_6

    .line 1676
    const-string v21, "apn2_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 1677
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getPreferredApn2Id()J

    move-result-wide v15

    .line 1678
    .local v15, preferredApn2Id:J
    const-string v21, "apn2_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    cmp-long v21, v15, v21

    if-nez v21, :cond_12

    .line 1679
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 1681
    :cond_12
    const-string v21, "apn2_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredApn2Id(Ljava/lang/Long;)V

    .line 1682
    const/4 v7, 0x1

    goto/16 :goto_6

    .line 1693
    .end local v15           #preferredApn2Id:J
    :pswitch_6
    const-string v21, "TelephonyProvider"

    const-string v22, "update() case URL_PREFERSTREAMINGAPN"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    if-eqz p2, :cond_6

    .line 1695
    const-string v21, "streamingapn_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 1696
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider;->getPreferredStreamingApnId()J

    move-result-wide v17

    .line 1697
    .local v17, preferredStreamingApnId:J
    const-string v21, "streamingapn_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    cmp-long v21, v17, v21

    if-nez v21, :cond_13

    .line 1698
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 1700
    :cond_13
    const-string v21, "streamingapn_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/TelephonyProvider;->setPreferredStreamingApnId(Ljava/lang/Long;)V

    .line 1701
    const/4 v7, 0x1

    goto/16 :goto_6

    .line 1561
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
