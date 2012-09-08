.class public Lcom/android/providers/telephony/OperatorDatabaseProvider;
.super Landroid/content/ContentProvider;
.source "OperatorDatabaseProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;
    }
.end annotation


# static fields
.field private static final CDMA_MCC_MNC_VIEW:Ljava/lang/String; = "cdma_operator_mccmnc_view"

.field private static final CDMA_OPERATOR_INFO_TABLE:Ljava/lang/String; = "cdma_operator_info"

.field private static final CDMA_SID_NID_VIEW:Ljava/lang/String; = "cdma_operator_sidnid_view"

.field private static final CDMA_UNRESOLVABLE_CONFLICT_VIEW:Ljava/lang/String; = "cdma_unresolvable_conflict_view"

.field private static final DATABASE_PRIMARY_KEY:Ljava/lang/String; = "_id"

.field private static final GSM_MCC_MNC_VIEW:Ljava/lang/String; = "gsm_operator_mccmnc_view"

.field private static final GSM_OPERATOR_INFO_TABLE:Ljava/lang/String; = "gsm_operator_info"

.field private static final TAG:Ljava/lang/String; = "OperatorDatabaseProvider"

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDbHelper:Lcom/android/providers/telephony/OperatorDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/OperatorDatabaseProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 47
    sget-object v0, Lcom/android/providers/telephony/OperatorDatabaseProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "cdma_operator"

    const-string v2, "cdma_operator_sidnid_view"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    sget-object v0, Lcom/android/providers/telephony/OperatorDatabaseProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "cdma_operator"

    const-string v2, "cdma_operator_mccmnc_view"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    sget-object v0, Lcom/android/providers/telephony/OperatorDatabaseProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "gsm_operator"

    const-string v2, "gsm_operator_mccmnc_view"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    sget-object v0, Lcom/android/providers/telephony/OperatorDatabaseProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "cdma_operator"

    const-string v2, "cdma_unresolvable_conflict_view"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    sget-object v0, Lcom/android/providers/telephony/OperatorDatabaseProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "cdma_operator"

    const-string v2, "cdma_operator_info"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    sget-object v0, Lcom/android/providers/telephony/OperatorDatabaseProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "gsm_operator"

    const-string v2, "gsm_operator_info"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 176
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 72
    const-string v0, "OperatorDatabaseProvider"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Lcom/android/providers/telephony/OperatorDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/telephony/OperatorDatabaseProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/OperatorDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider;->mDbHelper:Lcom/android/providers/telephony/OperatorDatabaseHelper;

    .line 74
    iget-object v0, p0, Lcom/android/providers/telephony/OperatorDatabaseProvider;->mDbHelper:Lcom/android/providers/telephony/OperatorDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/telephony/OperatorDatabaseHelper;->createDataBase()V

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 19
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/telephony/OperatorDatabaseProvider;->mDbHelper:Lcom/android/providers/telephony/OperatorDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/telephony/OperatorDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 82
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 84
    .local v3, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v5, Lcom/android/providers/telephony/OperatorDatabaseProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 85
    .local v13, match:I
    const-string v5, "OperatorDatabaseProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query match:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    packed-switch v13, :pswitch_data_0

    .line 106
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 88
    :pswitch_0
    const-string v5, "cdma_operator_sidnid_view"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 109
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 111
    .local v11, c:Landroid/database/Cursor;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v17, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 115
    :cond_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v18, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move-object/from16 v0, p2

    array-length v5, v0

    if-ge v12, v5, :cond_5

    .line 117
    aget-object v5, p2, v12

    sget-object v6, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, p2, v12

    sget-object v6, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 119
    :cond_1
    const/4 v14, 0x0

    .line 120
    .local v14, nameId:Ljava/lang/String;
    packed-switch v13, :pswitch_data_1

    .line 132
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/OperatorDatabaseProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "string"

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/OperatorDatabaseProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v14, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 134
    .local v16, resId:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/OperatorDatabaseProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v14           #nameId:Ljava/lang/String;
    .end local v16           #resId:I
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 91
    .end local v11           #c:Landroid/database/Cursor;
    .end local v12           #i:I
    .end local v17           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    .end local v18           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    const-string v5, "cdma_operator_mccmnc_view"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :pswitch_2
    const-string v5, "gsm_operator_mccmnc_view"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_3
    const-string v5, "cdma_unresolvable_conflict_view"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :pswitch_4
    const-string v5, "cdma_operator_info"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :pswitch_5
    const-string v5, "gsm_operator_info"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #i:I
    .restart local v14       #nameId:Ljava/lang/String;
    .restart local v17       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    .restart local v18       #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cdma_operator_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 125
    goto :goto_2

    .line 127
    :pswitch_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm_operator_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 135
    .end local v14           #nameId:Ljava/lang/String;
    :cond_2
    aget-object v5, p2, v12

    sget-object v6, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    aget-object v5, p2, v12

    sget-object v6, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 137
    :cond_3
    const/4 v14, 0x0

    .line 138
    .restart local v14       #nameId:Ljava/lang/String;
    packed-switch v13, :pswitch_data_2

    .line 150
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/OperatorDatabaseProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "string"

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/OperatorDatabaseProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v14, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 152
    .restart local v16       #resId:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/OperatorDatabaseProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 141
    .end local v16           #resId:I
    :pswitch_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cdma_operator_long_name_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 143
    goto :goto_4

    .line 145
    :pswitch_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gsm_operator_long_name_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 154
    .end local v14           #nameId:Ljava/lang/String;
    :cond_4
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 157
    :cond_5
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 161
    .end local v12           #i:I
    .end local v18           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    if-eqz v11, :cond_7

    .line 162
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_7
    new-instance v15, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-direct {v15, v0, v1, v2}, Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;-><init>(Lcom/android/providers/telephony/OperatorDatabaseProvider;[Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 167
    .local v15, operatorc:Lcom/android/providers/telephony/OperatorDatabaseProvider$OperatorCursor;
    return-object v15

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 120
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 138
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 172
    const-string v0, "OperatorDatabaseProvider"

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x0

    return v0
.end method
