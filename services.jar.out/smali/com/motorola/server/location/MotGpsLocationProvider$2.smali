.class Lcom/motorola/server/location/MotGpsLocationProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "MotGpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/location/MotGpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/location/MotGpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/motorola/server/location/MotGpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 489
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 494
    const-string v6, "MotGpsLocationProvider"

    const-string v7, "action==null in BroadcastReceiver::onReceive()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    const-string v8, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 501
    const-string v6, "MotGpsLocationProvider"

    const-string v8, "ALARM_WAKEUP"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->startNavigating(ZZ)V
    invoke-static {v6, v7, v7}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$400(Lcom/motorola/server/location/MotGpsLocationProvider;ZZ)V

    goto :goto_0

    .line 503
    :cond_2
    const-string v8, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 504
    const-string v6, "MotGpsLocationProvider"

    const-string v7, "ALARM_TIMEOUT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mFixInterval:I
    invoke-static {v7}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$500(Lcom/motorola/server/location/MotGpsLocationProvider;)I

    move-result v7

    iget-object v8, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;
    invoke-static {v8}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$600(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v8

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->hibernate(ILandroid/app/PendingIntent;)V
    invoke-static {v6, v7, v8}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$700(Lcom/motorola/server/location/MotGpsLocationProvider;ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 506
    :cond_3
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 507
    iget-object v8, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;
    invoke-static {v8}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$800(Lcom/motorola/server/location/MotGpsLocationProvider;)Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 508
    const-string v8, "plugged"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 509
    .local v3, plugged:I
    iget-object v8, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;
    invoke-static {v8}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$800(Lcom/motorola/server/location/MotGpsLocationProvider;)Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    move-result-object v8

    if-eqz v3, :cond_4

    :goto_1
    invoke-virtual {v8, v6}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->updateCharging(Z)V

    goto :goto_0

    :cond_4
    move v6, v7

    goto :goto_1

    .line 511
    .end local v3           #plugged:I
    :cond_5
    const-string v8, "com.android.internal.location.ALARM_MVMT_MON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 512
    const-string v6, "MotGpsLocationProvider"

    const-string v8, "ALARM_MVMT_MON"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;
    invoke-static {v6}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$800(Lcom/motorola/server/location/MotGpsLocationProvider;)Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 514
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;
    invoke-static {v6}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$800(Lcom/motorola/server/location/MotGpsLocationProvider;)Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->isPropagating()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 515
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;
    invoke-static {v6}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$800(Lcom/motorola/server/location/MotGpsLocationProvider;)Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    move-result-object v6

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->propagate()V
    invoke-static {v6}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->access$900(Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;)V

    goto/16 :goto_0

    .line 517
    :cond_6
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mMvmtMon:Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;
    invoke-static {v6}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$800(Lcom/motorola/server/location/MotGpsLocationProvider;)Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/motorola/server/location/MotGpsLocationProvider$MovementMonitor;->monitor(Z)V

    goto/16 :goto_0

    .line 520
    :cond_7
    const-string v8, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 521
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V
    invoke-static {v6, p2}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1000(Lcom/motorola/server/location/MotGpsLocationProvider;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 522
    :cond_8
    const-string v8, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 523
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V
    invoke-static {v6, p2}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1100(Lcom/motorola/server/location/MotGpsLocationProvider;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 526
    :cond_9
    const-string v8, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 527
    const-string v6, "state"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 528
    .local v5, state:Ljava/lang/String;
    const-string v6, "apn"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, apnName:Ljava/lang/String;
    const-string v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 530
    .local v4, reason:Ljava/lang/String;
    const-string v6, "apnType"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, apnType:Ljava/lang/String;
    const-string v6, "MotGpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " apnName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " apnType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " reason: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string v6, "CONNECTED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->checkAPNforAGPS(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v6, v1, v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1200(Lcom/motorola/server/location/MotGpsLocationProvider;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 534
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #setter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsApn:Ljava/lang/String;
    invoke-static {v6, v1}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1302(Lcom/motorola/server/location/MotGpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 535
    const-string v6, "MotGpsLocationProvider"

    const-string v7, "call native_agps_data_conn_open"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    iget-object v7, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsApn:Ljava/lang/String;
    invoke-static {v7}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1300(Lcom/motorola/server/location/MotGpsLocationProvider;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1400(Lcom/motorola/server/location/MotGpsLocationProvider;Ljava/lang/String;)V

    .line 537
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    const/4 v7, 0x2

    #setter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mAGpsDataConnectionState:I
    invoke-static {v6, v7}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1502(Lcom/motorola/server/location/MotGpsLocationProvider;I)I

    goto/16 :goto_0

    .line 538
    :cond_a
    const-string v6, "DISCONNECTED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->checkAPNforAGPS(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v6, v1, v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1200(Lcom/motorola/server/location/MotGpsLocationProvider;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 539
    const-string v6, "MotGpsLocationProvider"

    const-string v7, "not connected or not agpn_apn. call native_agps_data_conn_failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->native_agps_data_conn_failed()V
    invoke-static {v6}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1600(Lcom/motorola/server/location/MotGpsLocationProvider;)V

    goto/16 :goto_0

    .line 541
    :cond_b
    const-string v6, "SUSPENDED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->checkAPNforAGPS(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v6, v1, v2}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1200(Lcom/motorola/server/location/MotGpsLocationProvider;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 542
    const-string v6, "MotGpsLocationProvider"

    const-string v7, "data suspended. call native_agps_data_conn_failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v6, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->native_agps_data_conn_failed()V
    invoke-static {v6}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1600(Lcom/motorola/server/location/MotGpsLocationProvider;)V

    goto/16 :goto_0

    .line 545
    .end local v1           #apnName:Ljava/lang/String;
    .end local v2           #apnType:Ljava/lang/String;
    .end local v4           #reason:Ljava/lang/String;
    .end local v5           #state:Ljava/lang/String;
    :cond_c
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 546
    iget-object v8, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    iget-object v9, p0, Lcom/motorola/server/location/MotGpsLocationProvider$2;->this$0:Lcom/motorola/server/location/MotGpsLocationProvider;

    #getter for: Lcom/motorola/server/location/MotGpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$100(Lcom/motorola/server/location/MotGpsLocationProvider;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v6, :cond_d

    :goto_2
    #calls: Lcom/motorola/server/location/MotGpsLocationProvider;->PutGPSReady(Z)V
    invoke-static {v8, v7}, Lcom/motorola/server/location/MotGpsLocationProvider;->access$1700(Lcom/motorola/server/location/MotGpsLocationProvider;Z)V

    goto/16 :goto_0

    :cond_d
    move v7, v6

    goto :goto_2
.end method
