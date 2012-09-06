.class public Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.super Lcom/android/internal/policy/impl/KeyguardViewBase;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final AWAKE_INTERVAL_POKE_MS:I = 0x2328

.field private static final DEBUG:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field private static final EMERGENCY_CALL_TIMEOUT:I = 0x2710

.field private static final FAILED_FACE_UNLOCK_ATTEMPTS_BEFORE_BACKUP:I = 0xf

.field private static final MAX_CREATION_ATTEMPTS:I = 0x3

.field private static final POWEROFF_ALARM_TRIGGERED:Ljava/lang/String; = "sys.po.alarm.triggered"

.field private static final TAG:Ljava/lang/String; = "LockPatternKeyguardView"

.field private static final TRANSPORT_USERACTIVITY_TIMEOUT:I = 0x2710

.field private static mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;


# instance fields
.field private final BACKUP_LOCK_TIMEOUT:I

.field private final FACELOCK_VIEW_AREA_EMERGENCY_DIALER_TIMEOUT:I

.field private final FACELOCK_VIEW_AREA_SERVICE_TIMEOUT:I

.field private final MSG_HIDE_FACELOCK_AREA_VIEW:I

.field private final MSG_KEYGUARD_DONE:I

.field private final MSG_POKE_WAKELOCK_HOVER_EVENT:I

.field private final MSG_SECURITY_TIMEOUT_OVER:I

.field private final MSG_SHOW_FACELOCK_AREA_VIEW:I

.field private mAlarmScreen:Landroid/view/View;

.field private mBoundToFaceLockService:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mEnableFaceLockArea:Z

.field private mEnableFallback:Z

.field private mFaceLockAreaView:Landroid/view/View;

.field private final mFaceLockCallback:Lcom/android/internal/policy/IFaceLockCallback;

.field private mFaceLockConnection:Landroid/content/ServiceConnection;

.field private mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

.field private mFaceLockServiceRunning:Z

.field private final mFaceLockServiceRunningLock:Ljava/lang/Object;

.field private final mFaceLockStartupLock:Ljava/lang/Object;

.field private mFailedFaceUnlockAttempts:I

.field private mForgotPassword:Z

.field private mForgotPattern:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasOverlay:Z

.field private mInSTOPWhenScreenTurnedOn:Z

.field private mIsEcmKeylockEnabled:Z

.field private mIsGoogleAccountExist:Z

.field private mIsMasterClearToUnlockEnabled:Z

.field private mIsVerifyUnlockOnly:Z

.field mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mLastMoveTime:J

.field private mLaunchCameraAfterKeyguardDone:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreen:Landroid/view/View;

.field private mPokeMsgQueued:Z

.field private mPolicyEnforced:Z

.field private mPowerupAlarmRtc:Z

.field private mRecreateRunnable:Ljava/lang/Runnable;

.field private mRequiresSim:Z

.field private mResetPhone:Z

.field private mSavedState:Landroid/os/Parcelable;

.field private volatile mScreenOn:Z

.field private mShowLockBeforeUnlock:Z

.field private mShowWhy:I

.field private mSkippedTransition:Z

.field private mToastTextView:Landroid/widget/TextView;

.field private mToastView:Landroid/view/View;

.field private mTransportControlView:Lcom/motorola/android/widget/MotoTransportControlView;

.field private mTransportDlnaView:Lcom/motorola/android/widget/MotoTransportDlnaControlView;

.field private mUnlockScreen:Landroid/view/View;

.field private mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mWidgetCallback:Lcom/android/internal/widget/LockScreenWidgetCallback;

.field private final mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

.field private volatile mWindowFocused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V
    .locals 4
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "controller"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 392
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;-><init>(Landroid/content/Context;)V

    .line 129
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    .line 130
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowFocused:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    .line 137
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    .line 140
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z

    .line 141
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunningLock:Ljava/lang/Object;

    .line 142
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockStartupLock:Ljava/lang/Object;

    .line 145
    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->MSG_SHOW_FACELOCK_AREA_VIEW:I

    .line 146
    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->MSG_HIDE_FACELOCK_AREA_VIEW:I

    .line 147
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->MSG_POKE_WAKELOCK_HOVER_EVENT:I

    .line 148
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->MSG_KEYGUARD_DONE:I

    .line 149
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->MSG_SECURITY_TIMEOUT_OVER:I

    .line 153
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->FACELOCK_VIEW_AREA_EMERGENCY_DIALER_TIMEOUT:I

    .line 158
    const/16 v2, 0xbb8

    iput v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->FACELOCK_VIEW_AREA_SERVICE_TIMEOUT:I

    .line 161
    const/16 v2, 0x1388

    iput v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->BACKUP_LOCK_TIMEOUT:I

    .line 166
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsGoogleAccountExist:Z

    .line 168
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPolicyEnforced:Z

    .line 169
    const-string v2, "ro.mot.fid.33531.keylock_ecm"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsEcmKeylockEnabled:Z

    .line 173
    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    .line 191
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFaceLockArea:Z

    .line 192
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLaunchCameraAfterKeyguardDone:Z

    .line 194
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPokeMsgQueued:Z

    .line 195
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLastMoveTime:J

    .line 197
    iput v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowWhy:I

    .line 199
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mInSTOPWhenScreenTurnedOn:Z

    .line 201
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSkippedTransition:Z

    .line 202
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetPhone:Z

    .line 280
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 289
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 302
    new-instance v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    .line 310
    new-instance v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWidgetCallback:Lcom/android/internal/widget/LockScreenWidgetCallback;

    .line 2122
    new-instance v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$9;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockConnection:Landroid/content/ServiceConnection;

    .line 2202
    new-instance v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$10;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    .line 394
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    .line 395
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    .line 396
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    .line 397
    const-string v2, "keyguard.no_require_sim"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRequiresSim:Z

    .line 401
    const-string v2, "sys.po.alarm.triggered"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPowerupAlarmRtc:Z

    .line 402
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPowerupAlarmRtc:Z

    if-eqz v2, :cond_0

    .line 403
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->AlarmScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sput-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 406
    :cond_0
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 407
    iput-object p3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 408
    iput-object p4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

    .line 409
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    .line 412
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v2, v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMotoUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->hasGoogleAccount()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsGoogleAccountExist:Z

    .line 413
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsMasterClearToUnlockEnabled:Z

    .line 415
    invoke-virtual {p3}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v2

    if-lez v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPolicyEnforced:Z

    .line 418
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 420
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 722
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setFocusableInTouchMode(Z)V

    .line 723
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setDescendantFocusability(I)V

    .line 725
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->maybeEnableFallback(Landroid/content/Context;)V

    .line 726
    return-void
