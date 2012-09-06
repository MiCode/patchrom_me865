.class Lcom/motorola/android/internal/policy/impl/AlarmScreen$1;
.super Landroid/os/Handler;
.source "AlarmScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/policy/impl/AlarmScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 110
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v6, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;

    #calls: Lcom/motorola/android/internal/policy/impl/AlarmScreen;->calculateAutoPowerOnTime(Z)J
    invoke-static {v6, v5}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->access$000(Lcom/motorola/android/internal/policy/impl/AlarmScreen;Z)J

    move-result-wide v2

    .line 113
    .local v2, timeMill:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 114
    .local v0, nowT:J
    const-string v5, "AlarmScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nowtime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", autopowerontime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", starttriggertime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;

    #getter for: Lcom/motorola/android/internal/policy/impl/AlarmScreen;->startTriggerTime:J
    invoke-static {v7}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->access$100(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v5, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;

    #getter for: Lcom/motorola/android/internal/policy/impl/AlarmScreen;->startTriggerTime:J
    invoke-static {v5}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->access$100(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)J

    move-result-wide v5

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    cmp-long v5, v2, v0

    if-gez v5, :cond_0

    .line 117
    iget-object v4, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;

    #calls: Lcom/motorola/android/internal/policy/impl/AlarmScreen;->gotoPowerCycle()V
    invoke-static {v4}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->access$200(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v5, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;

    #calls: Lcom/motorola/android/internal/policy/impl/AlarmScreen;->snooze(Z)V
    invoke-static {v5, v4}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->access$300(Lcom/motorola/android/internal/policy/impl/AlarmScreen;Z)V

    goto :goto_0

    .line 123
    .end local v0           #nowT:J
    .end local v2           #timeMill:J
    :pswitch_1
    iget-object v4, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;

    #calls: Lcom/motorola/android/internal/policy/impl/AlarmScreen;->gotoShutdown()V
    invoke-static {v4}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->access$400(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)V

    goto :goto_0

    .line 126
    :pswitch_2
    iget-object v4, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;

    #getter for: Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->access$500(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 127
    :try_start_0
    iget-object v4, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;

    #getter for: Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->access$600(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;

    #getter for: Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->access$600(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 128
    iget-object v4, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;

    #getter for: Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->access$600(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 129
    iget-object v4, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;

    const/4 v6, 0x0

    #setter for: Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v4, v6}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->access$602(Lcom/motorola/android/internal/policy/impl/AlarmScreen;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 131
    :cond_1
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 134
    :pswitch_3
    const-string v4, "AlarmScreen"

    const-string v5, "enterring into powerCycle..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v4, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;

    #calls: Lcom/motorola/android/internal/policy/impl/AlarmScreen;->gotoPowerCycle()V
    invoke-static {v4}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->access$200(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)V

    goto/16 :goto_0

    .line 138
    :pswitch_4
    iget-object v6, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen$1;->this$0:Lcom/motorola/android/internal/policy/impl/AlarmScreen;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_2

    :goto_1
    #calls: Lcom/motorola/android/internal/policy/impl/AlarmScreen;->showProgressDialog(Z)V
    invoke-static {v6, v4}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->access$700(Lcom/motorola/android/internal/policy/impl/AlarmScreen;Z)V

    goto/16 :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
