.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;,
        Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;,
        Lcom/android/internal/policy/impl/KeyguardStatusViewManager$TransientTextManager;
    }
.end annotation


# static fields
.field public static final ALARM_ICON:I = 0x108002e

.field private static final BATTERY_INFO:I = 0xf

.field public static final BATTERY_LOW_ICON:I = 0x1080020

.field private static final CARRIER_HELP_TEXT:I = 0xc

.field private static final CARRIER_TEXT:I = 0xb

.field public static final CHARGING_ICON:I = 0x108001e

.field private static final DEBUG:Z = false

.field private static final HELP_MESSAGE_TEXT:I = 0xd

.field private static final INSTRUCTION_RESET_DELAY:J = 0x7d0L

.field private static final INSTRUCTION_TEXT:I = 0xa

.field public static final LOCK_ICON:I = 0x108001f

.field private static final OWNER_INFO:I = 0xe

.field private static final TAG:Ljava/lang/String; = "KeyguardStatusView"

.field private static mWasPluggedIn:Z

.field public static sVibrateInSilentMode:Z


# instance fields
.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mAlwaysShwoBatteryInfo:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryLevel:I

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrierHelpText:Ljava/lang/CharSequence;

.field private mCarrierText:Ljava/lang/CharSequence;

.field private mCarrierView:Landroid/widget/TextView;

.field private mContainer:Landroid/view/View;

.field private mDarkSilentImage:Landroid/view/View;

.field private mDarkVibrateImage:Landroid/view/View;

.field private mDateFormatString:Ljava/lang/String;

.field private mDateView:Landroid/widget/TextView;

.field private mEmergencyButtonEnabledBecauseSimLocked:Z

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private final mEmergencyCallButtonEnabledInScreen:Z

.field private mEmergencyFooter:Landroid/view/View;

.field private mHelpMessageText:Ljava/lang/String;

.field private mIceButton:Landroid/widget/Button;

.field private mIceDivider:Landroid/view/View;

.field private mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

.field private mInstructionText:Ljava/lang/String;

.field private mIsIceContactAvailable:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoText:Ljava/lang/CharSequence;

.field private mOwnerInfoView:Landroid/widget/TextView;

.field protected mPhoneState:I

.field private mPlmn:Ljava/lang/CharSequence;

.field private mPluggedIn:Z

.field private mRetryStatusView:Landroid/widget/TextView;

.field private mRingerMode:I

.field private mShowingBatteryInfo:Z

.field private mShowingStatus:Z

.field private mShowingUnlockMessages:Z

.field private mSilentImage:Landroid/view/View;

.field protected mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

.field private mSlidingDoorView:Lcom/motorola/android/widget/SlidingDoor;

.field private mSpn:Ljava/lang/CharSequence;

.field private mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

.field private mStatus1View:Landroid/widget/TextView;

.field private mTransportDlnaView:Lcom/motorola/android/widget/MotoTransportDlnaControlView;

