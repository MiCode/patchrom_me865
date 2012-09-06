.class public Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;
.super Ljava/lang/Object;
.source "GsmOperatorHelper.java"


# static fields
.field private static final DBG:Z

.field private static TAG:Ljava/lang/String;

.field private static sLocaleMcc:Ljava/util/Locale;

.field private static sMccMnc:Ljava/lang/String;

.field private static sOperator:Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 26
    const-string v2, "GsmOperatorHelper"

    sput-object v2, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->TAG:Ljava/lang/String;

    .line 34
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOperatorFromDb(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;
    .locals 14
    .parameter "context"
    .parameter "mccmnc"

    .prologue
    .line 267
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    aput-object v1, v2, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v1, v1, v4

    aput-object v1, v2, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    aput-object v1, v2, v0

    const/4 v0, 0x3

    sget-object v1, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v1, v1, v4

    aput-object v1, v2, v0

    const/4 v0, 0x4

    sget-object v1, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v1, v1, v4

    aput-object v1, v2, v0

    const/4 v0, 0x5

    sget-object v1, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v1, v1, v4

    aput-object v1, v2, v0

    const/4 v0, 0x6

    sget-object v1, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v1, v1, v4

    aput-object v1, v2, v0

    const/4 v0, 0x7

    sget-object v1, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v1, v1, v4

    aput-object v1, v2, v0

    .line 274
    .local v2, columns:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MCC_MNC_NO = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, sWhere:Ljava/lang/String;
    new-instance v10, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;

    invoke-direct {v10}, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;-><init>()V

    .line 278
    .local v10, info:Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;
    const/4 v7, 0x0

    .line 280
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/android/provider/GsmOperator$MccMnc;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 286
    :goto_0
    if-eqz v7, :cond_4

    .line 287
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    sget-object v0, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mId:Ljava/lang/String;

    .line 289
    sget-object v0, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mOperatorName:Ljava/lang/String;

    .line 290
    sget-object v0, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mOperatorLongName:Ljava/lang/String;

    .line 291
    sget-object v0, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mLanguageSupport:Ljava/lang/String;

    .line 292
    sget-object v0, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 293
    .local v9, ignoreSpn:Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 295
    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 297
    .local v6, bytes:[B
    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-16"

    invoke-direct {v0, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, v10, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mIgnoreSpn:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 302
    .end local v6           #bytes:[B
    :cond_0
    :goto_1
    sget-object v0, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mIntlRoamCallBack:Ljava/lang/String;

    .line 303
    sget-object v0, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 304
    .local v11, proRoamSpn:Ljava/lang/String;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 307
    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 309
    .restart local v6       #bytes:[B
    :try_start_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-16"

    invoke-direct {v0, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, v10, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mRoamingSpn:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 314
    .end local v6           #bytes:[B
    :cond_1
    :goto_2
    sget-object v0, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mRoamingOperatorId:Ljava/lang/String;

    .line 318
    invoke-static {p1}, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->getSpnOnSim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 319
    .local v13, spn:Ljava/lang/String;
    iget-object v0, v10, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mRoamingSpn:Ljava/lang/String;

    iget-object v1, v10, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mRoamingOperatorId:Ljava/lang/String;

    invoke-static {v0, v1, v13}, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->getRoamingOperatorIdViaSpn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 320
    .local v12, roamingOperatorId:Ljava/lang/String;
    if-eqz v12, :cond_3

    iget-object v0, v10, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mIntlRoamCallBack:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v10, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mIntlRoamCallBack:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, v10, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mRoamingOperatorId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v10, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mRoamingOperatorId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 323
    invoke-static {p0, v12}, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->getRoamIntCallBackNo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mIntlRoamCallBack:Ljava/lang/String;

    .line 326
    .end local v9           #ignoreSpn:Ljava/lang/String;
    .end local v11           #proRoamSpn:Ljava/lang/String;
    .end local v12           #roamingOperatorId:Ljava/lang/String;
    .end local v13           #spn:Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_4
    return-object v10

    .line 282
    :catch_0
    move-exception v8

    .line 283
    .local v8, e:Ljava/lang/Exception;
    sget-object v0, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->TAG:Ljava/lang/String;

    const-string v1, "Exception in getOperatorFromDb"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 298
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v6       #bytes:[B
    .restart local v9       #ignoreSpn:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 299
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    sget-object v0, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnsupportedEncodingException: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 310
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v11       #proRoamSpn:Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 311
    .restart local v8       #e:Ljava/io/UnsupportedEncodingException;
    sget-object v0, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnsupportedEncodingException: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getOperatorInfo(Landroid/content/Context;Ljava/lang/String;Z)Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;
    .locals 12
    .parameter "context"
    .parameter "mccmnc"
    .parameter "flag"

    .prologue
    const/4 v8, 0x0

    .line 177
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-object v8

    .line 180
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v7, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 182
    .local v7, locale:Ljava/util/Locale;
    sget-boolean v9, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->DBG:Z

    if-eqz v9, :cond_2

    .line 183
    sget-object v9, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getOperatorInfo:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    sget-object v9, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sMccMnc:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v7, :cond_4

    sget-object v9, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sLocaleMcc:Ljava/util/Locale;

    invoke-virtual {v7, v9}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 187
    sget-boolean v8, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->DBG:Z

    if-eqz v8, :cond_3

    .line 188
    sget-object v8, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Return buffered OperatorInfo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_3
    sget-object v8, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sOperator:Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;

    goto :goto_0

    .line 193
    :cond_4
    invoke-static {p0, p1}, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->getOperatorFromDb(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;

    move-result-object v3

    .line 195
    .local v3, info:Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;
    sget-boolean v9, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->DBG:Z

    if-eqz v9, :cond_5

    .line 196
    sget-object v9, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_5
    const/4 v4, 0x0

    .line 200
    .local v4, isSupport:Z
    if-eqz p2, :cond_9

    .line 201
    iget-object v9, v3, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mLanguageSupport:Ljava/lang/String;

    if-eqz v9, :cond_7

    iget-object v9, v3, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mLanguageSupport:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 202
    iget-object v9, v3, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mLanguageSupport:Ljava/lang/String;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 203
    .local v6, languagelist:[Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, defaultLanguage:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, defaultCountry:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v9, v6

    if-ge v2, v9, :cond_7

    .line 208
    aget-object v9, v6, v2

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, language:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-r"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 211
    :cond_6
    const/4 v4, 0x1

    .line 220
    .end local v0           #defaultCountry:Ljava/lang/String;
    .end local v1           #defaultLanguage:Ljava/lang/String;
    .end local v2           #i:I
    .end local v5           #language:Ljava/lang/String;
    .end local v6           #languagelist:[Ljava/lang/String;
    :cond_7
    :goto_2
    if-eqz v4, :cond_0

    .line 221
    sput-object p1, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sMccMnc:Ljava/lang/String;

    .line 222
    sput-object v7, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sLocaleMcc:Ljava/util/Locale;

    .line 223
    sput-object v3, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sOperator:Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;

    .line 224
    sget-object v8, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sOperator:Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;

    goto/16 :goto_0

    .line 205
    .restart local v0       #defaultCountry:Ljava/lang/String;
    .restart local v1       #defaultLanguage:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v5       #language:Ljava/lang/String;
    .restart local v6       #languagelist:[Ljava/lang/String;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 217
    .end local v0           #defaultCountry:Ljava/lang/String;
    .end local v1           #defaultLanguage:Ljava/lang/String;
    .end local v2           #i:I
    .end local v5           #language:Ljava/lang/String;
    .end local v6           #languagelist:[Ljava/lang/String;
    :cond_9
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public static getOperatorName(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "mccmnc"
    .parameter "flag"

    .prologue
    const/4 v8, 0x0

    .line 47
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-object v8

    .line 50
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v7, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 52
    .local v7, locale:Ljava/util/Locale;
    sget-boolean v9, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->DBG:Z

    if-eqz v9, :cond_2

    .line 53
    sget-object v9, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getOperatorName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_2
    sget-object v9, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sMccMnc:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v7, :cond_4

    sget-object v9, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sLocaleMcc:Ljava/util/Locale;

    invoke-virtual {v7, v9}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 57
    sget-boolean v8, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->DBG:Z

    if-eqz v8, :cond_3

    .line 58
    sget-object v8, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Return buffered OperatorName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_3
    sget-object v8, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sOperator:Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;

    iget-object v8, v8, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mOperatorLongName:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_4
    invoke-static {p0, p1}, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->getOperatorFromDb(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;

    move-result-object v3

    .line 65
    .local v3, info:Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;
    sget-boolean v9, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->DBG:Z

    if-eqz v9, :cond_5

    .line 66
    sget-object v9, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_5
    const/4 v4, 0x0

    .line 70
    .local v4, isSupport:Z
    if-eqz p2, :cond_9

    .line 71
    iget-object v9, v3, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mLanguageSupport:Ljava/lang/String;

    if-eqz v9, :cond_7

    iget-object v9, v3, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mLanguageSupport:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_7

    .line 72
    iget-object v9, v3, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mLanguageSupport:Ljava/lang/String;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, languagelist:[Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, defaultLanguage:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, defaultCountry:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v9, v6

    if-ge v2, v9, :cond_7

    .line 78
    aget-object v9, v6, v2

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, language:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-r"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 81
    :cond_6
    const/4 v4, 0x1

    .line 90
    .end local v0           #defaultCountry:Ljava/lang/String;
    .end local v1           #defaultLanguage:Ljava/lang/String;
    .end local v2           #i:I
    .end local v5           #language:Ljava/lang/String;
    .end local v6           #languagelist:[Ljava/lang/String;
    :cond_7
    :goto_2
    if-eqz v4, :cond_0

    .line 91
    sput-object p1, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sMccMnc:Ljava/lang/String;

    .line 92
    sput-object v7, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sLocaleMcc:Ljava/util/Locale;

    .line 93
    sput-object v3, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sOperator:Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;

    .line 94
    sget-object v8, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sOperator:Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;

    iget-object v8, v8, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mOperatorLongName:Ljava/lang/String;

    goto/16 :goto_0

    .line 75
    .restart local v0       #defaultCountry:Ljava/lang/String;
    .restart local v1       #defaultLanguage:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v5       #language:Ljava/lang/String;
    .restart local v6       #languagelist:[Ljava/lang/String;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 87
    .end local v0           #defaultCountry:Ljava/lang/String;
    .end local v1           #defaultLanguage:Ljava/lang/String;
    .end local v2           #i:I
    .end local v5           #language:Ljava/lang/String;
    .end local v6           #languagelist:[Ljava/lang/String;
    :cond_9
    const/4 v4, 0x1

    goto :goto_2
.end method

.method private static getRoamIntCallBackNo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "roamingOperatorId"

    .prologue
    const/16 v11, 0x21

    const/4 v10, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 340
    const-string v8, ""

    .line 341
    .local v8, res:Ljava/lang/String;
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_5

    .line 342
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_2

    .line 343
    new-array v2, v4, [Ljava/lang/String;

    sget-object v0, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    aget-object v0, v0, v11

    aput-object v0, v2, v5

    .line 346
    .local v2, columns:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, sWhere:Ljava/lang/String;
    const/4 v6, 0x0

    .line 349
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/android/provider/CdmaOperator$CdmaOperatorInfoTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 354
    :goto_0
    if-eqz v6, :cond_1

    .line 355
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    sget-object v0, Lcom/motorola/android/provider/CdmaOperator;->mOperatorCoulumns:[Ljava/lang/String;

    aget-object v0, v0, v11

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 358
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v9, v8

    .line 382
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #sWhere:Ljava/lang/String;
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v8           #res:Ljava/lang/String;
    .local v9, res:Ljava/lang/String;
    :goto_1
    return-object v9

    .line 351
    .end local v9           #res:Ljava/lang/String;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #sWhere:Ljava/lang/String;
    .restart local v6       #cur:Landroid/database/Cursor;
    .restart local v8       #res:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 352
    .local v7, e:Ljava/lang/Exception;
    sget-object v0, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->TAG:Ljava/lang/String;

    const-string v1, "Exception in getRoamIntCallBackNo"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 361
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #sWhere:Ljava/lang/String;
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x47

    if-ne v0, v1, :cond_5

    .line 362
    new-array v2, v4, [Ljava/lang/String;

    sget-object v0, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    aget-object v0, v0, v10

    aput-object v0, v2, v5

    .line 365
    .restart local v2       #columns:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 366
    .restart local v3       #sWhere:Ljava/lang/String;
    const/4 v6, 0x0

    .line 368
    .restart local v6       #cur:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/android/provider/GsmOperator$GsmOperatorInfoTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 373
    :goto_2
    if-eqz v6, :cond_4

    .line 374
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 375
    sget-object v0, Lcom/motorola/android/provider/GsmOperator;->mOperatorCoulumns:[Ljava/lang/String;

    aget-object v0, v0, v10

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 377
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v8

    .line 379
    .end local v8           #res:Ljava/lang/String;
    .restart local v9       #res:Ljava/lang/String;
    goto :goto_1

    .line 370
    .end local v9           #res:Ljava/lang/String;
    .restart local v8       #res:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 371
    .restart local v7       #e:Ljava/lang/Exception;
    sget-object v0, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->TAG:Ljava/lang/String;

    const-string v1, "Exception in getRoamIntCallBackNo"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #sWhere:Ljava/lang/String;
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v7           #e:Ljava/lang/Exception;
    :cond_5
    move-object v9, v8

    .line 382
    .end local v8           #res:Ljava/lang/String;
    .restart local v9       #res:Ljava/lang/String;
    goto :goto_1
.end method

.method private static getRoamingOperatorIdViaSpn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "roamingSpn"
    .parameter "roamingOperatorId"
    .parameter "spn"

    .prologue
    const/4 v9, 0x0

    .line 142
    sget-boolean v10, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->DBG:Z

    if-eqz v10, :cond_0

    .line 143
    sget-object v10, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getRoamingOperatorIdViaSpn: roamingSpn="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", roamingOperatorId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", spn="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 148
    const-string v10, ","

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, rSpnfilters:[Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 150
    .local v7, rOperatorIds:[Ljava/lang/String;
    array-length v10, v8

    array-length v11, v7

    if-eq v10, v11, :cond_2

    .line 163
    .end local v7           #rOperatorIds:[Ljava/lang/String;
    .end local v8           #rSpnfilters:[Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v9

    .line 153
    .restart local v7       #rOperatorIds:[Ljava/lang/String;
    .restart local v8       #rSpnfilters:[Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .line 154
    .local v3, index:I
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 155
    .local v1, filter:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, lowFilter:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, lowSpn:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 158
    aget-object v9, v7, v3

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 160
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static getSpnOnSim(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "numeric"

    .prologue
    const/4 v4, 0x0

    .line 397
    const/4 v2, 0x0

    .line 398
    .local v2, spnOnSim:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 399
    const/4 v2, 0x0

    .line 415
    :cond_0
    :goto_0
    return-object v2

    .line 401
    :cond_1
    const-string v3, "gsm.sim.operator.numeric"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, firstNumeric:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 404
    const-string v3, "gsm.sim.operator.alpha"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 407
    :cond_2
    const-string v3, "gsm.sim.operator.numeric.2"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, secondNumeric:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 410
    const-string v3, "gsm.sim.operator.alpha.2"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static haveRoamingSpn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "spn"
    .parameter "mccmnc"

    .prologue
    const/4 v1, 0x0

    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, info:Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v1

    .line 115
    :cond_1
    sget-boolean v2, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->DBG:Z

    if-eqz v2, :cond_2

    .line 116
    sget-object v2, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRoaming: spn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mccmnc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_2
    sget-object v2, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sMccMnc:Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sMccMnc:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    sget-object v0, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sOperator:Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;

    .line 125
    :goto_1
    if-eqz v0, :cond_0

    .line 126
    iget-object v2, v0, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mIgnoreSpn:Ljava/lang/String;

    iget-object v3, v0, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mRoamingOperatorId:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->getRoamingOperatorIdViaSpn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 122
    :cond_3
    invoke-static {p0, p2}, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->getOperatorFromDb(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;

    move-result-object v0

    goto :goto_1
.end method

.method public static isFilterSpn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "context"
    .parameter "spn"
    .parameter "mccmnc"

    .prologue
    const/4 v8, 0x0

    .line 231
    const/4 v4, 0x0

    .line 233
    .local v4, info:Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v8

    .line 237
    :cond_1
    sget-boolean v9, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->DBG:Z

    if-eqz v9, :cond_2

    .line 238
    sget-object v9, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isFilterSpn: spn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "mccmnc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_2
    sget-object v9, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sMccMnc:Ljava/lang/String;

    if-eqz v9, :cond_3

    sget-object v9, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sMccMnc:Ljava/lang/String;

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 242
    sget-object v4, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->sOperator:Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;

    .line 247
    :goto_1
    if-eqz v4, :cond_0

    iget-object v9, v4, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mIgnoreSpn:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, v4, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mIgnoreSpn:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 248
    iget-object v9, v4, Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;->mIgnoreSpn:Ljava/lang/String;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, filters:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .line 250
    .local v1, filter:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 251
    .local v6, lowFilter:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 252
    .local v7, lowSpn:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 253
    const/4 v8, 0x1

    goto :goto_0

    .line 244
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #filter:Ljava/lang/String;
    .end local v2           #filters:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #lowFilter:Ljava/lang/String;
    .end local v7           #lowSpn:Ljava/lang/String;
    :cond_3
    invoke-static {p0, p2}, Lcom/motorola/android/telephony/gsm/GsmOperatorHelper;->getOperatorFromDb(Landroid/content/Context;Ljava/lang/String;)Lcom/motorola/android/telephony/gsm/GsmOperatorInfo;

    move-result-object v4

    goto :goto_1

    .line 249
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #filter:Ljava/lang/String;
    .restart local v2       #filters:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #lowFilter:Ljava/lang/String;
    .restart local v7       #lowSpn:Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
