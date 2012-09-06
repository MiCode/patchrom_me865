.class public Lcom/android/internal/policy/impl/PasswordUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "PasswordUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PasswordUnlockScreen$9;,
        Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;
    }
.end annotation


# static fields
.field private static final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PasswordUnlockScreen"


# instance fields
.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mCreationHardKeyboardHidden:I

.field private final mCreationOrientation:I

.field private final mCreationScreenLayout:I

.field private mEnableFallback:Z

.field private mForgotPasswordButton:Landroid/widget/Button;

.field private final mIsAlpha:Z

.field private final mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private final mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPasswordEntry:Landroid/widget/EditText;

.field private mResuming:Z

.field private final mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mTotalFailedPasswordAttempts:I

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private final mUseSystemIME:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V
    .locals 13
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "totalFailedAttempts"

    .prologue
    .line 138
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTotalFailedPasswordAttempts:I

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUseSystemIME:Z

    .line 139
    iget v1, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    .line 140
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    .line 143
    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    iput v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationScreenLayout:I

    .line 145
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 146
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 147
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 148
    move/from16 v0, p6

    iput v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTotalFailedPasswordAttempts:I

    .line 150
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 151
    .local v8, layoutInflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 153
    const v1, 0x10900c7

    const/4 v2, 0x1

    invoke-virtual {v8, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 159
    :goto_0
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v6, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 162
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v12

    .line 163
    .local v12, quality:I
    const/high16 v1, 0x4

    if-eq v1, v12, :cond_0

    const/high16 v1, 0x5

    if-eq v1, v12, :cond_0

    const/high16 v1, 0x6

    if-ne v1, v12, :cond_5

    :cond_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsAlpha:Z

    .line 168
    new-instance v9, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    .line 181
    .local v9, mTextKeyListener:Landroid/view/View$OnKeyListener;
    const v1, 0x1020215

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 182
    const v1, 0x10202bc

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    .line 183
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 184
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 185
    new-instance v1, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, p0, v3}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 186
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "lock_pattern_tactile_feedback_enabled"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setEnableHaptics(Z)V

    .line 190
    const/4 v7, 0x0

    .line 191
    .local v7, imeOrDeleteButtonVisible:Z
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsAlpha:Z

    if-eqz v1, :cond_7

    .line 193
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 194
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 227
    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 230
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsAlpha:Z

    if-eqz v1, :cond_8

    .line 231
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 232
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 245
    :goto_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v2, Lcom/android/internal/policy/impl/PasswordUnlockScreen$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v2, Lcom/android/internal/policy/impl/PasswordUnlockScreen$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$5;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 285
    if-nez v7, :cond_2

    .line 286
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 287
    .local v10, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_2

    move-object v1, v10

    .line 288
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 289
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v10}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    .end local v10           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const v1, 0x10202e4

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mForgotPasswordButton:Landroid/widget/Button;

    .line 295
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsAlpha:Z

    if-eqz v1, :cond_9

    .line 296
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mForgotPasswordButton:Landroid/widget/Button;

    const v2, 0x1040620

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 300
    :goto_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mForgotPasswordButton:Landroid/widget/Button;

    const v2, 0x108001f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 301
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mForgotPasswordButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/internal/policy/impl/PasswordUnlockScreen$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$6;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    sget-object v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;)V

    .line 309
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 310
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->adjustTransportControlLayout()V

    .line 313
    :cond_3
    return-void

    .line 155
    .end local v7           #imeOrDeleteButtonVisible:Z
    .end local v9           #mTextKeyListener:Landroid/view/View$OnKeyListener;
    .end local v12           #quality:I
    :cond_4
    const v1, 0x10900c6

    const/4 v2, 0x1

    invoke-virtual {v8, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 163
    .restart local v12       #quality:I
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 186
    .restart local v9       #mTextKeyListener:Landroid/view/View$OnKeyListener;
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 197
    .restart local v7       #imeOrDeleteButtonVisible:Z
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 199
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 204
    const v1, 0x10202bd

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 205
    .local v11, pinDelete:Landroid/view/View;
    if-eqz v11, :cond_1

    .line 206
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    const/4 v7, 0x1

    .line 208
    new-instance v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    invoke-virtual {v11, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    new-instance v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    invoke-virtual {v11, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_3

    .line 237
    .end local v11           #pinDelete:Landroid/view/View;
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 238
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_4

    .line 298
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mForgotPasswordButton:Landroid/widget/Button;

    const v2, 0x1040559

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_5
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->verifyPasswordAndUnlock()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/widget/PasswordEntryKeyboardHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mResuming:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/widget/PasswordEntryKeyboardView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTotalFailedPasswordAttempts:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;)V

    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    const/4 v1, 0x0

    .line 506
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 507
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    .line 508
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 509
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$7;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$7;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$7;->start()Landroid/os/CountDownTimer;

    .line 535
    return-void
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .parameter "imm"
    .parameter "shouldIncludeAuxiliarySubtypes"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 324
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 327
    .local v1, enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 329
    .local v2, filteredImisCount:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 331
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 357
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 332
    .restart local v5       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 335
    .local v8, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 336
    add-int/lit8 v2, v2, 0x1

    .line 337
    goto :goto_0

    .line 340
    :cond_2
    const/4 v0, 0x0

    .line 341
    .local v0, auxCount:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 342
    .local v7, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 346
    .end local v7           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 351
    .local v6, nonAuxCount:I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 352
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 353
    goto :goto_0

    .line 357
    .end local v0           #auxCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #nonAuxCount:I
    .end local v8           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private hideForgotPasswordButton()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mForgotPasswordButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mForgotPasswordButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatusLines(Z)V

    .line 108
    return-void
.end method

.method private showForgotPasswordButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatusLines(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mForgotPasswordButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mForgotPasswordButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    :cond_0
    return-void
.end method

.method private showSoftInputKeyboard(Z)V
    .locals 4
    .parameter "visibility"

    .prologue
    const/4 v3, 0x2

    .line 594
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 600
    .local v1, showSoftInput:Z
    :goto_0
    new-instance v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$8;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$8;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Z)V

    .line 611
    .local v0, r:Ljava/lang/Runnable;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 612
    return-void

    .line 594
    .end local v0           #r:Ljava/lang/Runnable;
    .end local v1           #showSoftInput:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateFooter(Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 117
    sget-object v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$9;->$SwitchMap$com$android$internal$policy$impl$PasswordUnlockScreen$FooterMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 119
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->hideForgotPasswordButton()V

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->showForgotPasswordButton()V

    goto :goto_0

    .line 125
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->hideForgotPasswordButton()V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private verifyPasswordAndUnlock()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x10402fb

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 449
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, entry:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 452
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 455
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, v5, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMotoUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;

    invoke-virtual {v5, v4, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->reportEncryptionUnlocked(ZLjava/lang/String;)V

    .line 458
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 459
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 461
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 462
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 465
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5, v6}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 489
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mForgotPasswordButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 493
    iget-object v4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isVerifyUnlockOnly()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 494
    sget-object v4, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;->VerifyUnlocked:Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;)V

    .line 502
    :goto_2
    return-void

    .line 466
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkRecoveryPassword(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 467
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, v5, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mMotoUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MotoKeyguardUpdateMonitor;->setDeviceRequestPasswordSetup(Z)V

    .line 468
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 469
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 470
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 471
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5, v6}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 473
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_5

    .line 476
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    .line 477
    iget v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTotalFailedPasswordAttempts:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTotalFailedPasswordAttempts:I

    .line 478
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v5

    rem-int/lit8 v5, v5, 0x5

    if-nez v5, :cond_4

    .line 480
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 481
    .local v0, deadline:J
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 483
    .end local v0           #deadline:J
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 486
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    :cond_6
    const/4 v4, 0x4

    goto :goto_1

    .line 495
    :cond_7
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEnableFallback:Z

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTotalFailedPasswordAttempts:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_8

    .line 497
    sget-object v4, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;->ForgotLockPassword:Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;)V

    goto :goto_2

    .line 499
    :cond_8
    sget-object v4, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 432
    :cond_0
    return-void
