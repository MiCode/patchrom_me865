.class public Lcom/motorola/internal/location/GpsNetInitiatedHandler;
.super Ljava/lang/Object;
.source "GpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiResponse;,
        Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    }
.end annotation


# static fields
.field public static final ACTION_NI_VERIFY:Ljava/lang/String; = "android.intent.action.NETWORK_INITIATED_VERIFY"

.field private static final DEBUG:Z = true

.field public static final GPS_ENC_NONE:I = 0x0

.field public static final GPS_ENC_SUPL_GSM_DEFAULT:I = 0x1

.field public static final GPS_ENC_SUPL_UCS2:I = 0x3

.field public static final GPS_ENC_SUPL_UTF8:I = 0x2

.field public static final GPS_ENC_UNKNOWN:I = -0x1

.field public static final GPS_NI_NEED_NOTIFY:I = 0x1

.field public static final GPS_NI_NEED_VERIFY:I = 0x2

.field public static final GPS_NI_PRIVACY_OVERRIDE:I = 0x4

.field public static final GPS_NI_RESPONSE_ACCEPT:I = 0x1

.field public static final GPS_NI_RESPONSE_DENY:I = 0x2

.field public static final GPS_NI_RESPONSE_NORESP:I = 0x3

.field public static final GPS_NI_TYPE_UMTS_CTRL_PLANE:I = 0x3

.field public static final GPS_NI_TYPE_UMTS_SUPL:I = 0x2

.field public static final GPS_NI_TYPE_VOICE:I = 0x1

.field public static final NI_EXTRA_CMD_NOTIF_ID:Ljava/lang/String; = "notif_id"

.field public static final NI_EXTRA_CMD_RESPONSE:Ljava/lang/String; = "response"

.field public static final NI_INTENT_KEY_DEFAULT_RESPONSE:Ljava/lang/String; = "default_resp"

.field public static final NI_INTENT_KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final NI_INTENT_KEY_NOTIF_ID:Ljava/lang/String; = "notif_id"

.field public static final NI_INTENT_KEY_REQUESTOR_ID:Ljava/lang/String; = "requestor_id"

.field public static final NI_INTENT_KEY_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final NI_INTENT_KEY_TITLE:Ljava/lang/String; = "title"

.field public static final NI_RESPONSE_EXTRA_CMD:Ljava/lang/String; = "send_ni_response"

.field private static final TAG:Ljava/lang/String; = "GpsNetInitiatedHandler"

.field private static final VERBOSE:Z

.field private static mContext:Landroid/content/Context;

.field private static mIsHexInput:Z


# instance fields
.field private final mLocationManager:Landroid/location/LocationManager;

.field private mNiNotification:Landroid/app/Notification;

.field private mPlaySounds:Z

.field private mPopupImmediately:Z

.field private visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mPlaySounds:Z

    .line 91
    iput-boolean v1, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->visible:Z

    .line 92
    iput-boolean v1, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    .line 129
    sput-object p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    .line 130
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mLocationManager:Landroid/location/LocationManager;

    .line 131
    return-void
.end method