.end method

.method private CheckPhoneisECMstate()Z
    .locals 3

    .prologue
    .line 1728
    const-string v1, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1729
    .local v0, inEcm:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method static synthetic access$000()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mInSTOPWhenScreenTurnedOn:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->shouldForceUnlockScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsGoogleAccountExist:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showResetPhoneDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showRecoveryDialog()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->restoreWidgetState()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockAreaWithTimeout(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createToastScreen()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mToastView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mToastTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showExpiredDialog()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showExpirationWarningDialog(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLaunchCameraAfterKeyguardDone:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLaunchCameraAfterKeyguardDone:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showAlmostAtWipeDialog(II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showWipeDialog(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showAlmostAtAccountLoginDialog()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showDialogAndRedirectToAccountScreen()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showTimeoutDialog()V

    return-void
.end method

.method static synthetic access$3802(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    return p1
.end method

.method static synthetic access$3808(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPolicyEnforced:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsMasterClearToUnlockEnabled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/IFaceLockInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/IFaceLockInterface;)Lcom/android/internal/policy/IFaceLockInterface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/IFaceLockCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockArea()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPassword:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetPhone:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private activateFaceLockIfAble()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 879
    iget v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    const/16 v6, 0xf

    if-lt v5, v6, :cond_1

    move v2, v3

    .line 881
    .local v2, tooManyFaceUnlockTries:Z
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v1

    .line 882
    .local v1, failedBackupAttempts:I
    const/4 v5, 0x5

    if-lt v1, v5, :cond_2

    move v0, v3

    .line 884
    .local v0, backupIsTimedOut:Z
    :goto_1
    if-eqz v2, :cond_0

    const-string v3, "LockPatternKeyguardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tooManyFaceUnlockTries: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    if-nez v0, :cond_3

    .line 890
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->bindToFaceLock()V

    .line 894
    const-wide/16 v3, 0xbb8

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockAreaWithTimeout(J)V

    .line 899
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 903
    :goto_2
    return-void

    .end local v0           #backupIsTimedOut:Z
    .end local v1           #failedBackupAttempts:I
    .end local v2           #tooManyFaceUnlockTries:Z
    :cond_1
    move v2, v4

    .line 879
    goto :goto_0

    .restart local v1       #failedBackupAttempts:I
    .restart local v2       #tooManyFaceUnlockTries:Z
    :cond_2
    move v0, v4

    .line 882
    goto :goto_1

    .line 901
    .restart local v0       #backupIsTimedOut:Z
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V

    goto :goto_2
.end method

.method private createToastScreen()V
    .locals 3

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mToastView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1055
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x10900d6

    const v1, 0x1020393

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mToastView:Landroid/view/View;

    .line 1057
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mToastView:Landroid/view/View;

    const v1, 0x1020394

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mToastTextView:Landroid/widget/TextView;

    .line 1058
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mToastView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    .line 1060
    :cond_0
    return-void
.end method

.method private getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .locals 3

    .prologue
    .line 1625
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPowerupAlarmRtc:Z

    if-eqz v1, :cond_0

    .line 1626
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->AlarmScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 1647
    :goto_0
    return-object v1

    .line 1629
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMotoUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->getLawmoLockFlag()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1630
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_0

    .line 1633
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 1634
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_PERM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1639
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_0

    .line 1642
    :cond_3
    invoke-static {}, Lcom/motorola/webtop/WebtopMode;->getInstance()Lcom/motorola/webtop/WebtopMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/webtop/WebtopMode;->isActive()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->isInSecurityTimeoutPeriod()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1644
    :cond_4
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_0

    .line 1647
    :cond_5
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_0
.end method

.method private getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1659
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMotoUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->getLawmoLockFlag()Z

    move-result v3

    if-ne v3, v4, :cond_0

    .line 1660
    const-string v3, "LockPatternKeyguardView"

    const-string v4, "The device is lock by LAWMO."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->LAWMO_PartialLock:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 1723
    :goto_0
    return-object v0

    .line 1665
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    .line 1667
    .local v2, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_1

    .line 1668
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .local v0, currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .line 1669
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_2

    .line 1670
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .line 1672
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMotoUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->isDeviceRequestPasswordSetup()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1673
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMotoUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->setDeviceRequestPasswordSetup(Z)V

    .line 1674
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->PasswordSetup:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .line 1677
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 1678
    .local v1, mode:I
    sparse-switch v1, :sswitch_data_0

    .line 1720
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown unlock mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1683
    :sswitch_0
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPassword:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1684
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsGoogleAccountExist:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetPhone:Z

    if-nez v3, :cond_5

    .line 1685
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .line 1687
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_5
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->MasterClear:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .line 1690
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_6
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 1692
    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .line 1695
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :sswitch_1
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 1696
    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_0

    .line 1700
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :sswitch_2
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1702
    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsGoogleAccountExist:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetPhone:Z

    if-nez v3, :cond_8

    .line 1703
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto/16 :goto_0

    .line 1705
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_8
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->MasterClear:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto/16 :goto_0

    .line 1709
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_9
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMotoUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->isActivePolicyPasswordNeedChange()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1711
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, v3, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMotoUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->setDeviceRequestPasswordSetup(Z)V

    .line 1712
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->PasswordSetup:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto/16 :goto_0

    .line 1714
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_a
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 1718
    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto/16 :goto_0

    .line 1678
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private hideFaceLockArea()V
    .locals 2

    .prologue
    .line 2069
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeFaceLockAreaDisplayMessages()V

    .line 2070
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2071
    return-void
.end method

.method private initializeFaceLockAreaView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1982
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1983
    const v0, 0x10202bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    .line 1984
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1985
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "Layout does not have faceLockAreaView and FaceLock is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :cond_0
    :goto_0
    return-void

    .line 1988
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFaceLockArea:Z

    if-eqz v0, :cond_0

    .line 1989
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1994
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    goto :goto_0
.end method

.method private initializeTransportControlView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 1599
    const v0, 0x10202c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/MotoTransportControlView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/motorola/android/widget/MotoTransportControlView;

    .line 1600
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/motorola/android/widget/MotoTransportControlView;

    if-nez v0, :cond_0

    .line 1608
    :goto_0
    const v0, 0x1020392

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/MotoTransportDlnaControlView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportDlnaView:Lcom/motorola/android/widget/MotoTransportDlnaControlView;

    .line 1609
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportDlnaView:Lcom/motorola/android/widget/MotoTransportDlnaControlView;

    if-nez v0, :cond_1

    .line 1617
    :goto_1
    return-void

    .line 1603
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 1604
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/motorola/android/widget/MotoTransportControlView;

    invoke-virtual {v0, v3}, Lcom/motorola/android/widget/MotoTransportControlView;->setVisibility(I)V

    .line 1605
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/motorola/android/widget/MotoTransportControlView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWidgetCallback:Lcom/android/internal/widget/LockScreenWidgetCallback;

    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/MotoTransportControlView;->setCallback(Lcom/android/internal/widget/LockScreenWidgetCallback;)V

    goto :goto_0

    .line 1612
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 1613
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportDlnaView:Lcom/motorola/android/widget/MotoTransportDlnaControlView;

    invoke-virtual {v0, v3}, Lcom/motorola/android/widget/MotoTransportDlnaControlView;->setVisibility(I)V

    .line 1614
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportDlnaView:Lcom/motorola/android/widget/MotoTransportDlnaControlView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWidgetCallback:Lcom/android/internal/widget/LockScreenWidgetCallback;

    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/MotoTransportDlnaControlView;->setCallback(Lcom/android/internal/widget/LockScreenWidgetCallback;)V

    goto :goto_1
.end method

.method public static isAlarmScreenMode()Z
    .locals 2

    .prologue
    .line 219
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->AlarmScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecure()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1302
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v1

    .line 1303
    .local v1, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    const/4 v0, 0x0

    .line 1304
    .local v0, secure:Z
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->$SwitchMap$com$android$internal$policy$impl$LockPatternKeyguardView$UnlockMode:[I

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1332
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown unlock mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1306
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v0

    .line 1334
    :goto_0
    return v0

    .line 1309
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_0

    move v0, v2

    .line 1310
    :goto_1
    goto :goto_0

    :cond_0
    move v0, v3

    .line 1309
    goto :goto_1

    .line 1312
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_1

    move v0, v2

    .line 1313
    :goto_2
    goto :goto_0

    :cond_1
    move v0, v3

    .line 1312
    goto :goto_2

    .line 1315
    :pswitch_3
    const/4 v0, 0x1

    .line 1316
    goto :goto_0

    .line 1318
    :pswitch_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    .line 1319
    goto :goto_0

    .line 1321
    :pswitch_5
    const/4 v0, 0x1

    .line 1322
    goto :goto_0

    .line 1325
    :pswitch_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v2, v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMotoUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->isDeviceRequestPasswordSetup()Z

    move-result v0

    .line 1326
    goto :goto_0

    .line 1329
    :pswitch_7
    const/4 v0, 0x1

    .line 1330
    goto :goto_0

    .line 1304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private isTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x1002

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 798
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/accounts/AccountManager;Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;)V

    .line 799
    .local v0, accountAnalyzer:Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->start()V

    .line 800
    return-void
.end method

.method private onSecurityTimeoutOver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 998
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 999
    .local v0, pm:Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1004
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    if-nez v1, :cond_1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFaceLockArea:Z

    .line 1006
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 1011
    :goto_0
    return-void

    .line 1008
    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSkippedTransition:Z

    goto :goto_0
.end method

.method private pokeWakelockForHoverEvent()V
    .locals 4

    .prologue
    .line 1158
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPokeMsgQueued:Z

    if-nez v0, :cond_0

    .line 1159
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 1160
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x2328

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPokeMsgQueued:Z

    .line 1163
    :cond_0
    return-void
.end method

.method private recreateLockScreen()V
    .locals 2

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 1043
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 1044
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 1047
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createLockScreen()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    .line 1048
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1049
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;I)V

    .line 1050
    return-void
.end method

.method private recreateUnlockScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)V
    .locals 2
    .parameter "unlockMode"

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 1066
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 1067
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 1070
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 1071
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1072
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;I)V

    .line 1073
    return-void
.end method

.method private removeFaceLockAreaDisplayMessages()V
    .locals 2

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2056
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2057
    return-void
.end method

.method private restoreWidgetState()V
    .locals 2

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/motorola/android/widget/MotoTransportControlView;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/motorola/android/widget/MotoTransportControlView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/MotoTransportControlView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 956
    :cond_0
    return-void
.end method

.method private saveWidgetState()V
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/motorola/android/widget/MotoTransportControlView;

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTransportControlView:Lcom/motorola/android/widget/MotoTransportControlView;

    invoke-virtual {v0}, Lcom/motorola/android/widget/MotoTransportControlView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    .line 947
    :cond_0
    return-void
.end method

.method private shouldForceUnlockScreen()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1277
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, v4, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMotoUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->isActivePolicyPasswordNeedChange()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1297
    :goto_0
    return v2

    .line 1281
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v1

    .line 1282
    .local v1, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    const/4 v0, 0x0

    .line 1283
    .local v0, shouldForce:Z
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$11;->$SwitchMap$com$android$internal$policy$impl$LockPatternKeyguardView$UnlockMode:[I

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_1
    move v2, v0

    .line 1297
    goto :goto_0

    .line 1285
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_1

    move v0, v2

    .line 1286
    :goto_2
    goto :goto_1

    :cond_1
    move v0, v3

    .line 1285
    goto :goto_2

    .line 1288
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_2

    move v0, v2

    .line 1289
    :goto_3
    goto :goto_1

    :cond_2
    move v0, v3

    .line 1288
    goto :goto_3

    .line 1291
    :pswitch_2
    const/4 v0, 0x1

    .line 1292
    goto :goto_1

    .line 1294
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_1

    .line 1283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showAlmostAtAccountLoginDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1774
    const/16 v2, 0x1e

    .line 1775
    .local v2, timeoutInSeconds:I
    const/16 v0, 0xf

    .line 1777
    .local v0, count:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v4, 0x1040533

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v6, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1779
    .local v1, message:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1, v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1780
    return-void
.end method

.method private showAlmostAtWipeDialog(II)V
    .locals 8
    .parameter "attempts"
    .parameter "remaining"

    .prologue
    const/4 v7, 0x0

    .line 1791
    const/16 v1, 0x1e

    .line 1792
    .local v1, timeoutInSeconds:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v3, 0x1040316

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1794
    .local v0, message:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v7}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1795
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "title"
    .parameter "message"
    .parameter "listener"

    .prologue
    .line 1734
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    if-eqz p3, :cond_1

    new-instance v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1745
    .local v0, dialog:Landroid/app/AlertDialog;
    if-eqz p1, :cond_0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 1746
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1747
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1748
    return-void

    .line 1734
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showDialogAndRedirectToAccountScreen()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1783
    const/16 v1, 0x1e

    .line 1784
    .local v1, timeoutInSeconds:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v3, 0x1040535

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1786
    .local v0, message:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v7}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1787
    return-void
.end method

.method private showExpirationWarningDialog(I)V
    .locals 9
    .parameter "daysBeforeExpired"

    .prologue
    const/4 v8, 0x0

    .line 1858
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1859
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v5, 0x1040586

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1860
    .local v3, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v5, 0x1040587

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1862
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1863
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1864
    const v4, 0x1080027

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1865
    const v4, 0x104058c

    new-instance v5, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$6;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1878
    const v4, 0x104058d

    new-instance v5, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1885
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1886
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1887
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1888
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1889
    return-void
.end method

.method private showExpiredDialog()V
    .locals 6

    .prologue
    .line 1892
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1893
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v5, 0x1040588

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1894
    .local v3, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v5, 0x1040589

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1895
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1896
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1897
    const v4, 0x108009b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1898
    const v4, 0x104000a

    new-instance v5, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$8;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1906
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1907
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1908
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1909
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1910
    return-void
.end method

.method private showFaceLockArea()V
    .locals 2

    .prologue
    .line 2062
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeFaceLockAreaDisplayMessages()V

    .line 2063
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2064
    return-void
.end method

.method private showFaceLockAreaWithTimeout(J)V
    .locals 2
    .parameter "timeoutMillis"

    .prologue
    .line 2075
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockArea()V

    .line 2076
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2077
    return-void
.end method

.method private showRecoveryDialog()V
    .locals 6

    .prologue
    .line 1845
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1846
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v5, 0x104058e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1847
    .local v3, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v5, 0x104058f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1848
    .local v2, message:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1849
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1850
    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1851
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1852
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1853
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1854
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1855
    return-void
.end method

.method private showResetPhoneDialog()V
    .locals 6

    .prologue
    .line 1805
    const/4 v2, 0x0

    .line 1806
    .local v2, message:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1808
    .local v3, title:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsGoogleAccountExist:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    if-eqz v4, :cond_0

    .line 1809
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v5, 0x104053c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1810
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v5, 0x104053b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1821
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 1822
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1823
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x1080027

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1824
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1825
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1826
    const v4, 0x104059d

    new-instance v5, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1838
    const v4, 0x104059e

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1839
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1840
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1841
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1842
    return-void

    .line 1812
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1813
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v5, 0x104059a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1814
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v5, 0x104059c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1816
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v5, 0x1040599

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1817
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v5, 0x104059b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private showTimeoutDialog()V
    .locals 13

    .prologue
    const/16 v12, 0x28

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1751
    const/4 v0, 0x0

    .line 1752
    .local v0, listener:Z
    const/4 v3, 0x0

    .line 1753
    .local v3, title:Ljava/lang/String;
    const/16 v2, 0x1e

    .line 1754
    .local v2, timeoutInSeconds:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v6, 0x1040532

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1756
    .local v1, message:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsGoogleAccountExist:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    if-eqz v5, :cond_0

    .line 1757
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-lt v5, v12, :cond_1

    .line 1758
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v6, 0x1040537

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1759
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v6, 0x104053a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1760
    const/4 v0, 0x1

    .line 1770
    :cond_0
    :goto_0
    invoke-direct {p0, v3, v1, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1771
    return-void

    .line 1762
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    add-int/lit8 v4, v12, -0x5

    .line 1764
    .local v4, warningAttempts:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1765
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v6, 0x1040534

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private showWipeDialog(I)V
    .locals 6
    .parameter "attempts"

    .prologue
    const/4 v5, 0x0

    .line 1798
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v2, 0x1040317

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1800
    .local v0, message:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1801
    return-void
.end method

.method private stopFaceLockIfRunning()Z
    .locals 1

    .prologue
    .line 2000
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    if-eqz v0, :cond_0

    .line 2001
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 2002
    const/4 v0, 0x1

    .line 2004
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stuckOnLockScreenBecauseSimMissing()Z
    .locals 2

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRequiresSim:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    .locals 7
    .parameter "mode"
    .parameter "force"

    .prologue
    .line 1342
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_0

    .line 1343
    const-string v4, "LockPatternKeyguardView"

    const-string v5, "PUK_REQUIRED - forcing LockScreen mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    sget-object p1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 1348
    :cond_0
    sput-object p1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 1349
    const-string v4, "LockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current mode ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPowerupAlarmRtc:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->AlarmScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v4, :cond_2

    .line 1353
    const-string v4, "LockPatternKeyguardView"

    const-string v5, "Detect Power Off alarm mode"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mAlarmScreen:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1355
    const-string v4, "LockPatternKeyguardView"

    const-string v5, "Re-create AlarmScreen() or it\'s first time."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->RecreateAlarmScreen()Landroid/view/View;

    .line 1358
    :cond_1
    const-string v4, "LockPatternKeyguardView"

    const-string v5, " Call onResume() of AlarmScreen()."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mAlarmScreen:Landroid/view/View;

    check-cast v4, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 1367
    :cond_2
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-eq p1, v4, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    if-eqz v4, :cond_5

    .line 1368
    :cond_3
    if-nez p2, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v4, Landroid/content/res/Configuration;->orientation:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v4, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreen;->getCreationOrientation()I

    move-result v4

    if-eq v5, v4, :cond_5

    .line 1370
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateLockScreen()V

    .line 1376
    :cond_5
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v4, :cond_7

    .line 1377
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v2

    .line 1378
    .local v2, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    if-nez p2, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v2, v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v4, Landroid/content/res/Configuration;->orientation:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v4, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreen;->getCreationOrientation()I

    move-result v4

    if-eq v5, v4, :cond_7

    .line 1380
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopFaceLockIfRunning()Z

    move-result v1

    .line 1381
    .local v1, restartFaceLock:Z
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateUnlockScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)V

    .line 1382
    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->activateFaceLockIfAble()V

    .line 1388
    .end local v1           #restartFaceLock:Z
    .end local v2           #unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_7
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v4, :cond_b

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 1389
    .local v0, goneScreen:Landroid/view/View;
    :goto_0
    const/4 v3, 0x0

    .line 1390
    .local v3, visibleScreen:Landroid/view/View;
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->AlarmScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-eq p1, v4, :cond_d

    .line 1391
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v4, :cond_c

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    .line 1399
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

    move-object v4, v3

    check-cast v4, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreen;->needsInput()Z

    move-result v4

    invoke-interface {v5, v4}, Lcom/android/internal/policy/impl/KeyguardWindowController;->setNeedsInput(Z)V

    .line 1406
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    if-eqz v4, :cond_9

    .line 1407
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_8

    move-object v4, v0

    .line 1408
    check-cast v4, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 1410
    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_9

    move-object v4, v3

    .line 1411
    check-cast v4, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 1415
    :cond_9
    if-eqz v0, :cond_a

    .line 1416
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1418
    :cond_a
    const-string v4, "LockPatternKeyguardView"

    const-string v5, "Set VISIBLE for AlarmScreen."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1420
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->requestLayout()V

    .line 1422
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_e

    .line 1423
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyguard screen must be able to take focus when shown "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1388
    .end local v0           #goneScreen:Landroid/view/View;
    .end local v3           #visibleScreen:Landroid/view/View;
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    goto :goto_0

    .line 1391
    .restart local v0       #goneScreen:Landroid/view/View;
    .restart local v3       #visibleScreen:Landroid/view/View;
    :cond_c
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    goto :goto_1

    .line 1394
    :cond_d
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mAlarmScreen:Landroid/view/View;

    goto :goto_1

    .line 1426
    :cond_e
    return-void
.end method

.method private usingFaceLock()Z
    .locals 1

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method RecreateAlarmScreen()Landroid/view/View;
    .locals 2

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mAlarmScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mAlarmScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 1434
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mAlarmScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 1435
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mAlarmScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 1438
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createAlarmScreen()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mAlarmScreen:Landroid/view/View;

    .line 1439
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mAlarmScreen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1440
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mAlarmScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    .line 1441
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mAlarmScreen:Landroid/view/View;

    return-object v0
.end method

.method public bindToFaceLock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2082
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2083
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    if-nez v0, :cond_1

    .line 2085
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/policy/IFaceLockInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2089
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    .line 2094
    :cond_0
    :goto_0
    return-void

    .line 2091
    :cond_1
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "Attempt to bind to FaceLock when already bound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1227
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 1229
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 1230
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 1231
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1234
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 1235
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 1236
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 1237
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 1240
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mToastView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1241
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mToastView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 1242
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mToastView:Landroid/view/View;

    .line 1245
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 1246
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v0, :cond_3

    .line 1248
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopFaceLock()V

    .line 1253
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    .line 1256
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPowerupAlarmRtc:Z

    if-eqz v0, :cond_4

    .line 1257
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mAlarmScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 1258
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mAlarmScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 1261
    :cond_4
    return-void

    .line 1249
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method createAlarmScreen()Landroid/view/View;
    .locals 3

    .prologue
    .line 1446
    new-instance v0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    return-object v0
.end method

.method createLockScreen()Landroid/view/View;
    .locals 6

    .prologue
    .line 1450
    const/4 v0, 0x0

    .line 1452
    .local v0, creationException:Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 1454
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createLockScreenInner()Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1455
    :catch_0
    move-exception v1

    .line 1458
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "LockPatternKeyguardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lockscreen creation exception could be because of config change "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    move-object v0, v1

    .line 1452
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1462
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_0
    const-string v3, "LockPatternKeyguardView"

    const-string v4, "lockscreen creation failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    throw v0
.end method

.method createLockScreenInner()Landroid/view/View;
    .locals 6

    .prologue
    .line 1486
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 1492
    .local v0, lockView:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->initializeTransportControlView(Landroid/view/View;)V

    .line 1493
    return-object v0
.end method

.method createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;
    .locals 6
    .parameter "unlockMode"

    .prologue
    .line 1467
    const/4 v0, 0x0

    .line 1469
    .local v0, creationException:Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 1471
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createUnlockScreenForInner(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1472
    :catch_0
    move-exception v1

    .line 1475
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "LockPatternKeyguardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unlockscreen creation exception could be because of config change "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    move-object v0, v1

    .line 1469
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1480
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_0
    const-string v3, "LockPatternKeyguardView"

    const-string v4, "unlockscreen creation creation failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    throw v0
.end method

.method createUnlockScreenForInner(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;
    .locals 11
    .parameter "unlockMode"

    .prologue
    .line 1497
    const/4 v1, 0x0

    .line 1503
    .local v1, unlockView:Landroid/view/View;
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->PasswordSetup:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_0

    .line 1504
    new-instance v0, Lcom/android/internal/policy/impl/PasswordSetupScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/PasswordSetupScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 1511
    .local v0, view:Lcom/android/internal/policy/impl/PasswordSetupScreen;
    move-object v1, v0

    .line 1591
    .end local v0           #view:Lcom/android/internal/policy/impl/PasswordSetupScreen;
    .restart local v1       #unlockView:Landroid/view/View;
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->initializeTransportControlView(Landroid/view/View;)V

    .line 1592
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->initializeFaceLockAreaView(Landroid/view/View;)V

    .line 1594
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-object v3, v1

    .line 1595
    :goto_1
    return-object v3

    .line 1512
    :cond_0
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_1

    .line 1514
    new-instance v0, Lcom/android/internal/policy/impl/PatternUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/PatternUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V

    .line 1521
    .local v0, view:Lcom/android/internal/policy/impl/PatternUnlockScreen;
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setEnableFallback(Z)V

    .line 1522
    move-object v1, v0

    .line 1523
    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_0

    .end local v0           #view:Lcom/android/internal/policy/impl/PatternUnlockScreen;
    :cond_1
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_2

    .line 1524
    new-instance v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_0

    .line 1530
    :cond_2
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_3

    .line 1531
    new-instance v1, Lcom/android/internal/policy/impl/SimUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_0

    .line 1537
    :cond_3
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_4

    .line 1539
    :try_start_0
    new-instance v2, Lcom/android/internal/policy/impl/AccountUnlockScreen;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/AccountUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #unlockView:Landroid/view/View;
    .local v2, unlockView:Landroid/view/View;
    move-object v1, v2

    .line 1559
    .end local v2           #unlockView:Landroid/view/View;
    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_0

    .line 1545
    :catch_0
    move-exception v10

    .line 1546
    .local v10, e:Ljava/lang/IllegalStateException;
    const-string v3, "LockPatternKeyguardView"

    const-string v4, "Couldn\'t instantiate AccountUnlockScreen (IAccountsService isn\'t available)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 1560
    .end local v10           #e:Ljava/lang/IllegalStateException;
    :cond_4
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_5

    .line 1561
    new-instance v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v9

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V

    .line 1568
    .local v0, view:Lcom/android/internal/policy/impl/PasswordUnlockScreen;
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->setEnableFallback(Z)V

    .line 1569
    move-object v1, v0

    .line 1570
    goto/16 :goto_0

    .end local v0           #view:Lcom/android/internal/policy/impl/PasswordUnlockScreen;
    :cond_5
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->MasterClear:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_6

    .line 1571
    new-instance v1, Lcom/android/internal/policy/impl/MasterClearScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/MasterClearScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto/16 :goto_0

    .line 1577
    :cond_6
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->LAWMO_PartialLock:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v3, :cond_7

    .line 1578
    new-instance v0, Lcom/android/internal/policy/impl/LawmoLockScreen;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/LawmoLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 1586
    .local v0, view:Lcom/android/internal/policy/impl/LawmoLockScreen;
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/LawmoLockScreen;->setEnableFallback(Z)V

    .line 1587
    move-object v1, v0

    .line 1588
    goto/16 :goto_0

    .line 1589
    .end local v0           #view:Lcom/android/internal/policy/impl/LawmoLockScreen;
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown unlock mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 810
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 812
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 1177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1178
    .local v1, action:I
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    and-int/lit16 v2, v1, 0xff

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 1179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLastMoveTime:J

    .line 1180
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->pokeWakelockForHoverEvent()V

    .line 1186
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 1187
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1188
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 1190
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1265
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->AlarmScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v0, v1, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mAlarmScreen:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1267
    const/4 v0, 0x1

    .line 1270
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public enableFaceLockArea(I)V
    .locals 1
    .parameter "why"

    .prologue
    .line 1028
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 1033
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showFaceLockArea()V

    .line 1037
    :goto_0
    return-void

    .line 1035
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2012
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 2047
    const-string v4, "LockPatternKeyguardView"

    const-string v5, "Unhandled message"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    :goto_0
    return v3

    .line 2014
    :pswitch_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 2015
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_1
    move v3, v4

    .line 2050
    goto :goto_0

    .line 2019
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 2020
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2025
    :pswitch_2
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v5, :cond_1

    .line 2026
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2027
    .local v0, currentTime:J
    const-wide/16 v5, 0x2710

    iget-wide v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLastMoveTime:J

    sub-long v7, v0, v7

    sub-long/2addr v5, v7

    long-to-int v2, v5

    .line 2028
    .local v2, pokeTimeRemaining:I
    if-lez v2, :cond_1

    const/16 v5, 0x2710

    if-gt v2, v5, :cond_1

    .line 2030
    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 2033
    .end local v0           #currentTime:J
    .end local v2           #pokeTimeRemaining:I
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPokeMsgQueued:Z

    goto :goto_1

    .line 2038
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->onSecurityTimeoutOver()V

    goto :goto_1

    .line 2043
    :pswitch_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    goto :goto_1

    .line 2012
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onClockVisibilityChanged()V
    .locals 3

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getSystemUiVisibility()I

    move-result v1

    const v2, -0x800001

    and-int v0, v1, v2

    .line 1134
    .local v0, visFlags:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isClockVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x80

    :goto_0
    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setSystemUiVisibility(I)V

    .line 1136
    return-void

    .line 1134
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 1087
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1088
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x111001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    .line 1092
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/motorola/webtop/WebtopMode;->getInstance()Lcom/motorola/webtop/WebtopMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/webtop/WebtopMode;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1097
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    .line 1099
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->saveWidgetState()V

    .line 1100
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1101
    invoke-static {}, Lcom/motorola/webtop/WebtopMode;->getInstance()Lcom/motorola/webtop/WebtopMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/webtop/WebtopMode;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1102
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    .line 1104
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->isInSecurityTimeoutPeriod()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1105
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sput-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 1106
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    if-nez v1, :cond_1

    .line 1107
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->activateFaceLockIfAble()V

    .line 1115
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    .line 1118
    :cond_2
    :goto_0
    return-void

    .line 1110
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1081
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 1083
    invoke-super {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onDetachedFromWindow()V

    .line 1084
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 1139
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1166
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLastMoveTime:J

    .line 1168
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->pokeWakelockForHoverEvent()V

    .line 1170
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter "phoneState"

    .prologue
    const/4 v0, 0x1

    .line 1145
    if-ne p1, v0, :cond_0

    .line 1146
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    .line 1147
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 1148
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V

    .line 1150
    :cond_0
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1123
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1127
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1129
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 826
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    .line 827
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    .line 828
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPassword:Z

    .line 829
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetPhone:Z

    .line 830
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSkippedTransition:Z

    .line 831
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    .line 833
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockAreaView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFailedFaceUnlockAttempts:I

    const/16 v3, 0xf

    if-ge v0, v3, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFaceLockArea:Z

    .line 845
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->isInSecurityTimeoutPeriod()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMotoUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->getLawmoLockFlag()Z

    move-result v0

    if-nez v0, :cond_1

    .line 851
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFaceLockArea:Z

    .line 853
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 857
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 858
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 860
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 861
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 864
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->saveWidgetState()V

    .line 867
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 869
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 870
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPokeMsgQueued:Z

    .line 872
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 873
    return-void

    :cond_4
    move v0, v2

    .line 831
    goto :goto_0

    :cond_5
    move v0, v2

    .line 833
    goto :goto_1
.end method

.method public onScreenTurnedOn()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 908
    const/4 v0, 0x0

    .line 910
    .local v0, runFaceLock:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockStartupLock:Ljava/lang/Object;

    monitor-enter v2

    .line 911
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    .line 913
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSkippedTransition:Z

    if-eqz v1, :cond_3

    .line 914
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mInSTOPWhenScreenTurnedOn:Z

    .line 915
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSkippedTransition:Z

    .line 920
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowFocused:Z

    .line 921
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsEcmKeylockEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->CheckPhoneisECMstate()Z

    move-result v1

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/motorola/webtop/WebtopMode;->getInstance()Lcom/motorola/webtop/WebtopMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/webtop/WebtopMode;->isActive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 926
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 937
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->restoreWidgetState()V

    .line 939
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->activateFaceLockIfAble()V

    .line 940
    :cond_2
    return-void

    .line 917
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->isInSecurityTimeoutPeriod()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mInSTOPWhenScreenTurnedOn:Z

    goto :goto_0

    .line 921
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 929
    :cond_4
    invoke-static {}, Lcom/motorola/webtop/WebtopMode;->getInstance()Lcom/motorola/webtop/WebtopMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/webtop/WebtopMode;->isActive()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->isInSecurityTimeoutPeriod()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 930
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_1

    .line 934
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->show(I)V

    goto :goto_1
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 1125
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 964
    const/4 v0, 0x0

    .line 966
    .local v0, runFaceLock:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockStartupLock:Ljava/lang/Object;

    monitor-enter v2

    .line 967
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowFocused:Z

    if-nez v1, :cond_0

    move v0, p1

    .line 968
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowFocused:Z

    .line 969
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    if-nez p1, :cond_2

    .line 971
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHasOverlay:Z

    .line 972
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopAndUnbindFromFaceLock()V

    .line 973
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->hideFaceLockArea()V

    .line 981
    :cond_1
    :goto_0
    return-void

    .line 969
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 974
    :cond_2
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v1, v2, :cond_1

    .line 976
    iget v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowWhy:I

    if-nez v1, :cond_1

    .line 977
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->activateFaceLockIfAble()V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 816
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 817
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    .line 818
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPassword:Z

    .line 819
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetPhone:Z

    .line 820
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    .line 821
    return-void
.end method

.method public securityTimeoutOver()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 986
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->isInSecurityTimeoutPeriod()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    if-nez v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 988
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 990
    :cond_0
    return-void
.end method

.method setCallback(Lcom/android/internal/policy/impl/KeyguardViewCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 369
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setCallback(Lcom/android/internal/policy/impl/KeyguardViewCallback;)V

    .line 370
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 371
    invoke-interface {p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->isScreenTurnedOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    .line 373
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 374
    invoke-interface {p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->isInSecurityTimeoutPeriod()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mInSTOPWhenScreenTurnedOn:Z

    .line 377
    :cond_0
    return-void
.end method

.method public show(I)V
    .locals 1
    .parameter "why"

    .prologue
    .line 1015
    iput p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowWhy:I

    .line 1017
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1021
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 1023
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->enableFaceLockArea(I)V

    .line 1024
    return-void
.end method

.method public startFaceLock(Landroid/os/IBinder;IIII)V
    .locals 8
    .parameter "windowToken"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 2162
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2163
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunningLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2164
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2167
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/policy/IFaceLockInterface;->startUi(Landroid/os/IBinder;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2172
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z

    .line 2176
    :cond_0
    monitor-exit v7

    .line 2178
    :cond_1
    :goto_0
    return-void

    .line 2168
    :catch_0
    move-exception v6

    .line 2169
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "LockPatternKeyguardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception starting FaceLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    monitor-exit v7

    goto :goto_0

    .line 2176
    .end local v6           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public stopAndUnbindFromFaceLock()V
    .locals 2

    .prologue
    .line 2098
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2099
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stopFaceLock()V

    .line 2101
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    if-eqz v0, :cond_1

    .line 2103
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v0, :cond_0

    .line 2105
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2110
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBoundToFaceLockService:Z

    .line 2120
    :cond_1
    return-void

    .line 2106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopFaceLock()V
    .locals 5

    .prologue
    .line 2183
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->usingFaceLock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2187
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunningLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2188
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2191
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockService:Lcom/android/internal/policy/IFaceLockInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/IFaceLockInterface;->stopUi()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2195
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mFaceLockServiceRunning:Z

    .line 2197
    :cond_0
    monitor-exit v2

    .line 2199
    :cond_1
    return-void

    .line 2192
    :catch_0
    move-exception v0

    .line 2193
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LockPatternKeyguardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception stopping FaceLock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2197
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public verifyUnlock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1211
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1213
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 1223
    :goto_0
    return-void

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_1

    .line 1217
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 1220
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 1221
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public wakeWhenReadyTq(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 1196
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_PERM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    .line 1201
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 1202
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 1207
    :goto_0
    return-void

    .line 1205
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    goto :goto_0
.end method
