.class public final Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;
.super Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;
.source "GsmNumberHandleForAssistedDialing.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;-><init>()V

    .line 23
    const-string v0, "GsmNumberHandleForAssistedDialing"

    iput-object v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->LOG_TAG:Ljava/lang/String;

    .line 26
    sget-boolean v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "GsmNumberHandleForAssistedDialing"

    const-string v1, "GsmNumberHandleForAssistedDialing is constructed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "slotId"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;-><init>(I)V

    .line 23
    const-string v0, "GsmNumberHandleForAssistedDialing"

    iput-object v0, p0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->LOG_TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private manipulateNumberinGsmNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 23
    .parameter "sourceNumber"
    .parameter "byWhom"

    .prologue
    .line 61
    sget-boolean v19, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->DBG:Z

    if-eqz v19, :cond_0

    const-string v19, "GsmNumberHandleForAssistedDialing"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "sourceNumber = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    move-object/from16 v6, p1

    .line 63
    .local v6, manipulatedNumber:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 75
    .local v7, numLength:I
    const-string v3, ""

    .line 78
    .local v3, areaCode:Ljava/lang/String;
    sget-object v20, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v20

    .line 79
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v21, "cur_country_idd"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 80
    .local v10, otaIdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v21, "cur_country_ndd"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 81
    .local v12, otaNdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v21, "cur_country_code"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, otaCC:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v21, "ref_country_idd"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 86
    .local v15, refIdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v21, "ref_country_ndd"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 87
    .local v17, refNdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v21, "ref_country_code"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 90
    .local v14, refCC:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v21, "cur_country_updated_by_user"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 95
    .local v4, areaCodeUpdated:I
    if-eqz v4, :cond_2

    .line 96
    sget-boolean v19, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->DBG:Z

    if-eqz v19, :cond_1

    const-string v19, "GsmNumberHandleForAssistedDialing"

    const-string v21, "get areaCode from Settings."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    const-string v21, "ref_country_area_code"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    :cond_2
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    if-nez v4, :cond_4

    .line 101
    sget-boolean v19, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->DBG:Z

    if-eqz v19, :cond_3

    const-string v19, "GsmNumberHandleForAssistedDialing"

    const-string v20, "get areaCode from MDN."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, mMdn:Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    .line 105
    const/16 v19, 0x0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 110
    .end local v5           #mMdn:Ljava/lang/String;
    :cond_4
    sget-boolean v19, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->DBG:Z

    if-eqz v19, :cond_5

    .line 111
    const-string v19, "GsmNumberHandleForAssistedDialing"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "otaIdd is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", otaNdd is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", otaCC is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", refIdd is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_5
    sget-boolean v19, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->DBG:Z

    if-eqz v19, :cond_6

    const-string v19, "GsmNumberHandleForAssistedDialing"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "reference country areaCode is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_6
    const/4 v11, 0x0

    .line 119
    .local v11, otaIddLength:I
    if-eqz v10, :cond_7

    .line 120
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    .line 122
    :cond_7
    const/4 v13, 0x0

    .line 123
    .local v13, otaNddLength:I
    if-eqz v12, :cond_8

    .line 124
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    .line 126
    :cond_8
    const/4 v9, 0x0

    .line 127
    .local v9, otaCCLength:I
    if-eqz v8, :cond_9

    .line 128
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 130
    :cond_9
    const/16 v16, 0x0

    .line 131
    .local v16, refIddLength:I
    if-eqz v15, :cond_a

    .line 132
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    .line 135
    :cond_a
    const/16 v18, 0x0

    .line 136
    .local v18, refNddLength:I
    if-eqz v17, :cond_b

    .line 137
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    .line 141
    :cond_b
    if-eqz v7, :cond_c

    .line 147
    move/from16 v0, v16

    if-lt v7, v0, :cond_f

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 149
    const-string v19, "+"

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 199
    :cond_c
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 200
    const/4 v6, 0x0

    .line 202
    :cond_d
    sget-boolean v19, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->DBG:Z

    if-eqz v19, :cond_e

    const-string v19, "GsmNumberHandleForAssistedDialing"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "manipulatedNumber = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_e
    return-object v6

    .line 99
    .end local v4           #areaCodeUpdated:I
    .end local v8           #otaCC:Ljava/lang/String;
    .end local v9           #otaCCLength:I
    .end local v10           #otaIdd:Ljava/lang/String;
    .end local v11           #otaIddLength:I
    .end local v12           #otaNdd:Ljava/lang/String;
    .end local v13           #otaNddLength:I
    .end local v14           #refCC:Ljava/lang/String;
    .end local v15           #refIdd:Ljava/lang/String;
    .end local v16           #refIddLength:I
    .end local v17           #refNdd:Ljava/lang/String;
    .end local v18           #refNddLength:I
    :catchall_0
    move-exception v19

    :try_start_1
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v19

    .line 154
    .restart local v4       #areaCodeUpdated:I
    .restart local v8       #otaCC:Ljava/lang/String;
    .restart local v9       #otaCCLength:I
    .restart local v10       #otaIdd:Ljava/lang/String;
    .restart local v11       #otaIddLength:I
    .restart local v12       #otaNdd:Ljava/lang/String;
    .restart local v13       #otaNddLength:I
    .restart local v14       #refCC:Ljava/lang/String;
    .restart local v15       #refIdd:Ljava/lang/String;
    .restart local v16       #refIddLength:I
    .restart local v17       #refNdd:Ljava/lang/String;
    .restart local v18       #refNddLength:I
    :cond_f
    const-string v19, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    const/16 v19, 0xb

    move/from16 v0, v19

    if-ne v7, v0, :cond_10

    const-string v19, "1"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 158
    const-string v19, "+"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 164
    :cond_10
    const-string v19, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    const-string v19, "1"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v7, v0, :cond_11

    .line 167
    const-string v19, "+"

    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 173
    :cond_11
    const-string v19, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    const-string v19, "1"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    const/16 v19, 0x7

    move/from16 v0, v19

    if-ne v7, v0, :cond_12

    .line 176
    const-string v19, "+"

    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 182
    :cond_12
    const-string v19, "BY_CONTACT"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    const-string v19, "1"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c

    move/from16 v0, v18

    if-lt v7, v0, :cond_c

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 186
    const/16 v19, 0x3

    move/from16 v0, v19

    if-lt v7, v0, :cond_13

    const/16 v19, 0x0

    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string v20, "011"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 188
    const-string v19, "+"

    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 190
    :cond_13
    const-string v19, "+"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method


