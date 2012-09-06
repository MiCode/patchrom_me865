.class Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiStateTracker;Landroid/net/wifi/WifiStateTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 425
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;-><init>(Landroid/net/wifi/WifiStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 429
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 430
    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5, v4}, Landroid/net/wifi/WifiStateTracker;->access$102(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 432
    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string v4, "linkProperties"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/LinkProperties;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v5, v4}, Landroid/net/wifi/WifiStateTracker;->access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 434
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkProperties;

    move-result-object v4

    if-nez v4, :cond_0

    .line 435
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    new-instance v5, Landroid/net/LinkProperties;

    invoke-direct {v5}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateTracker;->access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 437
    :cond_0
    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string v4, "linkCapabilities"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/LinkCapabilities;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v5, v4}, Landroid/net/wifi/WifiStateTracker;->access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 439
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$300(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v4

    if-nez v4, :cond_1

    .line 440
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    new-instance v5, Landroid/net/LinkCapabilities;

    invoke-direct {v5}, Landroid/net/LinkCapabilities;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateTracker;->access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 528
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 442
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 443
    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5, v4}, Landroid/net/wifi/WifiStateTracker;->access$102(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 445
    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string v4, "linkProperties"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/LinkProperties;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v5, v4}, Landroid/net/wifi/WifiStateTracker;->access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 447
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkProperties;

    move-result-object v4

    if-nez v4, :cond_3

    .line 448
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    new-instance v5, Landroid/net/LinkProperties;

    invoke-direct {v5}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateTracker;->access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 450
    :cond_3
    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string v4, "linkCapabilities"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/LinkCapabilities;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v5, v4}, Landroid/net/wifi/WifiStateTracker;->access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 452
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$300(Landroid/net/wifi/WifiStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v4

    if-nez v4, :cond_4

    .line 453
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    new-instance v5, Landroid/net/LinkCapabilities;

    invoke-direct {v5}, Landroid/net/LinkCapabilities;-><init>()V

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateTracker;->access$302(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 457
    :cond_4
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 458
    .local v3, state:Landroid/net/NetworkInfo$State;
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo$State;

    move-result-object v4

    if-eq v4, v3, :cond_1

    .line 461
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v4, v3}, Landroid/net/wifi/WifiStateTracker;->access$402(Landroid/net/wifi/WifiStateTracker;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    .line 464
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_6

    .line 465
    const-string/jumbo v4, "wifiInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 467
    .local v1, mWifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_5

    .line 468
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string/jumbo v5, "wifi_info_preloaded"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    #setter for: Landroid/net/wifi/WifiStateTracker;->mIsCtcwApConnected:Z
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateTracker;->access$502(Landroid/net/wifi/WifiStateTracker;Z)Z

    .line 474
    .end local v1           #mWifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_5
    :goto_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/net/NetworkInfo;

    iget-object v6, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v4, v8, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 476
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 471
    .end local v2           #msg:Landroid/os/Message;
    :cond_6
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mIsCtcwApConnected:Z
    invoke-static {v4, v9}, Landroid/net/wifi/WifiStateTracker;->access$502(Landroid/net/wifi/WifiStateTracker;Z)Z

    goto :goto_1

    .line 477
    .end local v3           #state:Landroid/net/NetworkInfo$State;
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 478
    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string v4, "linkProperties"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/LinkProperties;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v5, v4}, Landroid/net/wifi/WifiStateTracker;->access$202(Landroid/net/wifi/WifiStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 480
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v4, v10, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 481
    .restart local v2       #msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 482
    .end local v2           #msg:Landroid/os/Message;
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.wifi.WIFI_CTCW_STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 483
    const-string v4, "CWState"

    const/16 v5, 0xa

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 485
    .local v0, ctcwState:I
    invoke-static {}, Landroid/net/wifi/WifiStateTracker;->access$700()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "WifiStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CTCN-handleCtcwEvent, state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_9
    const/4 v2, 0x0

    .line 487
    .restart local v2       #msg:Landroid/os/Message;
    packed-switch v0, :pswitch_data_0

    .line 514
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mPreloadedSsidConnected:Z
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$1000(Landroid/net/wifi/WifiStateTracker;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 515
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCtcwNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$1200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #calls: Landroid/net/wifi/WifiStateTracker;->getTypeMobileForSecMms()I
    invoke-static {v5}, Landroid/net/wifi/WifiStateTracker;->access$1100(Landroid/net/wifi/WifiStateTracker;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo;->setType(I)V

    .line 516
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCtcwNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$1200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v6, "c+w disconnected"

    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mApn:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$800(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/net/NetworkInfo;

    iget-object v6, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCtcwNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Landroid/net/wifi/WifiStateTracker;->access$1200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v4, v8, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 519
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 520
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mPreloadedSsidConnected:Z
    invoke-static {v4, v9}, Landroid/net/wifi/WifiStateTracker;->access$1002(Landroid/net/wifi/WifiStateTracker;Z)Z

    .line 521
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mApn:Ljava/lang/String;
    invoke-static {v4, v11}, Landroid/net/wifi/WifiStateTracker;->access$802(Landroid/net/wifi/WifiStateTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 522
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mApnTypes:Ljava/lang/String;
    invoke-static {v4, v11}, Landroid/net/wifi/WifiStateTracker;->access$902(Landroid/net/wifi/WifiStateTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 523
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/net/NetworkInfo;

    iget-object v6, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v4, v10, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 490
    :pswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string v5, "apn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #setter for: Landroid/net/wifi/WifiStateTracker;->mApn:Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateTracker;->access$802(Landroid/net/wifi/WifiStateTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 491
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    const-string v5, "apnType"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #setter for: Landroid/net/wifi/WifiStateTracker;->mApnTypes:Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateTracker;->access$902(Landroid/net/wifi/WifiStateTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 492
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #setter for: Landroid/net/wifi/WifiStateTracker;->mPreloadedSsidConnected:Z
    invoke-static {v4, v8}, Landroid/net/wifi/WifiStateTracker;->access$1002(Landroid/net/wifi/WifiStateTracker;Z)Z

    .line 493
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCtcwNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$1200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #calls: Landroid/net/wifi/WifiStateTracker;->getTypeMobileForSecMms()I
    invoke-static {v5}, Landroid/net/wifi/WifiStateTracker;->access$1100(Landroid/net/wifi/WifiStateTracker;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo;->setType(I)V

    .line 494
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCtcwNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$1200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v6, "c+w connected"

    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mApn:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/wifi/WifiStateTracker;->access$800(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/net/NetworkInfo;

    iget-object v6, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCtcwNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Landroid/net/wifi/WifiStateTracker;->access$1200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v4, v8, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 499
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 500
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/net/NetworkInfo;

    iget-object v6, p0, Landroid/net/wifi/WifiStateTracker$WifiStateReceiver;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v6}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v4, v10, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
