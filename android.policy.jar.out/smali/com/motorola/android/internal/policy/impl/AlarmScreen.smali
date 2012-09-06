.class public Lcom/motorola/android/internal/policy/impl/AlarmScreen;
.super Landroid/widget/LinearLayout;
.source "AlarmScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_ALERT_PERIOD:Ljava/lang/String; = "300"

.field private static final MESSAGE_DISMISS_DLG_TIMEOUT:I = 0x5

.field private static final MESSAGE_POWER_CYCLE:I = 0x3

.field private static final MESSAGE_SHOW_DIALOG:I = 0x4

.field private static final MESSAGE_TIMEOUT:I = 0x1

.field private static final MESSAGE_WAKE_LOCK_TIMEOUT:I = 0x2

.field public static final POWEROFF_ALARM_URI:Landroid/net/Uri; = null

.field private static final POWERUP_DURATION:I = 0x186a0

.field static final SETTINGS_AUTO_POWERON_ENABLED:Ljava/lang/String; = "auto_powerup_enabled"

.field static final SETTINGS_AUTO_POWERON_HOUR:Ljava/lang/String; = "auto_powerup_hour"

.field static final SETTINGS_AUTO_POWERON_MINUTES:Ljava/lang/String; = "auto_powerup_minutes"

.field private static final TAG:Ljava/lang/String; = "AlarmScreen"

