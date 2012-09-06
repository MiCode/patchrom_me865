.class final Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;
.super Ljava/lang/Thread;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/Camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdateThumbnailRunnable"
.end annotation


# instance fields
.field private data:Landroid/graphics/Bitmap;

.field private genVideoThumbnail:Z

.field public mDone:Z

.field options:Landroid/graphics/BitmapFactory$Options;

.field rotationMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Lcom/motorola/Camera/Camcorder;


# direct methods
.method public constructor <init>(Lcom/motorola/Camera/Camcorder;Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter
    .parameter "original"
    .parameter "needVideoThumbnail"

    .prologue
    .line 1820
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    .line 1821
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1813
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    .line 1816
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->rotationMatrix:Landroid/graphics/Matrix;

    .line 1822
    iput-object p2, p0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->data:Landroid/graphics/Bitmap;

    .line 1823
    iput-boolean p3, p0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->genVideoThumbnail:Z

    .line 1824
    return-void
.end method


# virtual methods
.method public run()V
    .locals 33

    .prologue
    .line 1828
    const/4 v7, 0x0

    .line 1829
    .local v7, bitmap:Landroid/graphics/Bitmap;
    const/16 v18, 0x0

    .line 1832
    .local v18, interrupted:Z
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 1833
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread - Running..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1838
    const/4 v14, 0x0

    .line 1839
    .local v14, imageCursor:Landroid/database/Cursor;
    const/16 v28, 0x0

    .line 1843
    .local v28, videoCursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->data:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->genVideoThumbnail:Z

    if-nez v1, :cond_2d

    .line 1845
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1

    .line 1846
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread - no data passed in, trying to get from DB"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;

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

    const/4 v3, 0x4

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

    move-result-object v14

    .line 1855
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;

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

    .line 1895
    :cond_2
    :goto_0
    if-eqz v14, :cond_2a

    if-eqz v28, :cond_2a

    .line 1897
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_3

    .line 1898
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread() - Both cursors are valid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1901
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1904
    const-string v1, "datetaken"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1905
    .local v8, dateTakenInd:I
    const-string v1, "_id"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1906
    .local v10, displayNameIndex:I
    const-string v1, "orientation"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 1907
    .local v24, orientationInd:I
    const-string v1, "mini_thumb_magic"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 1910
    .local v21, miniThumbInd:I
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_f

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_f

    .line 1912
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_4

    .line 1913
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread() - both cursors empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v1, v1, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v1, v1, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1917
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v1, v1, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1919
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 1921
    const/4 v7, 0x0

    .line 2078
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2079
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 2149
    .end local v8           #dateTakenInd:I
    .end local v10           #displayNameIndex:I
    .end local v21           #miniThumbInd:I
    .end local v24           #orientationInd:I
    :cond_6
    :goto_2
    monitor-enter p0

    .line 2151
    if-nez v18, :cond_7

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2152
    :cond_7
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_8

    .line 2153
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    :cond_8
    if-eqz v7, :cond_9

    .line 2155
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 2157
    :cond_9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2175
    :cond_a
    :goto_3
    return-void

    .line 1860
    :catch_0
    move-exception v19

    .line 1862
    .local v19, ioex:Landroid/database/sqlite/SQLiteDiskIOException;
    if-eqz v14, :cond_b

    .line 1864
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1865
    const/4 v14, 0x0

    .line 1867
    :cond_b
    if-eqz v28, :cond_c

    .line 1869
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 1870
    const/16 v28, 0x0

    .line 1873
    :cond_c
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 1874
    const-string v1, "MotoCamcorder"

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1877
    .end local v19           #ioex:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v12

    .line 1879
    .local v12, ex:Ljava/lang/Exception;
    if-eqz v14, :cond_d

    .line 1881
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1882
    const/4 v14, 0x0

    .line 1884
    :cond_d
    if-eqz v28, :cond_e

    .line 1886
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 1887
    const/16 v28, 0x0

    .line 1890
    :cond_e
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2

    .line 1891
    const-string v1, "MotoCamcorder"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1923
    .end local v12           #ex:Ljava/lang/Exception;
    .restart local v8       #dateTakenInd:I
    .restart local v10       #displayNameIndex:I
    .restart local v21       #miniThumbInd:I
    .restart local v24       #orientationInd:I
    :cond_f
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1a

    .line 1925
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_10

    .line 1926
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread() - imageCursor has elements"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    :cond_10
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1932
    .local v9, displayName:Ljava/lang/String;
    move/from16 v0, v21

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 1934
    .local v22, miniThumbValue:Ljava/lang/Long;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_12

    .line 1936
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1937
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1978
    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    #setter for: Lcom/motorola/Camera/Camcorder;->mThumbnailOrientation:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camcorder;->access$302(Lcom/motorola/Camera/Camcorder;I)I

    goto/16 :goto_1

    .line 1944
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    .line 1946
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/16 v2, 0x10

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1960
    :goto_5
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 1962
    .local v20, mUri:Landroid/net/Uri;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v17

    .line 1963
    .local v17, inputStream:Ljava/io/InputStream;
    if-eqz v17, :cond_11

    .line 1964
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v0, v17

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 1965
    .local v26, tBitmap:Landroid/graphics/Bitmap;
    if-eqz v26, :cond_11

    .line 1966
    const/16 v1, 0x60

    const/16 v2, 0x60

    move-object/from16 v0, v26

    invoke-static {v0, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1967
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 1970
    .end local v17           #inputStream:Ljava/io/InputStream;
    .end local v26           #tBitmap:Landroid/graphics/Bitmap;
    :catch_2
    move-exception v11

    .line 1972
    .local v11, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 1950
    .end local v11           #e:Ljava/io/FileNotFoundException;
    .end local v20           #mUri:Landroid/net/Uri;
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 1951
    .local v31, videoSize:[Ljava/lang/String;
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_15

    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " current video width is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v31, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    :cond_15
    const/4 v1, 0x1

    aget-object v1, v31, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v25, v1, 0x78

    .line 1953
    .local v25, sampleSize:I
    const/16 v1, 0x10

    move/from16 v0, v25

    if-lt v0, v1, :cond_17

    const/16 v25, 0x10

    .line 1957
    :goto_6
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_16

    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageCursor.getCount() != 0 sampleSize is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move/from16 v0, v25

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto/16 :goto_5

    .line 1954
    :cond_17
    const/16 v1, 0x8

    move/from16 v0, v25

    if-lt v0, v1, :cond_18

    const/16 v25, 0x8

    goto :goto_6

    .line 1955
    :cond_18
    const/4 v1, 0x4

    move/from16 v0, v25

    if-lt v0, v1, :cond_19

    const/16 v25, 0x4

    goto :goto_6

    .line 1956
    :cond_19
    const/16 v25, 0x2

    goto :goto_6

    .line 1980
    .end local v9           #displayName:Ljava/lang/String;
    .end local v22           #miniThumbValue:Ljava/lang/Long;
    .end local v25           #sampleSize:I
    .end local v31           #videoSize:[Ljava/lang/String;
    :cond_1a
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1c

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1c

    .line 1982
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1b

    .line 1983
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread() - videoCursor has elements"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1986
    move-object/from16 v0, v28

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1989
    .restart local v9       #displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1990
    goto/16 :goto_1

    .line 1993
    .end local v9           #displayName:Ljava/lang/String;
    :cond_1c
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1d

    .line 1994
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread() - both cursors have elements"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :cond_1d
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1997
    .local v15, imageDateTaken:J
    move-object/from16 v0, v28

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 1999
    .local v29, videoDateTaken:J
    cmp-long v1, v15, v29

    if-lez v1, :cond_28

    .line 2002
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_1e

    .line 2003
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread() - image was last taken"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    :cond_1e
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2008
    .restart local v9       #displayName:Ljava/lang/String;
    move/from16 v0, v21

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 2010
    .restart local v22       #miniThumbValue:Ljava/lang/Long;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_20

    .line 2012
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2013
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2057
    :cond_1f
    :goto_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    move/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    #setter for: Lcom/motorola/Camera/Camcorder;->mThumbnailOrientation:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camcorder;->access$302(Lcom/motorola/Camera/Camcorder;I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 2058
    :catch_3
    move-exception v12

    .line 2059
    .restart local v12       #ex:Ljava/lang/Exception;
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread() - imageCursor.getInt failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2019
    .end local v12           #ex:Ljava/lang/Exception;
    :cond_20
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 2023
    .restart local v20       #mUri:Landroid/net/Uri;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    if-eqz v1, :cond_21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_22

    .line 2025
    :cond_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/16 v2, 0x10

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2039
    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v17

    .line 2040
    .restart local v17       #inputStream:Ljava/io/InputStream;
    if-eqz v17, :cond_1f

    .line 2041
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v0, v17

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v26

    .line 2042
    .restart local v26       #tBitmap:Landroid/graphics/Bitmap;
    if-eqz v26, :cond_1f

    .line 2043
    const/16 v1, 0x60

    const/16 v2, 0x60

    move-object/from16 v0, v26

    invoke-static {v0, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2046
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    .line 2049
    .end local v17           #inputStream:Ljava/io/InputStream;
    .end local v26           #tBitmap:Landroid/graphics/Bitmap;
    :catch_4
    move-exception v11

    .line 2051
    .restart local v11       #e:Ljava/io/FileNotFoundException;
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 2029
    .end local v11           #e:Ljava/io/FileNotFoundException;
    :cond_22
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCamSetting:Lcom/motorola/Camera/CamSetting/CommonCamSetting;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$1500(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/CamSetting/CommonCamSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/CamSetting/CommonCamSetting;->getVideoResolution()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/Camera/CameraGlobalTools;->convertInternalResolutionToDimensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 2030
    .restart local v31       #videoSize:[Ljava/lang/String;
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_23

    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " current video width is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v31, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    :cond_23
    const/4 v1, 0x1

    aget-object v1, v31, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v25, v1, 0x78

    .line 2032
    .restart local v25       #sampleSize:I
    const/16 v1, 0x10

    move/from16 v0, v25

    if-lt v0, v1, :cond_25

    const/16 v25, 0x10

    .line 2036
    :goto_9
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_24

    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sampleSize is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    :cond_24
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    move/from16 v0, v25

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_8

    .line 2033
    :cond_25
    const/16 v1, 0x8

    move/from16 v0, v25

    if-lt v0, v1, :cond_26

    const/16 v25, 0x8

    goto :goto_9

    .line 2034
    :cond_26
    const/4 v1, 0x4

    move/from16 v0, v25

    if-lt v0, v1, :cond_27

    const/16 v25, 0x4

    goto :goto_9

    .line 2035
    :cond_27
    const/16 v25, 0x2

    goto :goto_9

    .line 2064
    .end local v9           #displayName:Ljava/lang/String;
    .end local v20           #mUri:Landroid/net/Uri;
    .end local v22           #miniThumbValue:Ljava/lang/Long;
    .end local v25           #sampleSize:I
    .end local v31           #videoSize:[Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2066
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_29

    .line 2067
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread() - video was last taken"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    :cond_29
    move-object/from16 v0, v28

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2073
    .restart local v9       #displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_1

    .line 2083
    .end local v8           #dateTakenInd:I
    .end local v9           #displayName:Ljava/lang/String;
    .end local v10           #displayNameIndex:I
    .end local v15           #imageDateTaken:J
    .end local v21           #miniThumbInd:I
    .end local v24           #orientationInd:I
    .end local v29           #videoDateTaken:J
    :cond_2a
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2b

    .line 2084
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread() - one of the cursors is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    :cond_2b
    if-eqz v28, :cond_2c

    .line 2091
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 2092
    const/16 v28, 0x0

    .line 2094
    :cond_2c
    if-eqz v14, :cond_6

    .line 2096
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2097
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 2105
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->genVideoThumbnail:Z

    if-eqz v1, :cond_2f

    .line 2107
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_2e

    .line 2108
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailRunnable - review time = 0, create the video thumbnail first, and set bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    :cond_2e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #calls: Lcom/motorola/Camera/Camcorder;->recycleVideoFrameBitmap()V
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$6000(Lcom/motorola/Camera/Camcorder;)V

    .line 2111
    new-instance v23, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2112
    .local v23, options:Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/motorola/Camera/Camcorder;->access$5900(Lcom/motorola/Camera/Camcorder;)Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mLastValidMediaId:J
    invoke-static {v3}, Lcom/motorola/Camera/Camcorder;->access$6100(Lcom/motorola/Camera/Camcorder;)J

    move-result-wide v3

    const/4 v5, 0x3

    move-object/from16 v0, v23

    invoke-static {v2, v3, v4, v5, v0}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    .line 2113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v1, v1, Lcom/motorola/Camera/Camcorder;->mVideoFrameBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->data:Landroid/graphics/Bitmap;

    .line 2117
    .end local v23           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->options:Landroid/graphics/BitmapFactory$Options;

    const/16 v2, 0x10

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    const/4 v2, 0x0

    #setter for: Lcom/motorola/Camera/Camcorder;->mThumbnailOrientation:I
    invoke-static {v1, v2}, Lcom/motorola/Camera/Camcorder;->access$302(Lcom/motorola/Camera/Camcorder;I)I

    .line 2120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2123
    const/16 v32, 0x0

    .line 2124
    .local v32, width:I
    const/4 v13, 0x0

    .line 2125
    .local v13, height:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 2126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mController:Lcom/motorola/Camera/View/Control/OnScreenController;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$400(Lcom/motorola/Camera/Camcorder;)Lcom/motorola/Camera/View/Control/OnScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/Camera/View/Control/OnScreenController;->getThumbImageView()Landroid/widget/ImageButton;

    move-result-object v27

    .line 2127
    .local v27, tempImageView:Landroid/widget/ImageButton;
    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v32

    .line 2128
    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v13

    .line 2131
    .end local v27           #tempImageView:Landroid/widget/ImageButton;
    :cond_30
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_31

    .line 2132
    const-string v1, "MotoCamcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateThumbnailRunnable - tempImageView measured width x height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    :cond_31
    monitor-enter p0

    .line 2135
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->isInterrupted()Z

    move-result v18

    .line 2136
    if-nez v18, :cond_33

    .line 2138
    if-eqz v32, :cond_32

    if-nez v13, :cond_34

    .line 2139
    :cond_32
    const/4 v7, 0x0

    .line 2146
    :cond_33
    :goto_a
    monitor-exit p0

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 2141
    :cond_34
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->data:Landroid/graphics/Bitmap;

    add-int/lit8 v2, v32, -0x6

    add-int/lit8 v3, v13, -0x6

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v7

    goto :goto_a

    .line 2161
    .end local v13           #height:I
    .end local v32           #width:I
    :cond_35
    if-nez v7, :cond_36

    :try_start_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v1, v1, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_36

    .line 2162
    monitor-exit p0

    goto/16 :goto_3

    .line 2174
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1

    .line 2164
    :cond_36
    :try_start_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v1, v1, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_37

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v1, v1, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_37

    .line 2165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v1, v1, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2167
    :cond_37
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    iput-object v7, v1, Lcom/motorola/Camera/Camcorder;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 2168
    sget-boolean v1, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_38

    .line 2169
    const-string v1, "MotoCamcorder"

    const-string v2, "UpdateThumbnailThread() - send UPDATE_THUMBNAIL message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    :cond_38
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2173
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/motorola/Camera/Camcorder$UpdateThumbnailRunnable;->mDone:Z

    .line 2174
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_3
.end method
