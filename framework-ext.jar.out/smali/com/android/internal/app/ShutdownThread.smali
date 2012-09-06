.class public final Lcom/android/internal/app/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG_KPI:Z = false

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x10

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static mContext:Landroid/content/Context;

.field private static mPowerOffAnimation:Z

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mShutdown:Z

.field private static mStartShutdownTime:J

.field private static mWindowManager:Landroid/view/IWindowManager;

.field private static final sInstance:Lcom/android/internal/app/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static sSystemReady:Z

.field private static final sSystemReadySync:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPhonePoweredOff:Z

.field private mPhonePoweredOff2:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRadioOffSync:Ljava/lang/Object;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager2:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 100
    sput-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 109
    new-instance v0, Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sSystemReadySync:Ljava/lang/Object;

    .line 115
    sput-boolean v2, Lcom/android/internal/app/ShutdownThread;->sSystemReady:Z

    .line 141
    const-string v0, "debug.kpi"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    .line 146
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/app/ShutdownThread;->mStartShutdownTime:J

    .line 155
    sput-boolean v2, Lcom/android/internal/app/ShutdownThread;->mShutdown:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 131
    iput-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 132
    iput-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 133
    iput-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    .line 134
    iput-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    .line 135
    iput-boolean v2, p0, Lcom/android/internal/app/ShutdownThread;->mPhonePoweredOff:Z

    .line 136
    iput-boolean v2, p0, Lcom/android/internal/app/ShutdownThread;->mPhonePoweredOff2:Z

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mRadioOffSync:Ljava/lang/Object;

    .line 160
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/ShutdownThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/internal/app/ShutdownThread;->mPhonePoweredOff:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/app/ShutdownThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/internal/app/ShutdownThread;->mPhonePoweredOff:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/ShutdownThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/internal/app/ShutdownThread;->mPhonePoweredOff2:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/app/ShutdownThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/internal/app/ShutdownThread;->mPhonePoweredOff2:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/app/ShutdownThread;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mRadioOffSync:Ljava/lang/Object;

    return-object v0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 268
    sget-object v8, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v8

    .line 269
    :try_start_0
    sget-boolean v9, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v9, :cond_0

    .line 270
    const-string v6, "ShutdownThread"

    const-string v7, "Shutdown sequence already running, returning."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    monitor-exit v8

    .line 384
    :goto_0
    return-void

    .line 273
    :cond_0
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 274
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/android/internal/app/ShutdownThread;->mStartShutdownTime:J

    .line 283
    sget-object v8, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v8, p0}, Lcom/android/internal/app/ShutdownThread;->prepare(Landroid/content/Context;)V

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110057

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 288
    invoke-static {v7}, Lcom/motorola/poweroff/ConfigInfo;->pwrSnd_setSilentreboot(I)V

    .line 310
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110062

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_a

    sget-object v8, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v8, :cond_a

    sget-object v8, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const-string v9, "recovery"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 315
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v8, "/system/media/poweroffanimation.zip"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, AnimationResource:Ljava/io/File;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_8

    move v3, v6

    .line 317
    .local v3, isAvailable:Z
    :goto_2
    sget-boolean v8, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-nez v8, :cond_9

    if-eqz v3, :cond_9

    .line 320
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->setScreenForPowerOffAnimation()V

    .line 322
    sput-boolean v6, Lcom/android/internal/app/ShutdownThread;->mPowerOffAnimation:Z

    .line 325
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "bootanimation -poweroff"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 337
    .end local v0           #AnimationResource:Ljava/io/File;
    .end local v3           #isAvailable:Z
    :goto_3
    sget-boolean v8, Lcom/android/internal/app/ShutdownThread;->mPowerOffAnimation:Z

    if-nez v8, :cond_3

    .line 340
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 341
    .local v5, pd:Landroid/app/ProgressDialog;
    const v8, 0x1040139

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 342
    const v8, 0x104013d

    invoke-virtual {p0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 343
    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 344
    invoke-virtual {v5, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 345
    invoke-virtual {v5}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 347
    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 351
    .end local v5           #pd:Landroid/app/ProgressDialog;
    :cond_3
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 352
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string v6, "power"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, v7, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 355
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v10, v6, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 357
    :try_start_2
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v7, v7, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v8, 0x1

    const-string v9, "ShutdownThread-cpu"

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 359
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v6, v6, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 360
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v6, v6, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 367
    :goto_4
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v10, v6, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 368
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v6, v6, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 370
    :try_start_3
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v7, v7, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v8, 0x1a

    const-string v9, "ShutdownThread-screen"

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 372
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v6, v6, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 373
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v6, v6, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    .line 381
    :cond_4
    :goto_5
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v7, Lcom/android/internal/app/ShutdownThread$2;

    invoke-direct {v7}, Lcom/android/internal/app/ShutdownThread$2;-><init>()V

    iput-object v7, v6, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 383
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v6}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto/16 :goto_0

    .line 274
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 290
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110058

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110059

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 298
    :cond_6
    const/4 v4, 0x0

    .line 299
    .local v4, nextBootAnimationIsSlilent:I
    const-string v8, "audio"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 301
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_7

    .line 302
    const/4 v4, 0x1

    .line 304
    :cond_7
    invoke-static {v4}, Lcom/motorola/poweroff/ConfigInfo;->pwrSnd_setSilentreboot(I)V

    goto/16 :goto_1

    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v4           #nextBootAnimationIsSlilent:I
    .restart local v0       #AnimationResource:Ljava/io/File;
    :cond_8
    move v3, v7

    .line 316
    goto/16 :goto_2

    .line 326
    .restart local v3       #isAvailable:Z
    :catch_0
    move-exception v2

    .line 327
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "ShutdownThread"

    const-string v9, "exec bootanimation error = "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 330
    .end local v2           #e:Ljava/lang/Exception;
    :cond_9
    sput-boolean v7, Lcom/android/internal/app/ShutdownThread;->mPowerOffAnimation:Z

    goto/16 :goto_3

    .line 333
    .end local v0           #AnimationResource:Ljava/io/File;
    .end local v3           #isAvailable:Z
    :cond_a
    sput-boolean v7, Lcom/android/internal/app/ShutdownThread;->mPowerOffAnimation:Z

    goto/16 :goto_3

    .line 361
    :catch_1
    move-exception v2

    .line 362
    .local v2, e:Ljava/lang/SecurityException;
    const-string v6, "ShutdownThread"

    const-string v7, "No permission to acquire wake lock"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v10, v6, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_4

    .line 374
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    .line 375
    .restart local v2       #e:Ljava/lang/SecurityException;
    const-string v6, "ShutdownThread"

    const-string v7, "No permission to acquire wake lock"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v10, v6, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_5
.end method

.method public static isShutdownForPowerOffAnimation()Z
    .locals 1

    .prologue
    .line 262
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->mShutdown:Z

    return v0
.end method

.method private prepare(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 397
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 398
    const-string v0, "phone2"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    .line 399
    new-instance v0, Lcom/android/internal/app/ShutdownThread$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ShutdownThread$3;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 413
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 415
    new-instance v0, Lcom/android/internal/app/ShutdownThread$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ShutdownThread$4;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    .line 429
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/app/ShutdownThread;->mPhonePoweredOff2:Z

    goto :goto_0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 240
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    .line 241
    sput-object p1, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 242
    invoke-static {p0, p2}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 243
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 8
    .parameter "reboot"
    .parameter "reason"

    .prologue
    .line 720
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v4, :cond_0

    .line 721
    const-string v4, "KPI-SHUTDOWN-7"

    const-string v5, "Shutting down vibrator starts"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_0
    if-eqz p0, :cond_2

    .line 726
    const-string v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rebooting, reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :try_start_0
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/internal/app/ShutdownThread;->mStartShutdownTime:J

    sub-long v1, v4, v6

    .line 753
    .local v1, timeTaken:J
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    .line 754
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "TimeToPowerDown"

    invoke-static {v4, v5, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 760
    :cond_1
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v4, :cond_3

    .line 761
    const-string v4, "KPI-SHUTDOWN-8"

    const-string v5, "Performing low-level shutdown..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :goto_1
    invoke-static {}, Landroid/os/Power;->shutdown()V

    .line 769
    return-void

    .line 729
    .end local v1           #timeTaken:J
    :catch_0
    move-exception v0

    .line 730
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ShutdownThread"

    const-string v5, "Reboot failed, will attempt shutdown instead"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 734
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    new-instance v3, Landroid/os/Vibrator;

    invoke-direct {v3}, Landroid/os/Vibrator;-><init>()V

    .line 736
    .local v3, vibrator:Landroid/os/Vibrator;
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 744
    :goto_2
    const-wide/16 v4, 0x1f4

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 745
    :catch_1
    move-exception v4

    goto :goto_0

    .line 737
    :catch_2
    move-exception v0

    .line 739
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "ShutdownThread"

    const-string v5, "Failed to vibrate during shutdown."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 764
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #vibrator:Landroid/os/Vibrator;
    .restart local v1       #timeTaken:J
    :cond_3
    const-string v4, "ShutdownThread"

    const-string v5, "Performing low-level shutdown..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static setScreenForPowerOffAnimation()V
    .locals 2

    .prologue
    .line 248
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mWindowManager:Landroid/view/IWindowManager;

    .line 253
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mShutdown:Z

    .line 254
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->updateRotation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 7
    .parameter "context"
    .parameter "confirm"

    .prologue
    .line 173
    sget-object v5, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v5

    .line 174
    :try_start_0
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v4, :cond_0

    .line 175
    const-string v4, "ShutdownThread"

    const-string v6, "Request to shutdown already running, returning."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    monitor-exit v5

    .line 207
    :goto_0
    return-void

    .line 178
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 182
    .local v2, longPressBehavior:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const v3, 0x104013f

    .line 186
    .local v3, resourceId:I
    :goto_1
    const-string v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    if-eqz p1, :cond_2

    .line 189
    new-instance v0, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 190
    .local v0, closer:Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1040139

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    new-instance v6, Lcom/android/internal/app/ShutdownThread$1;

    invoke-direct {v6, p0}, Lcom/android/internal/app/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040009

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 200
    .local v1, dialog:Landroid/app/AlertDialog;
    iput-object v1, v0, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 201
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 202
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 203
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 178
    .end local v0           #closer:Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #longPressBehavior:I
    .end local v3           #resourceId:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 182
    .restart local v2       #longPressBehavior:I
    :cond_1
    const v3, 0x104013e

    goto :goto_1

    .line 205
    .restart local v3       #resourceId:I
    :cond_2
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static systemReady()V
    .locals 2

    .prologue
    .line 778
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->sSystemReadySync:Ljava/lang/Object;

    monitor-enter v1

    .line 779
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->sSystemReady:Z

    .line 780
    monitor-exit v1

    .line 781
    return-void

    .line 780
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 388
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 389
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 390
    monitor-exit v1

    .line 391
    return-void

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 33

    .prologue
    .line 449
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v2, :cond_0

    const-string v2, "KPI-SHUTDOWN-2"

    const-string v3, "ShutdownThread.run start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    sget-object v32, Lcom/android/internal/app/ShutdownThread;->sSystemReadySync:Ljava/lang/Object;

    monitor-enter v32

    .line 455
    :try_start_0
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->sSystemReady:Z

    if-eqz v2, :cond_11

    .line 459
    new-instance v5, Lcom/android/internal/app/ShutdownThread$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/app/ShutdownThread$5;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 468
    .local v5, br:Landroid/content/BroadcastReceiver;
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v2, :cond_13

    .line 469
    const-string v2, "KPI-SHUTDOWN-3"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_14

    const-string v2, "1"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_15

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 483
    .local v28, reason:Ljava/lang/String;
    const-string v2, "sys.shutdown.requested"

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 490
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 493
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v18, v2, v6

    .line 494
    .local v18, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 496
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v13, v18, v6

    .line 497
    .local v13, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v13, v6

    if-gtz v2, :cond_16

    .line 498
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .end local v13           #delay:J
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 508
    :try_start_2
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v2, :cond_17

    .line 514
    const-string v2, "KPI-SHUTDOWN-4"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :goto_4
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 522
    .local v10, am:Landroid/app/IActivityManager;
    if-eqz v10, :cond_2

    .line 524
    const/16 v2, 0x2710

    :try_start_3
    invoke-interface {v10, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_a

    .line 531
    :cond_2
    :goto_5
    :try_start_4
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v2, :cond_3

    .line 532
    const-string v2, "KPI-SHUTDOWN-5"

    const-string v3, "Shutting down BT and Radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_3
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v24

    .line 539
    .local v24, phone:Lcom/android/internal/telephony/ITelephony;
    invoke-static {}, Lcom/motorola/android/telephony/PhoneModeManager;->isDmds()Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "phone2"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v25

    .line 541
    .local v25, phone2:Lcom/android/internal/telephony/ITelephony;
    :goto_6
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v11

    .line 545
    .local v11, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v22

    .line 550
    .local v22, mount:Landroid/os/storage/IMountService;
    if-eqz v11, :cond_4

    :try_start_5
    invoke-interface {v11}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_19

    :cond_4
    const/4 v12, 0x1

    .line 552
    .local v12, bluetoothOff:Z
    :goto_7
    if-nez v12, :cond_5

    .line 553
    const-string v2, "ShutdownThread"

    const-string v3, "Disabling Bluetooth..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 562
    :cond_5
    :goto_8
    if-eqz v24, :cond_6

    :try_start_6
    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_6
    const/16 v26, 0x1

    .line 563
    .local v26, radioOff:Z
    :goto_9
    if-nez v26, :cond_7

    .line 564
    const-string v2, "ShutdownThread"

    const-string v3, "Turning off radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 573
    :cond_7
    :goto_a
    if-eqz v25, :cond_8

    :try_start_7
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_8
    const/16 v27, 0x1

    .line 574
    .local v27, radioOff2:Z
    :goto_b
    if-nez v27, :cond_9

    .line 575
    const-string v2, "ShutdownThread"

    const-string v3, "Turning off radio2..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 583
    :cond_9
    :goto_c
    :try_start_8
    const-string v2, "ShutdownThread"

    const-string v3, "Waiting for Bluetooth and Radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 586
    const/16 v21, 0x0

    .local v21, i:I
    :goto_d
    const/16 v2, 0x10

    move/from16 v0, v21

    if-ge v0, v2, :cond_d

    .line 587
    if-nez v12, :cond_a

    .line 589
    :try_start_9
    invoke-interface {v11}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1c

    const/4 v12, 0x1

    .line 596
    :cond_a
    :goto_e
    if-nez v26, :cond_b

    .line 598
    :try_start_a
    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5

    move-result v2

    if-nez v2, :cond_1d

    const/16 v26, 0x1

    .line 604
    :cond_b
    :goto_f
    if-nez v27, :cond_c

    .line 606
    :try_start_b
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_6

    move-result v2

    if-nez v2, :cond_1e

    const/16 v27, 0x1

    .line 612
    :cond_c
    :goto_10
    if-eqz v26, :cond_1f

    if-eqz v27, :cond_1f

    if-eqz v12, :cond_1f

    .line 613
    :try_start_c
    const-string v2, "ShutdownThread"

    const-string v3, "Radio and Bluetooth shutdown complete."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_d
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->DEBUG_KPI:Z

    if-eqz v2, :cond_e

    .line 631
    const-string v2, "KPI-SHUTDOWN-6"

    const-string v3, "Shutting down mount service..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_e
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mPowerOffAnimation:Z

    if-eqz v2, :cond_f

    .line 638
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/StatusBarManager;

    .line 640
    .local v29, statusBar:Landroid/app/StatusBarManager;
    const/high16 v2, 0x4

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 646
    .end local v29           #statusBar:Landroid/app/StatusBarManager;
    :cond_f
    new-instance v23, Lcom/android/internal/app/ShutdownThread$6;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$6;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 653
    .local v23, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 656
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x4e20

    add-long v16, v2, v6

    .line 657
    .local v16, endShutTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 659
    if-eqz v22, :cond_20

    .line 660
    :try_start_d
    invoke-interface/range {v22 .. v23}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 667
    :goto_11
    :try_start_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_10

    .line 668
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v13, v16, v6

    .line 669
    .restart local v13       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v13, v6

    if-gtz v2, :cond_21

    .line 670
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v13           #delay:J
    :cond_10
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 684
    .end local v5           #br:Landroid/content/BroadcastReceiver;
    .end local v10           #am:Landroid/app/IActivityManager;
    .end local v11           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v12           #bluetoothOff:Z
    .end local v16           #endShutTime:J
    .end local v18           #endTime:J
    .end local v21           #i:I
    .end local v22           #mount:Landroid/os/storage/IMountService;
    .end local v23           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v24           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v25           #phone2:Lcom/android/internal/telephony/ITelephony;
    .end local v26           #radioOff:Z
    .end local v27           #radioOff2:Z
    .end local v28           #reason:Ljava/lang/String;
    :cond_11
    :try_start_f
    monitor-exit v32
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 688
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mPowerOffAnimation:Z

    if-eqz v2, :cond_12

    .line 690
    :try_start_10
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v13, v2

    .line 694
    .restart local v13       #delay:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v6, Lcom/android/internal/app/ShutdownThread;->mStartShutdownTime:J

    sub-long v30, v2, v6

    .line 695
    .local v30, timeTaken:J
    cmp-long v2, v30, v13

    if-gez v2, :cond_12

    .line 696
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wait for animation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v6, v30, v13

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    sub-long v2, v13, v30

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread;->sleep(J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    .line 706
    .end local v13           #delay:J
    .end local v30           #timeTaken:J
    :cond_12
    :goto_12
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 707
    return-void

    .line 471
    .restart local v5       #br:Landroid/content/BroadcastReceiver;
    :cond_13
    :try_start_11
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 684
    .end local v5           #br:Landroid/content/BroadcastReceiver;
    :catchall_0
    move-exception v2

    monitor-exit v32
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    throw v2

    .line 482
    .restart local v5       #br:Landroid/content/BroadcastReceiver;
    :cond_14
    :try_start_12
    const-string v2, "0"

    goto/16 :goto_1

    :cond_15
    const-string v2, ""
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_2

    .line 502
    .restart local v13       #delay:J
    .restart local v18       #endTime:J
    .restart local v28       #reason:Ljava/lang/String;
    :cond_16
    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_0

    goto/16 :goto_3

    .line 503
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 506
    .end local v13           #delay:J
    :catchall_1
    move-exception v2

    :try_start_14
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :try_start_15
    throw v2

    .line 516
    :cond_17
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 539
    .restart local v10       #am:Landroid/app/IActivityManager;
    .restart local v24       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_18
    const/16 v25, 0x0

    goto/16 :goto_6

    .line 550
    .restart local v11       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v22       #mount:Landroid/os/storage/IMountService;
    .restart local v25       #phone2:Lcom/android/internal/telephony/ITelephony;
    :cond_19
    const/4 v12, 0x0

    goto/16 :goto_7

    .line 556
    :catch_1
    move-exception v20

    .line 557
    .local v20, ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    const/4 v12, 0x1

    .restart local v12       #bluetoothOff:Z
    goto/16 :goto_8

    .line 562
    .end local v20           #ex:Landroid/os/RemoteException;
    :cond_1a
    const/16 v26, 0x0

    goto/16 :goto_9

    .line 567
    :catch_2
    move-exception v20

    .line 568
    .restart local v20       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    const/16 v26, 0x1

    .restart local v26       #radioOff:Z
    goto/16 :goto_a

    .line 573
    .end local v20           #ex:Landroid/os/RemoteException;
    :cond_1b
    const/16 v27, 0x0

    goto/16 :goto_b

    .line 578
    :catch_3
    move-exception v20

    .line 579
    .restart local v20       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio2 shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    const/16 v27, 0x1

    .restart local v27       #radioOff2:Z
    goto/16 :goto_c

    .line 589
    .end local v20           #ex:Landroid/os/RemoteException;
    .restart local v21       #i:I
    :cond_1c
    const/4 v12, 0x0

    goto/16 :goto_e

    .line 591
    :catch_4
    move-exception v20

    .line 592
    .restart local v20       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    const/4 v12, 0x1

    goto/16 :goto_e

    .line 598
    .end local v20           #ex:Landroid/os/RemoteException;
    :cond_1d
    const/16 v26, 0x0

    goto/16 :goto_f

    .line 599
    :catch_5
    move-exception v20

    .line 600
    .restart local v20       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    const/16 v26, 0x1

    goto/16 :goto_f

    .line 606
    .end local v20           #ex:Landroid/os/RemoteException;
    :cond_1e
    const/16 v27, 0x0

    goto/16 :goto_10

    .line 607
    :catch_6
    move-exception v20

    .line 608
    .restart local v20       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio2 shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 609
    const/16 v27, 0x1

    goto/16 :goto_10

    .line 619
    .end local v20           #ex:Landroid/os/RemoteException;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mRadioOffSync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 621
    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mRadioOffSync:Ljava/lang/Object;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_b

    .line 624
    :goto_13
    :try_start_17
    monitor-exit v3

    .line 586
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_d

    .line 624
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :try_start_18
    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 662
    .restart local v16       #endShutTime:J
    .restart local v23       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_20
    :try_start_19
    const-string v2, "ShutdownThread"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7

    goto/16 :goto_11

    .line 664
    :catch_7
    move-exception v15

    .line 665
    .local v15, e:Ljava/lang/Exception;
    :try_start_1a
    const-string v2, "ShutdownThread"

    const-string v4, "Exception during MountService shutdown"

    invoke-static {v2, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    .line 678
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    :try_start_1b
    throw v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 674
    .restart local v13       #delay:J
    :cond_21
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1c} :catch_8

    goto/16 :goto_11

    .line 675
    :catch_8
    move-exception v2

    goto/16 :goto_11

    .line 699
    .end local v5           #br:Landroid/content/BroadcastReceiver;
    .end local v10           #am:Landroid/app/IActivityManager;
    .end local v11           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v12           #bluetoothOff:Z
    .end local v13           #delay:J
    .end local v16           #endShutTime:J
    .end local v18           #endTime:J
    .end local v21           #i:I
    .end local v22           #mount:Landroid/os/storage/IMountService;
    .end local v23           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v24           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v25           #phone2:Lcom/android/internal/telephony/ITelephony;
    .end local v26           #radioOff:Z
    .end local v27           #radioOff2:Z
    .end local v28           #reason:Ljava/lang/String;
    :catch_9
    move-exception v15

    .line 700
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "sleep error = "

    invoke-static {v2, v3, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    .line 525
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v5       #br:Landroid/content/BroadcastReceiver;
    .restart local v10       #am:Landroid/app/IActivityManager;
    .restart local v18       #endTime:J
    .restart local v28       #reason:Ljava/lang/String;
    :catch_a
    move-exception v2

    goto/16 :goto_5

    .line 622
    .restart local v11       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v12       #bluetoothOff:Z
    .restart local v21       #i:I
    .restart local v22       #mount:Landroid/os/storage/IMountService;
    .restart local v24       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v25       #phone2:Lcom/android/internal/telephony/ITelephony;
    .restart local v26       #radioOff:Z
    .restart local v27       #radioOff2:Z
    :catch_b
    move-exception v2

    goto :goto_13
.end method
