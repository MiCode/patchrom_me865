.class Landroid/media/AudioService$4;
.super Landroid/telephony/PhoneStateListener;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 3203
    iput-object p1, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3206
    iget-object v2, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    iget-object v3, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    #setter for: Landroid/media/AudioService;->mPhoneState:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$7102(Landroid/media/AudioService;I)I

    .line 3207
    iget-object v2, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mTelephonyManager2:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3208
    iget-object v2, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    iget-object v3, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mTelephonyManager2:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    #setter for: Landroid/media/AudioService;->mPhoneState2:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$7402(Landroid/media/AudioService;I)I

    .line 3210
    :cond_0
    if-ne p1, v4, :cond_2

    .line 3212
    invoke-static {}, Landroid/media/AudioService;->access$7500()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3213
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x1

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$7602(Landroid/media/AudioService;Z)Z

    .line 3214
    monitor-exit v3

    .line 3243
    :cond_1
    :goto_0
    return-void

    .line 3214
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3215
    :cond_2
    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-nez p1, :cond_1

    .line 3217
    :cond_3
    invoke-static {}, Landroid/media/AudioService;->access$7500()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3218
    :try_start_1
    iget-object v2, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$7602(Landroid/media/AudioService;Z)Z

    .line 3219
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3221
    iget-object v2, p0, Landroid/media/AudioService$4;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3224
    .local v0, ttySetting:I
    if-eqz v0, :cond_1

    .line 3226
    packed-switch v0, :pswitch_data_0

    .line 3237
    const-string v1, "off"

    .line 3239
    .local v1, tty_mode:Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tty_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 3219
    .end local v0           #ttySetting:I
    .end local v1           #tty_mode:Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 3228
    .restart local v0       #ttySetting:I
    :pswitch_0
    const-string v1, "full"

    .line 3229
    .restart local v1       #tty_mode:Ljava/lang/String;
    goto :goto_1

    .line 3231
    .end local v1           #tty_mode:Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v1, "vco"

    .line 3232
    .restart local v1       #tty_mode:Ljava/lang/String;
    goto :goto_1

    .line 3234
    .end local v1           #tty_mode:Ljava/lang/String;
    :pswitch_2
    const-string v1, "hco"

    .line 3235
    .restart local v1       #tty_mode:Ljava/lang/String;
    goto :goto_1

    .line 3226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
