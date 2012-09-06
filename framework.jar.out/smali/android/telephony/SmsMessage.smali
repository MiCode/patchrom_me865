.class public Landroid/telephony/SmsMessage;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsMessage$CommandPdu;,
        Landroid/telephony/SmsMessage$DeliverPdu;,
        Landroid/telephony/SmsMessage$SubmitPdu;,
        Landroid/telephony/SmsMessage$MessageClass;
    }
.end annotation


# static fields
.field public static final ENCODING_16BIT:I = 0x3

.field public static final ENCODING_7BIT:I = 0x1

.field public static final ENCODING_8BIT:I = 0x2

.field public static final ENCODING_KSC5601:I = 0x4

.field public static final ENCODING_UNKNOWN:I = 0x0

.field public static final FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field private static final LOG_TAG:Ljava/lang/String; = "SMS"

.field public static final MAX_USER_DATA_BYTES:I = 0x8c

.field public static final MAX_USER_DATA_BYTES_WITH_HEADER:I = 0x86

.field public static final MAX_USER_DATA_SEPTETS:I = 0xa0

.field public static final MAX_USER_DATA_SEPTETS_WITH_HEADER:I = 0x99


# instance fields
.field public mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1409
    invoke-static {}, Landroid/telephony/SmsMessage;->getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 1410
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 0
    .parameter "smb"

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 176
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)[I
    .locals 1
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    .line 362
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZZ)[I
    .locals 6
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "isDefault"

    .prologue
    const/4 v5, 0x2

    .line 367
    invoke-static {p2}, Landroid/telephony/SmsMessage;->getActivePhoneType(Z)I

    move-result v0

    .line 368
    .local v0, activePhone:I
    if-gez v0, :cond_0

    .line 369
    const/4 v1, 0x0

    .line 380
    :goto_0
    return-object v1

    .line 372
    :cond_0
    if-ne v5, v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v2

    .line 375
    .local v2, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_1
    const/4 v3, 0x4

    new-array v1, v3, [I

    .line 376
    .local v1, ret:[I
    const/4 v3, 0x0

    iget v4, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    aput v4, v1, v3

    .line 377
    const/4 v3, 0x1

    iget v4, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    aput v4, v1, v3

    .line 378
    iget v3, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v1, v5

    .line 379
    const/4 v3, 0x3

    iget v4, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    aput v4, v1, v3

    goto :goto_0

    .line 372
    .end local v1           #ret:[I
    .end local v2           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v2

    goto :goto_1
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZZZLjava/lang/String;)[I
    .locals 6
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "ifSupportNationalTable"
    .parameter "ifSupportLockingShiftTable"
    .parameter "language"

    .prologue
    .line 412
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZZLjava/lang/String;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZZZLjava/lang/String;Z)[I
    .locals 6
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "ifSupportNationalTable"
    .parameter "ifSupportLockingShiftTable"
    .parameter "language"
    .parameter "isDefault"

    .prologue
    const/4 v5, 0x2

    .line 420
    invoke-static {p5}, Landroid/telephony/SmsMessage;->getActivePhoneType(Z)I

    move-result v0

    .line 421
    .local v0, activePhone:I
    if-gez v0, :cond_0

    .line 422
    const/4 v1, 0x0

    .line 433
    :goto_0
    return-object v1

    .line 424
    :cond_0
    if-ne v5, v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v2

    .line 428
    .local v2, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_1
    const/4 v3, 0x4

    new-array v1, v3, [I

    .line 429
    .local v1, ret:[I
    const/4 v3, 0x0

    iget v4, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    aput v4, v1, v3

    .line 430
    const/4 v3, 0x1

    iget v4, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    aput v4, v1, v3

    .line 431
    iget v3, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v1, v5

    .line 432
    const/4 v3, 0x3

    iget v4, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    aput v4, v1, v3

    goto :goto_0

    .line 424
    .end local v1           #ret:[I
    .end local v2           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZZLjava/lang/String;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v2

    goto :goto_1
.end method

.method public static calculateLength(Ljava/lang/String;Z)[I
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 676
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;ZZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static calculateLength(Ljava/lang/String;ZZ)[I
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"
    .parameter "isDefault"

    .prologue
    .line 681
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static createFromEfRecord(I[B)Landroid/telephony/SmsMessage;
    .locals 1
    .parameter "index"
    .parameter "data"

    .prologue
    .line 288
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BZ)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static createFromEfRecord(I[BZ)Landroid/telephony/SmsMessage;
    .locals 4
    .parameter "index"
    .parameter "data"
    .parameter "isDefault"

    .prologue
    const/4 v2, 0x0

    .line 294
    invoke-static {p2}, Landroid/telephony/SmsMessage;->getActivePhoneType(Z)I

    move-result v0

    .line 295
    .local v0, activePhone:I
    if-gez v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-object v2

    .line 299
    :cond_1
    const/4 v3, 0x2

    if-ne v3, v0, :cond_2

    .line 300
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 307
    .local v1, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_1
    if-eqz v1, :cond_0

    new-instance v2, Landroid/telephony/SmsMessage;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    goto :goto_0

    .line 303
    .end local v1           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_2
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .restart local v1       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_1
.end method

.method public static createFromPdu([B)Landroid/telephony/SmsMessage;
    .locals 1
    .parameter "pdu"

    .prologue
    .line 190
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BZ)Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 4
    .parameter "pdu"
    .parameter "format"

    .prologue
    .line 216
    const-string v1, "3gpp2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 225
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_1
    return-object v1

    .line 218
    :cond_0
    const-string v1, "3gpp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 221
    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_1
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFromPdu(): unsupported message format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createFromPdu([BZ)Landroid/telephony/SmsMessage;
    .locals 3
    .parameter "pdu"
    .parameter "isDefault"

    .prologue
    .line 195
    invoke-static {p1}, Landroid/telephony/SmsMessage;->getActivePhoneType(Z)I

    move-result v0

    .line 196
    .local v0, activePhone:I
    if-gez v0, :cond_0

    .line 197
    const/4 v2, 0x0

    .line 200
    :goto_0
    return-object v2

    .line 199
    :cond_0
    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    const-string v1, "3gpp2"

    .line 200
    .local v1, format:Ljava/lang/String;
    :goto_1
    invoke-static {p0, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    goto :goto_0

    .line 199
    .end local v1           #format:Ljava/lang/String;
    :cond_1
    const-string v1, "3gpp"

    goto :goto_1
.end method

.method public static createFromRawCdmaPdu(Landroid/content/Context;Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;[B)[B
    .locals 1
    .parameter "context"
    .parameter "vms"
    .parameter "pdu"

    .prologue
    .line 247
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCDMATPDU(Landroid/content/Context;Lcom/motorola/android/internal/telephony/VzwMoSmsSupportHelper;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static createFromRawCdmaPdu([B)[B
    .locals 1
    .parameter "pdu"

    .prologue
    .line 236
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCDMATPDU([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .parameter "activePhone"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static fragmentText(Ljava/lang/String;IZ)Ljava/util/ArrayList;
    .locals 7
    .parameter "text"
    .parameter "activePhone"
    .parameter "isDefault"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 482
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    invoke-static/range {v0 .. v6}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;IZZZLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static fragmentText(Ljava/lang/String;IZZZLjava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .parameter "text"
    .parameter "activePhone"
    .parameter "ifSupportNationalTable"
    .parameter "ifSupportLockingShiftTable"
    .parameter "useOnly7bit"
    .parameter "language"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;IZZZLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static fragmentText(Ljava/lang/String;IZZZLjava/lang/String;Z)Ljava/util/ArrayList;
    .locals 18
    .parameter "text"
    .parameter "activePhone"
    .parameter "ifSupportNationalTable"
    .parameter "ifSupportLockingShiftTable"
    .parameter "useOnly7bit"
    .parameter "language"
    .parameter "isDefault"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZZ",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    invoke-static/range {p6 .. p6}, Landroid/telephony/TelephonyManager;->getDefault(Z)Landroid/telephony/TelephonyManager;

    move-result-object v15

    .line 544
    .local v15, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v15, :cond_1

    .line 545
    const/4 v13, 0x0

    .line 656
    :cond_0
    :goto_0
    return-object v13

    .line 549
    :cond_1
    const/4 v5, 0x2

    move/from16 v0, p1

    if-ne v5, v0, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v14

    .line 564
    .local v14, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_1
    iget v5, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_a

    .line 566
    iget v5, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    if-eqz v5, :cond_7

    iget v5, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    if-eqz v5, :cond_7

    .line 567
    const/16 v17, 0x7

    .line 574
    .local v17, udhLength:I
    :goto_2
    iget v5, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    const/4 v8, 0x1

    if-le v5, v8, :cond_2

    .line 575
    add-int/lit8 v17, v17, 0x6

    .line 578
    :cond_2
    if-eqz v17, :cond_3

    .line 579
    add-int/lit8 v17, v17, 0x1

    .line 582
    :cond_3
    move/from16 v0, v17

    rsub-int v7, v0, 0xa0

    .line 592
    .end local v17           #udhLength:I
    .local v7, limit:I
    :goto_3
    iget v5, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    const/4 v8, 0x1

    if-le v5, v8, :cond_4

    .line 598
    const-string v5, "ro.telephony.gsm-routes-us-smsc"

    const/4 v8, 0x0

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const/4 v8, 0x5

    if-ne v5, v8, :cond_4

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    const-string v8, "20404"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    move/from16 v0, p1

    if-ne v0, v5, :cond_4

    iget v5, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    const/16 v8, 0xa

    if-ge v5, v8, :cond_4

    iget v5, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x3

    if-ne v5, v8, :cond_4

    .line 605
    add-int/lit8 v7, v7, -0x2

    .line 612
    :cond_4
    const-string v5, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fragmentText ted.msgCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; ted.codeUnitCount:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; ted.codeUnitsRemaining:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; ted.codeUnitSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-string v5, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fragmentText limit="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v6, 0x0

    .line 621
    .local v6, pos:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    .line 622
    .local v16, textLen:I
    new-instance v13, Ljava/util/ArrayList;

    iget v5, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    invoke-direct {v13, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 623
    .local v13, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_4
    move/from16 v0, v16

    if-ge v6, v0, :cond_0

    .line 624
    const/4 v12, 0x0

    .line 625
    .local v12, nextPos:I
    iget v5, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_d

    .line 626
    const/4 v5, 0x2

    move/from16 v0, p1

    if-ne v0, v5, :cond_c

    iget v5, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_c

    .line 628
    sub-int v5, v16, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v12, v6, v5

    .line 648
    :goto_5
    if-le v12, v6, :cond_5

    move/from16 v0, v16

    if-le v12, v0, :cond_f

    .line 649
    :cond_5
    const-string v5, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fragmentText failed ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " >= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " >= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 549
    .end local v6           #pos:I
    .end local v7           #limit:I
    .end local v12           #nextPos:I
    .end local v13           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v16           #textLen:I
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZZLjava/lang/String;)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v14

    goto/16 :goto_1

    .line 568
    .restart local v14       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_7
    iget v5, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    if-nez v5, :cond_8

    iget v5, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    if-eqz v5, :cond_9

    .line 569
    :cond_8
    const/16 v17, 0x4

    .restart local v17       #udhLength:I
    goto/16 :goto_2

    .line 571
    .end local v17           #udhLength:I
    :cond_9
    const/16 v17, 0x0

    .restart local v17       #udhLength:I
    goto/16 :goto_2

    .line 584
    .end local v17           #udhLength:I
    :cond_a
    iget v5, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    const/4 v8, 0x1

    if-le v5, v8, :cond_b

    .line 585
    const/16 v7, 0x86

    .restart local v7       #limit:I
    goto/16 :goto_3

    .line 587
    .end local v7           #limit:I
    :cond_b
    const/16 v7, 0x8c

    .restart local v7       #limit:I
    goto/16 :goto_3

    .restart local v6       #pos:I
    .restart local v12       #nextPos:I
    .restart local v13       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16       #textLen:I
    :cond_c
    move-object/from16 v5, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p5

    move/from16 v11, p4

    .line 632
    invoke-static/range {v5 .. v11}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIZZLjava/lang/String;Z)I

    move-result v12

    goto/16 :goto_5

    .line 640
    :cond_d
    iget v5, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_e

    .line 641
    sub-int v5, v16, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v12, v6, v5

    .line 642
    const-string v5, "SMS"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fragmentText for latin encoding type nextPos="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 646
    :cond_e
    div-int/lit8 v5, v7, 0x2

    sub-int v8, v16, v6

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v12, v6, v5

    goto/16 :goto_5

    .line 653
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    move v6, v12

    .line 655
    goto/16 :goto_4
.end method

.method public static fragmentText(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 2
    .parameter "text"
    .parameter "isDefault"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    invoke-static {p1}, Landroid/telephony/SmsMessage;->getActivePhoneType(Z)I

    move-result v0

    .line 455
    .local v0, activePhone:I
    if-gez v0, :cond_0

    .line 456
    const/4 v1, 0x0

    .line 459
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0, p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public static fragmentText(Ljava/lang/String;ZZZLjava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "text"
    .parameter "ifSupportNationalTable"
    .parameter "ifSupportLockingShiftTable"
    .parameter "useOnly7bit"
    .parameter "language"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 501
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;ZZZLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static fragmentText(Ljava/lang/String;ZZZLjava/lang/String;Z)Ljava/util/ArrayList;
    .locals 7
    .parameter "text"
    .parameter "ifSupportNationalTable"
    .parameter "ifSupportLockingShiftTable"
    .parameter "useOnly7bit"
    .parameter "language"
    .parameter "isDefault"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    invoke-static {p5}, Landroid/telephony/SmsMessage;->getActivePhoneType(Z)I

    move-result v1

    .line 510
    .local v1, activePhone:I
    if-gez v1, :cond_0

    .line 511
    const/4 v0, 0x0

    .line 514
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;IZZZLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method private static getActivePhoneType(Z)I
    .locals 2
    .parameter "isDefault"

    .prologue
    .line 1430
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getDefault(Z)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1431
    .local v0, manager:Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    .line 1432
    const/4 v1, -0x1

    .line 1434
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    goto :goto_0
.end method

.method public static getCommandPdu(Ljava/lang/String;Ljava/lang/String;BBBB[B)Landroid/telephony/SmsMessage$CommandPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "firstOctet"
    .parameter "protocolId"
    .parameter "cmdType"
    .parameter "msgNumber"
    .parameter "cmdData"

    .prologue
    .line 1368
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Landroid/telephony/SmsMessage;->getCommandPdu(Ljava/lang/String;Ljava/lang/String;BBBB[BZ)Landroid/telephony/SmsMessage$CommandPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getCommandPdu(Ljava/lang/String;Ljava/lang/String;BBBB[BZ)Landroid/telephony/SmsMessage$CommandPdu;
    .locals 4
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "firstOctet"
    .parameter "protocolId"
    .parameter "cmdType"
    .parameter "msgNumber"
    .parameter "cmdData"
    .parameter "isDefault"

    .prologue
    const/4 v2, 0x0

    .line 1377
    invoke-static {p7}, Landroid/telephony/SmsMessage;->getActivePhoneType(Z)I

    move-result v0

    .line 1378
    .local v0, activePhone:I
    if-gez v0, :cond_1

    .line 1394
    :cond_0
    :goto_0
    return-object v2

    .line 1382
    :cond_1
    const/4 v3, 0x2

    if-eq v3, v0, :cond_0

    .line 1386
    invoke-static/range {p0 .. p6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getCommandPdu(Ljava/lang/String;Ljava/lang/String;BBBB[B)Lcom/android/internal/telephony/gsm/SmsMessage$CommandPdu;

    move-result-object v1

    .line 1391
    .local v1, cpb:Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;
    if-eqz v1, :cond_0

    .line 1392
    new-instance v2, Landroid/telephony/SmsMessage$CommandPdu;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage$CommandPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;)V

    goto :goto_0
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Landroid/telephony/SmsMessage$DeliverPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"

    .prologue
    .line 860
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/telephony/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;Z)Landroid/telephony/SmsMessage$DeliverPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;Z)Landroid/telephony/SmsMessage$DeliverPdu;
    .locals 4
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"
    .parameter "isDefault"

    .prologue
    const/4 v2, 0x0

    .line 867
    invoke-static {p4}, Landroid/telephony/SmsMessage;->getActivePhoneType(Z)I

    move-result v0

    .line 868
    .local v0, activePhone:I
    if-gez v0, :cond_1

    .line 880
    :cond_0
    :goto_0
    return-object v2

    .line 872
    :cond_1
    const/4 v3, 0x2

    if-ne v3, v0, :cond_2

    .line 873
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;

    move-result-object v1

    .line 879
    .local v1, spb:Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;
    :goto_1
    if-eqz v1, :cond_0

    .line 880
    new-instance v2, Landroid/telephony/SmsMessage$DeliverPdu;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage$DeliverPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;)V

    goto :goto_0

    .line 876
    .end local v1           #spb:Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object v1

    .restart local v1       #spb:Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;
    goto :goto_1
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;[BI)Landroid/telephony/SmsMessage$DeliverPdu;
    .locals 7
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"
    .parameter "header"
    .parameter "encoding"

    .prologue
    .line 898
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/telephony/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;[BIZ)Landroid/telephony/SmsMessage$DeliverPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;[BIZ)Landroid/telephony/SmsMessage$DeliverPdu;
    .locals 4
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"
    .parameter "header"
    .parameter "encoding"
    .parameter "isDefault"

    .prologue
    const/4 v2, 0x0

    .line 905
    invoke-static {p6}, Landroid/telephony/SmsMessage;->getActivePhoneType(Z)I

    move-result v0

    .line 906
    .local v0, activePhone:I
    if-gez v0, :cond_1

    .line 918
    :cond_0
    :goto_0
    return-object v2

    .line 910
    :cond_1
    const/4 v3, 0x2

    if-ne v3, v0, :cond_2

    .line 911
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;

    move-result-object v1

    .line 917
    .local v1, spb:Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;
    :goto_1
    if-eqz v1, :cond_0

    .line 918
    new-instance v2, Landroid/telephony/SmsMessage$DeliverPdu;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage$DeliverPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;)V

    goto :goto_0

    .line 914
    .end local v1           #spb:Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;
    :cond_2
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;[BI)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object v1

    .restart local v1       #spb:Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;
    goto :goto_1
.end method

.method private static final getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;
    .locals 2

    .prologue
    .line 1419
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 1420
    .local v0, activePhone:I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 1421
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 1423
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    .line 714
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 6
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "encoding"

    .prologue
    .line 938
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 9
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "encoding"
    .parameter "isDefault"

    .prologue
    const/4 v4, 0x0

    .line 946
    invoke-static {p5}, Landroid/telephony/SmsMessage;->getActivePhoneType(Z)I

    move-result v7

    .line 947
    .local v7, activePhone:I
    if-gez v7, :cond_1

    .line 959
    :cond_0
    :goto_0
    return-object v4

    .line 951
    :cond_1
    const/4 v0, 0x2

    if-ne v0, v7, :cond_2

    .line 952
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v8

    .line 958
    .local v8, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_1
    if-eqz v8, :cond_0

    .line 959
    new-instance v4, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v4, v8}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    goto :goto_0

    .end local v8           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    .line 955
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v8

    .restart local v8       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/text/format/Time;)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 6
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "timeStamp"

    .prologue
    .line 981
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/text/format/Time;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/text/format/Time;Z)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "timeStamp"
    .parameter "isDefault"

    .prologue
    const/4 v4, 0x0

    .line 989
    invoke-static {p5}, Landroid/telephony/SmsMessage;->getActivePhoneType(Z)I

    move-result v6

    .line 990
    .local v6, activePhone:I
    if-gez v6, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return-object v4

    .line 994
    :cond_1
    const/4 v0, 0x2

    if-ne v0, v6, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 995
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v7

    .line 1001
    .local v7, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_1
    if-eqz v7, :cond_0

    .line 1002
    new-instance v4, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v4, v7}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    goto :goto_0

    .line 998
    .end local v7           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v7

    .restart local v7       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 7
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    .line 776
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 9
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "cbNumber"
    .parameter "priority"
    .parameter "isDefault"

    .prologue
    const/4 v4, 0x0

    .line 785
    invoke-static {p6}, Landroid/telephony/SmsMessage;->getActivePhoneType(Z)I

    move-result v7

    .line 786
    .local v7, activePhone:I
    if-gez v7, :cond_0

    .line 798
    :goto_0
    return-object v4

    .line 790
    :cond_0
    const/4 v0, 0x2

    if-ne v0, v7, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    .line 791
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v8

    .line 798
    .local v8, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_1
    new-instance v4, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v4, v8}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    goto :goto_0

    .line 794
    .end local v8           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v8

    .restart local v8       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 7
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "isDefault"

    .prologue
    .line 722
    const/4 v4, 0x0

    .line 723
    .local v4, cbNumber:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, priority:I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    .line 724
    invoke-static/range {v0 .. v6}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 6
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    .line 746
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZZ)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZLjava/lang/String;I)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    .line 820
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZLjava/lang/String;IZ)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZLjava/lang/String;IZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 3
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"
    .parameter "cbNumber"
    .parameter "priority"
    .parameter "isDefault"

    .prologue
    .line 829
    invoke-static {p7}, Landroid/telephony/SmsMessage;->getActivePhoneType(Z)I

    move-result v0

    .line 830
    .local v0, activePhone:I
    if-gez v0, :cond_0

    .line 831
    const/4 v2, 0x0

    .line 841
    :goto_0
    return-object v2

    .line 834
    :cond_0
    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    .line 835
    invoke-static/range {p0 .. p6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 841
    .local v1, spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_1
    new-instance v2, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    goto :goto_0

    .line 838
    .end local v1           #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .restart local v1       #spb:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"
    .parameter "isDefault"

    .prologue
    .line 755
    const/4 v5, 0x0

    .line 756
    .local v5, cbNumber:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, priority:I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v7, p5

    .line 757
    invoke-static/range {v0 .. v7}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZLjava/lang/String;IZ)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 1
    .parameter "pdu"

    .prologue
    .line 318
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telephony/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;Z)I
    .locals 2
    .parameter "pdu"
    .parameter "isDefault"

    .prologue
    .line 323
    invoke-static {p1}, Landroid/telephony/SmsMessage;->getActivePhoneType(Z)I

    move-result v0

    .line 324
    .local v0, activePhone:I
    if-gez v0, :cond_0

    .line 325
    const/4 v1, 0x0

    .line 331
    :goto_0
    return v1

    .line 328
    :cond_0
    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    .line 329
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 331
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "lines"

    .prologue
    .line 262
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 265
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "p"

    .prologue
    .line 271
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 274
    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1
.end method

.method public static packGsm8Bit2Gsm7Bit([B)[B
    .locals 1
    .parameter "gsm8BitSubmitPdu"

    .prologue
    .line 1446
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->packGsm8Bit2Gsm7Bit([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCallbackNumberAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1341
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getCallbackNumberAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataCodingScheme()I
    .locals 1

    .prologue
    .line 1131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/telephony/SmsMessage;->getDataCodingScheme(Z)I

    move-result v0

    return v0
.end method

.method public getDataCodingScheme(Z)I
    .locals 3
    .parameter "isDefault"

    .prologue
    const/4 v1, 0x0

    .line 1136
    invoke-static {p1}, Landroid/telephony/SmsMessage;->getActivePhoneType(Z)I

    move-result v0

    .line 1137
    .local v0, activePhone:I
    if-gez v0, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return v1

    .line 1141
    :cond_1
    const/4 v2, 0x2

    if-eq v2, v0, :cond_0

    .line 1144
    iget-object v1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDataCodingScheme()I

    move-result v1

    goto :goto_0
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstOctet()I
    .locals 1

    .prologue
    .line 1110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/telephony/SmsMessage;->getFirstOctet(Z)I

    move-result v0

    return v0
.end method

.method public getFirstOctet(Z)I
    .locals 3
    .parameter "isDefault"

    .prologue
    const/4 v1, 0x0

    .line 1115
    invoke-static {p1}, Landroid/telephony/SmsMessage;->getActivePhoneType(Z)I

    move-result v0

    .line 1116
    .local v0, activePhone:I
    if-gez v0, :cond_1

    .line 1123
    :cond_0
    :goto_0
    return v1

    .line 1120
    :cond_1
    const/4 v2, 0x2

    if-eq v2, v0, :cond_0

    .line 1123
    iget-object v1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getFirstOctet()I

    move-result v1

    goto :goto_0
.end method

.method public getIndexOnIcc()I
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public getIndexOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1244
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getLanguage()I

    move-result v0

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageId()I

    move-result v0

    return v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageType()I

    move-result v0

    return v0
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPriority()I

    move-result v0

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getProtocolIdentifier()I

    move-result v0

    return v0
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPseudoSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCategory()I

    move-result v0

    return v0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatus()I

    move-result v0

    return v0
.end method

.method public getStatusOnIcc()I
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public getStatusOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1220
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .prologue
    .line 1067
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v0

    return-object v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isCphsMwiMessage()Z

    move-result v0

    return v0
.end method

.method public isEmail()Z
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isEmail()Z

    move-result v0

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWIClearMessage()Z

    move-result v0

    return v0
.end method

.method public isMWISetMessage()Z
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWISetMessage()Z

    move-result v0

    return v0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMwiDontStore()Z

    move-result v0

    return v0
.end method

.method public isReplace()Z
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplace()Z

    move-result v0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplyPathPresent()Z

    move-result v0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isStatusReportMessage()Z

    move-result v0

    return v0
.end method
