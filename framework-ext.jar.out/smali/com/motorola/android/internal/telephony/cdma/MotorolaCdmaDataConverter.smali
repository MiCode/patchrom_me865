.class Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;
.super Ljava/lang/Object;
.source "MotorolaCdmaDataConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$1;,
        Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;,
        Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;
    }
.end annotation


# static fields
.field public static final OEM_HOOK_GENERIC_HEADER_LENGTH:I = 0x8

.field private static final SIZE_OF_BYTE:I = 0x1

.field private static final SIZE_OF_INT:I = 0x4


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 414
    return-void
.end method

.method static authbsToByteArray(ILjava/lang/String;)[B
    .locals 1
    .parameter "msgId"
    .parameter "authbs"

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->stringToByteArray(ILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static byteArrToCpStatus([B)Lcom/motorola/android/telephony/cdma/CdmaCallProcessStatus;
    .locals 7
    .parameter "response"

    .prologue
    const/4 v4, 0x0

    .line 145
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    :cond_0
    move-object v1, v4

    .line 187
    :goto_0
    return-object v1

    .line 149
    :cond_1
    const/4 v1, 0x0

    .line 151
    .local v1, cp:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 153
    .local v0, buffer:Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;

    move-result-object v3

    .line 155
    .local v3, header:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;
    #getter for: Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->access$000(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;)Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    move-result-object v5

    sget-object v6, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    if-eq v5, v6, :cond_2

    move-object v1, v4

    .line 156
    goto :goto_0

    .line 159
    :cond_2
    new-instance v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;

    invoke-direct {v2}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;-><init>()V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v1           #cp:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;
    .local v2, cp:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->fer:I

    .line 162
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->bestActivePilot:I

    .line 163
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->bestActiveStrength:I

    .line 164
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->bestNeighborPilot:I

    .line 165
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->bestNeighborStrength:I

    .line 166
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->sid:I

    .line 167
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->nid:I

    .line 168
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->channel:I

    .line 169
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->serviceOption:I

    .line 170
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->droppedCallCounter:I

    .line 171
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->sCallCounter:I

    .line 172
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->txPower:I

    .line 173
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->band:I

    .line 174
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->activePilotCount:I

    .line 175
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->neighborPilotCount:I

    .line 176
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->candPilotCount:I

    .line 177
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->cpState:I

    .line 178
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->lastCallIndicator:I

    .line 179
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->lnaStatus:I

    .line 180
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->rssi:I

    .line 181
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->callCounter:I

    .line 182
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;->is2000System:B
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 185
    .end local v2           #cp:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;
    .restart local v1       #cp:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;
    goto/16 :goto_0

    .line 184
    .end local v3           #header:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .end local v1           #cp:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;
    .restart local v2       #cp:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;
    .restart local v3       #header:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2           #cp:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;
    .restart local v1       #cp:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaTelephonyManager$MotorolaCdmaCallProcessStatus;
    goto/16 :goto_0
.end method

.method static byteArrToMeid([B)Ljava/lang/String;
    .locals 11
    .parameter "response"

    .prologue
    .line 111
    if-eqz p0, :cond_0

    array-length v9, p0

    if-nez v9, :cond_2

    .line 112
    :cond_0
    const/4 v7, 0x0

    .line 140
    :cond_1
    :goto_0
    return-object v7

    .line 115
    :cond_2
    const/4 v7, 0x0

    .line 117
    .local v7, meid:Ljava/lang/String;
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 119
    .local v1, buffer:Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;

    move-result-object v4

    .line 121
    .local v4, header:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;
    #getter for: Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;
    invoke-static {v4}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->access$000(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;)Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    move-result-object v9

    sget-object v10, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    if-ne v9, v10, :cond_1

    .line 122
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 123
    .local v3, elementId:I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 124
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 126
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 127
    .local v6, length:I
    const/16 v9, 0x18

    if-ne v3, v9, :cond_1

    if-lez v6, :cond_1

    .line 128
    add-int/lit8 v9, v6, -0x1

    new-array v2, v9, [B

    .line 129
    .local v2, data:[B
    const/4 v9, 0x0

    add-int/lit8 v10, v6, -0x1

    invoke-virtual {v1, v2, v9, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 130
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, s:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v0, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 132
    .local v0, b:Ljava/lang/StringBuffer;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .local v5, i:I
    :goto_1
    if-ltz v5, :cond_3

    .line 133
    add-int/lit8 v9, v5, -0x1

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    add-int/lit8 v5, v5, -0x2

    goto :goto_1

    .line 135
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 138
    .end local v0           #b:Ljava/lang/StringBuffer;
    .end local v2           #data:[B
    .end local v3           #elementId:I
    .end local v4           #header:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;
    .end local v5           #i:I
    .end local v6           #length:I
    .end local v8           #s:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method static byteArrToString([B)Ljava/lang/String;
    .locals 6
    .parameter "arr"

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    const-string v2, "null"

    .line 32
    :goto_0
    return-object v2

    .line 25
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "hex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 29
    const-string v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static byteArrayToAuthenticationAlgorithm([B)I
    .locals 3
    .parameter "response"

    .prologue
    .line 282
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 283
    :cond_0
    const/4 v0, 0x0

    .line 293
    :goto_0
    return v0

    .line 286
    :cond_1
    const/4 v0, 0x0

    .line 288
    .local v0, authenticationAlgorithm:I
    :try_start_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 289
    .local v1, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 290
    .end local v1           #buffer:Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static byteArrayToBoolean([B)Z
    .locals 5
    .parameter "response"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 222
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 232
    :cond_1
    :goto_0
    return v2

    .line 226
    :cond_2
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 227
    .local v0, buffer:Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 229
    .local v1, result:I
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 232
    :goto_1
    if-eq v1, v2, :cond_1

    move v2, v3

    goto :goto_0

    .line 230
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method static byteArrayToCave([B)Ljava/lang/String;
    .locals 1
    .parameter "response"

    .prologue
    .line 206
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 207
    :cond_0
    const/4 v0, 0x0

    .line 210
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static byteArrayToImsi([B)Ljava/lang/String;
    .locals 1
    .parameter "response"

    .prologue
    .line 305
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 306
    :cond_0
    const/4 v0, 0x0

    .line 309
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static byteArrayToIsEsnChanged([B)Z
    .locals 5
    .parameter "response"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 191
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    :cond_0
    move v1, v3

    .line 202
    :goto_0
    return v1

    .line 194
    :cond_1
    const/4 v1, 0x0

    .line 197
    .local v1, esnChanged:Z
    :try_start_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 198
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    .line 199
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static byteArrayToMd5Digest([B)Ljava/lang/String;
    .locals 1
    .parameter "response"

    .prologue
    .line 274
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 275
    :cond_0
    const/4 v0, 0x0

    .line 278
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static byteArrayToRandbs([B)Ljava/lang/String;
    .locals 1
    .parameter "response"

    .prologue
    .line 214
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static byteArrayToSmekeyVpn([B)[Ljava/lang/String;
    .locals 13
    .parameter "response"

    .prologue
    .line 236
    if-eqz p0, :cond_0

    array-length v11, p0

    if-nez v11, :cond_2

    .line 237
    :cond_0
    const/4 v8, 0x0

    .line 270
    :cond_1
    :goto_0
    return-object v8

    .line 240
    :cond_2
    const/4 v8, 0x0

    .line 242
    .local v8, smekeyVpn:[Ljava/lang/String;
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 244
    .local v0, buffer:Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;

    move-result-object v3

    .line 246
    .local v3, header:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;
    #getter for: Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->access$000(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;)Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    move-result-object v11

    sget-object v12, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    if-ne v11, v12, :cond_1

    .line 247
    #getter for: Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->msgLength:I
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->access$100(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;)I

    move-result v4

    .line 248
    .local v4, length:I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    const v12, 0xffff

    and-int v5, v11, v12

    .line 249
    .local v5, length1:I
    add-int/lit8 v11, v4, -0x4

    sub-int v6, v11, v5

    .line 251
    .local v6, length2:I
    if-lez v5, :cond_1

    if-lez v6, :cond_1

    .line 253
    new-array v1, v5, [B

    .line 254
    .local v1, data1:[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 255
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    .line 258
    .local v7, smekey:Ljava/lang/String;
    new-array v2, v6, [B

    .line 259
    .local v2, data2:[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 260
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([B)V

    .line 262
    .local v10, vpn:Ljava/lang/String;
    const/4 v11, 0x2

    new-array v9, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v7, v9, v11

    const/4 v11, 0x1

    aput-object v10, v9, v11
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #smekeyVpn:[Ljava/lang/String;
    .local v9, smekeyVpn:[Ljava/lang/String;
    move-object v8, v9

    .end local v9           #smekeyVpn:[Ljava/lang/String;
    .restart local v8       #smekeyVpn:[Ljava/lang/String;
    goto :goto_0

    .line 267
    .end local v1           #data1:[B
    .end local v2           #data2:[B
    .end local v3           #header:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;
    .end local v4           #length:I
    .end local v5           #length1:I
    .end local v6           #length2:I
    .end local v7           #smekey:Ljava/lang/String;
    .end local v10           #vpn:Ljava/lang/String;
    :catch_0
    move-exception v11

    goto :goto_0
.end method

.method private static byteArrayToString([B)Ljava/lang/String;
    .locals 6
    .parameter "response"

    .prologue
    .line 313
    const/4 v3, 0x0

    .line 315
    .local v3, string:Ljava/lang/String;
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 317
    .local v0, buffer:Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 318
    .local v2, length:I
    new-array v1, v2, [B

    .line 319
    .local v1, data:[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 320
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #string:Ljava/lang/String;
    .local v4, string:Ljava/lang/String;
    move-object v3, v4

    .line 324
    .end local v1           #data:[B
    .end local v2           #length:I
    .end local v4           #string:Ljava/lang/String;
    .restart local v3       #string:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 321
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method static byteArrayToUimid([B)Ljava/lang/String;
    .locals 1
    .parameter "response"

    .prologue
    .line 297
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 298
    :cond_0
    const/4 v0, 0x0

    .line 301
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static challengeToByteArray(IILjava/lang/String;)[B
    .locals 3
    .parameter "msgId"
    .parameter "chapId"
    .parameter "challenge"

    .prologue
    .line 67
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 68
    .local v1, data:[B
    array-length v2, v1

    add-int/lit8 v2, v2, 0xc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 70
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 71
    array-length v2, v1

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 73
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method static createEmptyRequest(I)[B
    .locals 1
    .parameter "msgId"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->stringToByteArray(ILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static createIntRequest(II)[B
    .locals 2
    .parameter "msgId"
    .parameter "data"

    .prologue
    .line 83
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 85
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method static meidRequestToByteArray(I)[B
    .locals 4
    .parameter "msgId"

    .prologue
    const/4 v3, 0x0

    .line 39
    const/16 v1, 0x23

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 41
    .local v0, buffer:Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 42
    const/16 v1, 0x11

    sget-object v2, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    invoke-static {v0, p0, v1, v2}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;)V

    .line 45
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 46
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 49
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method static randssdToByteArray(ILjava/lang/String;)[B
    .locals 1
    .parameter "msgId"
    .parameter "randssd"

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->stringToByteArray(ILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static randuToByteArray(ILjava/lang/String;)[B
    .locals 1
    .parameter "msgId"
    .parameter "randu"

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->stringToByteArray(ILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static final readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;
    .locals 6
    .parameter "buf"

    .prologue
    const/4 v3, 0x0

    .line 382
    new-instance v1, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;

    invoke-direct {v1, v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;-><init>(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$1;)V

    .line 385
    .local v1, header:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    #setter for: Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->msgId:I
    invoke-static {v1, v4}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->access$202(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;I)I

    .line 386
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    #setter for: Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->msgLength:I
    invoke-static {v1, v4}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->access$102(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;I)I

    .line 387
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    #calls: Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->fromInt(I)Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;
    invoke-static {v4}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->access$600(I)Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    move-result-object v4

    #setter for: Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;
    invoke-static {v1, v4}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->access$002(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;)Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    .line 388
    const/4 v4, 0x6

    new-array v4, v4, [B

    #setter for: Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->spcLockCode:[B
    invoke-static {v1, v4}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->access$302(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;[B)[B

    .line 389
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #getter for: Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->spcLockCode:[B
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->access$300(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;)[B

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 390
    #getter for: Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->spcLockCode:[B
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->access$300(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;)[B

    move-result-object v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    aput-byte v5, v4, v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    .end local v2           #i:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/nio/BufferUnderflowException;
    move-object v1, v3

    .line 396
    .end local v0           #e:Ljava/nio/BufferUnderflowException;
    .end local v1           #header:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;
    :cond_0
    return-object v1
.end method

.method static final readHookHeader([B)Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;
    .locals 2
    .parameter "bytes"

    .prologue
    .line 376
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->readHookHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;

    move-result-object v0

    goto :goto_0
.end method

.method private static stringToByteArray(ILjava/lang/String;)[B
    .locals 4
    .parameter "msgId"
    .parameter "string"

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, data:[B
    const/4 v2, 0x0

    .line 93
    .local v2, len:I
    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 95
    array-length v2, v1

    .line 97
    :cond_0
    add-int/lit8 v3, v2, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 99
    if-lez v2, :cond_1

    .line 100
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 104
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method

.method static writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;)V
    .locals 1
    .parameter "buf"
    .parameter "msgId"
    .parameter "len"
    .parameter "err"

    .prologue
    .line 348
    const-string v0, "000000"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method static writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;Ljava/lang/String;)V
    .locals 3
    .parameter "buf"
    .parameter "msgId"
    .parameter "len"
    .parameter "err"
    .parameter "spcLockCode"

    .prologue
    .line 354
    const/4 v2, 0x6

    new-array v0, v2, [B

    .line 355
    .local v0, arrSpcLockCode:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 356
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;[B)V

    .line 360
    return-void
.end method

.method static writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;[B)V
    .locals 2
    .parameter "buf"
    .parameter "msgId"
    .parameter "len"
    .parameter "err"
    .parameter "spcLockCode"

    .prologue
    .line 365
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 366
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 367
    #calls: Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->toInt()I
    invoke-static {p3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->access$400(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 369
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 370
    aget-byte v1, p4, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_0
    return-void
.end method

.method static writeHookHeader(Ljava/nio/ByteBuffer;Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;)V
    .locals 4
    .parameter "buf"
    .parameter "header"

    .prologue
    .line 343
    #getter for: Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->msgId:I
    invoke-static {p1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->access$200(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;)I

    move-result v0

    #getter for: Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->msgLength:I
    invoke-static {p1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->access$100(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;)I

    move-result v1

    #getter for: Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->error:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;
    invoke-static {p1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->access$000(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;)Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    move-result-object v2

    #getter for: Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->spcLockCode:[B
    invoke-static {p1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;->access$300(Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_HookHeader;)[B

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;[B)V

    .line 344
    return-void
.end method

.method static writeHookHeader(I)[B
    .locals 2
    .parameter "msgId"

    .prologue
    .line 329
    const/4 v0, 0x0

    sget-object v1, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;

    invoke-static {p0, v0, v1}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->writeHookHeader(IILcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;)[B

    move-result-object v0

    return-object v0
.end method

.method static writeHookHeader(IILcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;)[B
    .locals 2
    .parameter "msgId"
    .parameter "len"
    .parameter "err"

    .prologue
    .line 334
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 335
    .local v0, buf:Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 337
    invoke-static {v0, p0, p1, p2}, Lcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter;->writeHookHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/internal/telephony/cdma/MotorolaCdmaDataConverter$OEM_RIL_CDMA_Errno;)V

    .line 338
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method
