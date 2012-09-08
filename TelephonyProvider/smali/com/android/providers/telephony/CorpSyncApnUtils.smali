.class public Lcom/android/providers/telephony/CorpSyncApnUtils;
.super Ljava/lang/Object;
.source "CorpSyncApnUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApnOfTypeCorpSync"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static corpSyncApnCount(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "count(*)"

    aput-object v3, v2, v5

    const-string v3, "type like \'corpsync\' OR type like \',corpsync\' OR type like \',corpsync,\' OR type like \'corpsync,\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 49
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 50
    .local v7, noofCorpSyncApnType:I
    if-eqz v6, :cond_1

    .line 52
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 56
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 59
    :cond_1
    return v7

    .line 56
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isCorpSyncFlexEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "config_newapn_for_corpsync"

    invoke-static {v2, v3, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static validateCorpSyncApnInsert(Landroid/content/Context;Landroid/content/ContentValues;)Z
    .locals 4
    .parameter "context"
    .parameter "initialValues"

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 67
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 68
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, apnType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "corpsync"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/providers/telephony/CorpSyncApnUtils;->corpSyncApnCount(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_0

    .line 72
    const-string v2, "ApnOfTypeCorpSync"

    const-string v3, "Can not add new entry of APN type corpsync already existing."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v2, 0x1

    .line 76
    .end local v0           #apnType:Ljava/lang/String;
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static validateCorpSyncApnPreference(Landroid/content/Context;Landroid/content/ContentValues;)Z
    .locals 10
    .parameter "context"
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 81
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "apn_id"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 83
    .local v1, corpUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 89
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 91
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v8, "type"

    .line 93
    .local v8, apnTypeColName:Ljava/lang/String;
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 94
    .local v7, apnTypeColIndex:I
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, ApnType:Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v0, "corpsync"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "ApnOfTypeCorpSync"

    const-string v2, "can not make corpsync type apn default"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    const/4 v0, 0x1

    .line 102
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 105
    .end local v6           #ApnType:Ljava/lang/String;
    .end local v7           #apnTypeColIndex:I
    .end local v8           #apnTypeColName:Ljava/lang/String;
    :goto_0
    return v0

    .line 102
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method
