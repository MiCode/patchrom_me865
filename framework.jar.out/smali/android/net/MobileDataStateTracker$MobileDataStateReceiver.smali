.class Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/MobileDataStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/MobileDataStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, action:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #calls: Landroid/net/MobileDataStateTracker;->serveActivePhone()Z
    invoke-static {v10}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;)Z

    move-result v5

    .line 197
    .local v5, isActivePhone:Z
    const-string v10, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-nez v5, :cond_3

    :cond_2
    const-string v10, "android.intent.action.ANY_DATA_STATE_2"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    if-nez v5, :cond_c

    .line 201
    :cond_3
    const-string v10, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, apnType:Ljava/lang/String;
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v10}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 212
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v10}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Landroid/content/Context;

    move-result-object v11

    if-eqz v5, :cond_5

    const-string v10, "phone"

    :goto_1
    invoke-virtual {v11, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 214
    .local v9, tm:Landroid/telephony/TelephonyManager;
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v11

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/net/MobileDataStateTracker;->setSubtype(ILjava/lang/String;)V

    .line 218
    const-class v10, Lcom/android/internal/telephony/Phone$DataState;

    const-string/jumbo v11, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Phone$DataState;

    .line 220
    .local v8, state:Lcom/android/internal/telephony/Phone$DataState;
    const-string v10, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, reason:Ljava/lang/String;
    const-string v10, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, apnName:Ljava/lang/String;
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v10}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v10

    const-string v11, "networkRoaming"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 228
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v10}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v11

    const-string v10, "networkUnvailable"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v11, v10}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 232
    iget-object v11, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received state="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", old="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$600(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", reason="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v7, :cond_7

    const-string v10, "(unspecified)"

    :goto_3
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    #calls: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v11, v10}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 235
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {v10}, Landroid/net/MobileDataStateTracker;->access$600(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v10

    if-eq v10, v8, :cond_a

    .line 236
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #setter for: Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {v10, v8}, Landroid/net/MobileDataStateTracker;->access$602(Landroid/net/MobileDataStateTracker;Lcom/android/internal/telephony/Phone$DataState;)Lcom/android/internal/telephony/Phone$DataState;

    .line 237
    sget-object v10, Landroid/net/MobileDataStateTracker$1;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_0

    .line 239
    :pswitch_0
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-virtual {v10}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 240
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 243
    :cond_4
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v7, v3}, Landroid/net/MobileDataStateTracker;->access$800(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    .end local v3           #apnName:Ljava/lang/String;
    .end local v7           #reason:Ljava/lang/String;
    .end local v8           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v9           #tm:Landroid/telephony/TelephonyManager;
    :cond_5
    const-string v10, "phone2"

    goto/16 :goto_1

    .line 228
    .restart local v3       #apnName:Ljava/lang/String;
    .restart local v7       #reason:Ljava/lang/String;
    .restart local v8       #state:Lcom/android/internal/telephony/Phone$DataState;
    .restart local v9       #tm:Landroid/telephony/TelephonyManager;
    :cond_6
    const/4 v10, 0x0

    goto :goto_2

    :cond_7
    move-object v10, v7

    .line 232
    goto :goto_3

    .line 252
    :pswitch_1
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v7, v3}, Landroid/net/MobileDataStateTracker;->access$800(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    :pswitch_2
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v7, v3}, Landroid/net/MobileDataStateTracker;->access$800(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    :pswitch_3
    iget-object v11, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v10, "linkProperties"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/LinkProperties;

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v11, v10}, Landroid/net/MobileDataStateTracker;->access$902(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 260
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v10}, Landroid/net/MobileDataStateTracker;->access$900(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v10

    if-nez v10, :cond_8

    .line 261
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v11, "CONNECTED event did not supply link properties."

    #calls: Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/MobileDataStateTracker;->access$1000(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 262
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v11, Landroid/net/LinkProperties;

    invoke-direct {v11}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v10, v11}, Landroid/net/MobileDataStateTracker;->access$902(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 264
    :cond_8
    iget-object v11, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v10, "linkCapabilities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/LinkCapabilities;

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v11, v10}, Landroid/net/MobileDataStateTracker;->access$1102(Landroid/net/MobileDataStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 266
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v10}, Landroid/net/MobileDataStateTracker;->access$1100(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v10

    if-nez v10, :cond_9

    .line 267
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v11, "CONNECTED event did not supply link capabilities."

    #calls: Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/MobileDataStateTracker;->access$1000(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 268
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v11, Landroid/net/LinkCapabilities;

    invoke-direct {v11}, Landroid/net/LinkCapabilities;-><init>()V

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v10, v11}, Landroid/net/MobileDataStateTracker;->access$1102(Landroid/net/MobileDataStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 270
    :cond_9
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v7, v3}, Landroid/net/MobileDataStateTracker;->access$800(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :cond_a
    const-string v10, "linkPropertiesChanged"

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 276
    iget-object v11, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v10, "linkProperties"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/LinkProperties;

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v11, v10}, Landroid/net/MobileDataStateTracker;->access$902(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 277
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v10}, Landroid/net/MobileDataStateTracker;->access$900(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkProperties;

    move-result-object v10

    if-nez v10, :cond_b

    .line 278
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    const-string v11, "No link property in LINK_PROPERTIES change event."

    #calls: Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/MobileDataStateTracker;->access$1000(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 279
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v11, Landroid/net/LinkProperties;

    invoke-direct {v11}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v10, v11}, Landroid/net/MobileDataStateTracker;->access$902(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 282
    :cond_b
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v10}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v10

    iget-object v11, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v11}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    iget-object v12, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v7, v12}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;
    invoke-static {v10}, Landroid/net/MobileDataStateTracker;->access$1200(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x3

    iget-object v12, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 286
    .local v6, msg:Landroid/os/Message;
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 289
    .end local v3           #apnName:Ljava/lang/String;
    .end local v4           #apnType:Ljava/lang/String;
    .end local v6           #msg:Landroid/os/Message;
    .end local v7           #reason:Ljava/lang/String;
    .end local v8           #state:Lcom/android/internal/telephony/Phone$DataState;
    .end local v9           #tm:Landroid/telephony/TelephonyManager;
    :cond_c
    const-string v10, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    if-nez v5, :cond_e

    :cond_d
    const-string v10, "android.intent.action.DATA_CONNECTION_FAILED_2"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    if-nez v5, :cond_11

    .line 291
    :cond_e
    const-string v10, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 292
    .restart local v4       #apnType:Ljava/lang/String;
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v10}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 294
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Broadcast received: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ignore, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "mApnType=%s != received apnType=%s"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;
    invoke-static {v14}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    #calls: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    :cond_f
    const-string v10, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 301
    .restart local v7       #reason:Ljava/lang/String;
    const-string v10, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 303
    .restart local v3       #apnName:Ljava/lang/String;
    iget-object v11, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " broadcast"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_10

    const-string v10, ""

    :goto_4
    #calls: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v11, v10}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    .line 306
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v7, v3}, Landroid/net/MobileDataStateTracker;->access$800(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 303
    :cond_10
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 307
    .end local v3           #apnName:Ljava/lang/String;
    .end local v4           #apnType:Ljava/lang/String;
    .end local v7           #reason:Ljava/lang/String;
    :cond_11
    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    if-nez v5, :cond_13

    :cond_12
    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker;->ACTION_SECONDARY_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    if-nez v5, :cond_14

    .line 310
    :cond_13
    iget-object v11, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker;->EXTRA_MESSENGER:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/os/Messenger;

    #setter for: Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;
    invoke-static {v11, v10}, Landroid/net/MobileDataStateTracker;->access$1302(Landroid/net/MobileDataStateTracker;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 311
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 312
    .local v1, ac:Lcom/android/internal/util/AsyncChannel;
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;
    invoke-static {v10}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Landroid/net/MobileDataStateTracker;->access$1400(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;

    move-result-object v11

    iget-object v12, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    #getter for: Landroid/net/MobileDataStateTracker;->mMessenger:Landroid/os/Messenger;
    invoke-static {v12}, Landroid/net/MobileDataStateTracker;->access$1300(Landroid/net/MobileDataStateTracker;)Landroid/os/Messenger;

    move-result-object v12

    invoke-virtual {v1, v10, v11, v12}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto/16 :goto_0

    .line 314
    .end local v1           #ac:Lcom/android/internal/util/AsyncChannel;
    :cond_14
    iget-object v10, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Broadcast received: ignore "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/MobileDataStateTracker;->access$700(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
