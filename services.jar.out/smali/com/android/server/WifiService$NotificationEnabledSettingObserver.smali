.class Lcom/android/server/WifiService$NotificationEnabledSettingObserver;
.super Landroid/database/ContentObserver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationEnabledSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method public constructor <init>(Lcom/android/server/WifiService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 2909
    iput-object p1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    .line 2910
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2911
    return-void
.end method

.method private getAutoConnectEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2984
    iget-object v1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_signal_strength_auto_connect"

    invoke-static {v1, v2, v0}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDisconnectEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2980
    iget-object v2, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_network_disconnect_suggest"

    invoke-static {v2, v3, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getPriorityValue()I
    .locals 3

    .prologue
    .line 2976
    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_using_priority"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getValue()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2970
    iget-object v1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_networks_available_notification_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getValueSecure()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2993
    iget-object v2, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_networks_secure_available_notification_on"

    invoke-static {v2, v3, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2938
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2940
    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->getValue()Z

    move-result v1

    #setter for: Lcom/android/server/WifiService;->mNotificationEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$6402(Lcom/android/server/WifiService;Z)Z

    .line 2943
    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->getPriorityValue()I

    move-result v1

    #setter for: Lcom/android/server/WifiService;->mWLANPriorityValue:I
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$6602(Lcom/android/server/WifiService;I)I

    .line 2944
    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->getDisconnectEnabled()Z

    move-result v1

    #setter for: Lcom/android/server/WifiService;->mWLANDisconnectNotifyEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$3202(Lcom/android/server/WifiService;Z)Z

    .line 2945
    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->getAutoConnectEnabled()Z

    move-result v1

    #setter for: Lcom/android/server/WifiService;->mWLANPriorityAUTOConnect:Z
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$6702(Lcom/android/server/WifiService;Z)Z

    .line 2946
    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWLANPriorityDialogTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2947
    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWLANPriorityDialogTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2948
    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->isWLANPriorityDialogTimeOut:Z
    invoke-static {v0, v3}, Lcom/android/server/WifiService;->access$2202(Lcom/android/server/WifiService;Z)Z

    .line 2955
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->getValueSecure()Z

    move-result v1

    #setter for: Lcom/android/server/WifiService;->mNotificationSecuredEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$6502(Lcom/android/server/WifiService;Z)Z

    .line 2957
    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mNotificationEnabled:Z
    invoke-static {v0}, Lcom/android/server/WifiService;->access$6400(Lcom/android/server/WifiService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mNotificationSecuredEnabled:Z
    invoke-static {v0}, Lcom/android/server/WifiService;->access$6500(Lcom/android/server/WifiService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2960
    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V
    invoke-static {v0, v2, v2, v3, v2}, Lcom/android/server/WifiService;->access$6800(Lcom/android/server/WifiService;ZIZI)V

    .line 2961
    invoke-static {}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getInstance()Lcom/motorola/net/wifi/ctcn/CtcnController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2962
    invoke-static {}, Lcom/motorola/net/wifi/ctcn/CtcnController;->getInstance()Lcom/motorola/net/wifi/ctcn/CtcnController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/net/wifi/ctcn/CtcnController;->setCtcnNotificationVisible(Z)V

    .line 2966
    :cond_1
    iget-object v0, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->resetNotification()V
    invoke-static {v0}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)V

    .line 2967
    return-void
.end method

.method public register()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2914
    iget-object v1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2915
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wifi_networks_available_notification_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2917
    iget-object v1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->getValue()Z

    move-result v2

    #setter for: Lcom/android/server/WifiService;->mNotificationEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$6402(Lcom/android/server/WifiService;Z)Z

    .line 2922
    const-string v1, "wifi_networks_secure_available_notification_on"

    invoke-static {v1}, Lcom/motorola/android/provider/MotorolaSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2923
    iget-object v1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->getValueSecure()Z

    move-result v2

    #setter for: Lcom/android/server/WifiService;->mNotificationSecuredEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$6502(Lcom/android/server/WifiService;Z)Z

    .line 2927
    const-string v1, "wifi_using_priority"

    invoke-static {v1}, Lcom/motorola/android/provider/MotorolaSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2928
    iget-object v1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->getPriorityValue()I

    move-result v2

    #setter for: Lcom/android/server/WifiService;->mWLANPriorityValue:I
    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$6602(Lcom/android/server/WifiService;I)I

    .line 2929
    const-string v1, "wifi_network_disconnect_suggest"

    invoke-static {v1}, Lcom/motorola/android/provider/MotorolaSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2930
    iget-object v1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->getDisconnectEnabled()Z

    move-result v2

    #setter for: Lcom/android/server/WifiService;->mWLANDisconnectNotifyEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$3202(Lcom/android/server/WifiService;Z)Z

    .line 2931
    const-string v1, "wifi_signal_strength_auto_connect"

    invoke-static {v1}, Lcom/motorola/android/provider/MotorolaSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2932
    iget-object v1, p0, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->getAutoConnectEnabled()Z

    move-result v2

    #setter for: Lcom/android/server/WifiService;->mWLANPriorityAUTOConnect:Z
    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$6702(Lcom/android/server/WifiService;Z)Z

    .line 2934
    return-void
.end method
