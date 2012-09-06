.class Lcom/android/internal/policy/impl/KeyguardViewMediator$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 999
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1002
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1004
    .local v4, action:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1127
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    const-string v21, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1008
    const-string v21, "seq"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 1010
    .local v16, sequence:I
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$000()Z

    move-result v21

    if-eqz v21, :cond_2

    const-string v21, "KeyguardViewMediator"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "received DELAYED_KEYGUARD_ACTION with seq = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mDelayedShowingSequence = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static/range {v23 .. v23}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 1019
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mRealPowerManager:Landroid/os/LocalPowerManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/os/LocalPowerManager;->isScreenOn()Z

    move-result v21

    if-nez v21, :cond_3

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$202(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v21

    const-string v23, "willBeInSTOP"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setSecurityTimeoutFlag(Z)V

    .line 1028
    :cond_3
    monitor-exit v22

    goto/16 :goto_0

    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v21

    .line 1030
    .end local v16           #sequence:I
    :cond_4
    const-string v21, "com.android.internal.policy.impl.PhoneWindowManager.SECURITY_TIMEOUT"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 1031
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$000()Z

    move-result v21

    if-eqz v21, :cond_5

    const-string v21, "KeyguardViewMediator"

    const-string v22, "received SECURITY_TIMEOUT_ACTION"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setSecurityTimeoutFlag(Z)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardViewManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewManager;->securityTimeoutOver()V

    goto/16 :goto_0

    .line 1035
    :cond_6
    const-string v21, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    const-string v22, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$602(Lcom/android/internal/policy/impl/KeyguardViewMediator;Ljava/lang/String;)Ljava/lang/String;

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 1039
    :try_start_1
    sget-object v21, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v23, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v21

    if-nez v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 1047
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$000()Z

    move-result v21

    if-eqz v21, :cond_7

    const-string v21, "KeyguardViewMediator"

    const-string v23, "screen is off and call ended, let\'s make sure the keyguard is showing"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v21

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isInSecurityTimeoutPeriod()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1052
    .local v5, cr:Landroid/content/ContentResolver;
    const-string v21, "screen_off_timeout"

    const/16 v23, 0x7530

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v6, v0

    .line 1054
    .local v6, displayTimeout:J
    const-string v21, "lock_screen_lock_after_timeout"

    const/16 v23, 0x1388

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v9, v0

    .line 1057
    .local v9, lockAfterTimeout:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v21

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v12

    .line 1060
    .local v12, policyTimeout:J
    const-wide/16 v23, 0x0

    cmp-long v21, v12, v23

    if-lez v21, :cond_a

    .line 1061
    const-wide/16 v23, 0x0

    move-wide/from16 v0, v23

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 1062
    sub-long v23, v12, v6

    move-wide/from16 v0, v23

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v17

    .line 1066
    .local v17, timeout:J
    :goto_1
    const-wide/16 v23, 0x0

    cmp-long v21, v17, v23

    if-gtz v21, :cond_b

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v21

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setSecurityTimeoutFlag(Z)V

    .line 1079
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v6           #displayTimeout:J
    .end local v9           #lockAfterTimeout:J
    .end local v12           #policyTimeout:J
    .end local v17           #timeout:J
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1081
    :cond_9
    monitor-exit v22

    goto/16 :goto_0

    :catchall_1
    move-exception v21

    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v21

    .line 1064
    .restart local v5       #cr:Landroid/content/ContentResolver;
    .restart local v6       #displayTimeout:J
    .restart local v9       #lockAfterTimeout:J
    .restart local v12       #policyTimeout:J
    :cond_a
    move-wide/from16 v17, v9

    .restart local v17       #timeout:J
    goto :goto_1

    .line 1069
    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v21

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setSecurityTimeoutFlag(Z)V

    .line 1070
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    add-long v19, v23, v17

    .line 1071
    .local v19, when:J
    new-instance v14, Landroid/content/Intent;

    const-string v21, "com.android.internal.policy.impl.PhoneWindowManager.SECURITY_TIMEOUT"

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1072
    .local v14, securityIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v21

    const/16 v23, 0x0

    const/high16 v24, 0x1000

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 1074
    .local v15, sender:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/app/AlarmManager;

    move-result-object v21

    const/16 v23, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 1083
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v6           #displayTimeout:J
    .end local v9           #lockAfterTimeout:J
    .end local v12           #policyTimeout:J
    .end local v14           #securityIntent:Landroid/content/Intent;
    .end local v15           #sender:Landroid/app/PendingIntent;
    .end local v17           #timeout:J
    .end local v19           #when:J
    :cond_c
    const-string v21, "com.motorola.internal.intent.SHOW_KEYGUARD_NOW"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 1084
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$000()Z

    move-result v21

    if-eqz v21, :cond_d

    const-string v21, "KeyguardViewMediator"

    const-string v22, "SHOW_KEYGUARD_NOW_ACTION received"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_d
    invoke-static {}, Lcom/motorola/webtop/WebtopMode;->getInstance()Lcom/motorola/webtop/WebtopMode;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/motorola/webtop/WebtopMode;->isActive()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked(I)V
    invoke-static/range {v21 .. v22}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1200(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V

    goto/16 :goto_0

    .line 1089
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1092
    :cond_f
    const-string v21, "com.motorola.internal.intent.LAWMO_SHOW_KEYGUARD"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 1093
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$000()Z

    move-result v21

    if-eqz v21, :cond_10

    const-string v21, "KeyguardViewMediator"

    const-string v22, "com.motorola.internal.intent.LAWMO_SHOW_KEYGUARD received"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideLocked()V
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardTimeout()V

    goto/16 :goto_0

    .line 1099
    :cond_11
    const-string v21, "com.motorola.internal.intent.lawmo.keyguard"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 1100
    const-string v21, "actionFlag"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1101
    .local v8, flag:I
    const-string v21, "KeyguardViewMediator"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "com.motorola.internal.intent.lawmo.keyguard received, showFlag="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v8, v0, :cond_13

    .line 1103
    const-string v21, "KeyguardViewMediator"

    const-string v22, "call resetStateLocked"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v21

    if-eqz v21, :cond_12

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1108
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->keyguardDone(Z)V

    goto/16 :goto_0

    .line 1111
    :cond_13
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v8, v0, :cond_0

    .line 1112
    const-string v21, "KeyguardViewMediator"

    const-string v22, "Send SHOW_DM_DIALOG"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0xf

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 1114
    .local v11, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1120
    .end local v8           #flag:I
    .end local v11           #msg:Landroid/os/Message;
    :cond_14
    const-string v21, "com.motorola.webtop.SWITCH_MODE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v21

    if-nez v21, :cond_15

    const-string v21, "isWebtopMode"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-nez v21, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFirstWTSwitchAfterScreenOff:Z
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static/range {v21 .. v21}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1124
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFirstWTSwitchAfterScreenOff:Z
    invoke-static/range {v21 .. v22}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1602(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z

    goto/16 :goto_0
.end method