.field private mTransportView:Lcom/motorola/android/widget/MotoTransportControlView;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVibrateImage:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWasPluggedIn:Z

    .line 125
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->sVibrateInSilentMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V
    .locals 8
    .parameter "view"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "callback"
    .parameter "emergencyButtonEnabledInScreen"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    .line 114
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    .line 118
    const/16 v3, 0x64

    iput v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    .line 143
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z

    .line 149
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingUnlockMessages:Z

    .line 158
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mIsIceContactAvailable:Z

    .line 165
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlwaysShwoBatteryInfo:Z

    .line 918
    new-instance v3, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$2;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    .line 966
    new-instance v3, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$3;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    .line 229
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    .line 230
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10400c3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateFormatString:Ljava/lang/String;

    .line 231
    iput-object p3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 232
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 233
    iput-object p4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 235
    const v3, 0x10202bb

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    .line 236
    const v3, 0x1020063

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    .line 237
    const v3, 0x10202ba

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    .line 238
    const v3, 0x10202b9

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    .line 239
    const v3, 0x10202e3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mRetryStatusView:Landroid/widget/TextView;

    .line 240
    const v3, 0x10202cd

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    .line 241
    const v3, 0x10202c1

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/widget/MotoTransportControlView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/motorola/android/widget/MotoTransportControlView;

    .line 242
    const v3, 0x1020392

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/widget/MotoTransportDlnaControlView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportDlnaView:Lcom/motorola/android/widget/MotoTransportDlnaControlView;

    .line 243
    const v3, 0x102029f

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    .line 244
    iput-boolean p5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    .line 245
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->initSlidingDoor()V

    .line 248
    const v3, 0x10202dd

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mIceDivider:Landroid/view/View;

    .line 249
    const v3, 0x10202dc

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyFooter:Landroid/view/View;

    .line 251
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    .line 252
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    sput-boolean v3, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWasPluggedIn:Z

    .line 255
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlwaysShwoBatteryInfo:Z

    .line 260
    const v3, 0x10202a8

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mIceButton:Landroid/widget/Button;

    .line 261
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mIceButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.motorola.contacts.ACTION_VIEW_ICE_ACTIONS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, iceStartIntent:Landroid/content/Intent;
    const-string v3, "isLockMode"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 267
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 268
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 271
    .local v1, info:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_4

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_4

    .line 272
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mIceButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 273
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mIsIceContactAvailable:Z

    .line 274
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mIceButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    .end local v0           #iceStartIntent:Landroid/content/Intent;
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/motorola/android/widget/MotoTransportControlView;

    if-eqz v3, :cond_1

    .line 293
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/motorola/android/widget/MotoTransportControlView;

    invoke-virtual {v3, v7}, Lcom/motorola/android/widget/MotoTransportControlView;->setVisibility(I)V

    .line 297
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportDlnaView:Lcom/motorola/android/widget/MotoTransportDlnaControlView;

    if-eqz v3, :cond_2

    .line 298
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportDlnaView:Lcom/motorola/android/widget/MotoTransportDlnaControlView;

    invoke-virtual {v3, v7}, Lcom/motorola/android/widget/MotoTransportDlnaControlView;->setVisibility(I)V

    .line 302
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v3, :cond_3

    .line 303
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    const v4, 0x10402f7

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 304
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 314
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 315
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 318
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->refreshDate()V

    .line 319
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateOwnerInfo()V

    .line 331
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateTextViewSelected()V

    .line 333
    return-void

    .line 281
    .restart local v0       #iceStartIntent:Landroid/content/Intent;
    .restart local v1       #info:Landroid/content/pm/ResolveInfo;
    .restart local v2       #packageManager:Landroid/content/pm/PackageManager;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mIceButton:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 282
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mIsIceContactAvailable:Z

    .line 284
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setGravity(I)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mRingerMode:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mRingerMode:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/motorola/android/widget/SlidingDoor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSlidingDoorView:Lcom/motorola/android/widget/SlidingDoor;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->ringerModeChanged(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mVibrateImage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    return p1
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    sput-boolean p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWasPluggedIn:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;ILjava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private enableSound()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 576
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "full_charge_notification_enable"

    invoke-static {v3, v4, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 578
    .local v0, enableSound:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "icon"

    .prologue
    const/4 v3, 0x1

    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, string:Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_4

    .line 545
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    if-eqz v1, :cond_3

    .line 547
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 548
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10402fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 553
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getPlugType()I

    move-result v1

    if-ne v3, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->enableSound()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mWasPluggedIn:Z

    if-eqz v1, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->playFullyChargedSound()V

    .line 561
    :cond_0
    :goto_0
    const v1, 0x108001e

    iput v1, p1, Llibcore/util/MutableInt;->value:I

    .line 570
    :cond_1
    :goto_1
    return-object v0

    .line 559
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10402fc

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 562
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    sget v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->LOW_BATTERY_THRESHOLD:I

    if-ge v1, v2, :cond_1

    .line 564
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040301

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 565
    const v1, 0x1080020

    iput v1, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_1

    .line 568
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getPriorityTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "icon"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 592
    const/4 v0, 0x0

    .line 594
    .local v0, string:Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    if-eqz v1, :cond_3

    .line 596
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    if-eqz v1, :cond_2

    .line 598
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceCharged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10402fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 603
    :goto_0
    const v1, 0x108001e

    iput v1, p1, Llibcore/util/MutableInt;->value:I

    .line 624
    :cond_0
    :goto_1
    return-object v0

    .line 601
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10402fc

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 604
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    sget v2, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->LOW_BATTERY_THRESHOLD:I

    if-ge v1, v2, :cond_0

    .line 606
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040301

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 607
    const v1, 0x1080020

    iput v1, p1, Llibcore/util/MutableInt;->value:I

    goto :goto_1

    .line 610
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 612
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 614
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlwaysShwoBatteryInfo:Z

    if-eqz v1, :cond_0

    .line 616
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    const/16 v2, 0x5f

    if-gt v1, v2, :cond_5

    .line 617
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10402fe

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 619
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10402ff

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resId"

    .prologue
    .line 379
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private inWidgetMode()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/motorola/android/widget/MotoTransportControlView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportView:Lcom/motorola/android/widget/MotoTransportControlView;

    invoke-virtual {v0}, Lcom/motorola/android/widget/MotoTransportControlView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportDlnaView:Lcom/motorola/android/widget/MotoTransportDlnaControlView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mTransportDlnaView:Lcom/motorola/android/widget/MotoTransportDlnaControlView;

    invoke-virtual {v0}, Lcom/motorola/android/widget/MotoTransportDlnaControlView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initSlidingDoor()V
    .locals 2

    .prologue
    .line 1012
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAudioManager:Landroid/media/AudioManager;

    .line 1013
    const v0, 0x10202d4

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/SlidingDoor;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSlidingDoorView:Lcom/motorola/android/widget/SlidingDoor;

    .line 1014
    const v0, 0x10202db

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mVibrateImage:Landroid/view/View;

    .line 1015
    const v0, 0x10202da

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSilentImage:Landroid/view/View;

    .line 1016
    const v0, 0x10202d1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDarkVibrateImage:Landroid/view/View;

    .line 1017
    const v0, 0x10202d2

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDarkSilentImage:Landroid/view/View;

    .line 1018
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mRingerMode:I

    .line 1019
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSlidingDoorView:Lcom/motorola/android/widget/SlidingDoor;

    if-eqz v0, :cond_0

    .line 1023
    sget-boolean v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->sVibrateInSilentMode:Z

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateMuteResource(Z)V

    .line 1026
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSlidingDoorView:Lcom/motorola/android/widget/SlidingDoor;

    new-instance v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$4;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/SlidingDoor;->setOnDoorStateListener(Lcom/motorola/android/widget/SlidingDoor$OnDoorStateListener;)V

    .line 1059
    :cond_0
    return-void
.end method

.method private layoutSimMissingLockForCdmaGsmWorldPhone()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040302

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "plmn"
    .parameter "spn"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 989
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-gtz v3, :cond_4

    :cond_0
    move v0, v2

    .line 990
    .local v0, plmnIsEmtpy:Z
    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-gtz v3, :cond_2

    :cond_1
    move v1, v2

    .line 992
    .local v1, spnIsEmtpy:Z
    :cond_2
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 1006
    .end local p0
    :cond_3
    :goto_1
    return-object p0

    .end local v0           #plmnIsEmtpy:Z
    .end local v1           #spnIsEmtpy:Z
    .restart local p0
    :cond_4
    move v0, v1

    .line 989
    goto :goto_0

    .line 994
    .restart local v0       #plmnIsEmtpy:Z
    .restart local v1       #spnIsEmtpy:Z
    :cond_5
    if-nez v0, :cond_6

    if-nez v1, :cond_6

    .line 997
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 998
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  |  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1003
    :cond_6
    if-eqz v0, :cond_7

    if-nez v1, :cond_7

    move-object p0, p1

    .line 1004
    goto :goto_1

    .line 1006
    :cond_7
    const-string p0, ""

    goto :goto_1
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "simMessage"
    .parameter "emergencyCallMessage"

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    invoke-static {p1, p2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 811
    .end local p1
    :cond_0
    return-object p1
.end method

.method private playFullyChargedSound()V
    .locals 4

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 584
    .local v1, notificationManager:Landroid/app/NotificationManager;
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 585
    .local v0, fullyChargedNoti:Landroid/app/Notification;
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 586
    iget v2, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/app/Notification;->defaults:I

    .line 587
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 588
    return-void
.end method

.method private ringerModeChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1076
    packed-switch p1, :pswitch_data_0

    .line 1086
    sput-boolean v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->sVibrateInSilentMode:Z

    .line 1087
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateMuteResource(Z)V

    .line 1088
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSlidingDoorView:Lcom/motorola/android/widget/SlidingDoor;

    invoke-virtual {v0}, Lcom/motorola/android/widget/SlidingDoor;->close()V

    .line 1091
    :goto_0
    return-void

    .line 1078
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSlidingDoorView:Lcom/motorola/android/widget/SlidingDoor;

    invoke-virtual {v0}, Lcom/motorola/android/widget/SlidingDoor;->open()V

    goto :goto_0

    .line 1081
    :pswitch_1
    sput-boolean v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->sVibrateInSilentMode:Z

    .line 1082
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSlidingDoorView:Lcom/motorola/android/widget/SlidingDoor;

    invoke-virtual {v0}, Lcom/motorola/android/widget/SlidingDoor;->close()V

    .line 1083
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateMuteResource(Z)V

    goto :goto_0

    .line 1076
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private update(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "what"
    .parameter "string"

    .prologue
    .line 417
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 418
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatusLines(Z)V

    .line 425
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateDateAlarmUnlockStatus()V

    goto :goto_0
.end method

.method private updateAlarmInfo()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 495
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 496
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, nextAlarm:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 498
    .local v1, showAlarm:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    const v4, 0x108002e

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 500
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    .end local v0           #nextAlarm:Ljava/lang/String;
    .end local v1           #showAlarm:Z
    :cond_0
    return-void

    .restart local v0       #nextAlarm:Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 497
    goto :goto_0

    .line 500
    .restart local v1       #showAlarm:Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method private updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 7
    .parameter "simState"

    .prologue
    const/4 v2, 0x0

    const v6, 0x1040302

    const/4 v3, 0x1

    .line 689
    const/4 v1, 0x0

    .line 690
    .local v1, carrierText:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 691
    .local v0, carrierHelpTextId:I
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    .line 692
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 693
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 695
    const-string v4, "ro.mot.phonemode.vzwglobalphone"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ro.mot.phonemode.vzw4gphone"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v3

    .line 699
    .local v2, isCdmaGsmWorldPhone:Z
    :cond_1
    sget-object v4, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->$SwitchMap$com$android$internal$policy$impl$KeyguardStatusViewManager$StatusMode:[I

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 797
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setCarrierText(Ljava/lang/CharSequence;)V

    .line 798
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setCarrierHelpText(I)V

    .line 799
    iget v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPhoneState:I

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    .line 800
    return-void

    .line 701
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 702
    goto :goto_0

    .line 705
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x104030d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 708
    const v0, 0x10402f5

    .line 709
    goto :goto_0

    .line 713
    :pswitch_2
    if-eqz v2, :cond_2

    .line 715
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->layoutSimMissingLockForCdmaGsmWorldPhone()Ljava/lang/CharSequence;

    move-result-object v1

    .line 717
    goto :goto_0

    .line 723
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 726
    const v0, 0x1040305

    .line 727
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_0

    .line 731
    :pswitch_3
    if-eqz v2, :cond_3

    .line 733
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->layoutSimMissingLockForCdmaGsmWorldPhone()Ljava/lang/CharSequence;

    move-result-object v1

    .line 735
    goto :goto_0

    .line 737
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x104053e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 738
    const v0, 0x10402f5

    .line 739
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_0

    .line 744
    :pswitch_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSpn:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 746
    goto :goto_0

    .line 749
    :pswitch_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040691

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 751
    const v0, 0x1040691

    .line 752
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto :goto_0

    .line 757
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 758
    const v0, 0x1040306

    .line 759
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 764
    :pswitch_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111006a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 766
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 768
    const v0, 0x1040304

    .line 774
    :cond_4
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 778
    :pswitch_8
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040310

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 781
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 785
    :pswitch_9
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x104030e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPlmn:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 792
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    goto/16 :goto_0

    .line 699
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private updateCarrierText()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    :cond_0
    return-void
.end method

.method private updateDateAlarmUnlockStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 459
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingUnlockMessages:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 460
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mRetryStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mRetryStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mRetryStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    :cond_2
    :goto_0
    return-void

    .line 467
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mRetryStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mRetryStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateAlarmInfo()V

    goto :goto_0
.end method

.method private updateEmergencyCallButtonState(I)V
    .locals 6
    .parameter "phoneState"

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 894
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v5, :cond_2

    .line 895
    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallEnabledWhileSimLocked()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyButtonEnabledBecauseSimLocked:Z

    if-eqz v5, :cond_3

    move v0, v3

    .line 898
    .local v0, enabledBecauseSimLocked:Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButtonEnabledInScreen:Z

    if-nez v5, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    move v2, v3

    .line 899
    .local v2, shown:Z
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v3, v5, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 902
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyFooter:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 904
    if-eqz v2, :cond_5

    .line 905
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mIsIceContactAvailable:Z

    if-eqz v3, :cond_1

    move v1, v4

    .line 906
    .local v1, iceVisibility:I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mIceDivider:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 907
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mIceButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 908
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyFooter:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 916
    .end local v0           #enabledBecauseSimLocked:Z
    .end local v1           #iceVisibility:I
    .end local v2           #shown:Z
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v4

    .line 895
    goto :goto_0

    .restart local v0       #enabledBecauseSimLocked:Z
    :cond_4
    move v2, v4

    .line 898
    goto :goto_1

    .line 910
    .restart local v2       #shown:Z
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyFooter:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateMuteResource(Z)V
    .locals 3
    .parameter "vibrate"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1062
    if-eqz p1, :cond_4

    .line 1063
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSilentImage:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSilentImage:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDarkSilentImage:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDarkSilentImage:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1065
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mVibrateImage:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mVibrateImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1066
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDarkVibrateImage:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDarkVibrateImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1073
    :cond_3
    :goto_0
    return-void

    .line 1068
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mVibrateImage:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mVibrateImage:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1069
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDarkVibrateImage:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDarkVibrateImage:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1070
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSilentImage:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSilentImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDarkSilentImage:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDarkSilentImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateOwnerInfo()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 505
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 506
    .local v1, res:Landroid/content/ContentResolver;
    const-string v2, "lock_screen_owner_info_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 508
    .local v0, ownerInfoEnabled:Z
    :goto_0
    if-eqz v0, :cond_2

    const-string v2, "lock_screen_owner_info"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    .line 510
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    :cond_0
    return-void

    .end local v0           #ownerInfoEnabled:Z
    :cond_1
    move v0, v3

    .line 506
    goto :goto_0

    .line 508
    .restart local v0       #ownerInfoEnabled:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move v2, v3

    .line 512
    goto :goto_2
.end method

.method private updateStatus1()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 517
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 518
    new-instance v0, Llibcore/util/MutableInt;

    invoke-direct {v0, v2}, Llibcore/util/MutableInt;-><init>(I)V

    .line 519
    .local v0, icon:Llibcore/util/MutableInt;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getPriorityTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 523
    .local v1, string:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    iget v4, v0, Llibcore/util/MutableInt;->value:I

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 525
    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 529
    .end local v0           #icon:Llibcore/util/MutableInt;
    .end local v1           #string:Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 525
    .restart local v0       #icon:Llibcore/util/MutableInt;
    .restart local v1       #string:Ljava/lang/CharSequence;
    :cond_1
    const/4 v2, 0x4

    goto :goto_0
.end method

.method private updateTextViewSelected()V
    .locals 8

    .prologue
    .line 336
    const/4 v6, 0x6

    new-array v4, v6, [Landroid/view/View;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierView:Landroid/widget/TextView;

    aput-object v7, v4, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    aput-object v7, v4, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mStatus1View:Landroid/widget/TextView;

    aput-object v7, v4, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoView:Landroid/widget/TextView;

    aput-object v7, v4, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mAlarmStatusView:Landroid/widget/TextView;

    aput-object v7, v4, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mRetryStatusView:Landroid/widget/TextView;

    aput-object v7, v4, v6

    .line 338
    .local v4, scrollableViews:[Landroid/view/View;
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isScreenTurnedOn()Z

    move-result v2

    .line 339
    .local v2, isScreenOn:Z
    move-object v0, v4

    .local v0, arr$:[Landroid/view/View;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    .line 340
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 341
    invoke-virtual {v5, v2}, Landroid/view/View;->setSelected(Z)V

    .line 339
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    .end local v5           #v:Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method adjustTransportControlLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1101
    const v1, 0x1020016

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1102
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1111
    :cond_0
    const v1, 0x10202e8

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1112
    if-eqz v0, :cond_1

    .line 1113
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1121
    :cond_1
    const v1, 0x10202e9

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1122
    if-eqz v0, :cond_2

    .line 1123
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1130
    :cond_2
    const v1, 0x10202ea

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1131
    if-eqz v0, :cond_3

    .line 1132
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1139
    :cond_3
    return-void
.end method

.method public getStatusForIccState(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;
    .locals 3
    .parameter "simState"

    .prologue
    .line 639
    if-nez p1, :cond_0

    .line 640
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    .line 673
    :goto_0
    return-object v1

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 647
    .local v0, missingAndNotProvisioned:Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object p1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .line 648
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$5;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 673
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 643
    .end local v0           #missingAndNotProvisioned:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 650
    .restart local v0       #missingAndNotProvisioned:Z
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 652
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 654
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimNotReady:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 656
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 658
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 660
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->Normal:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 664
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimError:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 666
    :pswitch_7
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimPukPermLocked:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 669
    :pswitch_8
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 671
    :pswitch_9
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;

    goto :goto_0

    .line 648
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 977
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 430
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 431
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateTextViewSelected()V

    .line 432
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mSimStateCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 439
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 440
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateTextViewSelected()V

    .line 441
    return-void
.end method

.method refreshDate()V
    .locals 3

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    :cond_0
    return-void
.end method

.method resetStatusInfo()V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingBatteryInfo:Z

    .line 446
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mPluggedIn:Z

    .line 447
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mBatteryLevel:I

    .line 448
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatusLines(Z)V

    .line 449
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateDateAlarmUnlockStatus()V

    .line 450
    return-void
.end method

.method public setCarrierHelpText(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierHelpText:Ljava/lang/CharSequence;

    .line 375
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierHelpText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 376
    return-void
.end method

.method setCarrierText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mCarrierText:Ljava/lang/CharSequence;

    .line 359
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 360
    return-void
.end method

.method public setHelpMessage(II)V
    .locals 3
    .parameter "textResId"
    .parameter "lockIcon"

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 391
    .local v0, tmp:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHelpMessageText:Ljava/lang/String;

    .line 392
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mHelpMessageText:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 393
    return-void

    .line 391
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method setInstructionText(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 352
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingUnlockMessages:Z

    .line 353
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    .line 354
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 355
    return-void

    .line 352
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setOwnerInfo(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mOwnerInfoText:Ljava/lang/CharSequence;

    .line 364
    const/16 v0, 0xe

    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    .line 365
    return-void
.end method

.method updateStatusLines(Z)V
    .locals 1
    .parameter "showStatusLines"

    .prologue
    .line 483
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingStatus:Z

    .line 485
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mShowingUnlockMessages:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->mInstructionText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateAlarmInfo()V

    .line 489
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateOwnerInfo()V

    .line 490
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatus1()V

    .line 491
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateCarrierText()V

    .line 492
    return-void
.end method