.field private static final sVibratePattern:[J


# instance fields
.field private mAirPlaneFlag:I

.field private mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

.field private mAlarmId:I

.field private mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAlertDuration:I

.field protected mAutoSnoozeTime:I

.field private mConfirmDlg:Landroid/app/AlertDialog;

.field private mDismissDlg:Landroid/app/AlertDialog;

.field protected mDismissed:Z

.field private mHandler:Landroid/os/Handler;

.field private mLoadTriggered:Z

.field private mLock:Ljava/lang/Object;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPowerCycleReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerManager:Landroid/os/PowerManager;

.field protected mSnoozeMins:I

.field protected mSnoozeTarget:J

.field protected mSnoozed:Z

.field private mTitle:Landroid/widget/TextView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVolumeBehavior:I

.field private startTriggerTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "content://com.android.deskclock/alarm/poweroffalarm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->POWEROFF_ALARM_URI:Landroid/net/Uri;

    .line 411
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->sVibratePattern:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 13
    .parameter "context"
    .parameter "updateMonitor"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 171
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 84
    iput-object v7, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mConfirmDlg:Landroid/app/AlertDialog;

    .line 85
    iput-object v7, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mDismissDlg:Landroid/app/AlertDialog;

    .line 89
    iput-object v7, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 90
    iput-object v7, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mVibrator:Landroid/os/Vibrator;

    .line 91
    iput-boolean v9, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mLoadTriggered:Z

    .line 96
    new-instance v6, Ljava/lang/Object;

    invoke-direct/range {v6 .. v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mLock:Ljava/lang/Object;

    .line 98
    iput-boolean v9, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mSnoozed:Z

    .line 99
    iput-boolean v9, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mDismissed:Z

    .line 100
    iput-wide v11, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mSnoozeTarget:J

    .line 101
    iput v9, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAutoSnoozeTime:I

    .line 102
    iput v9, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mSnoozeMins:I

    .line 103
    iput-object v7, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    .line 104
    iput-wide v11, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->startTriggerTime:J

    .line 106
    iput v10, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mVolumeBehavior:I

    .line 107
    new-instance v6, Lcom/motorola/android/internal/policy/impl/AlarmScreen$1;

    invoke-direct {v6, p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen$1;-><init>(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)V

    iput-object v6, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    .line 145
    new-instance v6, Lcom/motorola/android/internal/policy/impl/AlarmScreen$2;

    invoke-direct {v6, p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen$2;-><init>(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)V

    iput-object v6, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mPowerCycleReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    iput-object p2, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 174
    const-string v6, "AlarmScreen"

    const-string v7, " create alarmscreen"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    iput-object v6, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mPowerManager:Landroid/os/PowerManager;

    .line 178
    iget-object v6, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mPowerManager:Landroid/os/PowerManager;

    const v7, 0x1000001a

    const-string v8, "alarmscreen"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 180
    iget-object v6, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 181
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 185
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x2030002

    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v2, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 188
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_0

    .line 189
    const-string v6, "AlarmScreen"

    const-string v7, "VIEW is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v5           #view:Landroid/view/View;
    :cond_0
    :goto_0
    const v6, 0x204000d

    invoke-virtual {p0, v6}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 196
    .local v4, snooze:Landroid/widget/Button;
    invoke-virtual {v4}, Landroid/widget/Button;->requestFocus()Z

    .line 197
    new-instance v6, Lcom/motorola/android/internal/policy/impl/AlarmScreen$3;

    invoke-direct {v6, p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen$3;-><init>(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v6, 0x204000f

    invoke-virtual {p0, v6}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 205
    .local v0, dismiss:Landroid/widget/Button;
    new-instance v6, Lcom/motorola/android/internal/policy/impl/AlarmScreen$4;

    invoke-direct {v6, p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen$4;-><init>(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    new-instance v3, Landroid/content/IntentFilter;

    const-string v6, "com.motorola.internal.intent.action.RTC_ALARM_POWER_CYCLE"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 213
    .local v3, powerCycleFilter:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mPowerCycleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v10}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->setFocusable(Z)V

    .line 216
    invoke-virtual {p0, v10}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->setFocusableInTouchMode(Z)V

    .line 217
    const/high16 v6, 0x6

    invoke-virtual {p0, v6}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->setDescendantFocusability(I)V

    .line 218
    const v6, 0x2040008

    invoke-virtual {p0, v6}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mTitle:Landroid/widget/TextView;

    .line 220
    invoke-direct {p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->TriggerAirPlaneMode()V

    .line 222
    return-void

    .line 191
    .end local v0           #dismiss:Landroid/widget/Button;
    .end local v3           #powerCycleFilter:Landroid/content/IntentFilter;
    .end local v4           #snooze:Landroid/widget/Button;
    :catch_0
    move-exception v1

    .line 192
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "AlarmScreen"

    const-string v7, "inflate exception "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private RestoreAirplaneState()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    iget v2, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAirPlaneFlag:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    return-void
.end method

.method private TriggerAirPlaneMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 155
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAirPlaneFlag:I

    .line 158
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/internal/policy/impl/AlarmScreen;Z)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->calculateAutoPowerOnTime(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->startTriggerTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/motorola/android/internal/policy/impl/AlarmScreen;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->gotoPowerCycle()V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/android/internal/policy/impl/AlarmScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->snooze(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->gotoShutdown()V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$602(Lcom/motorola/android/internal/policy/impl/AlarmScreen;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$700(Lcom/motorola/android/internal/policy/impl/AlarmScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->showProgressDialog(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->dismiss()V

    return-void
.end method

.method private calculateAlarm(IILcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;Z)J
    .locals 9
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"
    .parameter "addDay"

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x0

    .line 385
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 387
    .local v1, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 389
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 390
    .local v2, nowHour:I
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 393
    .local v3, nowMinute:I
    if-lt p1, v2, :cond_0

    if-ne p1, v2, :cond_1

    if-gt p2, v3, :cond_1

    :cond_0
    if-eqz p4, :cond_1

    .line 395
    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 398
    :cond_1
    invoke-virtual {v1, v7, p1}, Ljava/util/Calendar;->set(II)V

    .line 399
    invoke-virtual {v1, v8, p2}, Ljava/util/Calendar;->set(II)V

    .line 400
    const/16 v4, 0xd

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 401
    const/16 v4, 0xe

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 403
    invoke-virtual {p3, v1}, Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;->getNextAlarm(Ljava/util/Calendar;)I

    move-result v0

    .line 404
    .local v0, addDays:I
    if-lez v0, :cond_2

    .line 405
    const/4 v4, 0x7

    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 407
    :cond_2
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    return-wide v4
.end method

.method static calculateAlarm(IIZ)Ljava/util/Calendar;
    .locals 8
    .parameter "hour"
    .parameter "minute"
    .parameter "forceAdd"

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x0

    .line 229
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 230
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 231
    .local v1, nowHour:I
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 233
    .local v2, nowMinute:I
    if-eqz p2, :cond_1

    if-lt p0, v1, :cond_0

    if-ne p0, v1, :cond_1

    if-gt p1, v2, :cond_1

    .line 234
    :cond_0
    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 236
    :cond_1
    invoke-virtual {v0, v6, p0}, Ljava/util/Calendar;->set(II)V

    .line 237
    invoke-virtual {v0, v7, p1}, Ljava/util/Calendar;->set(II)V

    .line 238
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 239
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 241
    return-object v0
.end method

.method private calculateAutoPowerOnTime(Z)J
    .locals 9
    .parameter "force"

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v8, -0x1

    .line 258
    iget-object v6, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_powerup_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v0, :cond_1

    .line 261
    .local v0, AutoPowerOnEnabled:Z
    :goto_0
    if-nez v0, :cond_2

    .line 262
    const-wide/16 v3, 0x0

    .line 274
    :cond_0
    :goto_1
    return-wide v3

    .end local v0           #AutoPowerOnEnabled:Z
    :cond_1
    move v0, v5

    .line 258
    goto :goto_0

    .line 264
    .restart local v0       #AutoPowerOnEnabled:Z
    :cond_2
    iget-object v5, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_powerup_hour"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 266
    .local v1, tempHour:I
    iget-object v5, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_powerup_minutes"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 268
    .local v2, tempMinute:I
    const-string v5, "Mark"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Auto Power Enabled and hour ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", minute = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-wide/16 v3, 0x0

    .line 271
    .local v3, timeMil:J
    if-eq v1, v8, :cond_0

    if-eq v2, v8, :cond_0

    .line 272
    invoke-static {v1, v2, p1}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->calculateAlarm(IIZ)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    goto :goto_1
.end method

.method private disableAutosnooze()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 562
    return-void
.end method

.method private dismiss()V
    .locals 4

    .prologue
    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 567
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 568
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_1

    .line 574
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 577
    :cond_1
    invoke-direct {p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->disableAutosnooze()V

    .line 578
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 579
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlertDuration:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 580
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    invoke-static {v1, v2}, Lcom/motorola/android/internal/policy/impl/Alarm;->disableSnoozeAlert(Landroid/content/Context;Lcom/motorola/android/internal/policy/impl/Alarm;)V

    .line 581
    invoke-direct {p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->showAlertDialog()V

    .line 582
    return-void

    .line 570
    .end local v0           #message:Landroid/os/Message;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private gotoPowerCycle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 494
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mDismissDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mDismissDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 499
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->RestoreAirplaneState()V

    .line 501
    invoke-direct {p0, v3}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->setNextAlarmIfneed(Z)V

    .line 502
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, v3, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 504
    invoke-direct {p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->stopAlert()V

    .line 505
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_not_confirm"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 508
    const-string v0, "AlarmScreen"

    const-string v1, "shutdowntrigger : AlarmScreen reboot()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v3}, Lcom/android/internal/app/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 510
    return-void
.end method

.method private gotoShutdown()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 513
    const-string v0, "AlarmScreen"

    const-string v1, "setRTC before shutdown()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mDismissDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mDismissDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 519
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->RestoreAirplaneState()V

    .line 521
    invoke-direct {p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->setAutoPowerOnIfNeeded()V

    .line 522
    invoke-direct {p0, v4}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->setNextAlarmIfneed(Z)V

    .line 523
    const-string v0, "AlarmScreen"

    const-string v1, "gotoShutdown()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v4, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 526
    invoke-direct {p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->stopAlert()V

    .line 527
    const-string v0, "AlarmScreen"

    const-string v1, "shutdowntrigger : AlarmScreen shutdown()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 529
    return-void
.end method

.method private loadTriggeredAlarmLocked()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v3, 0x0

    .line 320
    iget-boolean v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mLoadTriggered:Z

    if-eqz v0, :cond_1

    .line 321
    const-string v0, "AlarmScreen"

    const-string v1, " have find the triggerd alarm"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->POWEROFF_ALARM_URI:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/android/internal/policy/impl/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 327
    .local v6, cur:Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 328
    const-string v0, "AlarmScreen"

    const-string v1, "Found no enabled alarms!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    :cond_2
    const-string v0, "AlarmScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Find Alarms from provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Lcom/motorola/android/internal/policy/impl/Alarm;

    invoke-direct {v0, v6}, Lcom/motorola/android/internal/policy/impl/Alarm;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    .line 335
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    iget v0, v0, Lcom/motorola/android/internal/policy/impl/Alarm;->snoozetime:I

    iput v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mSnoozeMins:I

    .line 336
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    iget v0, v0, Lcom/motorola/android/internal/policy/impl/Alarm;->sidekey:I

    iput v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mVolumeBehavior:I

    .line 337
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 338
    const-string v0, "AlarmScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alarm enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    iget-boolean v2, v2, Lcom/motorola/android/internal/policy/impl/Alarm;->enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    iget-wide v2, v2, Lcom/motorola/android/internal/policy/impl/Alarm;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " how="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    iget v2, v2, Lcom/motorola/android/internal/policy/impl/Alarm;->hour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " min="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    iget v2, v2, Lcom/motorola/android/internal/policy/impl/Alarm;->minutes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    iget-boolean v0, v0, Lcom/motorola/android/internal/policy/impl/Alarm;->enabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    iget-boolean v0, v0, Lcom/motorola/android/internal/policy/impl/Alarm;->snoozed:Z

    if-eqz v0, :cond_0

    .line 342
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 343
    .local v10, now:J
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    iget-wide v0, v0, Lcom/motorola/android/internal/policy/impl/Alarm;->time:J

    iput-wide v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->startTriggerTime:J

    .line 344
    iget-wide v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->startTriggerTime:J

    cmp-long v0, v0, v12

    if-nez v0, :cond_4

    .line 346
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    iget v0, v0, Lcom/motorola/android/internal/policy/impl/Alarm;->hour:I

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    iget v1, v1, Lcom/motorola/android/internal/policy/impl/Alarm;->minutes:I

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    iget-object v2, v2, Lcom/motorola/android/internal/policy/impl/Alarm;->daysOfWeek:Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->calculateAlarm(IILcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->startTriggerTime:J

    .line 349
    :cond_4
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm:ss.SSS aaa"

    invoke-direct {v9, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 351
    .local v9, format:Ljava/text/SimpleDateFormat;
    const-string v0, "AlarmScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alarm on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->startTriggerTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->startTriggerTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-wide v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->startTriggerTime:J

    sub-long v7, v10, v0

    .line 358
    .local v7, delta:J
    cmp-long v0, v7, v12

    if-lez v0, :cond_5

    .line 359
    const-string v0, "AlarmScreen"

    const-string v1, "Find the triggered alarm!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mLoadTriggered:Z

    .line 361
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    iget v0, v0, Lcom/motorola/android/internal/policy/impl/Alarm;->id:I

    iput v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmId:I

    .line 362
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->updateTitle(Lcom/motorola/android/internal/policy/impl/Alarm;)V

    .line 363
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->playAlert(Lcom/motorola/android/internal/policy/impl/Alarm;)V

    goto/16 :goto_0

    .line 369
    :cond_5
    const-string v0, "AlarmScreen"

    const-string v1, "It\'s a mistakenly triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-direct {p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->gotoShutdown()V

    goto/16 :goto_0
.end method

.method private playAlert(Lcom/motorola/android/internal/policy/impl/Alarm;)V
    .locals 8
    .parameter "alarm"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x4

    .line 414
    const-string v3, "300"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlertDuration:I

    .line 415
    iget v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlertDuration:I

    mul-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v3, v3, 0x64

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->pokeWakelock(I)V

    .line 417
    iget-object v0, p1, Lcom/motorola/android/internal/policy/impl/Alarm;->alert:Landroid/net/Uri;

    .line 418
    .local v0, alert:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 419
    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 420
    const-string v3, "AlarmScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using default alarm because of alert is null : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    if-eqz v0, :cond_1

    .line 425
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 427
    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 429
    const-string v3, "AlarmScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using default alarm because of alert is invalid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_1
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 435
    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/motorola/android/internal/policy/impl/AlarmScreen$5;

    invoke-direct {v4, p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen$5;-><init>(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 446
    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 447
    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 449
    .local v1, audioManager:Landroid/media/AudioManager;
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 450
    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 451
    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 452
    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 453
    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .end local v1           #audioManager:Landroid/media/AudioManager;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mVibrator:Landroid/os/Vibrator;

    .line 460
    iget-boolean v3, p1, Lcom/motorola/android/internal/policy/impl/Alarm;->vibrate:Z

    if-eqz v3, :cond_3

    .line 461
    const-string v3, "AlarmScreen"

    const-string v4, "alarm vibrate on"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mVibrator:Landroid/os/Vibrator;

    sget-object v4, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->sVibratePattern:[J

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 467
    :goto_1
    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 468
    .local v2, message:Landroid/os/Message;
    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlertDuration:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 469
    return-void

    .line 464
    .end local v2           #message:Landroid/os/Message;
    :cond_3
    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    goto :goto_1

    .line 455
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private pokeWakelock(I)V
    .locals 4
    .parameter "holdMs"

    .prologue
    const/4 v2, 0x2

    .line 641
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 642
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 643
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 644
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 645
    return-void
.end method

.method private saveSnoozeAlert(IJ)V
    .locals 6
    .parameter "id"
    .parameter "time"

    .prologue
    const/4 v5, 0x0

    .line 591
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 592
    .local v1, cv:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 593
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "snoozed"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 594
    const-string v2, "alarmtime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 595
    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    iget-object v2, v2, Lcom/motorola/android/internal/policy/impl/Alarm;->daysOfWeek:Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;

    invoke-virtual {v2}, Lcom/motorola/android/internal/policy/impl/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 596
    const-string v2, "enabled"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 598
    :cond_0
    sget-object v2, Lcom/motorola/android/internal/policy/impl/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 600
    return-void
.end method

.method private setAutoPowerOnIfNeeded()V
    .locals 8

    .prologue
    .line 245
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->calculateAutoPowerOnTime(Z)J

    move-result-wide v3

    .line 246
    .local v3, timeMil:J
    const-wide/16 v5, 0x1

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 247
    iget-object v5, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 249
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.settings.auto_power_on_changed"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x1000

    invoke-static {v5, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 252
    .local v2, sender:Landroid/app/PendingIntent;
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 254
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #sender:Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method private setNextAlarmIfneed(Z)V
    .locals 14
    .parameter "isLocked"

    .prologue
    const/4 v13, 0x0

    const/4 v4, 0x0

    .line 278
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 279
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/motorola/android/internal/policy/impl/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/android/internal/policy/impl/Alarm$Columns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const-string v3, "(poweroff=1) AND (enabled=1 or snoozed=1)"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 284
    .local v8, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/motorola/android/internal/policy/impl/Alarm;->calculateNextAlert(Landroid/content/Context;Landroid/database/Cursor;)Lcom/motorola/android/internal/policy/impl/Alarm;

    move-result-object v6

    .line 285
    .local v6, alarm:Lcom/motorola/android/internal/policy/impl/Alarm;
    if-eqz p1, :cond_0

    if-eqz v6, :cond_0

    .line 286
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 288
    .local v7, am:Landroid/app/AlarmManager;
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v9, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    const/high16 v2, 0x1000

    invoke-static {v1, v13, v9, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 292
    .local v10, sender:Landroid/app/PendingIntent;
    const/4 v1, 0x4

    iget-wide v2, v6, Lcom/motorola/android/internal/policy/impl/Alarm;->time:J

    invoke-virtual {v7, v1, v2, v3, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 295
    iget v1, v6, Lcom/motorola/android/internal/policy/impl/Alarm;->id:I

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    iget v2, v2, Lcom/motorola/android/internal/policy/impl/Alarm;->id:I

    if-eq v1, v2, :cond_0

    .line 296
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 297
    .local v12, values:Landroid/content/ContentValues;
    const-string v1, "poweroff_alarm"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    sget-object v1, Lcom/motorola/android/internal/policy/impl/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget v2, v6, Lcom/motorola/android/internal/policy/impl/Alarm;->id:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v12, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 301
    .local v11, updateRow:I
    const-string v1, "AlarmScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old poweroff_alarm value update result ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v1, "poweroff_alarm"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    sget-object v1, Lcom/motorola/android/internal/policy/impl/Alarm$Columns;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    iget v2, v2, Lcom/motorola/android/internal/policy/impl/Alarm;->id:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v12, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 307
    const-string v1, "AlarmScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new poweroff_alarm value update result ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v7           #am:Landroid/app/AlarmManager;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #sender:Landroid/app/PendingIntent;
    .end local v11           #updateRow:I
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/motorola/android/internal/policy/impl/Alarm;->saveNextAlarmProvider(Landroid/content/Context;Lcom/motorola/android/internal/policy/impl/Alarm;)V

    .line 313
    return-void
.end method

.method private showAlertDialog()V
    .locals 6

    .prologue
    .line 603
    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 605
    .local v1, msg:Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x2050016

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/motorola/android/internal/policy/impl/AlarmScreen$8;

    invoke-direct {v5, p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen$8;-><init>(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/motorola/android/internal/policy/impl/AlarmScreen$7;

    invoke-direct {v5, p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen$7;-><init>(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mDismissDlg:Landroid/app/AlertDialog;

    .line 622
    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mDismissDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 624
    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mDismissDlg:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 625
    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mDismissDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 628
    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 630
    .local v2, statusbarmanager:Landroid/app/StatusBarManager;
    if-eqz v2, :cond_0

    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, flag:I
    const/high16 v3, 0x100

    or-int/2addr v0, v3

    .line 633
    const/high16 v3, 0x1

    or-int/2addr v0, v3

    .line 634
    const/high16 v3, 0x8

    or-int/2addr v0, v3

    .line 635
    const-string v3, "AlarmScreen"

    const-string v4, "Disable Status bar."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 638
    .end local v0           #flag:I
    :cond_0
    return-void
.end method

.method private showProgressDialog(Z)V
    .locals 3
    .parameter "shutdown"

    .prologue
    .line 532
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 533
    .local v0, dlg:Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 534
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 535
    if-eqz p1, :cond_1

    .line 536
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    const v2, 0x205001a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 544
    :goto_0
    new-instance v1, Lcom/motorola/android/internal/policy/impl/AlarmScreen$6;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen$6;-><init>(Lcom/motorola/android/internal/policy/impl/AlarmScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 550
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 552
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 554
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 557
    :cond_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 558
    return-void

    .line 540
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    const v2, 0x205001b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private snooze(Z)V
    .locals 4
    .parameter "isAutoSnooze"

    .prologue
    .line 585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v2, 0xea60

    iget v3, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mSnoozeMins:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mSnoozeTarget:J

    .line 586
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarm:Lcom/motorola/android/internal/policy/impl/Alarm;

    iget v0, v0, Lcom/motorola/android/internal/policy/impl/Alarm;->id:I

    iget-wide v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mSnoozeTarget:J

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->saveSnoozeAlert(IJ)V

    .line 587
    invoke-direct {p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->gotoShutdown()V

    .line 588
    return-void
.end method

.method private stopAlert()V
    .locals 2

    .prologue
    .line 472
    const-string v0, "AlarmScreen"

    const-string v1, "stopAlert()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 482
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 487
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_2

    .line 488
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 490
    :cond_2
    monitor-exit v1

    .line 491
    return-void

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 484
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateTitle(Lcom/motorola/android/internal/policy/impl/Alarm;)V
    .locals 4
    .parameter "alarm"

    .prologue
    .line 377
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/motorola/android/internal/policy/impl/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, label:Ljava/lang/String;
    const-string v1, "AlarmScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTitle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 380
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 718
    const-string v0, "AlarmScreen"

    const-string v1, "CleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 721
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 723
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 730
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 734
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 735
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 736
    return-void

    .line 734
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 725
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 649
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mConfirmDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 650
    const-string v1, "AlarmScreen"

    const-string v2, "consume hard key!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_0
    :goto_0
    return v3

    .line 653
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 654
    .local v0, keyCode:I
    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    .line 658
    const-string v1, "AlarmScreen"

    const-string v2, "bangguo,dispatchKeyEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 661
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 668
    :sswitch_0
    iget v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mVolumeBehavior:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 670
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->snooze(Z)V

    goto :goto_0

    .line 673
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->dismiss()V

    goto :goto_0

    .line 661
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
        0x53 -> :sswitch_0
    .end sparse-switch

    .line 668
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCreationOrientation()I
    .locals 1

    .prologue
    .line 754
    const/4 v0, 0x1

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 741
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 743
    :cond_0
    return-void
.end method

.method public onFlipChanged(Z)V
    .locals 0
    .parameter "flipStatus"

    .prologue
    .line 746
    return-void
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    .line 749
    return-void
.end method

.method public onOrientationChange(Z)V
    .locals 0
    .parameter "inPortrait"

    .prologue
    .line 752
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 697
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 705
    :cond_1
    return-void

    .line 698
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 709
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 710
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->loadTriggeredAlarmLocked()V

    .line 712
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    invoke-virtual {p0}, Lcom/motorola/android/internal/policy/impl/AlarmScreen;->requestFocus()Z

    .line 714
    return-void

    .line 712
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
