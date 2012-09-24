.class public Lcom/android/internal/policy/impl/KeyguardViewMediator;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardViewCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardViewMediator$3;
    }
.end annotation


# static fields
.field private static final ACTION_WEBTOP_SWITCH_MODE:Ljava/lang/String; = "com.motorola.webtop.SWITCH_MODE"

.field protected static final AWAKE_INTERVAL_DEFAULT_KEYBOARD_OPEN_MS:I = 0x2710

.field protected static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final DBG_WAKE:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DELAYED_KEYGUARD_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

.field private static final ENABLE_INSECURE_STATUS_BAR_EXPAND:Z = true

.field private static final EXTRA_IS_WEBTOP_MODE:Ljava/lang/String; = "isWebtopMode"

.field private static final HIDE:I = 0x3

.field private static final KEYGUARD_DELAY_MS:I = 0x1388

.field private static final KEYGUARD_DISPLAY_TIMEOUT_DELAY_DEFAULT:I = 0x7530

.field private static final KEYGUARD_DONE:I = 0x9

.field private static final KEYGUARD_DONE_AUTHENTICATING:I = 0xb

.field private static final KEYGUARD_DONE_DRAWING:I = 0xa

.field private static final KEYGUARD_DONE_DRAWING_TIMEOUT_MS:I = 0x7d0

.field private static final KEYGUARD_LOCK_AFTER_DELAY_DEFAULT:I = 0x1388

.field private static final KEYGUARD_TIMEOUT:I = 0xd

.field private static final MASTER_STREAM_TYPE:I = 0x2

.field private static final NOTIFY_SCREEN_OFF:I = 0x6

.field private static final NOTIFY_SCREEN_ON:I = 0x7

.field private static final POWEROFF_ALARM_TRIGGERED:Ljava/lang/String; = "sys.po.alarm.triggered"

.field private static final RESET:I = 0x4

.field private static final SECURITY_TIMEOUT_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.PhoneWindowManager.SECURITY_TIMEOUT"

.field private static final SET_HIDDEN:I = 0xc

.field private static final SHOW:I = 0x2

.field private static final SHOW_DM_DIALOG:I = 0xf

.field static final SHOW_KEYGUARD:I = 0x0

.field static final SHOW_KEYGUARD_FROM_DOCK:I = 0x1

.field static final SHOW_KEYGUARD_ON_SYSTEM_READY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KeyguardViewMediator"

.field private static final TIMEOUT:I = 0x1

.field private static final VERIFY_UNLOCK:I = 0x5

.field private static final WAKE_WHEN_READY:I = 0x8

.field private static final mVolumeKeyWakeupPhone:Z


# instance fields
.field final MAX_LOCK_VOLUME:F

.field final MIN_LOCK_VOLUME:F

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field mContext:Landroid/content/Context;

.field private mDelayedShowingSequence:I

.field private mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

.field private mExternallyEnabled:Z

.field private mFirstWTSwitchAfterScreenOff:Z

.field private mHandler:Landroid/os/Handler;

.field private mHidden:Z

.field private mKeyboardOpen:Z

.field private mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

.field private mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

.field private mLockAfterTimeOut:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundId:I

.field private mLockSoundStreamId:I

.field private mLockSounds:Landroid/media/SoundPool;

.field private mMasterStreamMaxVolume:I

.field private mNeedToReshowWhenReenabled:Z

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneState:Ljava/lang/String;

.field mRealPowerManager:Landroid/os/LocalPowerManager;

.field private mScreenOn:Z

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowLockIcon:Z

.field private mShowing:Z

.field private mShowingLockIcon:Z

.field mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSuppressNextLockSound:Z

.field private mSystemReady:Z

.field private mUnlockSoundId:I

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mUserPresentIntent:Landroid/content/Intent;

.field private mWaitingUntilKeyguardVisible:Z