# virtual methods
.method protected getLastNBPCDStatus()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public getManipulatedNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "sourceNumber"
    .parameter "byWhom"

    .prologue
    .line 39
    sget-boolean v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->mDisableVZWSpecificADRules:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-super {p0, p1, p2}, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->getManipulatedNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 43
    :cond_0
    sget-object v1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->cr:Landroid/content/ContentResolver;

    const-string v2, "cur_country_mcc"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mCurrentMcc:I

    .line 45
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    sget-boolean v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "GsmNumberHandleForAssistedDialing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentMcc is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mCurrentMcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_1
    iget v0, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->mCurrentMcc:I

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    .line 49
    sget-boolean v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "GsmNumberHandleForAssistedDialing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isoCountryName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/telephony/NumberHandleForAssistedDialing;->isoCountryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_2
    sget-boolean v0, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "GsmNumberHandleForAssistedDialing"

    const-string v1, "Manipulate number with international network rules."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->manipulateNumberinGsmNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected isNBPCDAllowed()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method protected manipulateNumInVZWNetwork(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 1
    .parameter "sourceNumber"
    .parameter "byWhom"
    .parameter "isNBPCDAllowed"
    .parameter "lastNBPCDStatus"

    .prologue
    .line 212
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->manipulateNumberinNonVZWNetwork(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
