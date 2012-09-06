.class Lcom/android/server/WifiService$9;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 1659
    iput-object p1, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .locals 1
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 1783
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiStayAwake(II)Z
    .locals 4
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v1, 0x1

    .line 1751
    iget-object v2, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_sleep_policy"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1755
    .local v0, wifiSleepPolicy:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1764
    :cond_0
    :goto_0
    return v1

    .line 1758
    :cond_1
    if-ne v0, v1, :cond_2

    if-nez p2, :cond_0

    .line 1764
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$9;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1662
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1664
    .local v0, action:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_idle_ms"

    const-wide/32 v10, 0xdbba0

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 1667
    .local v1, idleMillis:J
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "stay_on_while_plugged_in"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1670
    .local v5, stayAwakeConditions:I
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1674
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v8}, Lcom/android/server/WifiService;->access$4100(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v9}, Lcom/android/server/WifiService;->access$4000(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1675
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    const/4 v9, 0x0

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v8, v9}, Lcom/android/server/WifiService;->access$4202(Lcom/android/server/WifiService;Z)Z

    .line 1676
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v8}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)V

    .line 1677
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 1678
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mBackgroundScanSupported:Z
    invoke-static {v8}, Lcom/android/server/WifiService;->access$4300(Lcom/android/server/WifiService;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1679
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    .line 1681
    :cond_0
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateMachine;->enableAllNetworks()V

    .line 1682
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    const/4 v9, 0x0

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v8, v9}, Lcom/android/server/WifiService;->access$4400(Lcom/android/server/WifiService;Z)V

    .line 1740
    :cond_1
    :goto_0
    return-void

    .line 1683
    :cond_2
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1687
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    const/4 v9, 0x1

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v8, v9}, Lcom/android/server/WifiService;->access$4202(Lcom/android/server/WifiService;Z)Z

    .line 1688
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v8}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)V

    .line 1689
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 1690
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mBackgroundScanSupported:Z
    invoke-static {v8}, Lcom/android/server/WifiService;->access$4300(Lcom/android/server/WifiService;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1691
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiStateMachine;->enableBackgroundScanCommand(Z)V

    .line 1699
    :cond_3
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v8}, Lcom/android/server/WifiService;->access$4500(Lcom/android/server/WifiService;)I

    move-result v8

    invoke-direct {p0, v5, v8}, Lcom/android/server/WifiService$9;->shouldWifiStayAwake(II)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1701
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    iget-object v8, v8, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v8, v9, :cond_4

    .line 1703
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v8}, Lcom/android/server/WifiService;->access$4100(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v10, v1

    iget-object v12, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v12}, Lcom/android/server/WifiService;->access$4000(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1706
    :cond_4
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    const/4 v9, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v8, v9}, Lcom/android/server/WifiService;->access$4400(Lcom/android/server/WifiService;Z)V

    goto :goto_0

    .line 1709
    :cond_5
    const-string v8, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1710
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    const/4 v9, 0x1

    #calls: Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V
    invoke-static {v8, v9}, Lcom/android/server/WifiService;->access$4400(Lcom/android/server/WifiService;Z)V

    goto :goto_0

    .line 1711
    :cond_6
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1719
    const-string v8, "plugged"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1723
    .local v3, pluggedType:I
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static {v8}, Lcom/android/server/WifiService;->access$4200(Lcom/android/server/WifiService;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v8}, Lcom/android/server/WifiService;->access$4500(Lcom/android/server/WifiService;)I

    move-result v8

    invoke-direct {p0, v5, v8}, Lcom/android/server/WifiService$9;->shouldWifiStayAwake(II)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-direct {p0, v5, v3}, Lcom/android/server/WifiService$9;->shouldWifiStayAwake(II)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long v6, v8, v1

    .line 1729
    .local v6, triggerTime:J
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v8}, Lcom/android/server/WifiService;->access$4100(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static {v10}, Lcom/android/server/WifiService;->access$4000(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v8, v9, v6, v7, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1731
    .end local v6           #triggerTime:J
    :cond_7
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v8, v3}, Lcom/android/server/WifiService;->access$4502(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .line 1732
    .end local v3           #pluggedType:I
    :cond_8
    const-string v8, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1733
    const-string v8, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1735
    .local v4, state:I
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v8}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto/16 :goto_0

    .line 1736
    .end local v4           #state:I
    :cond_9
    const-string v8, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1737
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    const-string v9, "phoneinECMState"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    #setter for: Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z
    invoke-static {v8, v9}, Lcom/android/server/WifiService;->access$4602(Lcom/android/server/WifiService;Z)Z

    .line 1738
    iget-object v8, p0, Lcom/android/server/WifiService$9;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static {v8}, Lcom/android/server/WifiService;->access$1900(Lcom/android/server/WifiService;)V

    goto/16 :goto_0
.end method