.field private mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakelockSequence:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 104
    const-string v0, "1"

    const-string v1, "debug.mot.extwmlog"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    .line 116
    const-string v0, "persist.mot.volumekey.wakeup"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mVolumeKeyWakeupPhone:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V
    .locals 14
    .parameter "context"
    .parameter "callback"
    .parameter "powerManager"

    .prologue
    .line 305
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const v1, 0x3d4ccccd

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->MIN_LOCK_VOLUME:F

    .line 177
    const v1, 0x3ecccccd

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->MAX_LOCK_VOLUME:F

    .line 190
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 227
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 234
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 238
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    .line 246
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    .line 270
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyboardOpen:Z

    .line 272
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    .line 275
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    .line 286
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 301
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFirstWTSwitchAfterScreenOff:Z

    .line 999
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;-><init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 1293
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;-><init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 306
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 308
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mRealPowerManager:Landroid/os/LocalPowerManager;

    .line 309
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 310
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    .line 311
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const v2, 0x1000001a

    const-string v3, "keyguard"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 314
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 315
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "show keyguard"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 316
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 318
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "keyguardWakeAndHandOff"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    .line 321
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockAfterTimeOut:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 335
    .local v9, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v1, "com.android.internal.policy.impl.PhoneWindowManager.SECURITY_TIMEOUT"

    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    const-string v1, "com.motorola.webtop.SWITCH_MODE"

    invoke-virtual {v9, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 342
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 343
    .local v10, filter1:Landroid/content/IntentFilter;
    const-string v1, "com.motorola.internal.intent.SHOW_KEYGUARD_NOW"

    invoke-virtual {v10, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v10, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 348
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 349
    .local v11, filter2:Landroid/content/IntentFilter;
    const-string v1, "com.motorola.internal.intent.lawmo.keyguard"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 352
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 353
    .local v12, filter3:Landroid/content/IntentFilter;
    const-string v1, "com.motorola.internal.intent.LAWMO_SHOW_KEYGUARD"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v12, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 356
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 358
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mCallback:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 360
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 370
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 371
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MiuiClassFactory;->createKeyguardViewProperties(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/KeyguardViewProperties;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    .line 377
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mRealPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v1}, Landroid/os/LocalPowerManager;->isScreenOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    .line 380
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/KeyguardViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardViewProperties;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    .line 384
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    .line 385
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    const/high16 v2, 0x3000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 388
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 389
    .local v7, cr:Landroid/content/ContentResolver;
    const-string v1, "show_status_bar_lock"

    const/4 v2, 0x0

    invoke-static {v7, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowLockIcon:Z

    .line 391
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 392
    const-string v1, "lock_sound"

    invoke-static {v7, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 393
    .local v13, soundPath:Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 394
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const/4 v2, 0x1

    invoke-virtual {v1, v13, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundId:I

    .line 396
    :cond_0
    if-eqz v13, :cond_1

    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundId:I

    if-nez v1, :cond_2

    .line 397
    :cond_1
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to load sound from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_2
    const-string v1, "unlock_sound"

    invoke-static {v7, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 400
    if-eqz v13, :cond_3

    .line 401
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const/4 v2, 0x1

    invoke-virtual {v1, v13, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUnlockSoundId:I

    .line 403
    :cond_3
    if-eqz v13, :cond_4

    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUnlockSoundId:I

    if-nez v1, :cond_5

    .line 404
    :cond_4
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to load sound from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 410
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 412
    return-void

    .line 328
    .end local v7           #cr:Landroid/content/ContentResolver;
    .end local v9           #filter:Landroid/content/IntentFilter;
    .end local v10           #filter1:Landroid/content/IntentFilter;
    .end local v11           #filter2:Landroid/content/IntentFilter;
    .end local v12           #filter3:Landroid/content/IntentFilter;
    .end local v13           #soundPath:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 329
    .local v8, e:Landroid/content/res/Resources$NotFoundException;
    const/16 v1, 0x1388

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockAfterTimeOut:I

    .line 330
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 389
    .end local v8           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v7       #cr:Landroid/content/ContentResolver;
    .restart local v9       #filter:Landroid/content/IntentFilter;
    .restart local v10       #filter1:Landroid/content/IntentFilter;
    .restart local v11       #filter2:Landroid/content/IntentFilter;
    .restart local v12       #filter3:Landroid/content/IntentFilter;
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 99
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFirstWTSwitchAfterScreenOff:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFirstWTSwitchAfterScreenOff:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleTimeout(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleShow(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleReset()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleNotifyScreenOff()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/KeyguardViewMediator;Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleWakeWhenReady(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleKeyguardDone(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleSetHidden(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/policy/impl/KeyguardViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/KeyguardViewMediator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method adjustStatusBarLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1523
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_0

    .line 1524
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1527
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_1

    .line 1528
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Could not get status bar manager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    :goto_0
    return-void

    .line 1530
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowLockIcon:Z

    if-eqz v2, :cond_2

    .line 1532
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1533
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowingLockIcon:Z

    if-nez v2, :cond_2

    .line 1534
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const v3, 0x10404e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1536
    .local v0, contentDescription:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v3, "secure"

    const v4, 0x1080549

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 1539
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowingLockIcon:Z

    .line 1551
    .end local v0           #contentDescription:Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 1552
    .local v1, flags:I
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_3

    .line 1554
    const/high16 v2, 0x100

    or-int/2addr v1, v2

    .line 1555
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1559
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1561
    const/high16 v2, 0x8

    or-int/2addr v1, v2

    .line 1565
    :cond_3
    sget-boolean v2, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 1566
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustStatusBarLocked: mShowing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHidden="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isSecure="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto/16 :goto_0

    .line 1542
    .end local v1           #flags:I
    :cond_5
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowingLockIcon:Z

    if-eqz v2, :cond_2

    .line 1543
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v3, "secure"

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 1544
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowingLockIcon:Z

    goto :goto_1

    .line 1557
    .restart local v1       #flags:I
    :cond_6
    const/high16 v2, 0x1

    or-int/2addr v1, v2

    goto :goto_2
.end method

.method private adjustUserActivityLocked()V
    .locals 4

    .prologue
    .line 1513
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustUserActivityLocked mShowing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHidden: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    if-eqz v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 1515
    .local v0, enabled:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mRealPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v1, v0}, Landroid/os/LocalPowerManager;->enableUserActivity(Z)V

    .line 1516
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v1, :cond_2

    .line 1518
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 1520
    :cond_2
    return-void

    .line 1514
    .end local v0           #enabled:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doKeyguardLocked()V
    .locals 1

    .prologue
    .line 761
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked(I)V

    .line 762
    return-void
.end method

.method private doKeyguardLocked(I)V
    .locals 7
    .parameter "why"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 776
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v6, :cond_1

    .line 777
    sget-boolean v4, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "KeyguardViewMediator"

    const-string v5, "doKeyguard: not showing because externally disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardViewManager;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 793
    sget-boolean v4, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "KeyguardViewMediator"

    const-string v5, "doKeyguard: not showing because it is already showing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 798
    :cond_2
    const-string v6, "keyguard.no_require_sim"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_5

    move v2, v4

    .line 800
    .local v2, requireSim:Z
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    .line 801
    .local v1, provisioned:Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    .line 802
    .local v3, state:Lcom/android/internal/telephony/IccCard$State;
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v3, v6, :cond_3

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v6, :cond_6

    :cond_3
    if-eqz v2, :cond_6

    :cond_4
    move v0, v4

    .line 807
    .local v0, lockedOrMissing:Z
    :goto_2
    if-nez v0, :cond_7

    if-nez v1, :cond_7

    .line 808
    sget-boolean v4, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "KeyguardViewMediator"

    const-string v5, "doKeyguard: not showing because device isn\'t provisioned and the sim is not locked or missing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #lockedOrMissing:Z
    .end local v1           #provisioned:Z
    .end local v2           #requireSim:Z
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_5
    move v2, v5

    .line 798
    goto :goto_1

    .restart local v1       #provisioned:Z
    .restart local v2       #requireSim:Z
    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_6
    move v0, v5

    .line 802
    goto :goto_2

    .line 815
    .restart local v0       #lockedOrMissing:Z
    :cond_7
    const-string v6, "sys.po.alarm.triggered"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eq v6, v4, :cond_b

    .line 816
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Lcom/motorola/webtop/WebtopMode;->getInstance()Lcom/motorola/webtop/WebtopMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/webtop/WebtopMode;->isActive()Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_9
    if-nez v0, :cond_c

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getMotDevicePolicyManager()Lcom/motorola/motepm/MotDevicePolicyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/motepm/MotDevicePolicyManager;->isPasswordSetEnforced()Z

    move-result v4

    if-nez v4, :cond_c

    .line 820
    sget-boolean v4, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v4, :cond_a

    const-string v4, "KeyguardViewMediator"

    const-string v6, "doKeyguard: not showing because lockscreen is off"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_a
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setSecurityTimeoutFlag(Z)V

    goto/16 :goto_0

    .line 825
    :cond_b
    const-string v4, "KeyguardViewMediator"

    const-string v5, " Triggered by power-off alarm, display AlarmScreen anyway"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_c
    sget-boolean v4, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v4, :cond_d

    const-string v4, "KeyguardViewMediator"

    const-string v5, "doKeyguard: showing the lock screen"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showLocked(I)V

    goto/16 :goto_0
.end method

.method private handleHide()V
    .locals 2

    .prologue
    .line 1489
    monitor-enter p0

    .line 1490
    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1492
    const-string v0, "KeyguardViewMediator"

    const-string v1, "attempt to hide the keyguard while waking, ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    monitor-exit p0

    .line 1509
    :goto_0
    return-void

    .line 1496
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_2

    monitor-exit p0

    goto :goto_0

    .line 1508
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1500
    :cond_2
    :try_start_1
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1501
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->playSounds(Z)V

    .line 1504
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->hide()V

    .line 1505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    .line 1506
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustUserActivityLocked()V

    .line 1507
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1508
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private handleKeyguardDone(Z)V
    .locals 6
    .parameter "wakeup"

    .prologue
    .line 1363
    sget-boolean v2, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "KeyguardViewMediator"

    const-string v3, "handleKeyguardDone"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleHide()V

    .line 1365
    if-eqz p1, :cond_1

    .line 1366
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1368
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1371
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1372
    .local v1, in:Landroid/app/IActivityManager;
    if-eqz v1, :cond_2

    .line 1373
    invoke-interface {v1}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1374
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    .line 1375
    .local v0, i:Landroid/content/Intent;
    const/high16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1376
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1383
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 1380
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleKeyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 1390
    monitor-enter p0

    .line 1392
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_1

    .line 1393
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleKeyguardDoneDrawing: notifying mWaitingUntilKeyguardVisible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1395
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1400
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1402
    :cond_1
    monitor-exit p0

    .line 1403
    return-void

    .line 1402
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOff()V
    .locals 2

    .prologue
    .line 1631
    monitor-enter p0

    .line 1632
    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->onScreenTurnedOff()V

    .line 1634
    monitor-exit p0

    .line 1635
    return-void

    .line 1634
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V
    .locals 2
    .parameter "showListener"

    .prologue
    .line 1642
    monitor-enter p0

    .line 1643
    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleNotifyScreenOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    .line 1645
    monitor-exit p0

    .line 1646
    return-void

    .line 1645
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleReset()V
    .locals 2

    .prologue
    .line 1608
    monitor-enter p0

    .line 1609
    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->reset()V

    .line 1611
    monitor-exit p0

    .line 1612
    return-void

    .line 1611
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSetHidden(Z)V
    .locals 1
    .parameter "isHidden"

    .prologue
    .line 709
    monitor-enter p0

    .line 710
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    if-eq v0, p1, :cond_0

    .line 711
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    .line 712
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustUserActivityLocked()V

    .line 713
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 715
    :cond_0
    monitor-exit p0

    .line 716
    return-void

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleShow(I)V
    .locals 2
    .parameter "why"

    .prologue
    .line 1464
    monitor-enter p0

    .line 1465
    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSystemReady:Z

    if-nez v0, :cond_1

    monitor-exit p0

    .line 1482
    :goto_0
    return-void

    .line 1468
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->playSounds(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->show(I)V

    .line 1469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    .line 1470
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustUserActivityLocked()V

    .line 1471
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1473
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "lock"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1478
    :goto_1
    :try_start_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1481
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1474
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private handleTimeout(I)V
    .locals 2
    .parameter "seq"

    .prologue
    .line 1412
    monitor-enter p0

    .line 1413
    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakelockSequence:I

    if-ne p1, v0, :cond_1

    .line 1415
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1417
    :cond_1
    monitor-exit p0

    .line 1418
    return-void

    .line 1417
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleVerifyUnlock()V
    .locals 2

    .prologue
    .line 1619
    monitor-enter p0

    .line 1620
    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleVerifyUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->verifyUnlock()V

    .line 1622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    .line 1623
    monitor-exit p0

    .line 1624
    return-void

    .line 1623
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleWakeWhenReady(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 1580
    monitor-enter p0

    .line 1585
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->wakeWhenReadyTq(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1587
    const-string v0, "KeyguardViewMediator"

    const-string v1, "mKeyguardViewManager.wakeWhenReadyTq did not poke wake lock, so poke it ourselves"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    .line 1595
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1597
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1598
    const-string v0, "KeyguardViewMediator"

    const-string v1, "mWakeLock not held in mKeyguardViewManager.wakeWhenReadyTq"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_1
    monitor-exit p0

    .line 1601
    return-void

    .line 1600
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hideLocked()V
    .locals 3

    .prologue
    .line 912
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardViewMediator"

    const-string v2, "hideLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 914
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 915
    return-void
.end method

.method isWakeKeyWhenKeyguardShowing(IZ)Z
    .locals 2
    .parameter "keyCode"
    .parameter "isDocked"

    .prologue
    .line 1165
    sparse-switch p1, :sswitch_data_0

    .line 1194
    :goto_0
    const/4 p2, 0x1

    .end local p2
    :cond_0
    :goto_1
    :sswitch_0
    return p2

    .line 1169
    .restart local p2
    :sswitch_1
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mVolumeKeyWakeupPhone:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1192
    :sswitch_2
    const/4 p2, 0x0

    goto :goto_1

    .line 1165
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1b -> :sswitch_2
        0x4f -> :sswitch_2
        0x52 -> :sswitch_2
        0x54 -> :sswitch_2
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method notifyScreenOffLocked()V
    .locals 2

    .prologue
    .line 858
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyScreenOffLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 860
    return-void
.end method

.method private notifyScreenOnLocked(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V
    .locals 3
    .parameter "showListener"

    .prologue
    .line 868
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardViewMediator"

    const-string v2, "notifyScreenOnLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 870
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 871
    return-void
.end method

.method private playSounds(Z)V
    .locals 10
    .parameter "locked"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x1

    .line 1423
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_1

    .line 1424
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 1428
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1429
    .local v7, cr:Landroid/content/ContentResolver;
    const-string v0, "lockscreen_sounds_enabled"

    invoke-static {v7, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1430
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundId:I

    .line 1433
    .local v1, whichSound:I
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v0, v3}, Landroid/media/SoundPool;->stop(I)V

    .line 1435
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 1436
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 1437
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mMasterStreamMaxVolume:I

    .line 1441
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1446
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    .line 1447
    .local v8, masterStreamVolume:I
    if-eqz v8, :cond_0

    .line 1450
    const v0, 0x3d4ccccd

    const v3, 0x3eb33333

    int-to-float v6, v8

    iget v9, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mMasterStreamMaxVolume:I

    int-to-float v9, v9

    div-float/2addr v6, v9

    mul-float/2addr v3, v6

    add-float v2, v0, v3

    .line 1454
    .local v2, lockSoundVolume:F
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const/high16 v6, 0x3f80

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundStreamId:I

    goto :goto_0

    .line 1430
    .end local v1           #whichSound:I
    .end local v2           #lockSoundVolume:F
    .end local v8           #masterStreamVolume:I
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUnlockSoundId:I

    goto :goto_1
.end method

.method private resetStateLocked()V
    .locals 3

    .prologue
    .line 837
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardViewMediator"

    const-string v2, "resetStateLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 839
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 840
    return-void
.end method

.method private showLocked()V
    .locals 1

    .prologue
    .line 765
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showLocked(I)V

    .line 766
    return-void
.end method

.method private showLocked(I)V
    .locals 3
    .parameter "why"

    .prologue
    .line 899
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardViewMediator"

    const-string v2, "showLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 902
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 903
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 904
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 905
    return-void
.end method

.method private verifyUnlockLocked()V
    .locals 2

    .prologue
    .line 847
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlockLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 849
    return-void
.end method

.method private wakeWhenReadyLocked(I)V
    .locals 4
    .parameter "keyCode"

    .prologue
    .line 888
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 890
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 891
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 892
    return-void
.end method


# virtual methods
.method public doKeyguardTimeout()V
    .locals 3

    .prologue
    const/16 v2, 0xd

    .line 723
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 724
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 725
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 726
    return-void
.end method

.method public doLidChangeTq(Z)Z
    .locals 3
    .parameter "isLidOpen"

    .prologue
    const/4 v1, 0x0

    .line 742
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyboardOpen:Z

    .line 744
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 745
    .local v0, state:Lcom/android/internal/telephony/IccCard$State;
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_PERM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v2, :cond_1

    .line 756
    :cond_0
    :goto_0
    return v1

    .line 750
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyboardOpen:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardViewProperties;->isSecure()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardViewManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 752
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "KeyguardViewMediator"

    const-string v2, "bypassing keyguard on sliding open of keyboard with non-secure keyguard"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 754
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isInSecurityTimeoutPeriod()Z
    .locals 2

    .prologue
    .line 573
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "showLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isInSecurityTimeoutPeriod()Z

    move-result v0

    return v0
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 734
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLawmoLock()Z
    .locals 1

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMotoUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->getLawmoLockFlag()Z

    move-result v0

    return v0
.end method

.method public isScreenTurnedOn()Z
    .locals 1

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewProperties;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .locals 1

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyguardDone(Z)V
    .locals 1
    .parameter "authenticated"

    .prologue
    .line 1247
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 1248
    return-void
.end method

.method public keyguardDone(ZZ)V
    .locals 6
    .parameter "authenticated"
    .parameter "wakeup"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1251
    monitor-enter p0

    .line 1252
    const v3, 0x11170

    const/4 v4, 0x2

    :try_start_0
    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1253
    sget-boolean v3, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyguardDone("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1255
    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_3

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1256
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1258
    if-eqz p1, :cond_1

    .line 1259
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->clearFailedAttempts()V

    .line 1260
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setSecurityTimeoutFlag(Z)V

    .line 1263
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_2

    .line 1264
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-interface {v1, p1}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 1265
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 1267
    if-eqz p1, :cond_2

    .line 1270
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1271
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1274
    :cond_2
    monitor-exit p0

    .line 1275
    return-void

    :cond_3
    move v1, v2

    .line 1255
    goto :goto_0

    .line 1274
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1284
    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 1662
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1663
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 2

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1693
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 1668
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1673
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1678
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1683
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 24
    .parameter "why"

    .prologue
    .line 437
    monitor-enter p0

    .line 438
    const/16 v20, 0x0

    :try_start_0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    .line 439
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mFirstWTSwitchAfterScreenOff:Z

    .line 440
    sget-boolean v20, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v20, :cond_0

    const-string v20, "KeyguardViewMediator"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onScreenTurnedOff("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v20

    if-nez v20, :cond_4

    :cond_1
    const/4 v10, 0x1

    .line 448
    .local v10, lockImmediately:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 449
    sget-boolean v20, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v20, :cond_2

    const-string v20, "KeyguardViewMediator"

    const-string v21, "pending exit secure callback cancelled"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 451
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 452
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    .line 453
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideLocked()V

    .line 564
    :cond_3
    :goto_1
    monitor-exit p0

    .line 565
    return-void

    .line 445
    .end local v10           #lockImmediately:Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 455
    .restart local v10       #lockImmediately:Z
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 457
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_1

    .line 564
    .end local v10           #lockImmediately:Z
    :catchall_0
    move-exception v20

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    .line 458
    .restart local v10       #lockImmediately:Z
    :cond_6
    const/16 v20, 0x3

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 464
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 467
    .local v4, cr:Landroid/content/ContentResolver;
    const-string v20, "screen_off_timeout"

    const/16 v21, 0x7530

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v5, v0

    .line 471
    .local v5, displayTimeout:J
    const-string v20, "lock_screen_lock_after_timeout"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockAfterTimeOut:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v8, v0

    .line 476
    .local v8, lockAfterTimeout:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v13

    .line 480
    .local v13, policyTimeout:J
    const-wide/16 v20, 0x0

    cmp-long v20, v13, v20

    if-lez v20, :cond_8

    .line 482
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 483
    sub-long v20, v13, v5

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    .line 487
    .local v16, timeout:J
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setSecurityTimeoutFlag(Z)V

    .line 489
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    const-wide/16 v22, 0x1388

    add-long v18, v20, v22

    .line 490
    .local v18, when:J
    new-instance v11, Landroid/content/Intent;

    const-string v20, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    .local v11, newIntent:Landroid/content/Intent;
    const-string v21, "willBeInSTOP"

    const-wide/16 v22, 0x1388

    cmp-long v20, v16, v22

    if-lez v20, :cond_9

    const/16 v20, 0x1

    :goto_3
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 495
    const-string v20, "seq"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x1000

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 498
    .local v12, newSender:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 500
    sget-boolean v20, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v20, :cond_7

    const-string v20, "KeyguardViewMediator"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "setting alarm to turn off keyguard, seq = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_7
    const-wide/16 v20, 0x1388

    cmp-long v20, v16, v20

    if-lez v20, :cond_3

    .line 504
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    add-long v18, v20, v16

    .line 505
    new-instance v7, Landroid/content/Intent;

    const-string v20, "com.android.internal.policy.impl.PhoneWindowManager.SECURITY_TIMEOUT"

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .local v7, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x1000

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 508
    .local v15, sender:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 510
    sget-boolean v20, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v20, :cond_3

    const-string v20, "KeyguardViewMediator"

    const-string v21, "setting alarm to clear mInSecurityTimeoutPeriod"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 485
    .end local v7           #intent:Landroid/content/Intent;
    .end local v11           #newIntent:Landroid/content/Intent;
    .end local v12           #newSender:Landroid/app/PendingIntent;
    .end local v15           #sender:Landroid/app/PendingIntent;
    .end local v16           #timeout:J
    .end local v18           #when:J
    :cond_8
    move-wide/from16 v16, v8

    .restart local v16       #timeout:J
    goto/16 :goto_2

    .line 493
    .restart local v11       #newIntent:Landroid/content/Intent;
    .restart local v18       #when:J
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 513
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v5           #displayTimeout:J
    .end local v8           #lockAfterTimeout:J
    .end local v11           #newIntent:Landroid/content/Intent;
    .end local v13           #policyTimeout:J
    .end local v16           #timeout:J
    .end local v18           #when:J
    :cond_a
    const/16 v20, 0x2

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    if-nez v10, :cond_e

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 522
    .restart local v4       #cr:Landroid/content/ContentResolver;
    const-string v20, "screen_off_timeout"

    const/16 v21, 0x7530

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v5, v0

    .line 526
    .restart local v5       #displayTimeout:J
    const-string v20, "lock_screen_lock_after_timeout"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockAfterTimeOut:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    int-to-long v8, v0

    .line 531
    .restart local v8       #lockAfterTimeout:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v13

    .line 535
    .restart local v13       #policyTimeout:J
    const-wide/16 v20, 0x0

    cmp-long v20, v13, v20

    if-lez v20, :cond_b

    .line 537
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 538
    sub-long v20, v13, v5

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    .line 542
    .restart local v16       #timeout:J
    :goto_4
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-gtz v20, :cond_c

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setSecurityTimeoutFlag(Z)V

    .line 545
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V

    goto/16 :goto_1

    .line 540
    .end local v16           #timeout:J
    :cond_b
    move-wide/from16 v16, v8

    .restart local v16       #timeout:J
    goto :goto_4

    .line 548
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setSecurityTimeoutFlag(Z)V

    .line 549
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    add-long v18, v20, v16

    .line 550
    .restart local v18       #when:J
    new-instance v7, Landroid/content/Intent;

    const-string v20, "com.android.internal.policy.impl.PhoneWindowManager.SECURITY_TIMEOUT"

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 551
    .restart local v7       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x1000

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 553
    .restart local v15       #sender:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 554
    sget-boolean v20, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v20, :cond_d

    const-string v20, "KeyguardViewMediator"

    const-string v21, "setting alarm to clear mInSecurityTimeoutPeriod"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V

    goto/16 :goto_1

    .line 558
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v5           #displayTimeout:J
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #lockAfterTimeout:J
    .end local v13           #policyTimeout:J
    .end local v15           #sender:Landroid/app/PendingIntent;
    .end local v16           #timeout:J
    .end local v18           #when:J
    :cond_e
    const/16 v20, 0x4

    move/from16 v0, p1

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 562
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V
    .locals 3
    .parameter "showListener"

    .prologue
    .line 589
    monitor-enter p0

    .line 590
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    .line 591
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 592
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurnedOn, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->notifyScreenOnLocked(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    .line 594
    monitor-exit p0

    .line 595
    return-void

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 4
    .parameter "simState"

    .prologue
    .line 919
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSimStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_0
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 993
    :goto_0
    return-void

    .line 926
    :pswitch_0
    monitor-enter p0

    .line 927
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_2

    .line 928
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 929
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "KeyguardViewMediator"

    const-string v2, "ICC_ABSENT isn\'t showing, we need to show the keyguard since the device isn\'t provisioned yet."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V

    .line 937
    :cond_2
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 934
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 941
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 942
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Broadcasting intent for PUK unlock UI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_LAUNCH_SIM_UNLOCK_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 944
    .local v0, broadcastIntent:Landroid/content/Intent;
    const-string v1, "ui_type"

    const-string v2, "PUK_LOCKED_UI"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 945
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 954
    .end local v0           #broadcastIntent:Landroid/content/Intent;
    :goto_2
    :pswitch_2
    monitor-enter p0

    .line 955
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v1

    if-nez v1, :cond_6

    .line 956
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "KeyguardViewMediator"

    const-string v2, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing, we need to show the keyguard so the user can enter their sim pin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V

    .line 962
    :goto_3
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 947
    :cond_5
    const-string v1, "KeyguardViewMediator"

    const-string v2, "PUK unlock screen is not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 960
    :cond_6
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 965
    :pswitch_3
    monitor-enter p0

    .line 966
    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v1

    if-nez v1, :cond_8

    .line 967
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "KeyguardViewMediator"

    const-string v2, "PERM_DISABLED and keygaurd isn\'t showing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V

    .line 975
    :goto_4
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    .line 971
    :cond_8
    :try_start_5
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string v1, "KeyguardViewMediator"

    const-string v2, "PERM_DISABLED, resetStateLocked toshow permanently disabled message in lockscreen."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    .line 979
    :pswitch_4
    monitor-enter p0

    .line 980
    :try_start_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 982
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isSimUnlocking()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 984
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Not reseting the keyguard state as we\'re unlocking SIM card"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    monitor-exit p0

    goto/16 :goto_0

    .line 990
    :catchall_3
    move-exception v1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    .line 988
    :cond_a
    :try_start_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    .line 990
    :cond_b
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_0

    .line 921
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 418
    monitor-enter p0

    .line 419
    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSystemReady:Z

    .line 425
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked(I)V

    .line 427
    monitor-exit p0

    .line 428
    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 1688
    return-void
.end method

.method public onWakeKeyWhenKeyguardShowingTq(IZ)Z
    .locals 3
    .parameter "keyCode"
    .parameter "isDocked"

    .prologue
    .line 1144
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWakeKeyWhenKeyguardShowing("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isWakeKeyWhenKeyguardShowing(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1150
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->wakeWhenReadyLocked(I)V

    .line 1151
    const/4 v0, 0x1

    .line 1153
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWakeMotionWhenKeyguardShowingTq()Z
    .locals 2

    .prologue
    .line 1210
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "onWakeMotionWhenKeyguardShowing()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->wakeWhenReadyLocked(I)V

    .line 1216
    const/4 v0, 0x1

    return v0
.end method

.method public pokeWakelock()V
    .locals 2

    .prologue
    const/16 v1, 0x2710

    .line 1225
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyboardOpen:Z

    if-eqz v0, :cond_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock(I)V

    .line 1227
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 5
    .parameter "holdMs"

    .prologue
    .line 1231
    monitor-enter p0

    .line 1233
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1234
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1235
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakelockSequence:I

    .line 1236
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1237
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1238
    monitor-exit p0

    .line 1239
    return-void

    .line 1238
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setHidden(Z)V
    .locals 6
    .parameter "isHidden"

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x0

    .line 699
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHidden "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 701
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v5, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 702
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 703
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    move v1, v2

    .line 701
    goto :goto_0
.end method

.method public setKeyguardEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 603
    monitor-enter p0

    .line 604
    :try_start_0
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyguardEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 609
    if-nez p1, :cond_5

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_5

    .line 610
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_2

    .line 611
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "KeyguardViewMediator"

    const-string v2, "in process of verifyUnlock request, ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_1
    monitor-exit p0

    .line 653
    :goto_0
    return-void

    .line 618
    :cond_2
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "KeyguardViewMediator"

    const-string v2, "remembering to reshow, hiding keyguard, disabling status bar expansion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 621
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideLocked()V

    .line 652
    :cond_4
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 622
    :cond_5
    if-eqz p1, :cond_4

    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v1, :cond_4

    .line 624
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "KeyguardViewMediator"

    const-string v2, "previously hidden, reshowing, reenabling status bar expansion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 628
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_8

    .line 629
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "KeyguardViewMediator"

    const-string v2, "onKeyguardExitResult(false), resetting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 631
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 632
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_1

    .line 634
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showLocked()V

    .line 639
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 640
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 641
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string v1, "KeyguardViewMediator"

    const-string v2, "waiting until mWaitingUntilKeyguardVisible is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_9
    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_a

    .line 644
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 649
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_a
    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "KeyguardViewMediator"

    const-string v2, "done waiting for mWaitingUntilKeyguardVisible"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public showDmDialog(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1655
    new-instance v0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;

    invoke-direct {v0}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;-><init>()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->showDialog(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 1656
    return-void
.end method

.method public verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 659
    monitor-enter p0

    .line 660
    :try_start_0
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_2

    .line 663
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "KeyguardViewMediator"

    const-string v1, "ignoring because device isn\'t provisioned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    .line 678
    :goto_0
    monitor-exit p0

    .line 679
    return-void

    .line 665
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_3

    .line 669
    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlock called when not externally disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_0

    .line 678
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 671
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v0, :cond_4

    .line 673
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_0

    .line 675
    :cond_4
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .line 676
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlockLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
