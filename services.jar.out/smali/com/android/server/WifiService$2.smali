.class Lcom/android/server/WifiService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
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
    .line 591
    iput-object p1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 594
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 595
    const-string v4, "wifi_state"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 598
    .local v1, wifiState:I
    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    move v2, v3

    :cond_0
    #setter for: Lcom/android/server/WifiService;->mWifiEnabled:Z
    invoke-static {v4, v2}, Lcom/android/server/WifiService;->access$2002(Lcom/android/server/WifiService;Z)Z

    .line 601
    invoke-static {}, Lcom/android/server/WifiService;->access$700()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 602
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiEnabled:Z
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 603
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWLANPriorityDialogTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)Ljava/util/Timer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 604
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWLANPriorityDialogTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)Ljava/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 605
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mWLANPriorityDialogTimer:Ljava/util/Timer;
    invoke-static {v2, v6}, Lcom/android/server/WifiService;->access$2102(Lcom/android/server/WifiService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 606
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->isWLANPriorityDialogTimeOut:Z
    invoke-static {v2, v3}, Lcom/android/server/WifiService;->access$2202(Lcom/android/server/WifiService;Z)Z

    .line 608
    :cond_1
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mLastWLANConfigDialoglist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2300(Lcom/android/server/WifiService;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 609
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mLastWLANConfigDialoglist:Ljava/util/ArrayList;
    invoke-static {v2, v6}, Lcom/android/server/WifiService;->access$2302(Lcom/android/server/WifiService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 611
    :cond_2
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mIsDialogPermittedToShow:Z
    invoke-static {v2, v3}, Lcom/android/server/WifiService;->access$802(Lcom/android/server/WifiService;Z)Z

    .line 617
    :cond_3
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->resetNotification()V
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)V

    .line 696
    .end local v1           #wifiState:I
    :cond_4
    :goto_0
    return-void

    .line 618
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 620
    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    iput-object v2, v4, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 623
    sget-object v2, Lcom/android/server/WifiService$18;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    iget-object v4, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v4, v4, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 631
    :goto_1
    invoke-static {}, Lcom/android/server/WifiService;->access$700()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 632
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v2, v2, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 634
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v2, v2, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v4, :cond_6

    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v2, v2, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v4, :cond_7

    .line 637
    :cond_6
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mIsDialogPermittedToShow:Z
    invoke-static {v2, v3}, Lcom/android/server/WifiService;->access$802(Lcom/android/server/WifiService;Z)Z

    .line 639
    :cond_7
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v2, v2, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 640
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWLANPriorityDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2600(Lcom/android/server/WifiService;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWLANPriorityDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2600(Lcom/android/server/WifiService;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 642
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWLANPriorityDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2600(Lcom/android/server/WifiService;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 644
    :cond_8
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWLANDisconnectDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWLANDisconnectDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 646
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWLANDisconnectDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 626
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)V

    .line 627
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->resetNotification()V
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)V

    goto :goto_1

    .line 652
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 654
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->checkAndSetNotification()V
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;)V

    .line 656
    invoke-static {}, Lcom/android/server/WifiService;->access$700()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIsScreenOff:Z
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 658
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->sendMsgToCheckWLANPriorityDialog()V
    invoke-static {v2}, Lcom/android/server/WifiService;->access$3000(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 663
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 664
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v2, v2, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_4

    const-string v2, "newRssi"

    const/16 v3, -0xc8

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, -0x55

    if-ge v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIsScreenOff:Z
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 667
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->sendMsgTocheckWLANRssiDialog()V
    invoke-static {v2}, Lcom/android/server/WifiService;->access$3100(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 670
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 671
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 672
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_4

    .line 674
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v2, v2, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_4

    .line 678
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWLANDisconnectNotifyEnabled:Z
    invoke-static {v2}, Lcom/android/server/WifiService;->access$3200(Lcom/android/server/WifiService;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIsDialogPermittedToShow:Z
    invoke-static {v2}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mIsScreenOff:Z
    invoke-static {v2}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_4

    .line 681
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->sendMsgTocheckWLANDisconnectDialog()V
    invoke-static {v2}, Lcom/android/server/WifiService;->access$3300(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 686
    .end local v0           #networkInfo:Landroid/net/NetworkInfo;
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 688
    iget-object v3, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mIsScreenOff:Z
    invoke-static {v3, v2}, Lcom/android/server/WifiService;->access$2902(Lcom/android/server/WifiService;Z)Z

    goto/16 :goto_0

    .line 690
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 692
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mIsScreenOff:Z
    invoke-static {v2, v3}, Lcom/android/server/WifiService;->access$2902(Lcom/android/server/WifiService;Z)Z

    .line 693
    iget-object v2, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->closeAllDialog()V
    invoke-static {v2}, Lcom/android/server/WifiService;->access$3400(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 623
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