.end method

.method public getCreationOrientation()I
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsAlpha:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 545
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 546
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 549
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationScreenLayout:I

    if-eq v1, v2, :cond_1

    .line 553
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 555
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 560
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 563
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iget v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationScreenLayout:I

    if-eq v0, v1, :cond_1

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 569
    :cond_1
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 578
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 580
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->verifyPasswordAndUnlock()V

    .line 581
    const/4 v0, 0x1

    .line 583
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 2
    .parameter "isKeyboardOpen"

    .prologue
    .line 573
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 574
    return-void

    .line 573
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 385
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBlinkable(Z)V

    .line 387
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->showSoftInputKeyboard(Z)V

    .line 388
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isScreenTurnedOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBlinkable(Z)V

    .line 373
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBlinkable(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 392
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mResuming:Z

    .line 394
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 397
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isVerifyUnlockOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    sget-object v2, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;->VerifyUnlocked:Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;)V

    .line 408
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isScreenTurnedOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 411
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setBlinkable(Z)V

    .line 416
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 418
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 419
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 420
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 422
    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mResuming:Z

    .line 423
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->showSoftInputKeyboard(Z)V

    .line 424
    return-void

    .line 399
    .end local v0           #deadline:J
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEnableFallback:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTotalFailedPasswordAttempts:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    .line 401
    sget-object v2, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;->ForgotLockPassword:Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;)V

    goto :goto_0

    .line 403
    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/PasswordUnlockScreen$FooterMode;)V

    goto :goto_0

    .line 413
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setBlinkable(Z)V

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 437
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 439
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, entry:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->onResume()V

    .line 445
    :cond_0
    return-void
.end method

.method public setEnableFallback(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEnableFallback:Z

    .line 132
    return-void
.end method
