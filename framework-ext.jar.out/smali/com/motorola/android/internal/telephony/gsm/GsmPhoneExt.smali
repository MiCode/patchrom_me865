.class public Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt;
.super Lcom/motorola/android/internal/telephony/PhoneExtBase;
.source "GsmPhoneExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt$1;,
        Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt$MyHandler;
    }
.end annotation


# static fields
.field private static final EVENT_GET_PREFEREE_COMPLETED:I = 0x1f4


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/PhoneExtBase;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 51
    new-instance v0, Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt$MyHandler;-><init>(Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt;Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt$1;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt;->mHandler:Landroid/os/Handler;

    .line 52
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt;->mHandler:Landroid/os/Handler;

    invoke-super {p0, v0}, Lcom/motorola/android/internal/telephony/PhoneExtBase;->init(Landroid/os/Handler;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt;->handleGetPreferedCompleted(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private handleGetPreferedCompleted(Landroid/os/AsyncResult;)V
    .locals 21
    .parameter "ar"

    .prologue
    .line 94
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v14, Landroid/os/Message;

    .line 96
    .local v14, resp:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v15, v1

    check-cast v15, [B

    .line 97
    .local v15, response:[B
    invoke-static {v15}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 98
    .local v9, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    .line 103
    .local v12, number:I
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    .local v16, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v12, :cond_3

    .line 105
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    .line 107
    .local v11, length:I
    const/4 v1, 0x4

    new-array v0, v1, [B

    move-object/from16 v20, v0

    .line 108
    .local v20, tmp2:[B
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 110
    new-instance v13, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>([B)V

    .line 111
    .local v13, orpIndex:Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 112
    .local v2, orp:I
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    .line 114
    .local v8, alphalength:I
    new-array v0, v8, [B

    move-object/from16 v18, v0

    .line 115
    .local v18, tmp:[B
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 116
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v17

    .line 118
    .local v17, shortlength:I
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 119
    .local v19, tmp1:[B
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 121
    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 122
    .local v3, operatorAlpha:Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 123
    .local v4, operatorNum:Ljava/lang/String;
    new-instance v1, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_3
    invoke-direct/range {v1 .. v7}, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ZZZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 123
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    .line 126
    .end local v2           #orp:I
    .end local v3           #operatorAlpha:Ljava/lang/String;
    .end local v4           #operatorNum:Ljava/lang/String;
    .end local v8           #alphalength:I
    .end local v11           #length:I
    .end local v13           #orpIndex:Ljava/lang/String;
    .end local v17           #shortlength:I
    .end local v18           #tmp:[B
    .end local v19           #tmp1:[B
    .end local v20           #tmp2:[B
    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-static {v14, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 127
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 128
    return-void
.end method


# virtual methods
.method protected getMsgCategory()I
    .locals 1

    .prologue
    .line 57
    const/high16 v0, 0x100

    return v0
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 62
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 63
    .local v1, bytter:Ljava/nio/ByteBuffer;
    const v3, 0x1050019

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 64
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 65
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 66
    .local v0, b:[B
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/gsm/GsmPhoneExt;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 67
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/PhoneExtBase;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v0, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 68
    return-void
.end method

.method public selectNetwork(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .parameter "mode"
    .parameter "oper"
    .parameter "act"
    .parameter "response"

    .prologue
    .line 134
    const/16 v4, 0x10

    :try_start_0
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 135
    .local v0, buf:Ljava/nio/ByteBuffer;
    const v4, 0x1050021

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 136
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 137
    int-to-byte v4, p1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 138
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 141
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v4, 0x6

    if-ge v2, v4, :cond_1

    .line 142
    if-ge v2, v3, :cond_0

    .line 143
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 141
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 149
    .end local v0           #buf:Ljava/nio/ByteBuffer;
    .end local v2           #i:I
    .end local v3           #len:I
    :catch_0
    move-exception v1

    .line 150
    .local v1, e:Ljava/lang/Exception;
    invoke-static {p4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/CommandException;

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    iput-object v5, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 152
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 157
    .end local v1           #e:Ljava/lang/Exception;
    :goto_2
    return-void

    .line 148
    .restart local v0       #buf:Ljava/nio/ByteBuffer;
    .restart local v2       #i:I
    .restart local v3       #len:I
    :cond_1
    int-to-byte v4, p3

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/PhoneExtBase;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-interface {v4, v5, p4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_2
.end method

.method public setPreferredNetworkInfo(Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;Landroid/os/Message;)V
    .locals 9
    .parameter "info"
    .parameter "response"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 72
    invoke-virtual {p1}, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    new-array v3, v7, [B

    .line 74
    .local v3, name:[B
    :goto_0
    invoke-virtual {p1}, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    new-array v4, v7, [B

    .line 76
    .local v4, numeric:[B
    :goto_1
    array-length v5, v3

    add-int/lit8 v5, v5, 0xc

    array-length v8, v4

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v2, v5, 0x3

    .line 77
    .local v2, length:I
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 78
    .local v1, bytter:Ljava/nio/ByteBuffer;
    const v5, 0x1050020

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {p1}, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->getOperatorIndex()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 81
    array-length v5, v3

    int-to-byte v5, v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 83
    array-length v5, v4

    int-to-byte v5, v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {p1}, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->getGsmActEnable()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_2
    int-to-byte v5, v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {p1}, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->getGsmCompactActEnable()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_3
    int-to-byte v5, v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {p1}, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->getUtranActEnable()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_4
    int-to-byte v5, v6

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 90
    .local v0, b:[B
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/PhoneExtBase;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v0, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 91
    return-void

    .line 72
    .end local v0           #b:[B
    .end local v1           #bytter:Ljava/nio/ByteBuffer;
    .end local v2           #length:I
    .end local v3           #name:[B
    .end local v4           #numeric:[B
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    goto :goto_0

    .line 74
    .restart local v3       #name:[B
    :cond_1
    invoke-virtual {p1}, Lcom/motorola/android/internal/telephony/gsm/PreferredNetworkInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    goto :goto_1

    .restart local v1       #bytter:Ljava/nio/ByteBuffer;
    .restart local v2       #length:I
    .restart local v4       #numeric:[B
    :cond_2
    move v5, v7

    .line 85
    goto :goto_2

    :cond_3
    move v5, v7

    .line 86
    goto :goto_3

    :cond_4
    move v6, v7

    .line 87
    goto :goto_4
.end method
