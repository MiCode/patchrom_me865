.class Lcom/motorola/Camera/Camcorder$8;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/Camera/Camcorder;->stopVideoRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/Camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/motorola/Camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 4407
    iput-object p1, p0, Lcom/motorola/Camera/Camcorder$8;->this$0:Lcom/motorola/Camera/Camcorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 4410
    const/4 v3, 0x0

    .line 4412
    .local v3, file:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/motorola/Camera/Camcorder$8;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mCurrentVideoFilename:Ljava/lang/String;
    invoke-static {v7}, Lcom/motorola/Camera/Camcorder;->access$2300(Lcom/motorola/Camera/Camcorder;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "r"

    invoke-direct {v4, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #file:Ljava/io/RandomAccessFile;
    .local v4, file:Ljava/io/RandomAccessFile;
    move-object v3, v4

    .line 4416
    .end local v4           #file:Ljava/io/RandomAccessFile;
    .restart local v3       #file:Ljava/io/RandomAccessFile;
    :goto_0
    const/4 v0, 0x0

    .line 4417
    .local v0, buffer:B
    if-eqz v3, :cond_1

    .line 4420
    const-wide/16 v6, 0x0

    :try_start_1
    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4421
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    .line 4423
    :goto_1
    if-nez v0, :cond_0

    iget-object v6, p0, Lcom/motorola/Camera/Camcorder$8;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v6, v6, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4425
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4426
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v0

    goto :goto_1

    .line 4413
    .end local v0           #buffer:B
    :catch_0
    move-exception v2

    .line 4414
    .local v2, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 4429
    .end local v2           #e1:Ljava/io/FileNotFoundException;
    .restart local v0       #buffer:B
    :cond_0
    :goto_2
    if-eqz v0, :cond_2

    :try_start_2
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder$8;->this$0:Lcom/motorola/Camera/Camcorder;

    iget-object v6, v6, Lcom/motorola/Camera/Camcorder;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4431
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4432
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    .line 4433
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder$8;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x81

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v0, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 4434
    .local v5, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/motorola/Camera/Camcorder$8;->this$0:Lcom/motorola/Camera/Camcorder;

    #getter for: Lcom/motorola/Camera/Camcorder;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/motorola/Camera/Camcorder;->access$2000(Lcom/motorola/Camera/Camcorder;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4435
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_2

    .line 4439
    .end local v5           #msg:Landroid/os/Message;
    :catch_1
    move-exception v1

    .line 4441
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4449
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 4454
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_3
    const/4 v3, 0x0

    .line 4455
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    const-string v6, "MotoCamcorder"

    const-string v7, "Closing File Handle"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4458
    :cond_1
    :goto_4
    return-void

    .line 4449
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 4454
    :goto_5
    const/4 v3, 0x0

    .line 4455
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    const-string v6, "MotoCamcorder"

    const-string v7, "Closing File Handle"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4450
    :catch_2
    move-exception v1

    .line 4451
    .local v1, e:Ljava/io/IOException;
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_3

    const-string v6, "MotoCamcorder"

    const-string v7, "Failed to Close File"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4452
    :cond_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 4450
    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 4451
    .local v1, e:Ljava/io/IOException;
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_4

    const-string v6, "MotoCamcorder"

    const-string v7, "Failed to Close File"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4452
    :cond_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 4442
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 4443
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4449
    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 4454
    :goto_6
    const/4 v3, 0x0

    .line 4455
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    const-string v6, "MotoCamcorder"

    const-string v7, "Closing File Handle"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4450
    :catch_5
    move-exception v1

    .line 4451
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_5

    const-string v6, "MotoCamcorder"

    const-string v7, "Failed to Close File"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4452
    :cond_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 4444
    .end local v1           #e:Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 4446
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 4449
    :try_start_9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 4454
    .end local v1           #e:Ljava/lang/InterruptedException;
    :goto_7
    const/4 v3, 0x0

    .line 4455
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_1

    const-string v6, "MotoCamcorder"

    const-string v7, "Closing File Handle"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4450
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :catch_7
    move-exception v1

    .line 4451
    .local v1, e:Ljava/io/IOException;
    sget-boolean v6, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v6, :cond_6

    const-string v6, "MotoCamcorder"

    const-string v7, "Failed to Close File"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4452
    :cond_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 4448
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 4449
    :try_start_a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 4454
    :goto_8
    const/4 v3, 0x0

    .line 4455
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_7

    const-string v7, "MotoCamcorder"

    const-string v8, "Closing File Handle"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    throw v6

    .line 4450
    :catch_8
    move-exception v1

    .line 4451
    .restart local v1       #e:Ljava/io/IOException;
    sget-boolean v7, Lcom/motorola/Camera/CameraGlobalType;->cameraDebug:Z

    if-eqz v7, :cond_8

    const-string v7, "MotoCamcorder"

    const-string v8, "Failed to Close File"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4452
    :cond_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8
.end method
