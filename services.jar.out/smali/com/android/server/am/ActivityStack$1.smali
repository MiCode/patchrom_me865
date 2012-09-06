.class Lcom/android/server/am/ActivityStack$1;
.super Landroid/os/Handler;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 355
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 455
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 357
    :pswitch_1
    iget-object v9, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v10, v9, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 358
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v9, v9, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 359
    const-string v9, "ActivityManager"

    const-string v11, "Sleep timeout!  Sleeping now."

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v9, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    .line 361
    iget-object v9, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    .line 363
    :cond_1
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 366
    :pswitch_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 369
    .local v8, r:Lcom/android/server/am/ActivityRecord;
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Activity pause timeout for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v7, -0x1

    .line 372
    .local v7, pid:I
    const-wide/16 v5, 0x0

    .line 373
    .local v5, pauseTime:J
    const/4 v3, 0x0

    .line 374
    .local v3, m:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v10, v9, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 375
    :try_start_1
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_2

    .line 376
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 378
    :cond_2
    iget-wide v5, v8, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    .line 379
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pausing "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 380
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 381
    if-ltz v7, :cond_3

    .line 382
    iget-object v9, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v9, v9, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v7, v5, v6, v3}, Lcom/android/server/am/ActivityManagerService;->logAppTooSlow(IJLjava/lang/String;)V

    .line 386
    :cond_3
    iget-object v10, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    if-eqz v8, :cond_4

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_1
    const/4 v11, 0x1

    invoke-virtual {v10, v9, v11}, Lcom/android/server/am/ActivityStack;->activityPaused(Landroid/os/IBinder;Z)V

    goto :goto_0

    .line 380
    :catchall_1
    move-exception v9

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v9

    .line 386
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 389
    .end local v3           #m:Ljava/lang/String;
    .end local v5           #pauseTime:J
    .end local v7           #pid:I
    .end local v8           #r:Lcom/android/server/am/ActivityRecord;
    :pswitch_3
    iget-object v9, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v9, v9, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v9, :cond_5

    .line 390
    iget-object v9, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v9, v9, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 391
    iget-object v9, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v9, v9, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 392
    .local v4, nmsg:Landroid/os/Message;
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v9, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 393
    iget-object v9, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v9, v9, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x2710

    invoke-virtual {v9, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 398
    .end local v4           #nmsg:Landroid/os/Message;
    :cond_5
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 399
    .restart local v8       #r:Lcom/android/server/am/ActivityRecord;
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Activity idle timeout for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v10, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    if-eqz v8, :cond_6

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_2
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v9, v11, v12}, Lcom/android/server/am/ActivityStack;->activityIdleInternal(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_0

    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 403
    .end local v8           #r:Lcom/android/server/am/ActivityRecord;
    :pswitch_4
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 405
    .restart local v8       #r:Lcom/android/server/am/ActivityRecord;
    const/4 v7, -0x1

    .line 406
    .restart local v7       #pid:I
    const-wide/16 v1, 0x0

    .line 407
    .local v1, launchTickTime:J
    const/4 v0, 0x0

    .line 408
    .local v0, cont:Z
    const/4 v3, 0x0

    .line 409
    .restart local v3       #m:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v10, v9, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 410
    :try_start_3
    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->continueLaunchTickingLocked()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 411
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_7

    .line 412
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 414
    :cond_7
    iget-wide v1, v8, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    .line 415
    const/4 v0, 0x1

    .line 416
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "launching "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 418
    :cond_8
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 419
    if-eqz v0, :cond_0

    .line 420
    iget-object v9, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v9, v9, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v7, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->logAppTooSlow(IJLjava/lang/String;)V

    goto/16 :goto_0

    .line 418
    :catchall_2
    move-exception v9

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v9

    .line 425
    .end local v0           #cont:Z
    .end local v1           #launchTickTime:J
    .end local v3           #m:Ljava/lang/String;
    .end local v7           #pid:I
    .end local v8           #r:Lcom/android/server/am/ActivityRecord;
    :pswitch_5
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 428
    .restart local v8       #r:Lcom/android/server/am/ActivityRecord;
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Activity destroy timeout for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v10, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    if-eqz v8, :cond_9

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_3
    invoke-virtual {v10, v9}, Lcom/android/server/am/ActivityStack;->activityDestroyed(Landroid/os/IBinder;)V

    goto/16 :goto_0

    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    .line 432
    .end local v8           #r:Lcom/android/server/am/ActivityRecord;
    :pswitch_6
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 433
    .restart local v8       #r:Lcom/android/server/am/ActivityRecord;
    iget-object v10, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    if-eqz v8, :cond_a

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_4
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v9, v11, v12}, Lcom/android/server/am/ActivityStack;->activityIdleInternal(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_0

    :cond_a
    const/4 v9, 0x0

    goto :goto_4

    .line 436
    .end local v8           #r:Lcom/android/server/am/ActivityRecord;
    :pswitch_7
    iget-object v9, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v9, v9, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v9, :cond_b

    .line 437
    iget-object v9, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v9, v9, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 438
    iget-object v9, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v9, v9, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 439
    .restart local v4       #nmsg:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v9, v9, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x2710

    invoke-virtual {v9, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 442
    .end local v4           #nmsg:Landroid/os/Message;
    :cond_b
    iget-object v9, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v10, v9, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 443
    :try_start_5
    iget-object v9, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v9, v9, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 444
    const-string v9, "ActivityManager"

    const-string v11, "Launch timeout has expired, giving up wake lock!"

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v9, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v9, v9, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 447
    :cond_c
    monitor-exit v10

    goto/16 :goto_0

    :catchall_3
    move-exception v9

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v9

    .line 450
    :pswitch_8
    iget-object v9, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v10, v9, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 451
    :try_start_6
    iget-object v9, p0, Lcom/android/server/am/ActivityStack$1;->this$0:Lcom/android/server/am/ActivityStack;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 452
    monitor-exit v10

    goto/16 :goto_0

    :catchall_4
    move-exception v9

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v9

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method
