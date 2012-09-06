.class public Lcom/motorola/android/internal/policy/impl/DmAlertDialog;
.super Ljava/lang/Object;
.source "DmAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/policy/impl/DmAlertDialog$KeyReceiver;
    }
.end annotation


# static fields
.field public static final CANCEL_ALERT_DIALOG:I = 0x8

.field public static final CONFIRM_ALERT_DIALOG:I = 0x2

.field private static final DEBUG:Z = true

.field public static final DISPLAY_ALERT_DIALOG:I = 0x1

.field public static final DISPLAY_PKG0_ALERT_DLG:I = 0xa

.field public static final DISPLAY_PKG0_INFO_DLG:I = 0x9

.field public static final HIDE_PROGRESS_ALERT_DIALOG:I = 0x7

.field public static final MULTICHOICE_ALERT_DIALOG:I = 0x5

.field public static final SHOW_PROGRESS_ALERT_DIALOG:I = 0x6

.field public static final SINGLECHOICE_ALERT_DIALOG:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DmKeyguardAlertDialog"

.field public static final TEXTINPUT_ALERT_DIALOG:I = 0x3


# instance fields
.field private mAlertResult:I

.field private mCheckedItem:I

.field private mCheckedItems:[Z

.field private mChoices:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogTimeout:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:I

.field private mInputBox:Landroid/widget/EditText;

.field private mInputType:I

.field mKeyNoClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mKeyYesClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMaxLength:I

.field private mMessage:Ljava/lang/String;

.field mMultiChoiceClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mResultCode:I

.field private mResultData:Ljava/lang/String;

.field mSingleChoiceClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mTimeout:I

.field private mTitle:Ljava/lang/String;

.field private mType:I

.field private m_KeyReceiver:Lcom/motorola/android/internal/policy/impl/DmAlertDialog$KeyReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->m_KeyReceiver:Lcom/motorola/android/internal/policy/impl/DmAlertDialog$KeyReceiver;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mResultCode:I

    .line 387
    new-instance v0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$2;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$2;-><init>(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)V

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mKeyYesClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 405
    new-instance v0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$3;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$3;-><init>(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)V

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mKeyNoClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 420
    new-instance v0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$4;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$4;-><init>(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)V

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 429
    new-instance v0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$5;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$5;-><init>(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)V

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mSingleChoiceClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 435
    new-instance v0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$6;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$6;-><init>(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)V

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mMultiChoiceClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    return-void
.end method

.method private GetNotificationSound()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 470
    const-string v3, "DmKeyguardAlertDialog"

    const-string v4, "enter GetNotificationSound "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/4 v8, 0x0

    .line 472
    .local v8, notification_sound_path:Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_sound"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 473
    .local v6, CONTENT_URI_NOTIFICATION_SOUND_STR:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 475
    .local v1, CONTENT_URI_NOTIFICATION_SOUND:Landroid/net/Uri;
    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 476
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 477
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 479
    const-string v2, "DmKeyguardAlertDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notification_sound_path is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v8

    .line 482
    :cond_0
    return-object v2
.end method

.method private PlayAlertSound(Ljava/lang/String;)V
    .locals 10
    .parameter "notification_sound_path"

    .prologue
    const/4 v9, 0x5

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 444
    const-string v3, "DmKeyguardAlertDialog"

    const-string v5, "enter PlayAlertSound "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    if-nez p1, :cond_0

    .line 446
    const-string v2, "DmKeyguardAlertDialog"

    const-string v3, "notification_sound_path is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_0
    return-void

    .line 450
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v6, v9, v9}, Landroid/media/SoundPool;-><init>(III)V

    .line 452
    .local v0, snd:Landroid/media/SoundPool;
    invoke-virtual {v0, p1, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    .line 453
    .local v1, Alertsound:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    const/16 v3, 0xa

    if-ge v8, v3, :cond_2

    .line 456
    const-wide/16 v5, 0x64

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v3, v2

    move v5, v4

    move v6, v2

    .line 460
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v3

    if-eqz v3, :cond_1

    .line 461
    const-string v2, "DmKeyguardAlertDialog"

    const-string v3, "PlayAlertSound succeed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :catch_0
    move-exception v7

    .line 458
    .local v7, e:Ljava/lang/InterruptedException;
    const-string v3, "DmKeyguardAlertDialog"

    const-string v5, " - InterruptedException error: "

    invoke-static {v3, v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 453
    .end local v7           #e:Ljava/lang/InterruptedException;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 465
    :cond_2
    const-string v2, "DmKeyguardAlertDialog"

    const-string v3, "PlayAlertSound time out"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$1002(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$102(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mResultCode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mCheckedItems:[Z

    return-object v0
.end method

.method static synthetic access$202(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mAlertResult:I

    return p1
.end method

.method static synthetic access$300(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->onFinish()V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mTimeout:I

    return v0
.end method

.method static synthetic access$500(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialogTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    return v0
.end method

.method static synthetic access$802(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mResultData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mInputBox:Landroid/widget/EditText;

    return-object v0
.end method

.method private createDialog(I)Landroid/app/AlertDialog;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    const v6, 0x1040013

    const v5, 0x1040009

    const/4 v4, 0x1

    .line 215
    const-string v1, "DmKeyguardAlertDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dialog Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    packed-switch p1, :pswitch_data_0

    .line 297
    :pswitch_0
    const-string v1, "DmKeyguardAlertDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown dialog type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_0
    return-object v0

    .line 219
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialog:Landroid/app/AlertDialog;

    .line 305
    :goto_1
    const-string v0, "DmKeyguardAlertDialog"

    const-string v1, " Leave createDialog."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 307
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 227
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mKeyYesClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mKeyNoClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialog:Landroid/app/AlertDialog;

    .line 234
    invoke-direct {p0}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->GetNotificationSound()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->PlayAlertSound(Ljava/lang/String;)V

    goto :goto_1

    .line 255
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mChoices:[Ljava/lang/String;

    check-cast v0, [Ljava/lang/CharSequence;

    iget v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mCheckedItem:I

    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mSingleChoiceClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mKeyYesClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mKeyNoClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialog:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 264
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mChoices:[Ljava/lang/String;

    check-cast v0, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mCheckedItems:[Z

    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mMultiChoiceClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mKeyYesClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mKeyNoClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialog:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 273
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialog:Landroid/app/AlertDialog;

    .line 274
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 277
    const-string v0, "DmKeyguardAlertDialog"

    const-string v1, "SHOW_PROGRESS_ALERT_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 280
    :pswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialog:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 287
    :pswitch_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mKeyNoClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mKeyYesClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialog:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private onFinish()V
    .locals 4

    .prologue
    .line 327
    const-string v1, "DmKeyguardAlertDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnFinish: Dialog - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mTimeout:I

    if-lez v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialogTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 337
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialog:Landroid/app/AlertDialog;

    .line 338
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mStatusBar:Landroid/app/StatusBarManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 340
    iget v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.android.dm.service.close_notification_info"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 343
    const-string v1, "DmKeyguardAlertDialog"

    const-string v2, "OnFinish: tnrf63 DISPLAY_PKG0_INFO_DLG finish "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 347
    :cond_3
    iget v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 353
    iget v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 354
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.android.dm.service.close_notification_info"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 357
    new-instance v0, Landroid/content/Intent;

    .end local v0           #i:Landroid/content/Intent;
    const-string v1, "com.motorola.android.dm.service.pkg0_alert_dlg_close"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .restart local v0       #i:Landroid/content/Intent;
    const-string v1, "Result"

    iget v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mAlertResult:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 362
    .end local v0           #i:Landroid/content/Intent;
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.dm.service.dm_alert_dlg_closed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .restart local v0       #i:Landroid/content/Intent;
    const-string v1, "ResultCode"

    iget v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mResultCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    const-string v1, "DmKeyguardAlertDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFinish - ResultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mResultCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 368
    const-string v1, "ResultData"

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mResultData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string v1, "DmKeyguardAlertDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFinish - ResultData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mResultData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 382
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->m_KeyReceiver:Lcom/motorola/android/internal/policy/impl/DmAlertDialog$KeyReceiver;

    if-eqz v1, :cond_2

    .line 383
    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->m_KeyReceiver:Lcom/motorola/android/internal/policy/impl/DmAlertDialog$KeyReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto/16 :goto_0

    .line 371
    :cond_6
    iget v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    .line 372
    const-string v1, "ResultCheckedItem"

    iget v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mCheckedItem:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    const-string v1, "DmKeyguardAlertDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFinish - ResultCheckedItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mCheckedItem:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 375
    :cond_7
    iget v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 376
    const-string v1, "ResultCheckedItems"

    iget-object v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mCheckedItems:[Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 377
    const-string v1, "DmKeyguardAlertDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFinish - ResultCheckedItems: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mCheckedItems:[Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onDestroy()V
    .locals 3

    .prologue
    .line 320
    const-string v0, "DmKeyguardAlertDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy - DialogType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->m_KeyReceiver:Lcom/motorola/android/internal/policy/impl/DmAlertDialog$KeyReceiver;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->m_KeyReceiver:Lcom/motorola/android/internal/policy/impl/DmAlertDialog$KeyReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 324
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 311
    const-string v0, "DmKeyguardAlertDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown - keyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DialogType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->onFinish()V

    .line 314
    const/4 v0, 0x1

    .line 316
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDialog(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 10
    .parameter "c"
    .parameter "intent"
    .parameter "keyguardShowing"

    .prologue
    const/16 v9, 0x12c

    const/4 v8, -0x1

    .line 82
    iput-object p1, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    .line 84
    const-string v5, "Message"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mMessage:Ljava/lang/String;

    .line 85
    const-string v5, "Title"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mTitle:Ljava/lang/String;

    .line 86
    const-string v5, "Icon"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mIcon:I

    .line 87
    const-string v5, "Timeout"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mTimeout:I

    .line 88
    const-string v5, "actionType"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, action:Ljava/lang/String;
    const-string v5, "DmKeyguardAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMessage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v5, "DmKeyguardAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTitle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v5, "DmKeyguardAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIcon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mIcon:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v5, "DmKeyguardAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTimeout: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mTimeout:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v5, "DmKeyguardAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "actionType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v5, "com.motorola.dm.service.display_alert_dlg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 97
    const/4 v5, 0x1

    iput v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    .line 159
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_1

    .line 160
    iget-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    const-string v6, "statusbar"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    iput-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mStatusBar:Landroid/app/StatusBarManager;

    .line 161
    iget v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialog:Landroid/app/AlertDialog;

    .line 164
    :cond_1
    iget-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 170
    new-instance v5, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$KeyReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$KeyReceiver;-><init>(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;Lcom/motorola/android/internal/policy/impl/DmAlertDialog$1;)V

    iput-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->m_KeyReceiver:Lcom/motorola/android/internal/policy/impl/DmAlertDialog$KeyReceiver;

    .line 171
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 172
    .local v1, filter:Landroid/content/IntentFilter;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SEARCH"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 173
    .local v3, searchkeyFilter:Landroid/content/IntentFilter;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 174
    .local v4, searchkeyFilterLongPress:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->m_KeyReceiver:Lcom/motorola/android/internal/policy/impl/DmAlertDialog$KeyReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    iget-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->m_KeyReceiver:Lcom/motorola/android/internal/policy/impl/DmAlertDialog$KeyReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    iget-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->m_KeyReceiver:Lcom/motorola/android/internal/policy/impl/DmAlertDialog$KeyReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    iget v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mTimeout:I

    if-lez v5, :cond_2

    iget v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mTimeout:I

    if-le v5, v9, :cond_3

    .line 179
    :cond_2
    const-string v5, "DmKeyguardAlertDialog"

    const-string v6, "Forcing the default and max Timeout to 5mins"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iput v9, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mTimeout:I

    .line 184
    :cond_3
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mHandler:Landroid/os/Handler;

    .line 185
    new-instance v5, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$1;

    invoke-direct {v5, p0}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog$1;-><init>(Lcom/motorola/android/internal/policy/impl/DmAlertDialog;)V

    iput-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialogTimeout:Ljava/lang/Runnable;

    .line 193
    iget-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialogTimeout:Ljava/lang/Runnable;

    iget v7, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mTimeout:I

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    const-string v5, "DmKeyguardAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Show DmAlertDialog, keyguardShowing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-eqz p3, :cond_f

    .line 197
    iget-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 201
    :goto_1
    iget-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 203
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v3           #searchkeyFilter:Landroid/content/IntentFilter;
    .end local v4           #searchkeyFilterLongPress:Landroid/content/IntentFilter;
    :goto_2
    return-void

    .line 99
    :cond_4
    const-string v5, "com.motorola.dm.service.confirm_alert_dlg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 100
    const/4 v5, 0x2

    iput v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    goto/16 :goto_0

    .line 111
    :cond_5
    const-string v5, "com.motorola.dm.service.singlechoice_alert_dlg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 112
    const/4 v5, 0x4

    iput v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    .line 113
    const-string v5, "Choices"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mChoices:[Ljava/lang/String;

    .line 114
    const-string v5, "CheckedItem"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mCheckedItem:I

    .line 115
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    iget-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mChoices:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_6

    .line 116
    const-string v5, "DmKeyguardAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mChoices: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mChoices:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 118
    :cond_6
    const-string v5, "DmKeyguardAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCheckedItem: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mCheckedItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 120
    .end local v2           #i:I
    :cond_7
    const-string v5, "com.motorola.dm.service.multichoice_alert_dlg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 121
    const/4 v5, 0x5

    iput v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    .line 122
    const-string v5, "Choices"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mChoices:[Ljava/lang/String;

    .line 123
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mChoices:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_8

    .line 124
    const-string v5, "DmKeyguardAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mChoices "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mChoices:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 126
    :cond_8
    const-string v5, "CheckedItems"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mCheckedItems:[Z

    .line 127
    const/4 v2, 0x0

    :goto_5
    iget-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mCheckedItems:[Z

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 128
    const-string v5, "DmKeyguardAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CheckedItems "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mCheckedItems:[Z

    aget-boolean v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 131
    .end local v2           #i:I
    :cond_9
    const-string v5, "com.motorola.dm.service.show_progress_alert_dlg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 132
    const/4 v5, 0x6

    iput v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    goto/16 :goto_0

    .line 134
    :cond_a
    const-string v5, "com.motorola.dm.service.hide_progress_alert_dlg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 135
    const/4 v5, 0x7

    iput v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    .line 136
    invoke-direct {p0}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->onFinish()V

    .line 137
    const-string v5, "DmKeyguardAlertDialog"

    const-string v6, "HIDE_PROGRESS_ALERT_DLG"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 140
    :cond_b
    const-string v5, "com.motorola.dm.service.cancel_alert_dlg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 141
    const/16 v5, 0x8

    iput v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    .line 142
    invoke-direct {p0}, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->onFinish()V

    .line 143
    const-string v5, "DmKeyguardAlertDialog"

    const-string v6, "CANCEL_ALERT_DIALOG"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 146
    :cond_c
    const-string v5, "com.motorola.android.dm.service.pkg0_info_dlg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 147
    const/16 v5, 0x9

    iput v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    .line 148
    const-string v5, "DmKeyguardAlertDialog"

    const-string v6, "DISPLAY_PKG0_INFO_DLG"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 150
    :cond_d
    const-string v5, "com.motorola.android.dm.service.pkg0_alert_dlg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 151
    const/16 v5, 0xa

    iput v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mType:I

    .line 152
    const-string v5, "DmKeyguardAlertDialog"

    const-string v6, "DISPLAY_PKG0_ALERT_DLG"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 155
    :cond_e
    const-string v5, "DmKeyguardAlertDialog"

    const-string v6, "TODO: new dialog type support!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 199
    .restart local v1       #filter:Landroid/content/IntentFilter;
    .restart local v3       #searchkeyFilter:Landroid/content/IntentFilter;
    .restart local v4       #searchkeyFilterLongPress:Landroid/content/IntentFilter;
    :cond_f
    iget-object v5, p0, Lcom/motorola/android/internal/policy/impl/DmAlertDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    goto/16 :goto_1
.end method
