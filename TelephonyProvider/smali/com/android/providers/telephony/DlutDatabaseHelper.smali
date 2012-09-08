.class Lcom/android/providers/telephony/DlutDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DlutDatabaseHelper.java"


# static fields
.field private static final DBG:Z = false

.field private static final DB_NAME:Ljava/lang/String; = "dlut.db"

.field private static final DB_ORIG:Ljava/lang/String; = "vzw_mcc_idd_lookup.db"

.field private static final DB_VERSION:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DlutDatabaseHelper"


# instance fields
.field private dbPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 36
    const-string v0, "dlut.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 37
    iput-object p1, p0, Lcom/android/providers/telephony/DlutDatabaseHelper;->mContext:Landroid/content/Context;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/telephony/DlutDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/DlutDatabaseHelper;->dbPath:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private checkDatabase()I
    .locals 5

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, checkDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 85
    .local v1, result:I
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/providers/telephony/DlutDatabaseHelper;->dbPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dlut.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 88
    const/4 v1, 0x2

    .line 96
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 102
    :cond_1
    :goto_1
    return v1

    .line 90
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v2

    .line 96
    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 96
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v2
.end method

.method private copyDatabase()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v4, 0x0

    .line 107
    .local v4, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 110
    .local v3, fis:Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/providers/telephony/DlutDatabaseHelper;->dbPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dlut.db"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 111
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v7, p0, Lcom/android/providers/telephony/DlutDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "vzw_mcc_idd_lookup.db"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 112
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 115
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, length:I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 116
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    .end local v0           #buffer:[B
    .end local v6           #length:I
    :catchall_0
    move-exception v7

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v4, :cond_0

    .line 121
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 123
    :cond_0
    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v7

    .line 118
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #length:I
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    if-eqz v5, :cond_3

    .line 121
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 123
    :cond_3
    if-eqz v3, :cond_4

    .line 124
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 129
    :cond_4
    const/4 v1, 0x0

    .line 131
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/providers/telephony/DlutDatabaseHelper;->dbPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dlut.db"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-static {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_5

    .line 134
    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 139
    :cond_5
    if-eqz v1, :cond_6

    .line 140
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 143
    :cond_6
    :goto_2
    return-void

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string v7, "DlutDatabaseHelper"

    const-string v8, "operator.db database write fail!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 139
    if-eqz v1, :cond_6

    .line 140
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 139
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_1
    move-exception v7

    if-eqz v1, :cond_7

    .line 140
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v7

    .line 120
    .end local v0           #buffer:[B
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #length:I
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    goto :goto_1
.end method

.method private getTableData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .parameter "dbName"
    .parameter "tableName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v15, userList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v10, 0x0

    .line 148
    .local v10, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 150
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    const/16 v3, 0x11

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_0

    .line 153
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 156
    :cond_0
    const/16 v16, 0x0

    .line 158
    .local v16, values:Landroid/content/ContentValues;
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 159
    invoke-interface {v10}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v11

    .line 161
    .local v11, columnNames:[Ljava/lang/String;
    :cond_1
    new-instance v16, Landroid/content/ContentValues;

    .end local v16           #values:Landroid/content/ContentValues;
    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .restart local v16       #values:Landroid/content/ContentValues;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    array-length v2, v11

    if-ge v13, v2, :cond_3

    .line 163
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 164
    .local v14, item:Ljava/lang/String;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 165
    aget-object v2, v11, v13

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 168
    .end local v14           #item:Ljava/lang/String;
    :cond_3
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 174
    .end local v11           #columnNames:[Ljava/lang/String;
    .end local v13           #i:I
    :cond_4
    if-eqz v10, :cond_5

    .line 175
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_5
    if-eqz v1, :cond_6

    .line 178
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 181
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_6
    :goto_1
    return-object v15

    .line 171
    :catch_0
    move-exception v12

    .line 172
    .local v12, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v2, "DlutDatabaseHelper"

    const-string v3, "table read fail! "

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    if-eqz v10, :cond_7

    .line 175
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_7
    if-eqz v1, :cond_6

    .line 178
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 174
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_8

    .line 175
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_8
    if-eqz v1, :cond_9

    .line 178
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    throw v2
.end method

.method private setTableData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .parameter "dbName"
    .parameter "tableName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v0, 0x0

    .line 186
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    const/4 v4, 0x0

    const/16 v5, 0x10

    :try_start_0
    invoke-static {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_2

    .line 193
    const/4 v3, 0x0

    .line 194
    .local v3, values:Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 195
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #values:Landroid/content/ContentValues;
    check-cast v3, Landroid/content/ContentValues;

    .line 196
    .restart local v3       #values:Landroid/content/ContentValues;
    const/4 v4, 0x0

    invoke-virtual {v0, p2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 202
    .end local v2           #i:I
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_2
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v4, "DlutDatabaseHelper"

    const-string v5, "table write fail! "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 202
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    .line 203
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v4
.end method


# virtual methods
.method public createDataBase()V
    .locals 9

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/providers/telephony/DlutDatabaseHelper;->checkDatabase()I

    move-result v2

    .line 50
    .local v2, dbStatus:I
    packed-switch v2, :pswitch_data_0

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 53
    :pswitch_0
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/telephony/DlutDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v6, "dlut.db"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 54
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 56
    invoke-direct {p0}, Lcom/android/providers/telephony/DlutDatabaseHelper;->copyDatabase()V

    goto :goto_0

    .line 70
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 60
    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/providers/telephony/DlutDatabaseHelper;->dbPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dlut.db"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, dbName:Ljava/lang/String;
    const-string v4, "useradd_country"

    .line 62
    .local v4, tableName:Ljava/lang/String;
    invoke-direct {p0, v1, v4}, Lcom/android/providers/telephony/DlutDatabaseHelper;->getTableData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 63
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {p0}, Lcom/android/providers/telephony/DlutDatabaseHelper;->copyDatabase()V

    .line 64
    invoke-direct {p0, v1, v4, v3}, Lcom/android/providers/telephony/DlutDatabaseHelper;->setTableData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 43
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 78
    return-void
.end method
