.class public final Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UpdateThumbnailRunnable"
.end annotation


# instance fields
.field private data:[B

.field options:Landroid/graphics/BitmapFactory$Options;

.field rotationMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Lcom/motorola/Camera/Camera;


# direct methods
.method public constructor <init>(Lcom/motorola/Camera/Camera;[B)V
    .locals 1
    .parameter
    .parameter "data"

    .prologue
    .line 4592
    iput-object p1, p0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    .line 4593
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4586
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    .line 4589
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->rotationMatrix:Landroid/graphics/Matrix;

    .line 4594
    iput-object p2, p0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->data:[B

    .line 4595
    return-void
.end method

.method private readGroupIdfromMainPicture(Ljava/lang/String;)V
    .locals 11
    .parameter "thumbnailfilename"

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x1

    .line 5019
    const/4 v7, 0x0

    .line 5021
    .local v7, fullPictureCursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mStatus:I
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$1400(Lcom/motorola/Camera/Camera;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 5023
    :try_start_0
    iget-object v0, p0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "shooting_mode"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "multiburst_group_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const-string v3, "( _display_name = ? ) AND ( multiburst_group_id != \'\') AND (shooting_mode != 0)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 5058
    :cond_0
    :goto_0
    if-eqz v7, :cond_7

    .line 5059
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_1

    .line 5060
    const-string v0, "MotoCamera"

    const-string v1, "UpdateThumbnailThread() - fullPictureCursor valid cursors"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5062
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5063
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    .line 5064
    const-string v0, "multiburst_group_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 5066
    .local v8, groupidindex:I
    iget-object v0, p0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/motorola/Camera/Camera;->mMultishotGroupId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/Camera/Camera;->access$8902(Lcom/motorola/Camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    .line 5067
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 5068
    const-string v0, "MotoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateThumbnailThread() - GroupID retrieved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mMultishotGroupId:Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/Camera/Camera;->access$8900(Lcom/motorola/Camera/Camera;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5076
    .end local v8           #groupidindex:I
    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5077
    const/4 v7, 0x0

    .line 5084
    :cond_3
    :goto_2
    return-void

    .line 5036
    :catch_0
    move-exception v9

    .line 5038
    .local v9, ioex:Landroid/database/sqlite/SQLiteDiskIOException;
    if-eqz v7, :cond_4

    .line 5040
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5041
    const/4 v7, 0x0

    .line 5043
    :cond_4
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 5044
    const-string v0, "MotoCamera"

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5047
    .end local v9           #ioex:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v6

    .line 5049
    .local v6, ex:Ljava/lang/Exception;
    if-eqz v7, :cond_5

    .line 5051
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5052
    const/4 v7, 0x0

    .line 5054
    :cond_5
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_0

    .line 5055
    const-string v0, "MotoCamera"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5071
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_6
    iget-object v0, p0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mMultishotGroupId:Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/motorola/Camera/Camera;->access$8902(Lcom/motorola/Camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    .line 5072
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_2

    .line 5073
    const-string v0, "MotoCamera"

    const-string v1, "UpdateThumbnailThread() - GroupID set to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5079
    :cond_7
    iget-object v0, p0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mMultishotGroupId:Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/motorola/Camera/Camera;->access$8902(Lcom/motorola/Camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    .line 5080
    sget-boolean v0, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v0, :cond_3

    .line 5081
    const-string v0, "MotoCamera"

    const-string v1, "UpdateThumbnailThread() - GroupID set to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 31

    .prologue
    .line 4599
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4600
    :cond_0
    const/4 v7, 0x0

    .line 4601
    .local v7, bitmap:Landroid/graphics/Bitmap;
    const/16 v19, 0x0

    .line 4603
    .local v19, interrupted:Z
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 4604
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread - Running..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4608
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4610
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->data:[B

    if-nez v1, :cond_33

    .line 4612
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 4613
    const-string v1, "MotoCamera"

    const-string v2, "KPI: UpdateThumbnailThread - no data passed in, getting from DB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4615
    :cond_2
    const/4 v15, 0x0

    .line 4616
    .local v15, imageCursor:Landroid/database/Cursor;
    const/16 v28, 0x0

    .line 4630
    .local v28, videoCursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "datetaken"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "orientation"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "mini_thumb_magic"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "_display_name"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_SEARCH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_SEARCH_EXT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "shooting_mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_EXCLUDE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_EXCLUDE_EXT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "datetaken DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 4647
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb i cursor creation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4650
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "datetaken"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_SEARCH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_SEARCH_EXT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_EXCLUDE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/motorola/Camera/CameraGlobalType;->CAPTURED_FILE_EXCLUDE_EXT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "datetaken DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v28

    .line 4699
    :cond_4
    :goto_0
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_5

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb v cursor creation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4700
    :cond_5
    if-eqz v15, :cond_30

    if-eqz v28, :cond_30

    .line 4702
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_6

    .line 4703
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread() - valid cursors"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4708
    :cond_6
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4709
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4712
    const-string v1, "datetaken"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 4713
    .local v8, dateTakenInd:I
    const-string v1, "_id"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 4714
    .local v10, displayNameIndex:I
    const-string v1, "orientation"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 4715
    .local v24, orientationInd:I
    const-string v1, "mini_thumb_magic"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 4718
    .local v22, miniThumbInd:I
    const-string v1, "_display_name"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 4720
    .local v14, fileNameIndex:I
    const/4 v13, 0x0

    .line 4721
    .local v13, fileName:Ljava/lang/String;
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_7

    .line 4722
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 4723
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_7

    .line 4724
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateThumbnailThread() - thumbnail file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4729
    :cond_7
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_8

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb cursor extraction"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4731
    :cond_8
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_15

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_15

    .line 4733
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_9

    .line 4734
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread() - both cursors empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4737
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4900(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4900(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 4738
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4900(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 4740
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$4902(Lcom/motorola/Camera/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 4742
    const/4 v7, 0x0

    .line 4898
    :cond_b
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 4899
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 4942
    .end local v8           #dateTakenInd:I
    .end local v10           #displayNameIndex:I
    .end local v13           #fileName:Ljava/lang/String;
    .end local v14           #fileNameIndex:I
    .end local v15           #imageCursor:Landroid/database/Cursor;
    .end local v22           #miniThumbInd:I
    .end local v24           #orientationInd:I
    .end local v28           #videoCursor:Landroid/database/Cursor;
    :cond_c
    :goto_2
    monitor-enter p0

    .line 4943
    if-nez v19, :cond_d

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 4944
    :cond_d
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_e

    .line 4945
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4946
    :cond_e
    if-eqz v7, :cond_f

    .line 4947
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 4949
    :cond_f
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4991
    :cond_10
    :goto_3
    return-void

    .line 4662
    .restart local v15       #imageCursor:Landroid/database/Cursor;
    .restart local v28       #videoCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v20

    .line 4664
    .local v20, ioex:Landroid/database/sqlite/SQLiteDiskIOException;
    if-eqz v15, :cond_11

    .line 4666
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 4667
    const/4 v15, 0x0

    .line 4670
    :cond_11
    if-eqz v28, :cond_12

    .line 4672
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 4673
    const/16 v28, 0x0

    .line 4676
    :cond_12
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    .line 4677
    const-string v1, "MotoCamera"

    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4680
    .end local v20           #ioex:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v12

    .line 4682
    .local v12, ex:Ljava/lang/Exception;
    if-eqz v15, :cond_13

    .line 4684
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 4685
    const/4 v15, 0x0

    .line 4688
    :cond_13
    if-eqz v28, :cond_14

    .line 4690
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 4691
    const/16 v28, 0x0

    .line 4694
    :cond_14
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    .line 4695
    const-string v1, "MotoCamera"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4745
    .end local v12           #ex:Ljava/lang/Exception;
    .restart local v8       #dateTakenInd:I
    .restart local v10       #displayNameIndex:I
    .restart local v13       #fileName:Ljava/lang/String;
    .restart local v14       #fileNameIndex:I
    .restart local v22       #miniThumbInd:I
    .restart local v24       #orientationInd:I
    :cond_15
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1e

    .line 4747
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_16

    .line 4748
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread() - imageCursor has elements"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4751
    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->readGroupIdfromMainPicture(Ljava/lang/String;)V

    .line 4754
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4757
    .local v9, displayName:Ljava/lang/String;
    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    .line 4759
    .local v23, miniThumbValue:Ljava/lang/Long;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_18

    .line 4761
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4762
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4796
    :cond_17
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    move/from16 v0, v24

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    #setter for: Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5002(Lcom/motorola/Camera/Camera;I)I

    goto/16 :goto_1

    .line 4768
    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPicResolution()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 4769
    .local v25, pictureSize:[Ljava/lang/String;
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_19

    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageCursor.getCount() != 0 current picture width is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v25, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4770
    :cond_19
    const/4 v1, 0x1

    aget-object v1, v25, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v26, v1, 0x78

    .line 4771
    .local v26, sampleSize:I
    const/16 v1, 0x10

    move/from16 v0, v26

    if-lt v0, v1, :cond_1b

    const/16 v26, 0x10

    .line 4775
    :goto_5
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1a

    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageCursor.getCount() != 0 sampleSize is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4776
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move/from16 v0, v26

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4777
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 4779
    .local v21, mUri:Landroid/net/Uri;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v18

    .line 4780
    .local v18, inputStream:Ljava/io/InputStream;
    if-eqz v18, :cond_17

    .line 4781
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v0, v18

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 4782
    .local v27, tBitmap:Landroid/graphics/Bitmap;
    if-eqz v27, :cond_17

    .line 4783
    const/16 v1, 0x60

    const/16 v2, 0x60

    move-object/from16 v0, v27

    invoke-static {v0, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4786
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 4789
    .end local v18           #inputStream:Ljava/io/InputStream;
    .end local v27           #tBitmap:Landroid/graphics/Bitmap;
    :catch_2
    move-exception v11

    .line 4790
    .local v11, e:Ljava/io/FileNotFoundException;
    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File not found exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 4772
    .end local v11           #e:Ljava/io/FileNotFoundException;
    .end local v21           #mUri:Landroid/net/Uri;
    :cond_1b
    const/16 v1, 0x8

    move/from16 v0, v26

    if-lt v0, v1, :cond_1c

    const/16 v26, 0x8

    goto/16 :goto_5

    .line 4773
    :cond_1c
    const/4 v1, 0x4

    move/from16 v0, v26

    if-lt v0, v1, :cond_1d

    const/16 v26, 0x4

    goto/16 :goto_5

    .line 4774
    :cond_1d
    const/16 v26, 0x2

    goto/16 :goto_5

    .line 4798
    .end local v9           #displayName:Ljava/lang/String;
    .end local v23           #miniThumbValue:Ljava/lang/Long;
    .end local v25           #pictureSize:[Ljava/lang/String;
    .end local v26           #sampleSize:I
    :cond_1e
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_20

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_20

    .line 4800
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1f

    .line 4801
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread() - videoCursor has elements"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4802
    :cond_1f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4804
    move-object/from16 v0, v28

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4807
    .restart local v9       #displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4808
    goto/16 :goto_1

    .line 4811
    .end local v9           #displayName:Ljava/lang/String;
    :cond_20
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_21

    .line 4812
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread() - both cursors have elements"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4814
    :cond_21
    invoke-interface {v15, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 4815
    .local v16, imageDateTaken:J
    move-object/from16 v0, v28

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 4817
    .local v29, videoDateTaken:J
    cmp-long v1, v16, v29

    if-lez v1, :cond_2e

    .line 4820
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_22

    .line 4821
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread() - image was last taken"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4823
    :cond_22
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->readGroupIdfromMainPicture(Ljava/lang/String;)V

    .line 4824
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_23

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb read group"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4828
    :cond_23
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4830
    .restart local v9       #displayName:Ljava/lang/String;
    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    .line 4831
    .restart local v23       #miniThumbValue:Ljava/lang/Long;
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_24

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb mini thumb"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4833
    :cond_24
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_27

    .line 4835
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4836
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_25

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb thumb from db before"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4837
    :cond_25
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4839
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_26

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb thumb from db"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4875
    :cond_26
    :goto_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    move/from16 v0, v24

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    #setter for: Lcom/motorola/Camera/Camera;->mThumbnailOrientation:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$5002(Lcom/motorola/Camera/Camera;I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 4877
    :catch_3
    move-exception v12

    .line 4878
    .restart local v12       #ex:Ljava/lang/Exception;
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread() - imageCursor.getInt failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4844
    .end local v12           #ex:Ljava/lang/Exception;
    :cond_27
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 4847
    .restart local v21       #mUri:Landroid/net/Uri;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getPicResolution()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 4848
    .restart local v25       #pictureSize:[Ljava/lang/String;
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_28

    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current picture width is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v25, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4849
    :cond_28
    const/4 v1, 0x1

    aget-object v1, v25, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v26, v1, 0x78

    .line 4850
    .restart local v26       #sampleSize:I
    const/16 v1, 0x10

    move/from16 v0, v26

    if-lt v0, v1, :cond_2b

    const/16 v26, 0x10

    .line 4854
    :goto_7
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_29

    const-string v1, "MotoCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sampleSize is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4855
    :cond_29
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move/from16 v0, v26

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4856
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v18

    .line 4857
    .restart local v18       #inputStream:Ljava/io/InputStream;
    if-eqz v18, :cond_2a

    .line 4858
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v0, v18

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 4859
    .restart local v27       #tBitmap:Landroid/graphics/Bitmap;
    if-eqz v27, :cond_2a

    .line 4860
    const/16 v1, 0x60

    const/16 v2, 0x60

    move-object/from16 v0, v27

    invoke-static {v0, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4861
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 4868
    .end local v18           #inputStream:Ljava/io/InputStream;
    .end local v25           #pictureSize:[Ljava/lang/String;
    .end local v26           #sampleSize:I
    .end local v27           #tBitmap:Landroid/graphics/Bitmap;
    :cond_2a
    :goto_8
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_26

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb thumb from file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 4851
    .restart local v25       #pictureSize:[Ljava/lang/String;
    .restart local v26       #sampleSize:I
    :cond_2b
    const/16 v1, 0x8

    move/from16 v0, v26

    if-lt v0, v1, :cond_2c

    const/16 v26, 0x8

    goto :goto_7

    .line 4852
    :cond_2c
    const/4 v1, 0x4

    move/from16 v0, v26

    if-lt v0, v1, :cond_2d

    const/16 v26, 0x4

    goto :goto_7

    .line 4853
    :cond_2d
    const/16 v26, 0x2

    goto :goto_7

    .line 4864
    .end local v25           #pictureSize:[Ljava/lang/String;
    .end local v26           #sampleSize:I
    :catch_4
    move-exception v11

    .line 4866
    .restart local v11       #e:Ljava/io/FileNotFoundException;
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_8

    .line 4883
    .end local v9           #displayName:Ljava/lang/String;
    .end local v11           #e:Ljava/io/FileNotFoundException;
    .end local v21           #mUri:Landroid/net/Uri;
    .end local v23           #miniThumbValue:Ljava/lang/Long;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4885
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2f

    .line 4886
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread() - video was last taken"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4889
    :cond_2f
    move-object/from16 v0, v28

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4892
    .restart local v9       #displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$8400(Lcom/motorola/Camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4893
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_b

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb vthumb created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4903
    .end local v8           #dateTakenInd:I
    .end local v9           #displayName:Ljava/lang/String;
    .end local v10           #displayNameIndex:I
    .end local v13           #fileName:Ljava/lang/String;
    .end local v14           #fileNameIndex:I
    .end local v16           #imageDateTaken:J
    .end local v22           #miniThumbInd:I
    .end local v24           #orientationInd:I
    .end local v29           #videoDateTaken:J
    :cond_30
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_31

    .line 4904
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread() - one of the cursors is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4909
    :cond_31
    if-eqz v28, :cond_32

    .line 4911
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 4912
    const/16 v28, 0x0

    .line 4914
    :cond_32
    if-eqz v15, :cond_c

    .line 4916
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 4925
    .end local v15           #imageCursor:Landroid/database/Cursor;
    .end local v28           #videoCursor:Landroid/database/Cursor;
    :cond_33
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/16 v2, 0x10

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4928
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    invoke-virtual {v1}, Lcom/motorola/Camera/Camera;->rotateCurrentThumbnail()V

    .line 4930
    monitor-enter p0

    .line 4931
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->isInterrupted()Z

    move-result v19

    .line 4932
    if-nez v19, :cond_34

    .line 4934
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->data:[B

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->data:[B

    array-length v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4935
    const/16 v1, 0x60

    const/16 v2, 0x60

    invoke-static {v7, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4937
    :cond_34
    monitor-exit p0

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 4953
    :cond_35
    if-nez v7, :cond_36

    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4900(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 4954
    monitor-exit p0

    goto/16 :goto_3

    .line 4989
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 4957
    :cond_36
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4900(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_37

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4900(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_37

    .line 4958
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$4900(Lcom/motorola/Camera/Camera;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 4961
    :cond_37
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->data:[B

    .line 4963
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #setter for: Lcom/motorola/Camera/Camera;->mThumbnailBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v7}, Lcom/motorola/Camera/Camera;->access$4902(Lcom/motorola/Camera/Camera;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 4965
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/motorola/Camera/Camera;->mThumbnailDecoded:Z
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camera;->access$3402(Lcom/motorola/Camera/Camera;Z)Z

    .line 4966
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getCurrentCameraMode()I

    move-result v1

    if-nez v1, :cond_3a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$2800(Lcom/motorola/Camera/Camera;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->isInServiceMode()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 4968
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_38

    const-string v1, "MotoCamera"

    const-string v2, "Updating thumbnail based on whether animation is running or not"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4970
    :cond_38
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mAnimationRunning:Z
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$3300(Lcom/motorola/Camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 4972
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailRunnable() Animation is not running update the thumbnail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4973
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4989
    :cond_39
    :goto_9
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 4990
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_10

    const-string v1, "MotoCameraKPI"

    const-string v2, "updateThumb exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4978
    :cond_3a
    :try_start_8
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3b

    .line 4979
    const-string v1, "MotoCamera"

    const-string v2, "Updating thumbnail based on independent of animation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4980
    const-string v1, "MotoCamera"

    const-string v2, "UpdateThumbnailThread() - send UPDATE_THUMBNAIL message. KPI: Work is done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4985
    :cond_3b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camera$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camera;

    #getter for: Lcom/motorola/Camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camera;->access$1900(Lcom/motorola/Camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_9
.end method
