.class public Lcom/android/providers/telephony/OperatorDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "OperatorDatabaseHelper.java"


# static fields
.field private static final DBNAME:Ljava/lang/String; = "operator.db"

.field private static final DB_EXT_VERSION:I = 0x25e

.field private static final DB_VERSION:I = 0x6

.field private static final PLATFORM_VERSION:I = 0x6

.field private static final TAG:Ljava/lang/String; = "OperatorDatabaseHelper"


# instance fields
.field private dbPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 35
    const-string v0, "operator.db"

    const/4 v1, 0x0

    const/16 v2, 0x25e

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 36
    iput-object p1, p0, Lcom/android/providers/telephony/OperatorDatabaseHelper;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/telephony/OperatorDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/OperatorDatabaseHelper;->dbPath:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private checkDatabase()I
    .locals 6

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, checkDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 79
    .local v2, result:I
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/providers/telephony/OperatorDatabaseHelper;->dbPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "operator.db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x11

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0x25e

    if-ne v3, v4, :cond_2

    .line 83
    const/4 v2, 0x2

    .line 91
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 95
    :cond_1
    :goto_1
    return v2

    .line 85
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v3, "OperatorDatabaseHelper"

    const-string v4, "operator.db database does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 91
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 92
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v3
.end method

.method private copyDatabase()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v4, 0x0

    .line 100
    .local v4, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 102
    .local v3, fis:Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/providers/telephony/OperatorDatabaseHelper;->dbPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "operator.db"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 103
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v7, p0, Lcom/android/providers/telephony/OperatorDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "operator.db"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 104
    const/16 v7, 0x1000

    new-array v0, v7, [B

    .line 107
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, length:I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 108
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    .end local v0           #buffer:[B
    .end local v6           #length:I
    :catchall_0
    move-exception v7

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v4, :cond_0

    .line 113
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 115
    :cond_0
    if-eqz v3, :cond_1

    .line 116
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v7

    .line 110
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #length:I
    :cond_2
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    if-eqz v5, :cond_3

    .line 113
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 115
    :cond_3
    if-eqz v3, :cond_4

    .line 116
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 121
    :cond_4
    const/4 v1, 0x0

    .line 123
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/providers/telephony/OperatorDatabaseHelper;->dbPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "operator.db"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-static {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_5

    .line 126
    const/16 v7, 0x25e

    invoke-virtual {v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 131
    :cond_5
    if-eqz v1, :cond_6

    .line 132
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 135
    :cond_6
    :goto_2
    return-void

    .line 128
    :catch_0
    move-exception v2

    .line 129
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string v7, "OperatorDatabaseHelper"

    const-string v8, "operator.db database write fail!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 131
    if-eqz v1, :cond_6

    .line 132
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 131
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_1
    move-exception v7

    if-eqz v1, :cond_7

    .line 132
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v7

    .line 112
    .end local v0           #buffer:[B
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v6           #length:I
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    goto :goto_1
.end method


# virtual methods
.method public createDataBase()V
    .locals 7

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/providers/telephony/OperatorDatabaseHelper;->checkDatabase()I

    move-result v1

    .line 53
    .local v1, dbStatus:I
    packed-switch v1, :pswitch_data_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 56
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/telephony/OperatorDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v4, "operator.db"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 57
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 59
    invoke-direct {p0}, Lcom/android/providers/telephony/OperatorDatabaseHelper;->copyDatabase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 70
    .local v2, e:Ljava/io/IOException;
    const-string v3, "OperatorDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create Database throws "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    .end local v2           #e:Ljava/io/IOException;
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/providers/telephony/OperatorDatabaseHelper;->copyDatabase()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 42
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 47
    return-void
.end method
