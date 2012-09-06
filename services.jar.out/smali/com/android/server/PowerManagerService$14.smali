.class Lcom/android/server/PowerManagerService$14;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 4253
    iput-object p1, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 4358
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4255
    iget-object v6, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v7

    monitor-enter v7

    .line 4260
    :try_start_0
    iget-object v6, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorEnabled:Z
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$7900(Lcom/android/server/PowerManagerService;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$8000(Lcom/android/server/PowerManagerService;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4264
    :cond_0
    monitor-exit v7

    .line 4354
    :goto_0
    return-void

    .line 4267
    :cond_1
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x0

    aget v6, v6, v8

    float-to-int v3, v6

    .line 4268
    .local v3, value:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 4269
    .local v1, milliseconds:J
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$8100()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4270
    const-string v6, "PowerManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSensorChanged: light value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    :cond_2
    iget-object v6, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)F

    move-result v6

    const/high16 v8, -0x4080

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLastScreenOnTime:J
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$8200(Lcom/android/server/PowerManagerService;)J

    move-result-wide v8

    iget-object v6, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorWarmupTime:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$8300(Lcom/android/server/PowerManagerService;)I

    move-result v6

    int-to-long v10, v6

    add-long/2addr v8, v10

    cmp-long v6, v1, v8

    if-gez v6, :cond_5

    .line 4275
    :cond_3
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$8400(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4276
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$7002(Lcom/android/server/PowerManagerService;Z)Z

    .line 4277
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$7102(Lcom/android/server/PowerManagerService;Z)Z

    .line 4278
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V
    invoke-static {v4, v3}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;I)V

    .line 4353
    :cond_4
    :goto_1
    monitor-exit v7

    goto :goto_0

    .end local v1           #milliseconds:J
    .end local v3           #value:I
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4280
    .restart local v1       #milliseconds:J
    .restart local v3       #value:I
    :cond_5
    int-to-float v6, v3

    :try_start_1
    iget-object v8, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)F

    move-result v8

    cmpl-float v6, v6, v8

    if-lez v6, :cond_6

    iget-object v6, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_6
    int-to-float v6, v3

    iget-object v8, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)F

    move-result v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_7

    iget-object v6, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$7100(Lcom/android/server/PowerManagerService;)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    int-to-float v6, v3

    iget-object v8, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)F

    move-result v8

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$7100(Lcom/android/server/PowerManagerService;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 4285
    :cond_8
    iget-object v6, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$8400(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4286
    iget-object v8, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v6, v3

    iget-object v9, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)F

    move-result v9

    cmpg-float v6, v6, v9

    if-gez v6, :cond_b

    move v6, v4

    :goto_2
    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v8, v6}, Lcom/android/server/PowerManagerService;->access$7002(Lcom/android/server/PowerManagerService;Z)Z

    .line 4287
    iget-object v6, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v8, v3

    iget-object v9, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorValue:F
    invoke-static {v9}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_c

    :goto_3
    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v6, v4}, Lcom/android/server/PowerManagerService;->access$7102(Lcom/android/server/PowerManagerService;Z)Z

    .line 4288
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$7100(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4289
    :cond_9
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBrightnessDecreaseEnabled:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$8500(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$7000(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v0, 0x1f40

    .line 4291
    .local v0, delay:I
    :goto_4
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v5, v3

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$7202(Lcom/android/server/PowerManagerService;F)F

    .line 4292
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightnessTask:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$8400(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v5

    int-to-long v8, v0

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4300
    .end local v0           #delay:I
    :cond_a
    :goto_5
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardBacklightOnSensorValue:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$8600(Lcom/android/server/PowerManagerService;)I

    move-result v4

    if-lez v4, :cond_4

    .line 4301
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$8700(Lcom/android/server/PowerManagerService;)I

    move-result v4

    if-gez v4, :cond_13

    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$8800(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 4302
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardBacklightStayOnTaskStarted:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$8900(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 4303
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$9000()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4304
    const-string v4, "PowerManagerService"

    const-string v5, "mKeyboardBacklightStayOnTask started, do nothing"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    move v6, v5

    .line 4286
    goto :goto_2

    :cond_c
    move v4, v5

    .line 4287
    goto :goto_3

    .line 4289
    :cond_d
    const/16 v0, 0x7d0

    goto :goto_4

    .line 4295
    :cond_e
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    int-to-float v5, v3

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$7202(Lcom/android/server/PowerManagerService;F)F

    goto :goto_5

    .line 4305
    :cond_f
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardBacklightOnSensorValue:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$8600(Lcom/android/server/PowerManagerService;)I

    move-result v4

    if-le v3, v4, :cond_11

    .line 4306
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDelayKeyboardBacklightOnTaskStarted:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$9100(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4307
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$9000()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 4308
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stop mDelayKeyboardBacklightOnTask, brightness:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$9200(Lcom/android/server/PowerManagerService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPendingLightSensorKeyboardBrightness:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$9300(Lcom/android/server/PowerManagerService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4311
    :cond_10
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDelayKeyboardBacklightOnTask:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$9400(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4312
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mDelayKeyboardBacklightOnTaskStarted:Z
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$9102(Lcom/android/server/PowerManagerService;Z)Z

    .line 4313
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPendingLightSensorKeyboardBrightness:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$9300(Lcom/android/server/PowerManagerService;)I

    move-result v4

    if-lez v4, :cond_4

    .line 4314
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPendingLightSensorKeyboardBrightness:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$9300(Lcom/android/server/PowerManagerService;)I

    move-result v5

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$9202(Lcom/android/server/PowerManagerService;I)I

    .line 4316
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v5, -0x1

    #setter for: Lcom/android/server/PowerManagerService;->mPendingLightSensorKeyboardBrightness:I
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$9302(Lcom/android/server/PowerManagerService;I)I

    goto/16 :goto_1

    .line 4319
    :cond_11
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDelayKeyboardBacklightOnTaskStarted:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$9100(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4320
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$9000()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 4321
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start mDelayKeyboardBacklightOnTask "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/server/PowerManagerService;->access$9500()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms later"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4323
    :cond_12
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDelayKeyboardBacklightOnTask:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$9400(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-static {}, Lcom/android/server/PowerManagerService;->access$9500()J

    move-result-wide v8

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4325
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v5, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mDelayKeyboardBacklightOnTaskStarted:Z
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$9102(Lcom/android/server/PowerManagerService;Z)Z

    goto/16 :goto_1

    .line 4328
    :cond_13
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$9000()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 4329
    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mButtonBrightnessOverride="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$8700(Lcom/android/server/PowerManagerService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mKeyboardVisible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z
    invoke-static {v6}, Lcom/android/server/PowerManagerService;->access$8800(Lcom/android/server/PowerManagerService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4332
    :cond_14
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDelayKeyboardBacklightOnTaskStarted:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$9100(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 4333
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$9000()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 4334
    const-string v4, "PowerManagerService"

    const-string v5, "Stop mDelayKeyboardBacklightOnTask"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4335
    :cond_15
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDelayKeyboardBacklightOnTask:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$9400(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4336
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mDelayKeyboardBacklightOnTaskStarted:Z
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$9102(Lcom/android/server/PowerManagerService;Z)Z

    .line 4338
    :cond_16
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardBacklightStayOnTaskStarted:Z
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$8900(Lcom/android/server/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 4339
    invoke-static {}, Lcom/android/server/PowerManagerService;->access$9000()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 4340
    const-string v4, "PowerManagerService"

    const-string v5, "Stop mKeyboardBacklightStayOnTask"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4341
    :cond_17
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardBacklightStayOnTask:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$9600(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4342
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mKeyboardBacklightStayOnTaskStarted:Z
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$8902(Lcom/android/server/PowerManagerService;Z)Z

    .line 4344
    :cond_18
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPendingLightSensorKeyboardBrightness:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$9300(Lcom/android/server/PowerManagerService;)I

    move-result v4

    if-lez v4, :cond_4

    .line 4345
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v5, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPendingLightSensorKeyboardBrightness:I
    invoke-static {v5}, Lcom/android/server/PowerManagerService;->access$9300(Lcom/android/server/PowerManagerService;)I

    move-result v5

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorKeyboardBrightness:I
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$9202(Lcom/android/server/PowerManagerService;I)I

    .line 4347
    iget-object v4, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v5, -0x1

    #setter for: Lcom/android/server/PowerManagerService;->mPendingLightSensorKeyboardBrightness:I
    invoke-static {v4, v5}, Lcom/android/server/PowerManagerService;->access$9302(Lcom/android/server/PowerManagerService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method
