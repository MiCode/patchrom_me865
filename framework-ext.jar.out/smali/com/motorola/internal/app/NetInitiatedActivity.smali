.class public Lcom/motorola/internal/app/NetInitiatedActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "NetInitiatedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/internal/app/NetInitiatedActivity$WorkerHandler;
    }
.end annotation


# static fields
.field public static final BUTTON_TEXT_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final BUTTON_TEXT_DENY:Ljava/lang/String; = "Deny"

.field private static final DEBUG:Z = true

.field private static final NEGATIVE_BUTTON:I = -0x2

.field private static final POSITIVE_BUTTON:I = -0x1

.field private static final START_RINGTONE_VIBRATE:I = 0x1

.field private static final START_USER_CONSENT_CHECKER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NetInitiatedActivity"

.field private static final VERBOSE:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDefaultResponse:I

.field private mHandler:Lcom/motorola/internal/app/NetInitiatedActivity$WorkerHandler;

.field private mNM:Landroid/app/NotificationManager;

.field private mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

.field private mNoresponse:Z

.field private mRequestorId:Ljava/lang/String;

.field private mTimeout:I

.field private mVibrator:Landroid/os/Vibrator;

.field private notificationId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 66
    iput v2, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->notificationId:I

    .line 69
    iput-object v1, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mHandler:Lcom/motorola/internal/app/NetInitiatedActivity$WorkerHandler;

    .line 70
    const/16 v0, 0x61a8

    iput v0, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mTimeout:I

    .line 71
    iput v2, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mDefaultResponse:I

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mNoresponse:Z

    .line 73
    iput-object v1, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mNM:Landroid/app/NotificationManager;

    .line 74
    iput-object v1, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mRequestorId:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/motorola/internal/app/NetInitiatedActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/internal/app/NetInitiatedActivity$1;-><init>(Lcom/motorola/internal/app/NetInitiatedActivity;)V

    iput-object v0, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/internal/app/NetInitiatedActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/motorola/internal/app/NetInitiatedActivity;->handleNIVerify(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/internal/app/NetInitiatedActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/motorola/internal/app/NetInitiatedActivity;->playAlert()V

    return-void
.end method

.method static synthetic access$202(Lcom/motorola/internal/app/NetInitiatedActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mNoresponse:Z

    return p1
.end method

.method private handleNIVerify(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 195
    const-string v1, "notif_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 196
    .local v0, notifId:I
    iput v0, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->notificationId:I

    .line 198
    const-string v1, "NetInitiatedActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNIVerify action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method private playAlert()V
    .locals 5

    .prologue
    .line 207
    const-string v2, "NetInitiatedActivity"

    const-string v3, "Enter playAlert()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/motorola/internal/app/NetInitiatedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 210
    new-instance v2, Landroid/os/Vibrator;

    invoke-direct {v2}, Landroid/os/Vibrator;-><init>()V

    iput-object v2, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mVibrator:Landroid/os/Vibrator;

    .line 213
    const-string v2, "NetInitiatedActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current Ring type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v2, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 250
    const-string v2, "NetInitiatedActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid ring mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 217
    :pswitch_0
    const-string v2, "NetInitiatedActivity"

    const-string v3, "Play notificaiton tone now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v2, "NetInitiatedActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current ringer mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 220
    .local v1, mRingtone:Landroid/media/Ringtone;
    if-eqz v1, :cond_1

    .line 221
    const-string v2, "NetInitiatedActivity"

    const-string v3, "Successfully get ringtone, play alert"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 223
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 229
    :goto_1
    iget-object v2, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    const/4 v2, 0x4

    new-array v0, v2, [J

    fill-array-data v0, :array_0

    .line 232
    .local v0, DEFAULT_VIBRATE_PATTERN:[J
    iget-object v2, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mVibrator:Landroid/os/Vibrator;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0

    .line 225
    .end local v0           #DEFAULT_VIBRATE_PATTERN:[J
    :cond_1
    const-string v2, "NetInitiatedActivity"

    const-string v3, "Failed to get ringtone and could not play alert"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 237
    .end local v1           #mRingtone:Landroid/media/Ringtone;
    :pswitch_1
    const-string v2, "NetInitiatedActivity"

    const-string v3, "Should vibrate now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v2, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_2

    .line 239
    const-string v2, "NetInitiatedActivity"

    const-string v3, "Successfully get vibrator, vibrate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v2, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 242
    :cond_2
    const-string v2, "NetInitiatedActivity"

    const-string v3, "Failed to get vibrator and could not vibrate"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 247
    :pswitch_2
    const-string v2, "NetInitiatedActivity"

    const-string v3, "Current ringer mode is silent and do nothing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 231
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private sendUserResponse(I)V
    .locals 4
    .parameter "response"

    .prologue
    .line 188
    const-string v1, "NetInitiatedActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendUserResponse, response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/motorola/internal/app/NetInitiatedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 191
    .local v0, locationManager:Landroid/location/LocationManager;
    iget v1, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->notificationId:I

    invoke-virtual {v0, v1, p1}, Landroid/location/LocationManager;->sendNiResponse(II)Z

    .line 192
    return-void
.end method

.method private showNIError()V
    .locals 2

    .prologue
    .line 202
    const-string v0, "NI error"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 204
    return-void
.end method

.method private showNotification()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 256
    const-string v8, "NetInitiatedActivity"

    const-string v9, "Enter showNotification()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lcom/motorola/internal/app/NetInitiatedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    iput-object v8, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mNM:Landroid/app/NotificationManager;

    .line 264
    const v8, 0x10404f9

    invoke-virtual {p0, v8}, Lcom/motorola/internal/app/NetInitiatedActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, msgTitle:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 266
    .local v1, currentTime:J
    iget v8, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mDefaultResponse:I

    if-ne v8, v12, :cond_0

    const v8, 0x10404f7

    invoke-virtual {p0, v8}, Lcom/motorola/internal/app/NetInitiatedActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 270
    .local v7, respString:Ljava/lang/String;
    :goto_0
    const v8, 0x10404fa

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mRequestorId:Ljava/lang/String;

    aput-object v10, v9, v11

    aput-object v7, v9, v12

    invoke-virtual {p0, v8, v9}, Lcom/motorola/internal/app/NetInitiatedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, msg:Ljava/lang/String;
    const-string v8, "NetInitiatedActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "msg here is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v6, Landroid/app/Notification;

    const v8, 0x108053e

    invoke-direct {v6, v8, v5, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 275
    .local v6, notification:Landroid/app/Notification;
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/motorola/android/internal/app/LRHistory;

    invoke-direct {v3, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 276
    .local v3, in:Landroid/content/Intent;
    const/high16 v8, 0x1000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 277
    const-string v8, "message"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v8, "title"

    const v9, 0x10404f3

    invoke-virtual {p0, v9}, Lcom/motorola/internal/app/NetInitiatedActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v8, "time"

    invoke-virtual {v3, v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 280
    const-string v8, "notificationid"

    iget v9, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->notificationId:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const-string v8, "NetInitiatedActivity"

    const-string v9, "showNotification():: Set pendingintent"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-static {p0, v11, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 285
    .local v0, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v6, p0, v5, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 289
    iget-object v8, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mNM:Landroid/app/NotificationManager;

    iget v9, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->notificationId:I

    invoke-virtual {v8, v9, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 291
    const-string v8, "NetInitiatedActivity"

    const-string v9, "LEAVE showNotification()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void

    .line 266
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v3           #in:Landroid/content/Intent;
    .end local v4           #msg:Ljava/lang/String;
    .end local v6           #notification:Landroid/app/Notification;
    .end local v7           #respString:Ljava/lang/String;
    :cond_0
    const v8, 0x10404f8

    invoke-virtual {p0, v8}, Lcom/motorola/internal/app/NetInitiatedActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, -0x1

    .line 174
    if-ne p2, v1, :cond_0

    .line 175
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/internal/app/NetInitiatedActivity;->sendUserResponse(I)V

    .line 177
    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 178
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/motorola/internal/app/NetInitiatedActivity;->sendUserResponse(I)V

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/internal/app/NetInitiatedActivity;->finish()V

    .line 183
    iput v1, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->notificationId:I

    .line 184
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    new-instance v2, Lcom/motorola/internal/app/NetInitiatedActivity$WorkerHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/motorola/internal/app/NetInitiatedActivity$WorkerHandler;-><init>(Lcom/motorola/internal/app/NetInitiatedActivity;Lcom/motorola/internal/app/NetInitiatedActivity$1;)V

    iput-object v2, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mHandler:Lcom/motorola/internal/app/NetInitiatedActivity$WorkerHandler;

    .line 116
    invoke-virtual {p0}, Lcom/motorola/internal/app/NetInitiatedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 117
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 118
    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x10802ca

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 119
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 120
    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 121
    const v2, 0x10404f5

    invoke-virtual {p0, v2}, Lcom/motorola/internal/app/NetInitiatedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 122
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 123
    const v2, 0x10404f6

    invoke-virtual {p0, v2}, Lcom/motorola/internal/app/NetInitiatedActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 124
    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 125
    const-string v2, "timeout"

    iget v3, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mTimeout:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mTimeout:I

    .line 126
    const-string v2, "default_resp"

    iget v3, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mTimeout:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mDefaultResponse:I

    .line 127
    const-string v2, "requestor_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mRequestorId:Ljava/lang/String;

    .line 129
    const-string v2, "notif_id"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->notificationId:I

    .line 130
    const-string v3, "NetInitiatedActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate, notifId: ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->notificationId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] timeout: ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mTimeout:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] DefaultResponse: ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v2, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mDefaultResponse:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    const-string v2, "no_response"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] mRequestorId: ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mRequestorId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/motorola/internal/app/NetInitiatedActivity;->setupAlert()V

    .line 137
    iget-object v4, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mHandler:Lcom/motorola/internal/app/NetInitiatedActivity$WorkerHandler;

    const/4 v5, 0x2

    iget v2, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mTimeout:I

    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mTimeout:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    :goto_1
    invoke-virtual {v4, v5, v2, v3}, Lcom/motorola/internal/app/NetInitiatedActivity$WorkerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 139
    iget-object v2, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mHandler:Lcom/motorola/internal/app/NetInitiatedActivity$WorkerHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/motorola/internal/app/NetInitiatedActivity$WorkerHandler;->sendEmptyMessage(I)Z

    .line 140
    return-void

    .line 130
    :cond_0
    const-string v2, "other"

    goto :goto_0

    .line 137
    :cond_1
    iget v2, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mTimeout:I

    int-to-long v2, v2

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 158
    const-string v0, "NetInitiatedActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mHandler:Lcom/motorola/internal/app/NetInitiatedActivity$WorkerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/motorola/internal/app/NetInitiatedActivity$WorkerHandler;->removeMessages(I)V

    .line 160
    iget-boolean v0, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mNoresponse:Z

    if-eqz v0, :cond_0

    .line 161
    const-string v1, "NetInitiatedActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No response, just "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mDefaultResponse:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    const-string v0, "no_response"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/motorola/internal/app/NetInitiatedActivity;->showNotification()V

    .line 167
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 168
    return-void

    .line 161
    :cond_1
    const-string v0, "other case"

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 152
    const-string v0, "NetInitiatedActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/internal/app/NetInitiatedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 154
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 144
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 145
    const-string v0, "NetInitiatedActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/motorola/internal/app/NetInitiatedActivity;->mNetInitiatedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.NETWORK_INITIATED_VERIFY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/motorola/internal/app/NetInitiatedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    return-void
.end method