.method static decodeGSMPackedString([B)Ljava/lang/String;
    .locals 17
    .parameter "input"

    .prologue
    .line 296
    const/16 v1, 0xd

    .line 297
    .local v1, CHAR_CR:C
    const/4 v8, 0x0

    .line 298
    .local v8, nStridx:I
    const/4 v5, 0x0

    .line 299
    .local v5, nPckidx:I
    move-object/from16 v0, p0

    array-length v11, v0

    .line 300
    .local v11, num_bytes:I
    const/4 v3, 0x0

    .line 301
    .local v3, cPrev:I
    const/4 v2, 0x0

    .line 304
    .local v2, cCurr:I
    move-object/from16 v0, p0

    array-length v15, v0

    mul-int/lit8 v15, v15, 0x2

    new-array v14, v15, [B

    .line 305
    .local v14, stringBuf:[B
    const-string v12, ""

    .local v12, result:Ljava/lang/String;
    move v6, v5

    .end local v5           #nPckidx:I
    .local v6, nPckidx:I
    move v9, v8

    .line 307
    .end local v8           #nStridx:I
    .local v9, nStridx:I
    :goto_0
    if-ge v6, v11, :cond_4

    .line 309
    and-int/lit8 v15, v9, 0x7

    int-to-byte v7, v15

    .line 310
    .local v7, nShift:B
    add-int/lit8 v5, v6, 0x1

    .end local v6           #nPckidx:I
    .restart local v5       #nPckidx:I
    aget-byte v2, p0, v6

    .line 311
    if-gez v2, :cond_0

    add-int/lit16 v2, v2, 0x100

    .line 316
    :cond_0
    shl-int v15, v2, v7

    rsub-int/lit8 v16, v7, 0x8

    shr-int v16, v3, v16

    or-int v15, v15, v16

    and-int/lit8 v15, v15, 0x7f

    int-to-byte v10, v15

    .line 317
    .local v10, nextChar:B
    add-int/lit8 v8, v9, 0x1

    .end local v9           #nStridx:I
    .restart local v8       #nStridx:I
    aput-byte v10, v14, v9

    .line 322
    const/4 v15, 0x6

    if-ne v7, v15, :cond_3

    .line 327
    if-eq v5, v11, :cond_1

    shr-int/lit8 v15, v2, 0x1

    const/16 v16, 0xd

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 340
    .end local v7           #nShift:B
    .end local v10           #nextChar:B
    :cond_1
    :goto_1
    :try_start_0
    new-instance v13, Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "US-ASCII"

    move-object/from16 v0, v16

    invoke-direct {v13, v14, v15, v8, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v12           #result:Ljava/lang/String;
    .local v13, result:Ljava/lang/String;
    move-object v12, v13

    .line 347
    .end local v13           #result:Ljava/lang/String;
    .restart local v12       #result:Ljava/lang/String;
    :goto_2
    return-object v12

    .line 332
    .restart local v7       #nShift:B
    .restart local v10       #nextChar:B
    :cond_2
    shr-int/lit8 v15, v2, 0x1

    int-to-byte v10, v15

    .line 333
    add-int/lit8 v9, v8, 0x1

    .end local v8           #nStridx:I
    .restart local v9       #nStridx:I
    aput-byte v10, v14, v8

    move v8, v9

    .line 336
    .end local v9           #nStridx:I
    .restart local v8       #nStridx:I
    :cond_3
    move v3, v2

    move v6, v5

    .end local v5           #nPckidx:I
    .restart local v6       #nPckidx:I
    move v9, v8

    .end local v8           #nStridx:I
    .restart local v9       #nStridx:I
    goto :goto_0

    .line 342
    .end local v6           #nPckidx:I
    .end local v7           #nShift:B
    .end local v9           #nStridx:I
    .end local v10           #nextChar:B
    .restart local v5       #nPckidx:I
    .restart local v8       #nStridx:I
    :catch_0
    move-exception v4

    .line 344
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    const-string v15, "GpsNetInitiatedHandler"

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    .end local v5           #nPckidx:I
    .end local v8           #nStridx:I
    .restart local v6       #nPckidx:I
    .restart local v9       #nStridx:I
    :cond_4
    move v5, v6

    .end local v6           #nPckidx:I
    .restart local v5       #nPckidx:I
    move v8, v9

    .end local v9           #nStridx:I
    .restart local v8       #nStridx:I
    goto :goto_1
.end method

.method private static decodeString(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 5
    .parameter "original"
    .parameter "isHex"
    .parameter "coding"

    .prologue
    .line 390
    move-object v0, p0

    .line 391
    .local v0, decoded:Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->stringToByteArray(Ljava/lang/String;Z)[B

    move-result-object v1

    .line 393
    .local v1, input:[B
    packed-switch p2, :pswitch_data_0

    .line 415
    const-string v2, "GpsNetInitiatedHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for NI text "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :goto_0
    return-object v0

    .line 395
    :pswitch_0
    move-object v0, p0

    .line 396
    goto :goto_0

    .line 399
    :pswitch_1
    invoke-static {v1}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->decodeGSMPackedString([B)Ljava/lang/String;

    move-result-object v0

    .line 400
    goto :goto_0

    .line 403
    :pswitch_2
    invoke-static {v1}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->decodeUTF8String([B)Ljava/lang/String;

    move-result-object v0

    .line 404
    goto :goto_0

    .line 407
    :pswitch_3
    invoke-static {v1}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->decodeUCS2String([B)Ljava/lang/String;

    move-result-object v0

    .line 408
    goto :goto_0

    .line 411
    :pswitch_4
    new-instance v0, Ljava/lang/String;

    .end local v0           #decoded:Ljava/lang/String;
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 412
    .restart local v0       #decoded:Ljava/lang/String;
    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static decodeUCS2String([B)Ljava/lang/String;
    .locals 5
    .parameter "input"

    .prologue
    .line 365
    const-string v0, ""

    .line 367
    .local v0, decoded:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-16"

    invoke-direct {v1, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #decoded:Ljava/lang/String;
    .local v1, decoded:Ljava/lang/String;
    move-object v0, v1

    .line 373
    .end local v1           #decoded:Ljava/lang/String;
    .restart local v0       #decoded:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 369
    :catch_0
    move-exception v2

    .line 371
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "GpsNetInitiatedHandler"

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static decodeUTF8String([B)Ljava/lang/String;
    .locals 5
    .parameter "input"

    .prologue
    .line 352
    const-string v0, ""

    .line 354
    .local v0, decoded:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #decoded:Ljava/lang/String;
    .local v1, decoded:Ljava/lang/String;
    move-object v0, v1

    .line 360
    .end local v1           #decoded:Ljava/lang/String;
    .restart local v0       #decoded:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 356
    :catch_0
    move-exception v2

    .line 358
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "GpsNetInitiatedHandler"

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getDialogMessage(Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;
    .locals 1
    .parameter "notif"

    .prologue
    .line 477
    invoke-static {p0}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->getNotifMessage(Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDialogTitle(Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;
    .locals 1
    .parameter "notif"

    .prologue
    .line 471
    invoke-static {p0}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->getNotifTitle(Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDlgIntent(Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;
    .locals 7
    .parameter "notif"

    .prologue
    .line 242
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 243
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->getDialogTitle(Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, title:Ljava/lang/String;
    invoke-static {p1}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->getDialogMessage(Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, message:Ljava/lang/String;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 248
    sget-object v3, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const-class v4, Lcom/motorola/internal/app/NetInitiatedActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 251
    const-string v3, "notif_id"

    iget v4, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    const-string v3, "title"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v3, "message"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v3, "timeout"

    iget v4, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    const-string v3, "default_resp"

    iget v4, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const-string v3, "requestor_id"

    iget-object v4, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    sget-boolean v5, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v6, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    invoke-static {v4, v5, v6}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v3, "GpsNetInitiatedHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateIntent, title: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-object v0
.end method

.method private static getNotifMessage(Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;
    .locals 9
    .parameter "notif"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 453
    sget-object v2, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 455
    .local v1, r:Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 456
    const v2, 0x10404f2

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    sget-boolean v5, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v6, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    invoke-static {v4, v5, v6}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, message:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 459
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    const-string v2, "NI Request received from [%s] for client [%s]!"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    sget-boolean v5, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v6, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    invoke-static {v4, v5, v6}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    sget-boolean v5, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v6, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    invoke-static {v4, v5, v6}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #message:Ljava/lang/String;
    goto :goto_0
.end method

.method private static getNotifTicker(Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;
    .locals 9
    .parameter "notif"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 424
    sget-object v2, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 426
    .local v0, r:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 427
    const v2, 0x10404f4

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    sget-boolean v5, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v6, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    invoke-static {v4, v5, v6}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, ticker:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 430
    .end local v1           #ticker:Ljava/lang/String;
    :cond_0
    const-string v2, "Position request! ReqId: [%s] ClientName: [%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    sget-boolean v5, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v6, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    invoke-static {v4, v5, v6}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    sget-boolean v5, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mIsHexInput:Z

    iget v6, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    invoke-static {v4, v5, v6}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->decodeString(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #ticker:Ljava/lang/String;
    goto :goto_0
.end method

.method private static getNotifTitle(Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;
    .locals 4
    .parameter "notif"

    .prologue
    .line 440
    sget-object v2, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 442
    .local v0, r:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 443
    const v2, 0x10404f3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, title:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 445
    .end local v1           #title:Ljava/lang/String;
    :cond_0
    const-string v2, "Position Request"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #title:Ljava/lang/String;
    goto :goto_0
.end method

.method private openNiDialog(Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 4
    .parameter "notif"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->getDlgIntent(Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;

    move-result-object v0

    .line 231
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "GpsNetInitiatedHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openNiDialog, notifyId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestorId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sget-object v1, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 236
    return-void
.end method

.method private declared-synchronized setNiNotification(Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 8
    .parameter "notif"

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    sget-object v5, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 224
    :goto_0
    monitor-exit p0

    return-void

    .line 187
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->getNotifTitle(Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, title:Ljava/lang/String;
    invoke-static {p1}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->getNotifMessage(Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, message:Ljava/lang/String;
    const-string v5, "GpsNetInitiatedHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNiNotification, notifyId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", title: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v5, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mNiNotification:Landroid/app/Notification;

    if-nez v5, :cond_1

    .line 196
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mNiNotification:Landroid/app/Notification;

    .line 197
    iget-object v5, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mNiNotification:Landroid/app/Notification;

    const v6, 0x108053d

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 198
    iget-object v5, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mNiNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 201
    :cond_1
    iget-boolean v5, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mPlaySounds:Z

    if-eqz v5, :cond_2

    .line 202
    iget-object v5, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mNiNotification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroid/app/Notification;->defaults:I

    .line 212
    :goto_1
    iget-object v5, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mNiNotification:Landroid/app/Notification;

    invoke-static {p1}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->getNotifTicker(Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 215
    iget-boolean v5, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    if-nez v5, :cond_3

    invoke-direct {p0, p1}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->getDlgIntent(Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)Landroid/content/Intent;

    move-result-object v0

    .line 216
    .local v0, intent:Landroid/content/Intent;
    :goto_2
    sget-object v5, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 217
    .local v3, pi:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mNiNotification:Landroid/app/Notification;

    sget-object v6, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 219
    iget-boolean v5, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->visible:Z

    if-eqz v5, :cond_4

    .line 220
    iget v5, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    iget-object v6, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mNiNotification:Landroid/app/Notification;

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 181
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    .end local v3           #pi:Landroid/app/PendingIntent;
    .end local v4           #title:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 204
    .restart local v1       #message:Ljava/lang/String;
    .restart local v2       #notificationManager:Landroid/app/NotificationManager;
    .restart local v4       #title:Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mNiNotification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/app/Notification;->defaults:I

    goto :goto_1

    .line 215
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto :goto_2

    .line 222
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v3       #pi:Landroid/app/PendingIntent;
    :cond_4
    iget v5, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method static stringToByteArray(Ljava/lang/String;Z)[B
    .locals 5
    .parameter "original"
    .parameter "isHex"

    .prologue
    .line 267
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 268
    .local v1, length:I
    :goto_0
    new-array v2, v1, [B

    .line 271
    .local v2, output:[B
    if-eqz p1, :cond_1

    .line 273
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 275
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 267
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #output:[B
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    .line 279
    .restart local v1       #length:I
    .restart local v2       #output:[B
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 281
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 285
    :cond_2
    return-object v2
.end method


# virtual methods
.method public handleNiNotification(Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V
    .locals 3
    .parameter "notif"

    .prologue
    .line 136
    const-string v0, "GpsNetInitiatedHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNiNotification notificationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-boolean v0, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0, p1}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->openNiDialog(Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 147
    :cond_0
    iget-boolean v0, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mPopupImmediately:Z

    if-nez v0, :cond_3

    .line 155
    :cond_2
    invoke-direct {p0, p1}, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->setNiNotification(Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 159
    :cond_3
    iget-boolean v0, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v0, :cond_6

    :cond_4
    iget-boolean v0, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    if-nez v0, :cond_5

    iget-boolean v0, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    if-eqz v0, :cond_6

    :cond_5
    iget-boolean v0, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    if-eqz v0, :cond_7

    .line 163
    :cond_6
    iget-object v0, p0, Lcom/motorola/internal/location/GpsNetInitiatedHandler;->mLocationManager:Landroid/location/LocationManager;

    iget v1, p1, Lcom/motorola/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->sendNiResponse(II)Z

    .line 177
    :cond_7
    return-void
.end method
