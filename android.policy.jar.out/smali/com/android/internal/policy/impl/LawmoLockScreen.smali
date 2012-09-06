.class Lcom/android/internal/policy/impl/LawmoLockScreen;
.super Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
.source "LawmoLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# static fields
.field private static final DEBUG:Z = true

.field private static final LAWMO_UNLOCK_PHONE_ACTION:Ljava/lang/String; = "com.motorola.internal.intent.LAWMO_UNLOCK_PHONE"

.field private static final MIN_PATTERN_BEFORE_POKE_WAKELOCK:I = 0x2

.field private static final PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "LawmoLockScreen"

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_FIRST_DOTS_MS:I = 0x7d0

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_MS:I = 0x1b58


# instance fields
.field private mBatteryLevel:I

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrier:Landroid/widget/TextView;

.field private mCreationOrientation:I

.field private mDate:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mEmergencyAlone:Landroid/widget/Button;

.field private mEnableFallback:Z

.field private mFooterNormal:Landroid/view/ViewGroup;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPluggedIn:Z

.field private mShowingBatteryInfo:Z

.field private mStatus1:Landroid/widget/TextView;

.field private mStatus2:Landroid/widget/TextView;

.field private mStatusSep:Landroid/widget/TextView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 6
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;-><init>(Landroid/content/Context;)V

    .line 85
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mShowingBatteryInfo:Z

    .line 88
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mPluggedIn:Z

    .line 91
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mBatteryLevel:I

    .line 120
    iput-object p3, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 121
    iput-object p4, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 122
    iput-object p5, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 124
    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCreationOrientation:I

    .line 126
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 127
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x109005e

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 129
    const v2, 0x10202bb

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LawmoLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCarrier:Landroid/widget/TextView;

    .line 130
    const v2, 0x1020063

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LawmoLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mDate:Landroid/widget/TextView;

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10400c2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mDateFormatString:Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->refreshTimeAndDateDisplay()V

    .line 135
    const v2, 0x10202ba

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LawmoLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mStatus1:Landroid/widget/TextView;

    .line 136
    const v2, 0x10202f2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LawmoLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mStatusSep:Landroid/widget/TextView;

    .line 137
    const v2, 0x10202f3

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LawmoLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mStatus2:Landroid/widget/TextView;

    .line 139
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->resetStatusInfo()V

    .line 142
    const v2, 0x10202dc

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LawmoLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    .line 145
    new-instance v0, Lcom/android/internal/policy/impl/LawmoLockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LawmoLockScreen$1;-><init>(Lcom/android/internal/policy/impl/LawmoLockScreen;)V

    .line 150
    .local v0, emergencyClick:Landroid/view/View$OnClickListener;
    const v2, 0x102029f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LawmoLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mEmergencyAlone:Landroid/widget/Button;

    .line 151
    iget-object v2, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mEmergencyAlone:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 152
    iget-object v2, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mEmergencyAlone:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->refreshEmergencyButtonText()V

    .line 155
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 156
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 157
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/LawmoLockScreen;->setFocusableInTouchMode(Z)V

    .line 160
    iget-object v2, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 161
    iget-object v2, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCarrier:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LawmoLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method private refreshEmergencyButtonText()V
    .locals 4

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mEmergencyAlone:Landroid/widget/Button;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 172
    return-void
.end method

.method private refreshTimeAndDateDisplay()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    return-void
.end method

.method private resetStatusInfo()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mShowingBatteryInfo:Z

    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mPluggedIn:Z

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mBatteryLevel:I

    .line 183
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->updateStatusLines()V

    .line 184
    return-void
.end method

.method private updateStatusLines()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 188
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mPluggedIn:Z

    if-eqz v0, :cond_1

    .line 189
    iget v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mBatteryLevel:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10402fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mStatus1:Landroid/widget/TextView;

    const v1, 0x108001e

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mStatusSep:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10404f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10402fc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040301

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 295
    return-void
.end method

.method public getCreationOrientation()I
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onAttachedToWindow()V

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCreationOrientation:I

    if-eq v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 253
    :cond_0
    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 265
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCreationOrientation:I

    if-eq v0, v1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 268
    :cond_0
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    .line 271
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->refreshEmergencyButtonText()V

    .line 308
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mShowingBatteryInfo:Z

    .line 216
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mPluggedIn:Z

    .line 217
    iput p3, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mBatteryLevel:I

    .line 218
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->updateStatusLines()V

    .line 219
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 229
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->resetStatusInfo()V

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 289
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->refreshEmergencyButtonText()V

    .line 290
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 234
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 0
    .parameter "simState"

    .prologue
    .line 240
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->refreshTimeAndDateDisplay()V

    .line 224
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 299
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->onWindowFocusChanged(Z)V

    .line 300
    if-eqz p1, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LawmoLockScreen;->onResume()V

    .line 304
    :cond_0
    return-void
.end method

.method public setEnableFallback(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 175
    const-string v0, "LawmoLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnableFallback("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LawmoLockScreen;->mEnableFallback:Z

    .line 177
    return-void
.end method
